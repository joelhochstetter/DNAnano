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
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.512270, 34.902832, 34.581059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.215067, 34.884098, 34.848114>,  <24.036745, 34.872856, 35.008347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.215067, 34.884098, 34.848114>,  <24.512270, 34.902832, 34.581059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.215067, 34.884098, 34.848114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310802, 0.907610, -0.282216,
		-0.592741, -0.417193, -0.688918,
		-0.743007, -0.046835, 0.667643,
		23.992165, 34.870049, 35.048409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.262560, 35.097088, 34.527473>,  <24.512270, 34.902832, 34.581059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.262560, 35.097088, 34.527473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.939531, 35.290310, 34.392132>,  <24.745714, 35.406242, 34.310925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.939531, 35.290310, 34.392132>,  <25.262560, 35.097088, 34.527473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.939531, 35.290310, 34.392132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289313, 0.175462, 0.941016,
		0.513932, 0.857828, -0.001944,
		-0.807571, 0.483056, -0.338357,
		24.697260, 35.435226, 34.290627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.281584, 35.907063, 34.559105>,  <25.262560, 35.097088, 34.527473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.281584, 35.907063, 34.559105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.923204, 35.734657, 34.602013>,  <24.708178, 35.631214, 34.627758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.923204, 35.734657, 34.602013>,  <25.281584, 35.907063, 34.559105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.923204, 35.734657, 34.602013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049879, 0.337623, 0.939959,
		-0.441349, 0.836804, -0.323991,
		-0.895948, -0.431011, 0.107271,
		24.654421, 35.605354, 34.634193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.726051, 36.074924, 33.996315>,  <25.281584, 35.907063, 34.559105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.726051, 36.074924, 33.996315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.835619, 36.454258, 34.060356>,  <25.901360, 36.681858, 34.098782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.835619, 36.454258, 34.060356>,  <25.726051, 36.074924, 33.996315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.835619, 36.454258, 34.060356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938049, 0.226709, 0.262042,
		0.212207, -0.221959, 0.951684,
		0.273918, 0.948334, 0.160100,
		25.917795, 36.738758, 34.108387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.366144, 35.601292, 34.195728>,  <25.726051, 36.074924, 33.996315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.366144, 35.601292, 34.195728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.457590, 35.348438, 34.491875>,  <26.512457, 35.196728, 34.669563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.457590, 35.348438, 34.491875>,  <26.366144, 35.601292, 34.195728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.457590, 35.348438, 34.491875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849679, -0.500760, -0.165182,
		0.475164, -0.591314, -0.651588,
		0.228614, -0.632129, 0.740370,
		26.526175, 35.158798, 34.713985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.274136, 34.876041, 34.000916>,  <26.366144, 35.601292, 34.195728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.274136, 34.876041, 34.000916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.230108, 34.945652, 34.392345>,  <26.203691, 34.987419, 34.627201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.230108, 34.945652, 34.392345>,  <26.274136, 34.876041, 34.000916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.230108, 34.945652, 34.392345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869297, -0.494192, -0.009896,
		0.481879, -0.851757, 0.205673,
		-0.110070, 0.174022, 0.978571,
		26.197086, 34.997860, 34.685917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.934372, 34.521042, 34.283131>,  <26.274136, 34.876041, 34.000916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.934372, 34.521042, 34.283131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.185194, 34.785252, 34.448299>,  <27.335688, 34.943779, 34.547401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.185194, 34.785252, 34.448299>,  <26.934372, 34.521042, 34.283131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.185194, 34.785252, 34.448299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571496, 0.029880, 0.820060,
		0.529333, -0.750209, 0.396224,
		0.627055, 0.660526, 0.412925,
		27.373310, 34.983410, 34.572178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.676796, 33.896111, 33.995903>,  <26.934372, 34.521042, 34.283131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.676796, 33.896111, 33.995903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.446636, 33.574306, 34.054798>,  <26.308540, 33.381222, 34.090134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.446636, 33.574306, 34.054798>,  <26.676796, 33.896111, 33.995903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.446636, 33.574306, 34.054798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759019, 0.592322, 0.270265,
		-0.304643, 0.043755, -0.951461,
		-0.575397, -0.804512, 0.147237,
		26.274017, 33.332954, 34.098969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.653059, 33.557781, 33.278183>,  <26.676796, 33.896111, 33.995903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.653059, 33.557781, 33.278183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.946341, 33.710835, 33.053326>,  <27.122309, 33.802666, 32.918411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.946341, 33.710835, 33.053326>,  <26.653059, 33.557781, 33.278183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.946341, 33.710835, 33.053326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644809, -0.128693, 0.753432,
		0.215948, -0.914892, -0.341087,
		0.733204, 0.382638, -0.562139,
		27.166302, 33.825626, 32.884686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.190500, 33.148262, 33.786884>,  <26.653059, 33.557781, 33.278183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.190500, 33.148262, 33.786884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.914923, 32.899841, 33.637409>,  <26.749577, 32.750790, 33.547726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.914923, 32.899841, 33.637409>,  <27.190500, 33.148262, 33.786884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.914923, 32.899841, 33.637409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720449, -0.530282, -0.446939,
		0.079413, -0.577141, 0.812774,
		-0.688946, -0.621055, -0.373689,
		26.708239, 32.713524, 33.525303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.408688, 32.481213, 34.087757>,  <27.190500, 33.148262, 33.786884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.408688, 32.481213, 34.087757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.209215, 32.451981, 33.742279>,  <27.089531, 32.434441, 33.534992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.209215, 32.451981, 33.742279>,  <27.408688, 32.481213, 34.087757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.209215, 32.451981, 33.742279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521417, -0.821279, -0.231570,
		-0.692415, -0.565827, 0.447661,
		-0.498684, -0.073076, -0.863698,
		27.059610, 32.430058, 33.483170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.993547, 31.803862, 34.053772>,  <27.408688, 32.481213, 34.087757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.993547, 31.803862, 34.053772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.132620, 31.966406, 33.715782>,  <27.216063, 32.063934, 33.512989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.132620, 31.966406, 33.715782>,  <26.993547, 31.803862, 34.053772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.132620, 31.966406, 33.715782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230921, -0.910554, -0.342882,
		-0.908732, -0.075910, -0.410419,
		0.347680, 0.406362, -0.844978,
		27.236923, 32.088314, 33.462288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.903814, 31.275043, 34.514919>,  <26.993547, 31.803862, 34.053772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.903814, 31.275043, 34.514919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.209637, 31.017899, 34.533588>,  <27.393131, 30.863611, 34.544788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.209637, 31.017899, 34.533588>,  <26.903814, 31.275043, 34.514919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.209637, 31.017899, 34.533588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081480, 0.024566, -0.996372,
		0.639384, 0.765587, 0.071163,
		0.764558, -0.642863, 0.046673,
		27.439005, 30.825039, 34.547592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.952106, 30.628763, 33.975216>,  <26.903814, 31.275043, 34.514919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.952106, 30.628763, 33.975216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.167303, 30.336823, 33.806511>,  <27.296421, 30.161659, 33.705288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.167303, 30.336823, 33.806511>,  <26.952106, 30.628763, 33.975216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.167303, 30.336823, 33.806511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086234, -0.545367, 0.833749,
		-0.838527, -0.412181, -0.356342,
		0.537992, -0.729850, -0.421761,
		27.328701, 30.117867, 33.679981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.896368, 31.243156, 33.502384>,  <26.952106, 30.628763, 33.975216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.896368, 31.243156, 33.502384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.517736, 31.360487, 33.555973>,  <26.290558, 31.430885, 33.588127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.517736, 31.360487, 33.555973>,  <26.896368, 31.243156, 33.502384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.517736, 31.360487, 33.555973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230933, -0.906578, 0.353250,
		0.225073, 0.303441, 0.925887,
		-0.946579, 0.293325, 0.133971,
		26.233763, 31.448484, 33.596165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.028881, 30.582502, 33.206448>,  <26.896368, 31.243156, 33.502384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.028881, 30.582502, 33.206448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.701256, 30.808483, 33.166515>,  <26.504681, 30.944071, 33.142555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.701256, 30.808483, 33.166515>,  <27.028881, 30.582502, 33.206448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.701256, 30.808483, 33.166515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437157, -0.727285, -0.529104,
		-0.371525, -0.389726, 0.842664,
		-0.819062, 0.564952, -0.099833,
		26.455538, 30.977968, 33.136566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.381655, 30.259729, 33.362343>,  <27.028881, 30.582502, 33.206448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.381655, 30.259729, 33.362343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.343206, 30.544123, 33.083698>,  <26.320137, 30.714758, 32.916512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.343206, 30.544123, 33.083698>,  <26.381655, 30.259729, 33.362343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.343206, 30.544123, 33.083698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190046, -0.700085, -0.688305,
		-0.977059, 0.066227, 0.202412,
		-0.096122, 0.710982, -0.696610,
		26.314369, 30.757418, 32.874714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.721508, 30.228781, 32.872635>,  <26.381655, 30.259729, 33.362343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.721508, 30.228781, 32.872635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.061815, 30.369896, 32.716824>,  <26.266001, 30.454565, 32.623337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.061815, 30.369896, 32.716824>,  <25.721508, 30.228781, 32.872635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.061815, 30.369896, 32.716824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024608, -0.713641, -0.700079,
		-0.524963, 0.605191, -0.598462,
		0.850769, 0.352788, -0.389528,
		26.317045, 30.475733, 32.599964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.631912, 30.477812, 32.209629>,  <25.721508, 30.228781, 32.872635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.631912, 30.477812, 32.209629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.994263, 30.319658, 32.270374>,  <26.211674, 30.224766, 32.306820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.994263, 30.319658, 32.270374>,  <25.631912, 30.477812, 32.209629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.994263, 30.319658, 32.270374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232152, -0.763405, -0.602759,
		0.354252, 0.510770, -0.783339,
		0.905876, -0.395383, 0.151861,
		26.266026, 30.201044, 32.315933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.045692, 30.276102, 31.572845>,  <25.631912, 30.477812, 32.209629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.045692, 30.276102, 31.572845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.153410, 30.049438, 31.884327>,  <26.218040, 29.913441, 32.071217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.153410, 30.049438, 31.884327>,  <26.045692, 30.276102, 31.572845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.153410, 30.049438, 31.884327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426865, -0.795039, -0.430929,
		0.863289, -0.216355, -0.455985,
		0.269292, -0.566660, 0.778703,
		26.234198, 29.879440, 32.117939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.463694, 29.750374, 31.204182>,  <26.045692, 30.276102, 31.572845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.463694, 29.750374, 31.204182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.247946, 29.691431, 31.535812>,  <26.118498, 29.656065, 31.734791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.247946, 29.691431, 31.535812>,  <26.463694, 29.750374, 31.204182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.247946, 29.691431, 31.535812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363904, -0.847096, -0.387301,
		0.759379, -0.510602, 0.403274,
		-0.539368, -0.147355, 0.829077,
		26.086136, 29.647224, 31.784534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.955332, 29.093161, 31.455627>,  <26.463694, 29.750374, 31.204182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.955332, 29.093161, 31.455627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.656221, 29.095245, 31.190056>,  <26.476755, 29.096497, 31.030712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.656221, 29.095245, 31.190056>,  <26.955332, 29.093161, 31.455627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.656221, 29.095245, 31.190056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659507, -0.121310, 0.741845,
		-0.076675, 0.992601, 0.094150,
		-0.747777, 0.005211, -0.663929,
		26.431889, 29.096809, 30.990877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.429955, 28.494871, 31.486708>,  <26.955332, 29.093161, 31.455627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.429955, 28.494871, 31.486708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.240852, 28.223362, 31.261934>,  <27.127392, 28.060455, 31.127069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.240852, 28.223362, 31.261934>,  <27.429955, 28.494871, 31.486708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.240852, 28.223362, 31.261934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766682, -0.002471, -0.642022,
		0.434400, -0.734343, 0.521572,
		-0.472753, -0.678774, -0.561934,
		27.099026, 28.019730, 31.093353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118052, 28.668087, 31.632366>,  <27.429955, 28.494871, 31.486708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.118052, 28.668087, 31.632366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.199879, 28.451767, 31.306007>,  <28.248976, 28.321976, 31.110191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.199879, 28.451767, 31.306007>,  <28.118052, 28.668087, 31.632366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.199879, 28.451767, 31.306007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744520, 0.627100, -0.228988,
		0.635486, -0.560608, 0.530920,
		0.204568, -0.540799, -0.815897,
		28.261250, 28.289528, 31.061237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.874075, 28.650145, 31.535606>,  <28.118052, 28.668087, 31.632366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.874075, 28.650145, 31.535606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707510, 28.568874, 31.181133>,  <28.607571, 28.520113, 30.968449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707510, 28.568874, 31.181133>,  <28.874075, 28.650145, 31.535606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707510, 28.568874, 31.181133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670500, 0.589661, -0.450254,
		0.614029, -0.781677, -0.109311,
		-0.416410, -0.203176, -0.886184,
		28.582586, 28.507921, 30.915277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.397694, 28.601261, 31.079784>,  <28.874075, 28.650145, 31.535606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.397694, 28.601261, 31.079784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.078638, 28.701895, 30.860521>,  <28.887205, 28.762276, 30.728964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.078638, 28.701895, 30.860521>,  <29.397694, 28.601261, 31.079784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.078638, 28.701895, 30.860521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587827, 0.527738, -0.613150,
		0.135024, -0.811294, -0.568833,
		-0.797639, 0.251585, -0.548158,
		28.839346, 28.777370, 30.696074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.741673, 27.933952, 30.873529>,  <29.397694, 28.601261, 31.079784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.741673, 27.933952, 30.873529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.838446, 27.615513, 31.095409>,  <29.896509, 27.424448, 31.228537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.838446, 27.615513, 31.095409>,  <29.741673, 27.933952, 30.873529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.838446, 27.615513, 31.095409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528935, -0.371065, -0.763242,
		0.813447, 0.478053, 0.331314,
		0.241931, -0.796101, 0.554700,
		29.911024, 27.376682, 31.261820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.335384, 27.792446, 30.359840>,  <29.741673, 27.933952, 30.873529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.335384, 27.792446, 30.359840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.586828, 27.516649, 30.503759>,  <30.737694, 27.351171, 30.590111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.586828, 27.516649, 30.503759>,  <30.335384, 27.792446, 30.359840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586828, 27.516649, 30.503759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688730, 0.708415, 0.154267,
		-0.361250, 0.150828, 0.920190,
		0.628609, -0.689491, 0.359795,
		30.775412, 27.309801, 30.611698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.086418, 27.895063, 30.606998>,  <30.335384, 27.792446, 30.359840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.086418, 27.895063, 30.606998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232048, 27.570417, 30.424250>,  <31.319426, 27.375629, 30.314600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232048, 27.570417, 30.424250>,  <31.086418, 27.895063, 30.606998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232048, 27.570417, 30.424250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039804, 0.476532, -0.878256,
		0.930518, 0.337938, 0.141189,
		0.364077, -0.811613, -0.456873,
		31.341270, 27.326933, 30.287188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773661, 28.064331, 30.874428>,  <31.086418, 27.895063, 30.606998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773661, 28.064331, 30.874428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110439, 27.884920, 30.754461>,  <32.312508, 27.777273, 30.682482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110439, 27.884920, 30.754461>,  <31.773661, 28.064331, 30.874428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110439, 27.884920, 30.754461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535136, -0.623097, -0.570420,
		0.068971, 0.640759, -0.764637,
		0.841945, -0.448528, -0.299918,
		32.363022, 27.750362, 30.664486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825621, 27.412100, 31.368305>,  <31.773661, 28.064331, 30.874428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825621, 27.412100, 31.368305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998627, 27.079264, 31.507193>,  <32.102428, 26.879562, 31.590525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998627, 27.079264, 31.507193>,  <31.825621, 27.412100, 31.368305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998627, 27.079264, 31.507193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221959, -0.471511, -0.853470,
		0.873880, 0.292069, -0.388625,
		0.432513, -0.832089, 0.347217,
		32.128380, 26.829638, 31.611359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889688, 27.043125, 30.811712>,  <31.825621, 27.412100, 31.368305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889688, 27.043125, 30.811712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960014, 26.757772, 31.083057>,  <32.002209, 26.586561, 31.245865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960014, 26.757772, 31.083057>,  <31.889688, 27.043125, 30.811712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960014, 26.757772, 31.083057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119631, -0.699472, -0.704576,
		0.977127, 0.042722, -0.208321,
		0.175815, -0.713382, 0.678362,
		32.012760, 26.543758, 31.286566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568607, 26.718721, 30.793547>,  <31.889688, 27.043125, 30.811712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568607, 26.718721, 30.793547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248295, 26.496353, 30.882721>,  <32.056107, 26.362932, 30.936226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248295, 26.496353, 30.882721>,  <32.568607, 26.718721, 30.793547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248295, 26.496353, 30.882721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098368, -0.489221, -0.866595,
		0.590824, -0.672023, 0.446444,
		-0.800781, -0.555921, 0.222937,
		32.008060, 26.329576, 30.949602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780312, 25.954681, 30.675642>,  <32.568607, 26.718721, 30.793547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780312, 25.954681, 30.675642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398132, 26.066311, 30.637190>,  <32.168827, 26.133289, 30.614119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398132, 26.066311, 30.637190>,  <32.780312, 25.954681, 30.675642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398132, 26.066311, 30.637190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009965, -0.294997, -0.955446,
		-0.294997, -0.913835, 0.279073,
		0.955446, -0.279073, 0.096130,
		32.111500, 26.150032, 30.608351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520302, 25.948824, 29.983051>,  <32.780312, 25.954681, 30.675642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520302, 25.948824, 29.983051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735279, 26.262684, 29.859457>,  <32.864265, 26.451000, 29.785299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735279, 26.262684, 29.859457>,  <32.520302, 25.948824, 29.983051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735279, 26.262684, 29.859457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680362, 0.186965, -0.708627,
		-0.498255, 0.591073, 0.634331,
		0.537448, 0.784651, -0.308987,
		32.896515, 26.498079, 29.766762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158596, 26.530233, 30.011387>,  <32.520302, 25.948824, 29.983051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158596, 26.530233, 30.011387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430027, 26.557266, 29.718821>,  <32.592884, 26.573486, 29.543282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430027, 26.557266, 29.718821>,  <32.158596, 26.530233, 30.011387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430027, 26.557266, 29.718821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708241, 0.324218, -0.627119,
		0.194755, 0.943565, 0.267871,
		0.678576, 0.067583, -0.731414,
		32.633598, 26.577541, 29.499395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142826, 27.238209, 29.696714>,  <32.158596, 26.530233, 30.011387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142826, 27.238209, 29.696714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277840, 26.946207, 29.459002>,  <32.358849, 26.771006, 29.316374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277840, 26.946207, 29.459002>,  <32.142826, 27.238209, 29.696714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277840, 26.946207, 29.459002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707002, 0.220209, -0.672054,
		0.621467, 0.646997, -0.441785,
		0.337532, -0.730002, -0.594280,
		32.379101, 26.727207, 29.280718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185425, 27.434072, 28.983932>,  <32.142826, 27.238209, 29.696714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185425, 27.434072, 28.983932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108360, 27.042503, 29.011042>,  <32.062122, 26.807562, 29.027308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108360, 27.042503, 29.011042>,  <32.185425, 27.434072, 28.983932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108360, 27.042503, 29.011042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785756, 0.112540, -0.608212,
		0.587765, -0.170433, -0.790876,
		-0.192664, -0.978921, 0.067772,
		32.050560, 26.748827, 29.031374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839802, 28.129152, 29.172230>,  <32.185425, 27.434072, 28.983932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839802, 28.129152, 29.172230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851028, 28.483961, 28.987881>,  <31.857763, 28.696846, 28.877272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851028, 28.483961, 28.987881>,  <31.839802, 28.129152, 29.172230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851028, 28.483961, 28.987881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595838, -0.385038, -0.704785,
		-0.802614, -0.254825, -0.539329,
		0.028065, 0.887023, -0.460871,
		31.859447, 28.750069, 28.849619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785185, 27.954149, 28.393686>,  <31.839802, 28.129152, 29.172230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785185, 27.954149, 28.393686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924623, 28.323566, 28.457624>,  <32.008286, 28.545216, 28.495987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924623, 28.323566, 28.457624>,  <31.785185, 27.954149, 28.393686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924623, 28.323566, 28.457624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567458, -0.072224, -0.820229,
		-0.745971, 0.376635, -0.549249,
		0.348596, 0.923542, 0.159847,
		32.029202, 28.600630, 28.505579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533098, 28.458134, 27.941669>,  <31.785185, 27.954149, 28.393686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533098, 28.458134, 27.941669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900297, 28.488773, 28.097315>,  <32.120617, 28.507158, 28.190702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900297, 28.488773, 28.097315>,  <31.533098, 28.458134, 27.941669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900297, 28.488773, 28.097315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391849, -0.024059, -0.919715,
		-0.061089, 0.996771, -0.052102,
		0.917999, 0.076601, 0.389114,
		32.175697, 28.511753, 28.214048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699492, 29.077942, 27.737175>,  <31.533098, 28.458134, 27.941669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699492, 29.077942, 27.737175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997051, 28.817207, 27.796131>,  <32.175587, 28.660767, 27.831505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997051, 28.817207, 27.796131>,  <31.699492, 29.077942, 27.737175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997051, 28.817207, 27.796131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320980, 0.155051, -0.934308,
		0.586162, 0.742341, 0.324568,
		0.743900, -0.651835, 0.147391,
		32.220222, 28.621656, 27.840349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175533, 29.438560, 27.164629>,  <31.699492, 29.077942, 27.737175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175533, 29.438560, 27.164629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040226, 29.143078, 26.931429>,  <31.959042, 28.965788, 26.791510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040226, 29.143078, 26.931429>,  <32.175533, 29.438560, 27.164629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040226, 29.143078, 26.931429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632402, -0.637218, 0.440478,
		-0.696882, -0.219691, 0.682709,
		-0.338265, -0.738708, -0.582999,
		31.938747, 28.921465, 26.756529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786232, 29.648371, 27.246311>,  <32.175533, 29.438560, 27.164629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786232, 29.648371, 27.246311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914841, 29.638662, 26.867676>,  <32.992004, 29.632837, 26.640493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914841, 29.638662, 26.867676>,  <32.786232, 29.648371, 27.246311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914841, 29.638662, 26.867676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550572, 0.808526, -0.207741,
		0.770385, 0.587960, 0.246596,
		0.321523, -0.024272, -0.946591,
		33.011299, 29.631380, 26.583698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047230, 30.235134, 27.079878>,  <32.786232, 29.648371, 27.246311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047230, 30.235134, 27.079878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909138, 30.120678, 26.722345>,  <32.826283, 30.052004, 26.507826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909138, 30.120678, 26.722345>,  <33.047230, 30.235134, 27.079878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909138, 30.120678, 26.722345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454474, 0.884245, -0.107537,
		0.821137, 0.369098, -0.435316,
		-0.345234, -0.286143, -0.893832,
		32.805569, 30.034836, 26.454195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373917, 30.579044, 26.433691>,  <33.047230, 30.235134, 27.079878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373917, 30.579044, 26.433691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998306, 30.467480, 26.353262>,  <32.772938, 30.400541, 26.305004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998306, 30.467480, 26.353262>,  <33.373917, 30.579044, 26.433691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998306, 30.467480, 26.353262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181415, 0.898679, -0.399331,
		0.292078, -0.338506, -0.894485,
		-0.939031, -0.278909, -0.201075,
		32.716599, 30.383806, 26.292940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859486, 31.160805, 26.770250>,  <33.373917, 30.579044, 26.433691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859486, 31.160805, 26.770250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251106, 31.226313, 26.721855>,  <34.486080, 31.265617, 26.692818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251106, 31.226313, 26.721855>,  <33.859486, 31.160805, 26.770250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251106, 31.226313, 26.721855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130081, 0.045965, -0.990437,
		-0.156643, 0.985427, 0.066305,
		0.979052, 0.163770, -0.120986,
		34.544823, 31.275444, 26.685560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082966, 31.893797, 26.509794>,  <33.859486, 31.160805, 26.770250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082966, 31.893797, 26.509794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292381, 31.569748, 26.404261>,  <34.418030, 31.375319, 26.340940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292381, 31.569748, 26.404261>,  <34.082966, 31.893797, 26.509794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292381, 31.569748, 26.404261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260084, 0.142920, -0.954950,
		0.811332, 0.568577, -0.135875,
		0.523543, -0.810120, -0.263834,
		34.449444, 31.326712, 26.325111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574581, 32.089550, 26.047743>,  <34.082966, 31.893797, 26.509794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574581, 32.089550, 26.047743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458435, 31.718607, 25.953335>,  <34.388748, 31.496042, 25.896690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458435, 31.718607, 25.953335>,  <34.574581, 32.089550, 26.047743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458435, 31.718607, 25.953335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226787, 0.306308, -0.924523,
		0.929654, -0.214922, -0.299253,
		-0.290364, -0.927353, -0.236019,
		34.371326, 31.440401, 25.882528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120419, 32.174194, 26.689444>,  <34.574581, 32.089550, 26.047743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120419, 32.174194, 26.689444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435181, 31.951996, 26.796926>,  <35.624039, 31.818678, 26.861416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435181, 31.951996, 26.796926>,  <35.120419, 32.174194, 26.689444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435181, 31.951996, 26.796926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603209, 0.784247, -0.145240,
		-0.130055, 0.276379, 0.952208,
		0.786908, -0.555492, 0.268710,
		35.671253, 31.785349, 26.877539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495186, 32.517689, 27.314049>,  <35.120419, 32.174194, 26.689444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495186, 32.517689, 27.314049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740204, 32.310562, 27.075165>,  <35.887215, 32.186287, 26.931835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740204, 32.310562, 27.075165>,  <35.495186, 32.517689, 27.314049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740204, 32.310562, 27.075165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549426, 0.822099, -0.149281,
		0.568264, -0.236680, 0.788073,
		0.612542, -0.517818, -0.597208,
		35.923965, 32.155216, 26.896002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294456, 32.502968, 27.539682>,  <35.495186, 32.517689, 27.314049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294456, 32.502968, 27.539682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232937, 32.497112, 27.144485>,  <36.196026, 32.493599, 26.907368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232937, 32.497112, 27.144485>,  <36.294456, 32.502968, 27.539682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232937, 32.497112, 27.144485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601248, 0.792089, -0.105333,
		0.784121, -0.610229, -0.113024,
		-0.153802, -0.014638, -0.987993,
		36.186794, 32.492722, 26.848087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027828, 32.454494, 26.959352>,  <36.294456, 32.502968, 27.539682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027828, 32.454494, 26.959352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710102, 32.687298, 26.889688>,  <36.519466, 32.826981, 26.847891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710102, 32.687298, 26.889688>,  <37.027828, 32.454494, 26.959352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710102, 32.687298, 26.889688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555847, 0.811946, 0.178263,
		0.245160, 0.044790, -0.968448,
		-0.794311, 0.582012, -0.174160,
		36.471809, 32.861900, 26.837440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198345, 32.965874, 26.469011>,  <37.027828, 32.454494, 26.959352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198345, 32.965874, 26.469011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908813, 33.118099, 26.699230>,  <36.735096, 33.209435, 26.837360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908813, 33.118099, 26.699230>,  <37.198345, 32.965874, 26.469011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908813, 33.118099, 26.699230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621464, 0.721975, 0.304194,
		-0.299765, 0.577864, -0.759087,
		-0.723825, 0.380559, 0.575545,
		36.691666, 33.232265, 26.871893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203091, 33.692944, 26.504482>,  <37.198345, 32.965874, 26.469011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203091, 33.692944, 26.504482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995350, 33.593655, 26.831570>,  <36.870705, 33.534081, 27.027822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995350, 33.593655, 26.831570>,  <37.203091, 33.692944, 26.504482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995350, 33.593655, 26.831570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453988, 0.730546, 0.510096,
		-0.723998, 0.636151, -0.266719,
		-0.519349, -0.248221, 0.817718,
		36.839546, 33.519188, 27.076885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073387, 34.388268, 26.818077>,  <37.203091, 33.692944, 26.504482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073387, 34.388268, 26.818077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036705, 34.096844, 27.089605>,  <37.014694, 33.921989, 27.252522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036705, 34.096844, 27.089605>,  <37.073387, 34.388268, 26.818077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036705, 34.096844, 27.089605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320268, 0.623892, 0.712873,
		-0.942878, 0.282779, 0.176118,
		-0.091707, -0.728557, 0.678819,
		37.009193, 33.878277, 27.293251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706623, 34.477303, 27.414463>,  <37.073387, 34.388268, 26.818077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706623, 34.477303, 27.414463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028824, 34.256104, 27.499655>,  <37.222145, 34.123383, 27.550770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028824, 34.256104, 27.499655>,  <36.706623, 34.477303, 27.414463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028824, 34.256104, 27.499655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331346, 0.718265, 0.611805,
		-0.491306, -0.422238, 0.761796,
		0.805499, -0.553001, 0.212981,
		37.270473, 34.090202, 27.563549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801544, 34.408512, 28.149996>,  <36.706623, 34.477303, 27.414463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801544, 34.408512, 28.149996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151073, 34.344505, 27.966335>,  <37.360790, 34.306103, 27.856138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151073, 34.344505, 27.966335>,  <36.801544, 34.408512, 28.149996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151073, 34.344505, 27.966335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463755, 0.558087, 0.688091,
		0.146139, -0.814207, 0.561881,
		0.873827, -0.160019, -0.459151,
		37.413223, 34.296501, 27.828590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384884, 34.020470, 28.589437>,  <36.801544, 34.408512, 28.149996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384884, 34.020470, 28.589437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497437, 34.328156, 28.359957>,  <37.564968, 34.512768, 28.222269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497437, 34.328156, 28.359957>,  <37.384884, 34.020470, 28.589437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497437, 34.328156, 28.359957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376920, 0.461208, 0.803255,
		0.882471, -0.442262, -0.160156,
		0.281383, 0.769215, -0.573700,
		37.581852, 34.558922, 28.187847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122448, 34.271500, 28.664333>,  <37.384884, 34.020470, 28.589437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122448, 34.271500, 28.664333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955688, 34.621311, 28.565214>,  <37.855633, 34.831196, 28.505743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955688, 34.621311, 28.565214>,  <38.122448, 34.271500, 28.664333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955688, 34.621311, 28.565214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073461, 0.239307, 0.968161,
		0.905981, 0.421825, -0.035522,
		-0.416895, 0.874526, -0.247796,
		37.830620, 34.883671, 28.490875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531300, 34.981438, 28.710705>,  <38.122448, 34.271500, 28.664333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531300, 34.981438, 28.710705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144119, 35.028141, 28.799639>,  <37.911812, 35.056164, 28.852999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144119, 35.028141, 28.799639>,  <38.531300, 34.981438, 28.710705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144119, 35.028141, 28.799639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246186, 0.266407, 0.931891,
		0.049572, 0.956763, -0.286613,
		-0.967954, 0.116755, 0.222335,
		37.853733, 35.063168, 28.866339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342815, 35.595516, 28.888660>,  <38.531300, 34.981438, 28.710705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342815, 35.595516, 28.888660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086163, 35.355579, 29.079868>,  <37.932171, 35.211617, 29.194593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086163, 35.355579, 29.079868>,  <38.342815, 35.595516, 28.888660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086163, 35.355579, 29.079868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223384, 0.450066, 0.864604,
		-0.733766, 0.661537, -0.154780,
		-0.641629, -0.599841, 0.478020,
		37.893673, 35.175629, 29.223274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985550, 36.003269, 29.431322>,  <38.342815, 35.595516, 28.888660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985550, 36.003269, 29.431322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973331, 35.619038, 29.541857>,  <37.966000, 35.388500, 29.608177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973331, 35.619038, 29.541857>,  <37.985550, 36.003269, 29.431322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973331, 35.619038, 29.541857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273684, 0.257861, 0.926609,
		-0.961334, 0.103937, 0.255016,
		-0.030551, -0.960575, 0.276337,
		37.964165, 35.330864, 29.624758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356171, 35.845177, 29.886400>,  <37.985550, 36.003269, 29.431322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356171, 35.845177, 29.886400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705929, 35.660999, 29.947615>,  <37.915783, 35.550495, 29.984344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705929, 35.660999, 29.947615>,  <37.356171, 35.845177, 29.886400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705929, 35.660999, 29.947615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017610, 0.345315, 0.938321,
		-0.484888, -0.817772, 0.310052,
		0.874399, -0.460441, 0.153038,
		37.968250, 35.522865, 29.993526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174175, 35.923168, 30.619476>,  <37.356171, 35.845177, 29.886400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174175, 35.923168, 30.619476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495621, 35.929947, 30.381512>,  <37.688488, 35.934013, 30.238733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495621, 35.929947, 30.381512>,  <37.174175, 35.923168, 30.619476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495621, 35.929947, 30.381512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530811, -0.472484, 0.703561,
		-0.269163, -0.881176, -0.388690,
		0.803611, 0.016949, -0.594913,
		37.736706, 35.935032, 30.203037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186672, 35.247845, 30.432560>,  <37.174175, 35.923168, 30.619476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186672, 35.247845, 30.432560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496319, 35.495060, 30.487366>,  <37.682106, 35.643387, 30.520248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496319, 35.495060, 30.487366>,  <37.186672, 35.247845, 30.432560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496319, 35.495060, 30.487366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081575, -0.312021, 0.946567,
		0.627763, -0.721578, -0.291958,
		0.774118, 0.618036, 0.137012,
		37.728554, 35.680470, 30.528469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578743, 34.952106, 30.902506>,  <37.186672, 35.247845, 30.432560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578743, 34.952106, 30.902506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712975, 35.323708, 30.964907>,  <37.793514, 35.546669, 31.002346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712975, 35.323708, 30.964907>,  <37.578743, 34.952106, 30.902506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712975, 35.323708, 30.964907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050223, -0.183012, 0.981827,
		0.940672, -0.321647, -0.108073,
		0.335581, 0.929005, 0.156000,
		37.813648, 35.602409, 31.011707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340424, 34.976910, 31.296310>,  <37.578743, 34.952106, 30.902506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340424, 34.976910, 31.296310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061199, 35.259842, 31.340843>,  <37.893665, 35.429600, 31.367563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061199, 35.259842, 31.340843>,  <38.340424, 34.976910, 31.296310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061199, 35.259842, 31.340843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017870, -0.172641, 0.984823,
		0.715816, 0.685476, 0.133153,
		-0.698060, 0.707332, 0.111330,
		37.851780, 35.472042, 31.374243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539532, 35.216057, 31.848953>,  <38.340424, 34.976910, 31.296310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539532, 35.216057, 31.848953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172256, 35.374203, 31.838966>,  <37.951893, 35.469090, 31.832973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172256, 35.374203, 31.838966>,  <38.539532, 35.216057, 31.848953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172256, 35.374203, 31.838966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018019, 0.104639, 0.994347,
		0.395739, 0.912546, -0.103202,
		-0.918186, 0.395362, -0.024967,
		37.896801, 35.492813, 31.831476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520382, 35.746418, 32.352230>,  <38.539532, 35.216057, 31.848953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520382, 35.746418, 32.352230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151016, 35.623577, 32.260151>,  <37.929398, 35.549873, 32.204903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151016, 35.623577, 32.260151>,  <38.520382, 35.746418, 32.352230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151016, 35.623577, 32.260151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219802, -0.068538, 0.973134,
		-0.314634, 0.949204, -0.004214,
		-0.923414, -0.307107, -0.230202,
		37.873993, 35.531445, 32.191090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082981, 36.049541, 32.836174>,  <38.520382, 35.746418, 32.352230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082981, 36.049541, 32.836174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858948, 35.746586, 32.701908>,  <37.724525, 35.564812, 32.621349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858948, 35.746586, 32.701908>,  <38.082981, 36.049541, 32.836174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858948, 35.746586, 32.701908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344013, -0.155959, 0.925922,
		-0.753630, 0.634069, -0.173200,
		-0.560086, -0.757386, -0.335663,
		37.690922, 35.519371, 32.601208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411789, 36.185947, 33.015125>,  <38.082981, 36.049541, 32.836174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411789, 36.185947, 33.015125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452721, 35.793442, 32.949818>,  <37.477280, 35.557938, 32.910633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452721, 35.793442, 32.949818>,  <37.411789, 36.185947, 33.015125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452721, 35.793442, 32.949818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264936, -0.185083, 0.946337,
		-0.958821, -0.053582, -0.278910,
		0.102328, -0.981261, -0.163266,
		37.483418, 35.499062, 32.900837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970974, 35.884010, 33.458103>,  <37.411789, 36.185947, 33.015125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970974, 35.884010, 33.458103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134377, 35.538357, 33.340527>,  <37.232418, 35.330967, 33.269981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134377, 35.538357, 33.340527>,  <36.970974, 35.884010, 33.458103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134377, 35.538357, 33.340527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445466, -0.469830, 0.762115,
		-0.796670, -0.180387, -0.576869,
		0.408506, -0.864130, -0.293944,
		37.256927, 35.279118, 33.252342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411205, 35.351357, 33.545967>,  <36.970974, 35.884010, 33.458103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411205, 35.351357, 33.545967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769154, 35.174694, 33.571697>,  <36.983925, 35.068695, 33.587135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769154, 35.174694, 33.571697>,  <36.411205, 35.351357, 33.545967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769154, 35.174694, 33.571697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286269, -0.457403, 0.841922,
		-0.342421, -0.771828, -0.535752,
		0.894873, -0.441660, 0.064326,
		37.037617, 35.042194, 33.590996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227299, 34.668217, 33.634338>,  <36.411205, 35.351357, 33.545967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227299, 34.668217, 33.634338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596775, 34.741535, 33.768921>,  <36.818459, 34.785526, 33.849670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596775, 34.741535, 33.768921>,  <36.227299, 34.668217, 33.634338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596775, 34.741535, 33.768921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150456, -0.634076, 0.758492,
		0.352368, -0.751232, -0.558110,
		0.923688, 0.183298, 0.336456,
		36.873882, 34.796524, 33.869858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455669, 34.047901, 33.894329>,  <36.227299, 34.668217, 33.634338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455669, 34.047901, 33.894329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720364, 34.306675, 34.045895>,  <36.879181, 34.461941, 34.136833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720364, 34.306675, 34.045895>,  <36.455669, 34.047901, 33.894329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720364, 34.306675, 34.045895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024504, -0.486467, 0.873355,
		0.749337, -0.587215, -0.306060,
		0.661736, 0.646937, 0.378916,
		36.918884, 34.500755, 34.159569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010281, 33.678905, 34.276772>,  <36.455669, 34.047901, 33.894329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010281, 33.678905, 34.276772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024921, 34.049809, 34.425827>,  <37.033707, 34.272350, 34.515259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024921, 34.049809, 34.425827>,  <37.010281, 33.678905, 34.276772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024921, 34.049809, 34.425827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109814, -0.366897, 0.923757,
		0.993278, -0.074736, 0.088395,
		0.036606, 0.927255, 0.372638,
		37.035904, 34.327984, 34.537617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525921, 33.689541, 34.790485>,  <37.010281, 33.678905, 34.276772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525921, 33.689541, 34.790485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.272785, 33.988522, 34.871304>,  <37.120903, 34.167912, 34.919796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.272785, 33.988522, 34.871304>,  <37.525921, 33.689541, 34.790485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272785, 33.988522, 34.871304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321676, -0.491165, 0.809494,
		0.704298, 0.447289, 0.551268,
		-0.632842, 0.747455, 0.202045,
		37.082932, 34.212757, 34.931915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631149, 33.737064, 35.471359>,  <37.525921, 33.689541, 34.790485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631149, 33.737064, 35.471359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297665, 33.949764, 35.411800>,  <37.097572, 34.077385, 35.376064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297665, 33.949764, 35.411800>,  <37.631149, 33.737064, 35.471359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297665, 33.949764, 35.411800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378495, -0.353945, 0.855257,
		0.402080, 0.769394, 0.496352,
		-0.833711, 0.531748, -0.148897,
		37.047550, 34.109287, 35.367130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492786, 34.131626, 36.062691>,  <37.631149, 33.737064, 35.471359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492786, 34.131626, 36.062691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127575, 34.124222, 35.899696>,  <36.908447, 34.119778, 35.801899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127575, 34.124222, 35.899696>,  <37.492786, 34.131626, 36.062691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127575, 34.124222, 35.899696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392479, -0.232256, 0.889954,
		-0.111115, 0.972478, 0.204790,
		-0.913024, -0.018511, -0.407484,
		36.853668, 34.118668, 35.777451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095001, 34.533348, 36.483494>,  <37.492786, 34.131626, 36.062691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095001, 34.533348, 36.483494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.839619, 34.287106, 36.298710>,  <36.686390, 34.139359, 36.187840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.839619, 34.287106, 36.298710>,  <37.095001, 34.533348, 36.483494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839619, 34.287106, 36.298710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569432, -0.025988, 0.821627,
		-0.517806, 0.787624, -0.333954,
		-0.638455, -0.615608, -0.461955,
		36.648083, 34.102425, 36.160122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436695, 34.756645, 36.648148>,  <37.095001, 34.533348, 36.483494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436695, 34.756645, 36.648148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429676, 34.366451, 36.560402>,  <36.425465, 34.132336, 36.507755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429676, 34.366451, 36.560402>,  <36.436695, 34.756645, 36.648148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429676, 34.366451, 36.560402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597060, -0.165756, 0.784885,
		-0.802004, 0.144746, -0.579515,
		-0.017551, -0.975486, -0.219359,
		36.424412, 34.073807, 36.494595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729439, 34.519489, 36.434963>,  <36.436695, 34.756645, 36.648148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729439, 34.519489, 36.434963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909142, 34.195755, 36.586304>,  <36.016964, 34.001514, 36.677109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909142, 34.195755, 36.586304>,  <35.729439, 34.519489, 36.434963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909142, 34.195755, 36.586304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718893, -0.076045, 0.690948,
		-0.530435, -0.582408, -0.615987,
		0.449257, -0.809332, 0.378352,
		36.043919, 33.952957, 36.699810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220291, 33.898777, 36.408569>,  <35.729439, 34.519489, 36.434963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220291, 33.898777, 36.408569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492065, 33.781487, 36.677608>,  <35.655128, 33.711113, 36.839031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492065, 33.781487, 36.677608>,  <35.220291, 33.898777, 36.408569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492065, 33.781487, 36.677608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732670, -0.221747, 0.643447,
		-0.039530, -0.929971, -0.365502,
		0.679436, -0.293228, 0.672596,
		35.695896, 33.693520, 36.879387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977947, 33.224815, 36.607399>,  <35.220291, 33.898777, 36.408569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977947, 33.224815, 36.607399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233608, 33.359009, 36.884216>,  <35.387005, 33.439526, 37.050308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233608, 33.359009, 36.884216>,  <34.977947, 33.224815, 36.607399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233608, 33.359009, 36.884216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584600, -0.372754, 0.720623,
		0.499721, -0.865162, -0.042124,
		0.639157, 0.335485, 0.692047,
		35.425354, 33.459656, 37.091831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120888, 32.675823, 36.949535>,  <34.977947, 33.224815, 36.607399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120888, 32.675823, 36.949535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212837, 32.972744, 37.201298>,  <35.268005, 33.150898, 37.352356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212837, 32.972744, 37.201298>,  <35.120888, 32.675823, 36.949535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212837, 32.972744, 37.201298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589840, -0.408146, 0.696782,
		0.774111, -0.531418, 0.344017,
		0.229873, 0.742302, 0.629402,
		35.281799, 33.195435, 37.390118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263672, 32.339386, 37.593678>,  <35.120888, 32.675823, 36.949535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263672, 32.339386, 37.593678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161537, 32.722771, 37.644516>,  <35.100258, 32.952801, 37.675018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161537, 32.722771, 37.644516>,  <35.263672, 32.339386, 37.593678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161537, 32.722771, 37.644516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706363, -0.274688, 0.652379,
		0.660193, 0.076797, 0.747159,
		-0.255337, 0.958462, 0.127100,
		35.084934, 33.010307, 37.682648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352280, 32.390606, 38.251179>,  <35.263672, 32.339386, 37.593678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352280, 32.390606, 38.251179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.105515, 32.698284, 38.184540>,  <34.957455, 32.882893, 38.144554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.105515, 32.698284, 38.184540>,  <35.352280, 32.390606, 38.251179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105515, 32.698284, 38.184540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663228, -0.394123, 0.636236,
		0.423728, 0.502997, 0.753292,
		-0.616914, 0.769195, -0.166600,
		34.920441, 32.929043, 38.134560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207691, 32.723072, 38.925350>,  <35.352280, 32.390606, 38.251179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207691, 32.723072, 38.925350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916195, 32.828953, 38.672726>,  <34.741295, 32.892483, 38.521152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916195, 32.828953, 38.672726>,  <35.207691, 32.723072, 38.925350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916195, 32.828953, 38.672726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684693, -0.296861, 0.665634,
		-0.011289, 0.917499, 0.397577,
		-0.728744, 0.264704, -0.631557,
		34.697571, 32.908363, 38.483257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712635, 33.023003, 39.375938>,  <35.207691, 32.723072, 38.925350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712635, 33.023003, 39.375938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542042, 32.942684, 39.023170>,  <34.439686, 32.894493, 38.811508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542042, 32.942684, 39.023170>,  <34.712635, 33.023003, 39.375938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542042, 32.942684, 39.023170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830728, -0.298718, 0.469742,
		-0.357770, 0.932978, -0.039409,
		-0.426487, -0.200797, -0.881924,
		34.414097, 32.882446, 38.758595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020557, 33.311077, 39.360825>,  <34.712635, 33.023003, 39.375938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020557, 33.311077, 39.360825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996693, 33.037144, 39.070324>,  <33.982372, 32.872784, 38.896023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996693, 33.037144, 39.070324>,  <34.020557, 33.311077, 39.360825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996693, 33.037144, 39.070324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883359, -0.302606, 0.357920,
		-0.464884, 0.662893, -0.586903,
		-0.059663, -0.684838, -0.726249,
		33.978794, 32.831692, 38.852448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311562, 33.310852, 39.189678>,  <34.020557, 33.311077, 39.360825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311562, 33.310852, 39.189678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439430, 32.964916, 39.034824>,  <33.516151, 32.757355, 38.941914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439430, 32.964916, 39.034824>,  <33.311562, 33.310852, 39.189678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439430, 32.964916, 39.034824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829372, -0.452964, 0.327057,
		-0.458214, 0.216542, -0.862061,
		0.319661, -0.864831, -0.387148,
		33.535332, 32.705467, 38.918686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663597, 32.970074, 39.056152>,  <33.311562, 33.310852, 39.189678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663597, 32.970074, 39.056152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942009, 32.684666, 39.088245>,  <33.109055, 32.513420, 39.107502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942009, 32.684666, 39.088245>,  <32.663597, 32.970074, 39.056152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942009, 32.684666, 39.088245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570474, -0.481684, 0.665236,
		-0.436009, -0.508796, -0.742309,
		0.696028, -0.713517, 0.080237,
		33.150818, 32.470612, 39.112316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335148, 32.348862, 38.955902>,  <32.663597, 32.970074, 39.056152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335148, 32.348862, 38.955902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658875, 32.230492, 39.158855>,  <32.853111, 32.159470, 39.280628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658875, 32.230492, 39.158855>,  <32.335148, 32.348862, 38.955902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658875, 32.230492, 39.158855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587207, -0.428515, 0.686704,
		0.014208, -0.853699, -0.520573,
		0.809312, -0.295927, 0.507386,
		32.901669, 32.141712, 39.311069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120232, 31.691217, 39.225353>,  <32.335148, 32.348862, 38.955902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120232, 31.691217, 39.225353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450375, 31.791571, 39.427673>,  <32.648460, 31.851782, 39.549065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450375, 31.791571, 39.427673>,  <32.120232, 31.691217, 39.225353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450375, 31.791571, 39.427673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271044, -0.609810, 0.744760,
		0.495290, -0.751791, -0.435313,
		0.825362, 0.250883, 0.505802,
		32.697983, 31.866837, 39.579414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.493938, 30.980036, 39.473557>,  <32.120232, 31.691217, 39.225353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.493938, 30.980036, 39.473557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593517, 31.289352, 39.706810>,  <32.653267, 31.474943, 39.846760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593517, 31.289352, 39.706810>,  <32.493938, 30.980036, 39.473557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593517, 31.289352, 39.706810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212902, -0.543666, 0.811850,
		0.944826, -0.326260, 0.029290,
		0.248950, 0.773293, 0.583131,
		32.668201, 31.521339, 39.881748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976456, 30.738003, 39.923306>,  <32.493938, 30.980036, 39.473557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976456, 30.738003, 39.923306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828781, 31.055004, 40.117474>,  <32.740177, 31.245205, 40.233974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828781, 31.055004, 40.117474>,  <32.976456, 30.738003, 39.923306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828781, 31.055004, 40.117474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167773, -0.570577, 0.803925,
		0.914086, 0.215359, 0.343611,
		-0.369189, 0.792504, 0.485425,
		32.718025, 31.292755, 40.263100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008877, 30.502039, 40.551746>,  <32.976456, 30.738003, 39.923306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008877, 30.502039, 40.551746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790833, 30.823736, 40.646442>,  <32.660007, 31.016754, 40.703262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790833, 30.823736, 40.646442>,  <33.008877, 30.502039, 40.551746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790833, 30.823736, 40.646442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288922, -0.445300, 0.847486,
		0.787007, 0.393573, 0.475101,
		-0.545110, 0.804244, 0.236742,
		32.627300, 31.065010, 40.717464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147720, 30.643274, 41.305786>,  <33.008877, 30.502039, 40.551746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147720, 30.643274, 41.305786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815468, 30.840094, 41.201523>,  <32.616116, 30.958185, 41.138966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815468, 30.840094, 41.201523>,  <33.147720, 30.643274, 41.305786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815468, 30.840094, 41.201523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394610, -0.189902, 0.899011,
		0.392858, 0.849602, 0.351906,
		-0.830629, 0.492050, -0.260657,
		32.566280, 30.987709, 41.123325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997284, 31.025787, 41.857224>,  <33.147720, 30.643274, 41.305786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997284, 31.025787, 41.857224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651363, 31.023119, 41.656395>,  <32.443813, 31.021517, 41.535896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651363, 31.023119, 41.656395>,  <32.997284, 31.025787, 41.857224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651363, 31.023119, 41.656395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487480, -0.228510, 0.842702,
		-0.120351, 0.973519, 0.194363,
		-0.864800, -0.006672, -0.502073,
		32.391922, 31.021118, 41.505772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503841, 31.450169, 42.236431>,  <32.997284, 31.025787, 41.857224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503841, 31.450169, 42.236431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280460, 31.218847, 41.998543>,  <32.146431, 31.080055, 41.855808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280460, 31.218847, 41.998543>,  <32.503841, 31.450169, 42.236431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280460, 31.218847, 41.998543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613273, -0.194942, 0.765437,
		-0.558589, 0.792190, -0.245790,
		-0.558457, -0.578301, -0.594721,
		32.112923, 31.045357, 41.820126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898634, 31.591427, 42.393303>,  <32.503841, 31.450169, 42.236431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898634, 31.591427, 42.393303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815739, 31.245493, 42.210388>,  <31.766003, 31.037931, 42.100639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815739, 31.245493, 42.210388>,  <31.898634, 31.591427, 42.393303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815739, 31.245493, 42.210388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669952, -0.215164, 0.710541,
		-0.712894, 0.453610, -0.534808,
		-0.207237, -0.864836, -0.457286,
		31.753567, 30.986042, 42.073204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124901, 31.525555, 42.306396>,  <31.898634, 31.591427, 42.393303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124901, 31.525555, 42.306396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281027, 31.157442, 42.295570>,  <31.374702, 30.936575, 42.289074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281027, 31.157442, 42.295570>,  <31.124901, 31.525555, 42.306396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281027, 31.157442, 42.295570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717429, -0.322443, 0.617516,
		-0.577018, -0.221605, -0.786093,
		0.390315, -0.920284, -0.027070,
		31.398121, 30.881357, 42.287449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.534117, 31.206898, 42.356071>,  <31.124901, 31.525555, 42.306396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.534117, 31.206898, 42.356071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.813152, 30.948242, 42.479507>,  <30.980574, 30.793049, 42.553570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.813152, 30.948242, 42.479507>,  <30.534117, 31.206898, 42.356071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.813152, 30.948242, 42.479507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602968, -0.297173, 0.740350,
		-0.387036, -0.702529, -0.597207,
		0.697591, -0.646639, 0.308586,
		31.022430, 30.754251, 42.572083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.146217, 30.627865, 42.607147>,  <30.534117, 31.206898, 42.356071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.146217, 30.627865, 42.607147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508039, 30.575354, 42.769405>,  <30.725132, 30.543848, 42.866760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508039, 30.575354, 42.769405>,  <30.146217, 30.627865, 42.607147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508039, 30.575354, 42.769405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425801, -0.326849, 0.843720,
		0.021825, -0.935915, -0.351549,
		0.904553, -0.131276, 0.405647,
		30.779406, 30.535971, 42.891098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.052572, 30.096838, 42.830624>,  <30.146217, 30.627865, 42.607147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.052572, 30.096838, 42.830624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.349535, 30.244749, 43.054085>,  <30.527714, 30.333496, 43.188164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.349535, 30.244749, 43.054085>,  <30.052572, 30.096838, 42.830624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349535, 30.244749, 43.054085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440182, -0.359389, 0.822848,
		0.505045, -0.856799, -0.104044,
		0.742408, 0.369776, 0.558655,
		30.572258, 30.355682, 43.221680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.200224, 29.646351, 43.365242>,  <30.052572, 30.096838, 42.830624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.200224, 29.646351, 43.365242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.355101, 29.986258, 43.508339>,  <30.448027, 30.190201, 43.594196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.355101, 29.986258, 43.508339>,  <30.200224, 29.646351, 43.365242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.355101, 29.986258, 43.508339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396485, -0.196840, 0.896691,
		0.832396, -0.489029, 0.260705,
		0.387191, 0.849767, 0.357741,
		30.471258, 30.241188, 43.615662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.442768, 29.516661, 43.899830>,  <30.200224, 29.646351, 43.365242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.442768, 29.516661, 43.899830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.403147, 29.911583, 43.949501>,  <30.379374, 30.148537, 43.979301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.403147, 29.911583, 43.949501>,  <30.442768, 29.516661, 43.899830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.403147, 29.911583, 43.949501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278196, -0.147288, 0.949165,
		0.955404, 0.059471, 0.289253,
		-0.099052, 0.987304, 0.124175,
		30.373432, 30.207775, 43.986755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.757849, 29.631958, 44.573647>,  <30.442768, 29.516661, 43.899830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.757849, 29.631958, 44.573647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.526180, 29.943266, 44.476608>,  <30.387178, 30.130051, 44.418385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.526180, 29.943266, 44.476608>,  <30.757849, 29.631958, 44.573647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526180, 29.943266, 44.476608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274565, 0.093969, 0.956966,
		0.767576, 0.620857, 0.159262,
		-0.579173, 0.778272, -0.242593,
		30.352428, 30.176748, 44.403831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637815, 29.865715, 45.213223>,  <30.757849, 29.631958, 44.573647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637815, 29.865715, 45.213223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.431463, 30.106400, 44.969318>,  <30.307652, 30.250811, 44.822975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.431463, 30.106400, 44.969318>,  <30.637815, 29.865715, 45.213223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.431463, 30.106400, 44.969318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656348, 0.179800, 0.732721,
		0.550521, 0.778214, 0.302175,
		-0.515883, 0.601710, -0.609763,
		30.276699, 30.286913, 44.786388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648455, 30.562248, 45.462074>,  <30.637815, 29.865715, 45.213223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.648455, 30.562248, 45.462074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315559, 30.479664, 45.256260>,  <30.115822, 30.430113, 45.132771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315559, 30.479664, 45.256260>,  <30.648455, 30.562248, 45.462074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315559, 30.479664, 45.256260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550326, 0.195111, 0.811833,
		-0.067219, 0.958804, -0.276000,
		-0.832239, -0.206461, -0.514540,
		30.065887, 30.417727, 45.101898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.179943, 30.987787, 45.589291>,  <30.648455, 30.562248, 45.462074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.179943, 30.987787, 45.589291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.981670, 30.664402, 45.462368>,  <29.862707, 30.470371, 45.386215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.981670, 30.664402, 45.462368>,  <30.179943, 30.987787, 45.589291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.981670, 30.664402, 45.462368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708147, 0.164703, 0.686586,
		-0.502819, 0.565030, -0.654152,
		-0.495683, -0.808464, -0.317309,
		29.832966, 30.421864, 45.367176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360065, 30.770828, 45.666561>,  <30.179943, 30.987787, 45.589291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360065, 30.770828, 45.666561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.979977, 30.765022, 45.791054>,  <28.751923, 30.761538, 45.865749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.979977, 30.765022, 45.791054>,  <29.360065, 30.770828, 45.666561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.979977, 30.765022, 45.791054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116306, -0.943232, 0.311105,
		0.289045, 0.331818, 0.897970,
		-0.950224, -0.014516, 0.311229,
		28.694910, 30.760668, 45.884422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486946, 31.486513, 45.467781>,  <29.360065, 30.770828, 45.666561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486946, 31.486513, 45.467781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.195072, 31.585489, 45.722759>,  <29.019947, 31.644875, 45.875744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.195072, 31.585489, 45.722759>,  <29.486946, 31.486513, 45.467781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.195072, 31.585489, 45.722759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677863, -0.384175, -0.626826,
		0.089788, -0.889485, 0.448057,
		-0.729684, 0.247439, 0.637444,
		28.976168, 31.659721, 45.913994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.953676, 31.302282, 45.037472>,  <29.486946, 31.486513, 45.467781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.953676, 31.302282, 45.037472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.582815, 31.202394, 45.149204>,  <28.360298, 31.142462, 45.216244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.582815, 31.202394, 45.149204>,  <28.953676, 31.302282, 45.037472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.582815, 31.202394, 45.149204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243400, -0.165375, -0.955724,
		0.284856, -0.954092, 0.092546,
		-0.927153, -0.249718, 0.279334,
		28.304668, 31.127480, 45.233006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.761990, 30.646509, 44.854130>,  <28.953676, 31.302282, 45.037472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.761990, 30.646509, 44.854130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.432426, 30.872030, 44.877102>,  <28.234688, 31.007343, 44.890884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.432426, 30.872030, 44.877102>,  <28.761990, 30.646509, 44.854130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.432426, 30.872030, 44.877102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080635, -0.016319, -0.996610,
		-0.560956, -0.825747, 0.058907,
		-0.823909, 0.563805, 0.057430,
		28.185253, 31.041172, 44.894329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.305904, 30.445509, 44.276730>,  <28.761990, 30.646509, 44.854130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.305904, 30.445509, 44.276730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.243778, 30.825954, 44.383507>,  <28.206503, 31.054222, 44.447575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.243778, 30.825954, 44.383507>,  <28.305904, 30.445509, 44.276730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.243778, 30.825954, 44.383507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188066, 0.293751, -0.937199,
		-0.969798, -0.095357, -0.224496,
		-0.155315, 0.951114, 0.266946,
		28.197184, 31.111288, 44.463589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.625629, 30.141415, 43.876358>,  <28.305904, 30.445509, 44.276730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.625629, 30.141415, 43.876358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.534317, 30.460157, 44.100109>,  <27.479528, 30.651403, 44.234360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.534317, 30.460157, 44.100109>,  <27.625629, 30.141415, 43.876358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.534317, 30.460157, 44.100109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361298, 0.602858, -0.711355,
		-0.904075, 0.039713, -0.425525,
		-0.228282, 0.796859, 0.559377,
		27.465832, 30.699215, 44.267921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.357134, 30.566294, 43.394112>,  <27.625629, 30.141415, 43.876358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.357134, 30.566294, 43.394112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.532280, 30.803036, 43.664810>,  <27.637367, 30.945082, 43.827229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.532280, 30.803036, 43.664810>,  <27.357134, 30.566294, 43.394112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532280, 30.803036, 43.664810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348767, 0.581967, -0.734627,
		-0.828634, 0.557694, 0.048404,
		0.437867, 0.591855, 0.676743,
		27.663639, 30.980593, 43.867832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.186661, 31.314182, 43.350868>,  <27.357134, 30.566294, 43.394112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.186661, 31.314182, 43.350868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.549603, 31.271778, 43.513580>,  <27.767368, 31.246336, 43.611206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.549603, 31.271778, 43.513580>,  <27.186661, 31.314182, 43.350868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.549603, 31.271778, 43.513580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399577, 0.518044, -0.756286,
		-0.130553, 0.848759, 0.512410,
		0.907356, -0.106011, 0.406777,
		27.821810, 31.239975, 43.635612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.503590, 31.947392, 43.323662>,  <27.186661, 31.314182, 43.350868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.503590, 31.947392, 43.323662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.804684, 31.685305, 43.349201>,  <27.985340, 31.528053, 43.364525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.804684, 31.685305, 43.349201>,  <27.503590, 31.947392, 43.323662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.804684, 31.685305, 43.349201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528360, 0.543431, -0.652318,
		0.392711, 0.524760, 0.755251,
		0.752737, -0.655217, 0.063851,
		28.030504, 31.488739, 43.368355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081089, 32.300404, 43.174953>,  <27.503590, 31.947392, 43.323662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081089, 32.300404, 43.174953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200251, 31.920666, 43.134945>,  <28.271748, 31.692823, 43.110939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200251, 31.920666, 43.134945>,  <28.081089, 32.300404, 43.174953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.200251, 31.920666, 43.134945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507533, 0.246255, -0.825693,
		0.808494, 0.195216, 0.555182,
		0.297905, -0.949341, -0.100017,
		28.289621, 31.635864, 43.104939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.826349, 32.300522, 43.174988>,  <28.081089, 32.300404, 43.174953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.826349, 32.300522, 43.174988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.680809, 31.989002, 42.970604>,  <28.593485, 31.802090, 42.847973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.680809, 31.989002, 42.970604>,  <28.826349, 32.300522, 43.174988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.680809, 31.989002, 42.970604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577502, 0.241782, -0.779765,
		0.730824, -0.578798, 0.361787,
		-0.363852, -0.778803, -0.510957,
		28.571653, 31.755362, 42.817318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.353186, 32.170456, 42.804611>,  <28.826349, 32.300522, 43.174988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.353186, 32.170456, 42.804611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.082277, 31.936457, 42.626137>,  <28.919733, 31.796057, 42.519051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.082277, 31.936457, 42.626137>,  <29.353186, 32.170456, 42.804611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.082277, 31.936457, 42.626137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484183, 0.102226, -0.868974,
		0.553962, -0.804565, 0.214013,
		-0.677269, -0.585000, -0.446186,
		28.879097, 31.760956, 42.492279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.713737, 31.848808, 42.406380>,  <29.353186, 32.170456, 42.804611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.713737, 31.848808, 42.406380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.358454, 31.831533, 42.223415>,  <29.145285, 31.821169, 42.113636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.358454, 31.831533, 42.223415>,  <29.713737, 31.848808, 42.406380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.358454, 31.831533, 42.223415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423346, 0.309872, -0.851327,
		0.178504, -0.949797, -0.256947,
		-0.888208, -0.043188, -0.457407,
		29.091991, 31.818577, 42.086193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919001, 31.619213, 41.757816>,  <29.713737, 31.848808, 42.406380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919001, 31.619213, 41.757816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.552746, 31.775146, 41.718552>,  <29.332993, 31.868706, 41.694992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.552746, 31.775146, 41.718552>,  <29.919001, 31.619213, 41.757816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.552746, 31.775146, 41.718552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231661, 0.312117, -0.921366,
		-0.328541, -0.866379, -0.376096,
		-0.915639, 0.389833, -0.098163,
		29.278053, 31.892096, 41.689102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.758781, 31.505854, 41.115524>,  <29.919001, 31.619213, 41.757816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.758781, 31.505854, 41.115524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.494154, 31.791100, 41.208294>,  <29.335377, 31.962248, 41.263958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.494154, 31.791100, 41.208294>,  <29.758781, 31.505854, 41.115524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.494154, 31.791100, 41.208294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091583, 0.383805, -0.918861,
		-0.744269, -0.586651, -0.319223,
		-0.661571, 0.713116, 0.231927,
		29.295683, 32.005035, 41.277870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.238379, 31.468302, 40.495033>,  <29.758781, 31.505854, 41.115524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.238379, 31.468302, 40.495033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.215639, 31.824125, 40.676342>,  <29.201996, 32.037621, 40.785126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.215639, 31.824125, 40.676342>,  <29.238379, 31.468302, 40.495033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.215639, 31.824125, 40.676342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197468, 0.455054, -0.868293,
		-0.978660, 0.040146, -0.201528,
		-0.056848, 0.889558, 0.453271,
		29.198586, 32.090992, 40.812325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.685991, 31.749180, 40.101242>,  <29.238379, 31.468302, 40.495033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.685991, 31.749180, 40.101242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.922031, 32.011147, 40.290077>,  <29.063656, 32.168327, 40.403378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.922031, 32.011147, 40.290077>,  <28.685991, 31.749180, 40.101242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.922031, 32.011147, 40.290077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168261, 0.472140, -0.865316,
		-0.789603, 0.590055, 0.168412,
		0.590098, 0.654919, 0.472086,
		29.099060, 32.207623, 40.431702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.537672, 32.295036, 39.753044>,  <28.685991, 31.749180, 40.101242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.537672, 32.295036, 39.753044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.877419, 32.391285, 39.940948>,  <29.081266, 32.449032, 40.053692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.877419, 32.391285, 39.940948>,  <28.537672, 32.295036, 39.753044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.877419, 32.391285, 39.940948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271328, 0.564371, -0.779658,
		-0.452723, 0.789675, 0.414071,
		0.849366, 0.240620, 0.469765,
		29.132229, 32.463470, 40.081879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670712, 33.041931, 39.577202>,  <28.537672, 32.295036, 39.753044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670712, 33.041931, 39.577202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.017595, 32.874420, 39.684959>,  <29.225725, 32.773914, 39.749615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.017595, 32.874420, 39.684959>,  <28.670712, 33.041931, 39.577202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.017595, 32.874420, 39.684959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492511, 0.641699, -0.587925,
		0.073340, 0.642533, 0.762740,
		0.867211, -0.418776, 0.269392,
		29.277758, 32.748787, 39.765778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.146893, 33.666161, 39.732056>,  <28.670712, 33.041931, 39.577202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.146893, 33.666161, 39.732056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365578, 33.340008, 39.655884>,  <29.496788, 33.144318, 39.610180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365578, 33.340008, 39.655884>,  <29.146893, 33.666161, 39.732056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365578, 33.340008, 39.655884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532974, 0.514283, -0.671901,
		0.645789, 0.265842, 0.715741,
		0.546713, -0.815378, -0.190431,
		29.529591, 33.095394, 39.598755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805578, 33.953323, 39.503281>,  <29.146893, 33.666161, 39.732056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.805578, 33.953323, 39.503281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835268, 33.570595, 39.390869>,  <29.853083, 33.340958, 39.323421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835268, 33.570595, 39.390869>,  <29.805578, 33.953323, 39.503281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.835268, 33.570595, 39.390869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549793, 0.274371, -0.788954,
		0.831997, -0.095945, 0.546421,
		0.074226, -0.956826, -0.281025,
		29.857536, 33.283546, 39.306561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.524260, 33.806728, 39.507572>,  <29.805578, 33.953323, 39.503281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.524260, 33.806728, 39.507572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.329567, 33.544239, 39.276936>,  <30.212751, 33.386745, 39.138554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.329567, 33.544239, 39.276936>,  <30.524260, 33.806728, 39.507572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329567, 33.544239, 39.276936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572770, 0.258629, -0.777847,
		0.659567, -0.708858, 0.249983,
		-0.486730, -0.656225, -0.576596,
		30.183548, 33.347370, 39.103958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.051788, 33.495964, 39.147236>,  <30.524260, 33.806728, 39.507572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.051788, 33.495964, 39.147236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.727764, 33.414089, 38.927452>,  <30.533350, 33.364964, 38.795582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.727764, 33.414089, 38.927452>,  <31.051788, 33.495964, 39.147236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727764, 33.414089, 38.927452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537002, 0.117281, -0.835389,
		0.235435, -0.971776, 0.014913,
		-0.810061, -0.204688, -0.549458,
		30.484745, 33.352684, 38.762615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236134, 32.922977, 38.641541>,  <31.051788, 33.495964, 39.147236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236134, 32.922977, 38.641541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911102, 33.119141, 38.515549>,  <30.716084, 33.236839, 38.439953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911102, 33.119141, 38.515549>,  <31.236134, 32.922977, 38.641541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911102, 33.119141, 38.515549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473091, 0.239290, -0.847895,
		-0.340442, -0.837997, -0.426450,
		-0.812579, 0.490409, -0.314984,
		30.667328, 33.266262, 38.421055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302504, 32.918068, 37.895187>,  <31.236134, 32.922977, 38.641541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302504, 32.918068, 37.895187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.015636, 33.193821, 37.936020>,  <30.843515, 33.359272, 37.960518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.015636, 33.193821, 37.936020>,  <31.302504, 32.918068, 37.895187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.015636, 33.193821, 37.936020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332908, 0.467578, -0.818867,
		-0.612241, -0.553284, -0.564834,
		-0.717170, 0.689382, 0.102078,
		30.800486, 33.400635, 37.966644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060137, 33.038929, 37.245182>,  <31.302504, 32.918068, 37.895187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060137, 33.038929, 37.245182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.962664, 33.388271, 37.413879>,  <30.904179, 33.597878, 37.515099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.962664, 33.388271, 37.413879>,  <31.060137, 33.038929, 37.245182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.962664, 33.388271, 37.413879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561207, 0.481632, -0.673110,
		-0.790990, 0.072659, -0.607500,
		-0.243684, 0.873356, 0.421742,
		30.889559, 33.650280, 37.540401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923557, 33.366714, 36.686749>,  <31.060137, 33.038929, 37.245182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923557, 33.366714, 36.686749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998941, 33.626141, 36.981731>,  <31.044172, 33.781796, 37.158722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998941, 33.626141, 36.981731>,  <30.923557, 33.366714, 36.686749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998941, 33.626141, 36.981731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421230, 0.624948, -0.657271,
		-0.887157, 0.434509, -0.155418,
		0.188463, 0.648569, 0.737455,
		31.055481, 33.820713, 37.202969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.690880, 33.985722, 36.446659>,  <30.923557, 33.366714, 36.686749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.690880, 33.985722, 36.446659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956909, 34.064949, 36.734673>,  <31.116528, 34.112488, 36.907478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956909, 34.064949, 36.734673>,  <30.690880, 33.985722, 36.446659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956909, 34.064949, 36.734673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475040, 0.631745, -0.612565,
		-0.576207, 0.749444, 0.326065,
		0.665073, 0.198070, 0.720032,
		31.156431, 34.124371, 36.950684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.902573, 34.658253, 36.314915>,  <30.690880, 33.985722, 36.446659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.902573, 34.658253, 36.314915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184891, 34.524719, 36.564846>,  <31.354282, 34.444599, 36.714806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184891, 34.524719, 36.564846>,  <30.902573, 34.658253, 36.314915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184891, 34.524719, 36.564846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699034, 0.471246, -0.537846,
		-0.114898, 0.816385, 0.565962,
		0.705797, -0.333830, 0.624826,
		31.396629, 34.424572, 36.752293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208738, 35.316967, 36.660107>,  <30.902573, 34.658253, 36.314915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208738, 35.316967, 36.660107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470505, 35.014683, 36.670273>,  <31.627565, 34.833313, 36.676373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470505, 35.014683, 36.670273>,  <31.208738, 35.316967, 36.660107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470505, 35.014683, 36.670273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668882, 0.562897, -0.485535,
		0.352615, 0.334743, 0.873848,
		0.654416, -0.755708, 0.025417,
		31.666830, 34.787971, 36.677898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744320, 35.515705, 37.010258>,  <31.208738, 35.316967, 36.660107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744320, 35.515705, 37.010258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906002, 35.209534, 36.809963>,  <32.003010, 35.025833, 36.689785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906002, 35.209534, 36.809963>,  <31.744320, 35.515705, 37.010258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906002, 35.209534, 36.809963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672749, 0.619698, -0.404207,
		0.619698, -0.173490, 0.765425,
		0.404207, -0.765425, -0.500741,
		32.027264, 34.979908, 36.659740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483101, 35.646130, 36.980682>,  <31.744320, 35.515705, 37.010258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483101, 35.646130, 36.980682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442390, 35.351398, 36.713333>,  <32.417965, 35.174561, 36.552921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442390, 35.351398, 36.713333>,  <32.483101, 35.646130, 36.980682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442390, 35.351398, 36.713333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788690, 0.349722, -0.505631,
		0.606309, -0.578600, 0.545538,
		-0.101771, -0.736829, -0.668375,
		32.411858, 35.130348, 36.512821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069653, 35.438557, 36.911049>,  <32.483101, 35.646130, 36.980682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069653, 35.438557, 36.911049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890064, 35.297394, 36.582687>,  <32.782310, 35.212696, 36.385670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890064, 35.297394, 36.582687>,  <33.069653, 35.438557, 36.911049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890064, 35.297394, 36.582687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679732, 0.461428, -0.570131,
		0.579992, -0.813965, 0.032717,
		-0.448970, -0.352910, -0.820902,
		32.755375, 35.191521, 36.336418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607342, 35.057278, 36.496632>,  <33.069653, 35.438557, 36.911049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607342, 35.057278, 36.496632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297218, 35.161182, 36.266354>,  <33.111145, 35.223526, 36.128189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297218, 35.161182, 36.266354>,  <33.607342, 35.057278, 36.496632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297218, 35.161182, 36.266354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631393, 0.341293, -0.696320,
		0.015599, -0.903349, -0.428622,
		-0.775306, 0.259767, -0.575693,
		33.064625, 35.239113, 36.093647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646370, 34.683220, 35.867878>,  <33.607342, 35.057278, 36.496632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646370, 34.683220, 35.867878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438431, 35.015579, 35.788521>,  <33.313667, 35.214996, 35.740906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438431, 35.015579, 35.788521>,  <33.646370, 34.683220, 35.867878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438431, 35.015579, 35.788521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653857, 0.237562, -0.718356,
		-0.549754, -0.503155, -0.666788,
		-0.519847, 0.830903, -0.198391,
		33.282478, 35.264851, 35.729004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700726, 34.756279, 35.087975>,  <33.646370, 34.683220, 35.867878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700726, 34.756279, 35.087975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558105, 35.111031, 35.205502>,  <33.472534, 35.323879, 35.276016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558105, 35.111031, 35.205502>,  <33.700726, 34.756279, 35.087975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558105, 35.111031, 35.205502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522358, 0.449971, -0.724340,
		-0.774606, -0.104787, -0.623702,
		-0.356549, 0.886874, 0.293814,
		33.451141, 35.377094, 35.293644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265026, 35.056870, 34.561676>,  <33.700726, 34.756279, 35.087975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265026, 35.056870, 34.561676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396111, 35.351822, 34.797939>,  <33.474762, 35.528793, 34.939697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396111, 35.351822, 34.797939>,  <33.265026, 35.056870, 34.561676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396111, 35.351822, 34.797939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412068, 0.451030, -0.791689,
		-0.850179, 0.502839, -0.156041,
		0.327712, 0.737377, 0.590660,
		33.494423, 35.573036, 34.975136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293800, 35.571400, 34.024029>,  <33.265026, 35.056870, 34.561676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293800, 35.571400, 34.024029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492641, 35.737198, 34.328945>,  <33.611946, 35.836678, 34.511894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492641, 35.737198, 34.328945>,  <33.293800, 35.571400, 34.024029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492641, 35.737198, 34.328945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673569, 0.369476, -0.640150,
		-0.546988, 0.831672, -0.095526,
		0.497101, 0.414498, 0.762288,
		33.641773, 35.861546, 34.557632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326302, 36.232819, 33.842552>,  <33.293800, 35.571400, 34.024029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326302, 36.232819, 33.842552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603813, 36.191696, 34.127674>,  <33.770321, 36.167023, 34.298748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603813, 36.191696, 34.127674>,  <33.326302, 36.232819, 33.842552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603813, 36.191696, 34.127674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582332, 0.662432, -0.471247,
		-0.423740, 0.742034, 0.519451,
		0.693783, -0.102806, 0.712809,
		33.811947, 36.160854, 34.341518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648643, 36.927795, 33.859787>,  <33.326302, 36.232819, 33.842552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648643, 36.927795, 33.859787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886322, 36.638020, 33.999569>,  <34.028931, 36.464153, 34.083439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886322, 36.638020, 33.999569>,  <33.648643, 36.927795, 33.859787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886322, 36.638020, 33.999569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701188, 0.253711, -0.666308,
		0.394039, 0.640952, 0.658722,
		0.594196, -0.724439, 0.349456,
		34.064579, 36.420689, 34.104404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302780, 37.164173, 34.153694>,  <33.648643, 36.927795, 33.859787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302780, 37.164173, 34.153694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361347, 36.796055, 34.008583>,  <34.396488, 36.575184, 33.921516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361347, 36.796055, 34.008583>,  <34.302780, 37.164173, 34.153694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361347, 36.796055, 34.008583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780159, 0.332907, -0.529646,
		0.608205, -0.205476, 0.766724,
		0.146418, -0.920300, -0.362780,
		34.405273, 36.519966, 33.899750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032558, 37.028957, 34.228771>,  <34.302780, 37.164173, 34.153694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032558, 37.028957, 34.228771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898884, 36.764523, 33.960060>,  <34.818680, 36.605862, 33.798836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898884, 36.764523, 33.960060>,  <35.032558, 37.028957, 34.228771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898884, 36.764523, 33.960060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820720, 0.146324, -0.552275,
		0.463400, -0.735901, 0.493670,
		-0.334184, -0.661090, -0.671775,
		34.798630, 36.566196, 33.758526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638824, 36.635616, 34.101616>,  <35.032558, 37.028957, 34.228771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638824, 36.635616, 34.101616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402168, 36.556419, 33.789009>,  <35.260174, 36.508900, 33.601444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402168, 36.556419, 33.789009>,  <35.638824, 36.635616, 34.101616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402168, 36.556419, 33.789009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758315, 0.192454, -0.622832,
		0.273724, -0.961124, 0.036281,
		-0.591636, -0.197996, -0.781514,
		35.224678, 36.497021, 33.554554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082638, 36.354736, 33.519657>,  <35.638824, 36.635616, 34.101616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082638, 36.354736, 33.519657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767635, 36.425995, 33.283661>,  <35.578632, 36.468750, 33.142063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767635, 36.425995, 33.283661>,  <36.082638, 36.354736, 33.519657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767635, 36.425995, 33.283661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615640, 0.183051, -0.766472,
		-0.028548, -0.966827, -0.253830,
		-0.787510, 0.178149, -0.589992,
		35.531384, 36.479439, 33.106663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249317, 35.946674, 32.928444>,  <36.082638, 36.354736, 33.519657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249317, 35.946674, 32.928444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968555, 36.206921, 32.812489>,  <35.800098, 36.363068, 32.742916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968555, 36.206921, 32.812489>,  <36.249317, 35.946674, 32.928444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968555, 36.206921, 32.812489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484353, 0.137584, -0.863987,
		-0.522236, -0.746844, -0.411696,
		-0.701906, 0.650611, -0.289885,
		35.757984, 36.402103, 32.725525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987797, 35.853619, 32.227417>,  <36.249317, 35.946674, 32.928444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987797, 35.853619, 32.227417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854599, 36.226505, 32.284119>,  <35.774681, 36.450237, 32.318138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854599, 36.226505, 32.284119>,  <35.987797, 35.853619, 32.227417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854599, 36.226505, 32.284119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431729, 0.284379, -0.856002,
		-0.838287, -0.223847, -0.497160,
		-0.332996, 0.932213, 0.141750,
		35.754700, 36.506168, 32.326645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754005, 36.034859, 31.574858>,  <35.987797, 35.853619, 32.227417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754005, 36.034859, 31.574858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786194, 36.386993, 31.761845>,  <35.805508, 36.598274, 31.874037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786194, 36.386993, 31.761845>,  <35.754005, 36.034859, 31.574858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786194, 36.386993, 31.761845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545848, 0.353494, -0.759666,
		-0.834012, 0.316293, -0.452088,
		0.080467, 0.880341, 0.467466,
		35.810333, 36.651096, 31.902084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274307, 35.804878, 32.174538>,  <35.754005, 36.034859, 31.574858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274307, 35.804878, 32.174538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290413, 35.539970, 31.875263>,  <35.300076, 35.381027, 31.695700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290413, 35.539970, 31.875263>,  <35.274307, 35.804878, 32.174538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290413, 35.539970, 31.875263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924376, -0.308974, 0.223750,
		-0.379352, 0.682595, -0.624625,
		0.040262, -0.662268, -0.748184,
		35.302490, 35.341290, 31.650808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510265, 35.681847, 31.891804>,  <35.274307, 35.804878, 32.174538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510265, 35.681847, 31.891804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696472, 35.357521, 31.749886>,  <34.808197, 35.162926, 31.664736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696472, 35.357521, 31.749886>,  <34.510265, 35.681847, 31.891804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696472, 35.357521, 31.749886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796771, -0.558461, 0.230818,
		-0.385287, 0.175240, -0.906005,
		0.465519, -0.810810, -0.354794,
		34.836128, 35.114277, 31.643448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062885, 35.452137, 31.450548>,  <34.510265, 35.681847, 31.891804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062885, 35.452137, 31.450548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309128, 35.142761, 31.510979>,  <34.456871, 34.957134, 31.547237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309128, 35.142761, 31.510979>,  <34.062885, 35.452137, 31.450548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309128, 35.142761, 31.510979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780276, -0.571345, 0.254430,
		-0.110470, -0.274507, -0.955218,
		0.615602, -0.773441, 0.151075,
		34.493809, 34.910728, 31.556301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799786, 34.826778, 31.180445>,  <34.062885, 35.452137, 31.450548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799786, 34.826778, 31.180445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039478, 34.682938, 31.466551>,  <34.183292, 34.596634, 31.638214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039478, 34.682938, 31.466551>,  <33.799786, 34.826778, 31.180445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039478, 34.682938, 31.466551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730705, -0.610711, 0.305127,
		0.327095, -0.705489, -0.628724,
		0.599233, -0.359606, 0.715265,
		34.219250, 34.575054, 31.681129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576801, 34.209438, 31.183359>,  <33.799786, 34.826778, 31.180445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576801, 34.209438, 31.183359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790668, 34.233040, 31.520559>,  <33.918987, 34.247200, 31.722879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790668, 34.233040, 31.520559>,  <33.576801, 34.209438, 31.183359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790668, 34.233040, 31.520559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614641, -0.657459, 0.435849,
		0.579956, -0.751177, -0.315253,
		0.534666, 0.059006, 0.843001,
		33.951069, 34.250740, 31.773460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731949, 33.469368, 31.454763>,  <33.576801, 34.209438, 31.183359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731949, 33.469368, 31.454763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768223, 33.717709, 31.766230>,  <33.789986, 33.866714, 31.953110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768223, 33.717709, 31.766230>,  <33.731949, 33.469368, 31.454763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768223, 33.717709, 31.766230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607874, -0.584825, 0.537093,
		0.788838, -0.522035, 0.324367,
		0.090683, 0.620853, 0.778664,
		33.795429, 33.903965, 31.999828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797554, 33.001434, 32.022205>,  <33.731949, 33.469368, 31.454763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797554, 33.001434, 32.022205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724697, 33.353573, 32.197395>,  <33.680981, 33.564854, 32.302509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724697, 33.353573, 32.197395>,  <33.797554, 33.001434, 32.022205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724697, 33.353573, 32.197395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467765, -0.469372, 0.748923,
		0.864881, -0.068454, 0.497288,
		-0.182146, 0.880343, 0.437971,
		33.670052, 33.617676, 32.328785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954174, 32.969372, 32.717197>,  <33.797554, 33.001434, 32.022205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954174, 32.969372, 32.717197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683338, 33.262264, 32.687851>,  <33.520836, 33.438000, 32.670242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683338, 33.262264, 32.687851>,  <33.954174, 32.969372, 32.717197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683338, 33.262264, 32.687851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538895, -0.425469, 0.727027,
		0.501142, 0.531797, 0.682678,
		-0.677089, 0.732235, -0.073362,
		33.480213, 33.481934, 32.665844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660488, 32.986401, 33.343800>,  <33.954174, 32.969372, 32.717197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660488, 32.986401, 33.343800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379032, 33.192406, 33.147984>,  <33.210159, 33.316010, 33.030495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379032, 33.192406, 33.147984>,  <33.660488, 32.986401, 33.343800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379032, 33.192406, 33.147984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695537, -0.358308, 0.622771,
		0.145331, 0.778700, 0.610332,
		-0.703639, 0.515017, -0.489541,
		33.167942, 33.346912, 33.001122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219990, 33.366585, 33.800900>,  <33.660488, 32.986401, 33.343800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219990, 33.366585, 33.800900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974197, 33.325943, 33.487957>,  <32.826721, 33.301559, 33.300190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974197, 33.325943, 33.487957>,  <33.219990, 33.366585, 33.800900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974197, 33.325943, 33.487957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738749, -0.273923, 0.615804,
		-0.276873, 0.956370, 0.093264,
		-0.614484, -0.101601, -0.782360,
		32.789852, 33.295464, 33.253250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487301, 33.619972, 34.071159>,  <33.219990, 33.366585, 33.800900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487301, 33.619972, 34.071159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382343, 33.454430, 33.722477>,  <32.319366, 33.355103, 33.513268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382343, 33.454430, 33.722477>,  <32.487301, 33.619972, 34.071159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382343, 33.454430, 33.722477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806722, -0.401594, 0.433500,
		-0.529478, 0.816974, -0.228489,
		-0.262398, -0.413856, -0.871706,
		32.303623, 33.330273, 33.460964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854700, 33.843239, 33.921379>,  <32.487301, 33.619972, 34.071159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854700, 33.843239, 33.921379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879143, 33.506161, 33.707413>,  <31.893808, 33.303913, 33.579033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879143, 33.506161, 33.707413>,  <31.854700, 33.843239, 33.921379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879143, 33.506161, 33.707413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865022, -0.312093, 0.392854,
		-0.497998, 0.438706, -0.748021,
		0.061105, -0.842695, -0.534912,
		31.897474, 33.253353, 33.546940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.193142, 33.757919, 33.721977>,  <31.854700, 33.843239, 33.921379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.193142, 33.757919, 33.721977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337349, 33.388565, 33.669228>,  <31.423874, 33.166954, 33.637577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337349, 33.388565, 33.669228>,  <31.193142, 33.757919, 33.721977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337349, 33.388565, 33.669228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870889, -0.383858, 0.306929,
		-0.334034, 0.004196, -0.942551,
		0.360518, -0.923383, -0.131876,
		31.445503, 33.111549, 33.629665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525274, 33.295372, 33.417984>,  <31.193142, 33.757919, 33.721977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525274, 33.295372, 33.417984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.809183, 33.080917, 33.600750>,  <30.979528, 32.952244, 33.710411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.809183, 33.080917, 33.600750>,  <30.525274, 33.295372, 33.417984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809183, 33.080917, 33.600750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704360, -0.549277, 0.449636,
		0.009907, -0.640975, -0.767497,
		0.709774, -0.536140, 0.456919,
		31.022116, 32.920074, 33.737827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.264883, 32.632969, 33.383461>,  <30.525274, 33.295372, 33.417984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.264883, 32.632969, 33.383461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.530182, 32.618469, 33.682472>,  <30.689362, 32.609768, 33.861877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.530182, 32.618469, 33.682472>,  <30.264883, 32.632969, 33.383461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.530182, 32.618469, 33.682472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696949, -0.393875, 0.599270,
		0.272706, -0.918449, -0.286503,
		0.663245, -0.036253, 0.747524,
		30.729155, 32.607594, 33.906731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.295383, 31.883011, 33.649460>,  <30.264883, 32.632969, 33.383461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.295383, 31.883011, 33.649460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440815, 32.118832, 33.937969>,  <30.528074, 32.260323, 34.111076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440815, 32.118832, 33.937969>,  <30.295383, 31.883011, 33.649460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440815, 32.118832, 33.937969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609393, -0.435099, 0.662819,
		0.704592, -0.680529, 0.201075,
		0.363580, 0.589550, 0.721277,
		30.549889, 32.295696, 34.154354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.358984, 31.490534, 34.235142>,  <30.295383, 31.883011, 33.649460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.358984, 31.490534, 34.235142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.378223, 31.844975, 34.419537>,  <30.389767, 32.057640, 34.530174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.378223, 31.844975, 34.419537>,  <30.358984, 31.490534, 34.235142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.378223, 31.844975, 34.419537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509752, -0.375119, 0.774234,
		0.858976, -0.272227, 0.433651,
		0.048096, 0.886103, 0.460987,
		30.392653, 32.110806, 34.557831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607716, 31.391150, 34.932697>,  <30.358984, 31.490534, 34.235142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607716, 31.391150, 34.932697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.456530, 31.761162, 34.947994>,  <30.365818, 31.983170, 34.957172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.456530, 31.761162, 34.947994>,  <30.607716, 31.391150, 34.932697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.456530, 31.761162, 34.947994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507188, -0.241442, 0.827324,
		0.774533, 0.293304, 0.560421,
		-0.377967, 0.925029, 0.038244,
		30.343140, 32.038670, 34.959469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804609, 31.687056, 35.615841>,  <30.607716, 31.391150, 34.932697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804609, 31.687056, 35.615841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472534, 31.869663, 35.487854>,  <30.273289, 31.979227, 35.411064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472534, 31.869663, 35.487854>,  <30.804609, 31.687056, 35.615841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472534, 31.869663, 35.487854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424003, -0.144427, 0.894071,
		0.361950, 0.877913, 0.313467,
		-0.830189, 0.456520, -0.319963,
		30.223478, 32.006618, 35.391865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628332, 32.230072, 36.145763>,  <30.804609, 31.687056, 35.615841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628332, 32.230072, 36.145763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294291, 32.140308, 35.944870>,  <30.093864, 32.086449, 35.824333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294291, 32.140308, 35.944870>,  <30.628332, 32.230072, 36.145763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.294291, 32.140308, 35.944870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478689, -0.153370, 0.864485,
		-0.271026, 0.962350, 0.020658,
		-0.835106, -0.224410, -0.502233,
		30.043758, 32.072987, 35.794201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158386, 32.500465, 36.568676>,  <30.628332, 32.230072, 36.145763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158386, 32.500465, 36.568676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.932215, 32.277336, 36.325657>,  <29.796511, 32.143459, 36.179844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.932215, 32.277336, 36.325657>,  <30.158386, 32.500465, 36.568676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932215, 32.277336, 36.325657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586994, -0.245310, 0.771532,
		-0.579420, 0.792876, -0.188735,
		-0.565430, -0.557827, -0.607551,
		29.762587, 32.109989, 36.143391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.630426, 32.704956, 36.869381>,  <30.158386, 32.500465, 36.568676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.630426, 32.704956, 36.869381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.577894, 32.370819, 36.655857>,  <29.546375, 32.170338, 36.527740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.577894, 32.370819, 36.655857>,  <29.630426, 32.704956, 36.869381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.577894, 32.370819, 36.655857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430028, -0.437172, 0.789909,
		-0.893213, 0.333292, -0.301807,
		-0.131329, -0.835343, -0.533813,
		29.538496, 32.120216, 36.495712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914936, 32.535255, 37.056198>,  <29.630426, 32.704956, 36.869381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914936, 32.535255, 37.056198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.106512, 32.204453, 36.938435>,  <29.221458, 32.005970, 36.867779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.106512, 32.204453, 36.938435>,  <28.914936, 32.535255, 37.056198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.106512, 32.204453, 36.938435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285784, -0.463992, 0.838474,
		-0.830027, -0.317442, -0.458570,
		0.478940, -0.827008, -0.294407,
		29.250195, 31.956350, 36.850113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485571, 32.001015, 37.126289>,  <28.914936, 32.535255, 37.056198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.485571, 32.001015, 37.126289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.841599, 31.820406, 37.101292>,  <29.055216, 31.712042, 37.086292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.841599, 31.820406, 37.101292>,  <28.485571, 32.001015, 37.126289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.841599, 31.820406, 37.101292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211727, -0.530949, 0.820527,
		-0.403665, -0.717095, -0.568180,
		0.890071, -0.451517, -0.062498,
		29.108620, 31.684950, 37.082542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.368496, 31.418539, 37.312622>,  <28.485571, 32.001015, 37.126289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.368496, 31.418539, 37.312622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766579, 31.430094, 37.350002>,  <29.005428, 31.437027, 37.372429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766579, 31.430094, 37.350002>,  <28.368496, 31.418539, 37.312622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766579, 31.430094, 37.350002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050382, -0.667498, 0.742905,
		0.083835, -0.744051, -0.662843,
		0.995205, 0.028886, 0.093447,
		29.065140, 31.438759, 37.378036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.668230, 30.694399, 37.288319>,  <28.368496, 31.418539, 37.312622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.668230, 30.694399, 37.288319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.910551, 30.938871, 37.492069>,  <29.055943, 31.085556, 37.614319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.910551, 30.938871, 37.492069>,  <28.668230, 30.694399, 37.288319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.910551, 30.938871, 37.492069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068170, -0.597997, 0.798594,
		0.792691, -0.518513, -0.320602,
		0.605801, 0.611183, 0.509374,
		29.092291, 31.122227, 37.644882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060364, 30.260498, 37.531319>,  <28.668230, 30.694399, 37.288319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.060364, 30.260498, 37.531319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.137405, 30.575502, 37.765491>,  <29.183630, 30.764505, 37.905994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.137405, 30.575502, 37.765491>,  <29.060364, 30.260498, 37.531319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.137405, 30.575502, 37.765491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059790, -0.586076, 0.808047,
		0.979453, -0.190637, -0.065795,
		0.192604, 0.787511, 0.585432,
		29.195187, 30.811756, 37.941120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552629, 30.003017, 37.984783>,  <29.060364, 30.260498, 37.531319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.552629, 30.003017, 37.984783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.443365, 30.334608, 38.180000>,  <29.377808, 30.533562, 38.297131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.443365, 30.334608, 38.180000>,  <29.552629, 30.003017, 37.984783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.443365, 30.334608, 38.180000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044982, -0.495773, 0.867287,
		0.960917, 0.258860, 0.098136,
		-0.273159, 0.828976, 0.488041,
		29.361418, 30.583302, 38.326412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992094, 30.205070, 38.595364>,  <29.552629, 30.003017, 37.984783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992094, 30.205070, 38.595364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640867, 30.376459, 38.680599>,  <29.430130, 30.479292, 38.731743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640867, 30.376459, 38.680599>,  <29.992094, 30.205070, 38.595364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640867, 30.376459, 38.680599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096486, -0.277636, 0.955829,
		0.468707, 0.859844, 0.202441,
		-0.878068, 0.428471, 0.213093,
		29.377447, 30.505001, 38.744526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.128979, 30.406044, 39.178768>,  <29.992094, 30.205070, 38.595364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.128979, 30.406044, 39.178768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.730040, 30.406960, 39.149681>,  <29.490675, 30.407509, 39.132229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.730040, 30.406960, 39.149681>,  <30.128979, 30.406044, 39.178768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.730040, 30.406960, 39.149681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070267, -0.289576, 0.954572,
		-0.018872, 0.957152, 0.288970,
		-0.997350, 0.002291, -0.072721,
		29.430834, 30.407646, 39.127865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.856701, 30.448065, 39.857170>,  <30.128979, 30.406044, 39.178768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.856701, 30.448065, 39.857170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.498518, 30.349987, 39.708561>,  <29.283607, 30.291140, 39.619396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.498518, 30.349987, 39.708561>,  <29.856701, 30.448065, 39.857170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498518, 30.349987, 39.708561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183798, -0.556496, 0.810265,
		-0.405426, 0.793846, 0.453254,
		-0.895460, -0.245196, -0.371525,
		29.229879, 30.276428, 39.597103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.372175, 30.582006, 40.393951>,  <29.856701, 30.448065, 39.857170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.372175, 30.582006, 40.393951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.206072, 30.328325, 40.133076>,  <29.106409, 30.176117, 39.976551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.206072, 30.328325, 40.133076>,  <29.372175, 30.582006, 40.393951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.206072, 30.328325, 40.133076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210870, -0.630290, 0.747173,
		-0.884926, 0.447797, 0.127999,
		-0.415259, -0.634202, -0.652187,
		29.081493, 30.138065, 39.937420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824593, 30.317099, 40.802032>,  <29.372175, 30.582006, 40.393951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824593, 30.317099, 40.802032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.891737, 30.038445, 40.523029>,  <28.932024, 29.871252, 40.355625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.891737, 30.038445, 40.523029>,  <28.824593, 30.317099, 40.802032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.891737, 30.038445, 40.523029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174348, -0.717375, 0.674519,
		-0.970271, 0.008384, -0.241876,
		0.167861, -0.696637, -0.697510,
		28.942095, 29.829453, 40.313778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.202141, 29.904804, 40.709621>,  <28.824593, 30.317099, 40.802032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.202141, 29.904804, 40.709621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.509819, 29.677246, 40.593216>,  <28.694426, 29.540710, 40.523373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.509819, 29.677246, 40.593216>,  <28.202141, 29.904804, 40.709621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.509819, 29.677246, 40.593216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344952, -0.753030, 0.560316,
		-0.537906, -0.330608, -0.775471,
		0.769198, -0.568897, -0.291016,
		28.740578, 29.506577, 40.505913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.890709, 29.180984, 40.714005>,  <28.202141, 29.904804, 40.709621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.890709, 29.180984, 40.714005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.276907, 29.104618, 40.643154>,  <28.508625, 29.058798, 40.600643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.276907, 29.104618, 40.643154>,  <27.890709, 29.180984, 40.714005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.276907, 29.104618, 40.643154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089130, -0.881300, 0.464075,
		-0.244700, -0.432274, -0.867906,
		0.965493, -0.190916, -0.177126,
		28.566555, 29.047342, 40.590015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.976505, 28.596222, 40.346298>,  <27.890709, 29.180984, 40.714005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.976505, 28.596222, 40.346298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299259, 28.655165, 40.575111>,  <28.492910, 28.690531, 40.712399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299259, 28.655165, 40.575111>,  <27.976505, 28.596222, 40.346298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.299259, 28.655165, 40.575111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144444, -0.889768, 0.432953,
		0.572779, -0.431970, -0.696654,
		0.806883, 0.147359, 0.572035,
		28.541325, 28.699373, 40.746723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279718, 27.948395, 40.346237>,  <27.976505, 28.596222, 40.346298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.279718, 27.948395, 40.346237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.408003, 28.138165, 40.674156>,  <28.484974, 28.252028, 40.870907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.408003, 28.138165, 40.674156>,  <28.279718, 27.948395, 40.346237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.408003, 28.138165, 40.674156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028664, -0.860256, 0.509056,
		0.946743, -0.186759, -0.262296,
		0.320713, 0.474426, 0.819794,
		28.504217, 28.280493, 40.920094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.793350, 27.481104, 40.695885>,  <28.279718, 27.948395, 40.346237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.793350, 27.481104, 40.695885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.625889, 27.725571, 40.964573>,  <28.525412, 27.872252, 41.125786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.625889, 27.725571, 40.964573>,  <28.793350, 27.481104, 40.695885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.625889, 27.725571, 40.964573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350631, -0.791085, 0.501242,
		0.837728, -0.025678, 0.545485,
		-0.418654, 0.611168, 0.671717,
		28.500292, 27.908920, 41.166088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.421034, 27.277084, 41.054401>,  <28.793350, 27.481104, 40.695885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.421034, 27.277084, 41.054401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.491091, 26.913004, 40.904278>,  <29.533125, 26.694555, 40.814205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.491091, 26.913004, 40.904278>,  <29.421034, 27.277084, 41.054401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.491091, 26.913004, 40.904278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544363, 0.407156, -0.733412,
		0.820362, -0.075852, 0.566791,
		0.175142, -0.910203, -0.375307,
		29.543633, 26.639942, 40.791687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170177, 27.203039, 40.992096>,  <29.421034, 27.277084, 41.054401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170177, 27.203039, 40.992096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980703, 26.952818, 40.744125>,  <29.867020, 26.802685, 40.595345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980703, 26.952818, 40.744125>,  <30.170177, 27.203039, 40.992096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980703, 26.952818, 40.744125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417217, 0.460516, -0.783489,
		0.775598, -0.629770, 0.042851,
		-0.473684, -0.625551, -0.619927,
		29.838598, 26.765152, 40.558147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734106, 27.083090, 40.536362>,  <30.170177, 27.203039, 40.992096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734106, 27.083090, 40.536362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.402941, 26.967638, 40.344006>,  <30.204243, 26.898367, 40.228592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.402941, 26.967638, 40.344006>,  <30.734106, 27.083090, 40.536362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.402941, 26.967638, 40.344006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422788, 0.242211, -0.873261,
		0.368528, -0.926296, -0.078498,
		-0.827911, -0.288633, -0.480888,
		30.154568, 26.881048, 40.199738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958963, 26.832335, 39.890400>,  <30.734106, 27.083090, 40.536362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958963, 26.832335, 39.890400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.569218, 26.871088, 39.809185>,  <30.335371, 26.894341, 39.760456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.569218, 26.871088, 39.809185>,  <30.958963, 26.832335, 39.890400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.569218, 26.871088, 39.809185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217437, 0.173927, -0.960453,
		-0.057740, -0.979981, -0.190535,
		-0.974365, 0.096887, -0.203042,
		30.276909, 26.900154, 39.748272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810034, 26.339846, 39.314564>,  <30.958963, 26.832335, 39.890400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.810034, 26.339846, 39.314564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.511406, 26.605089, 39.336189>,  <30.332230, 26.764235, 39.349163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.511406, 26.605089, 39.336189>,  <30.810034, 26.339846, 39.314564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.511406, 26.605089, 39.336189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058191, 0.146032, -0.987567,
		-0.662758, -0.734141, -0.147610,
		-0.746569, 0.663108, 0.054064,
		30.287436, 26.804022, 39.352409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.402229, 26.295975, 38.663162>,  <30.810034, 26.339846, 39.314564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.402229, 26.295975, 38.663162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.252991, 26.640350, 38.801483>,  <30.163448, 26.846975, 38.884476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.252991, 26.640350, 38.801483>,  <30.402229, 26.295975, 38.663162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.252991, 26.640350, 38.801483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034562, 0.359560, -0.932482,
		-0.927149, -0.359857, -0.104395,
		-0.373096, 0.860941, 0.345803,
		30.141062, 26.898632, 38.905224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775068, 26.304829, 38.397457>,  <30.402229, 26.295975, 38.663162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775068, 26.304829, 38.397457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.875040, 26.682417, 38.483673>,  <29.935022, 26.908970, 38.535400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.875040, 26.682417, 38.483673>,  <29.775068, 26.304829, 38.397457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.875040, 26.682417, 38.483673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128272, 0.252917, -0.958947,
		-0.959730, 0.212021, 0.184296,
		0.249929, 0.943970, 0.215536,
		29.950018, 26.965609, 38.548332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.280569, 26.720282, 38.083752>,  <29.775068, 26.304829, 38.397457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.280569, 26.720282, 38.083752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.610579, 26.938288, 38.143475>,  <29.808584, 27.069092, 38.179310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.610579, 26.938288, 38.143475>,  <29.280569, 26.720282, 38.083752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.610579, 26.938288, 38.143475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114145, 0.419499, -0.900550,
		-0.553449, 0.725933, 0.408308,
		0.825024, 0.545015, 0.149309,
		29.858086, 27.101791, 38.188267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090012, 27.368330, 37.864544>,  <29.280569, 26.720282, 38.083752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.090012, 27.368330, 37.864544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.489956, 27.374186, 37.861275>,  <29.729921, 27.377699, 37.859314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.489956, 27.374186, 37.861275>,  <29.090012, 27.368330, 37.864544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.489956, 27.374186, 37.861275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014567, 0.517002, -0.855860,
		-0.008300, 0.855859, 0.517143,
		0.999860, 0.014637, -0.008176,
		29.789913, 27.378576, 37.858822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.365166, 28.074076, 37.799301>,  <29.090012, 27.368330, 37.864544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.365166, 28.074076, 37.799301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.661942, 27.849632, 37.652504>,  <29.840008, 27.714966, 37.564426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.661942, 27.849632, 37.652504>,  <29.365166, 28.074076, 37.799301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.661942, 27.849632, 37.652504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007426, 0.540454, -0.841341,
		0.670424, 0.626950, 0.396819,
		0.741941, -0.561108, -0.366989,
		29.884523, 27.681299, 37.542408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.711226, 28.477394, 37.397938>,  <29.365166, 28.074076, 37.799301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.711226, 28.477394, 37.397938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.878942, 28.133507, 37.281265>,  <29.979572, 27.927174, 37.211262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.878942, 28.133507, 37.281265>,  <29.711226, 28.477394, 37.397938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.878942, 28.133507, 37.281265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184622, 0.395325, -0.899796,
		0.888881, 0.323425, 0.324479,
		0.419291, -0.859717, -0.291686,
		30.004730, 27.875591, 37.193760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.286688, 28.688595, 37.090694>,  <29.711226, 28.477394, 37.397938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.286688, 28.688595, 37.090694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.216240, 28.323599, 36.942993>,  <30.173971, 28.104601, 36.854374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.216240, 28.323599, 36.942993>,  <30.286688, 28.688595, 37.090694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.216240, 28.323599, 36.942993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182957, 0.338233, -0.923106,
		0.967217, -0.230132, 0.107377,
		-0.176118, -0.912490, -0.369249,
		30.163404, 28.049852, 36.832218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792059, 28.397617, 36.714478>,  <30.286688, 28.688595, 37.090694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.792059, 28.397617, 36.714478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.447170, 28.275196, 36.553032>,  <30.240236, 28.201744, 36.456165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.447170, 28.275196, 36.553032>,  <30.792059, 28.397617, 36.714478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.447170, 28.275196, 36.553032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293198, 0.348213, -0.890383,
		0.413048, -0.886047, -0.210503,
		-0.862222, -0.306052, -0.403616,
		30.188503, 28.183380, 36.431946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838289, 27.921654, 36.182014>,  <30.792059, 28.397617, 36.714478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838289, 27.921654, 36.182014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.506903, 28.141888, 36.141026>,  <30.308071, 28.274029, 36.116432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.506903, 28.141888, 36.141026>,  <30.838289, 27.921654, 36.182014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.506903, 28.141888, 36.141026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294908, 0.273336, -0.915596,
		-0.476104, -0.788761, -0.388821,
		-0.828465, 0.550585, -0.102475,
		30.258364, 28.307064, 36.110283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.595789, 27.751154, 35.555218>,  <30.838289, 27.921654, 36.182014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.595789, 27.751154, 35.555218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438494, 28.106579, 35.649727>,  <30.344116, 28.319834, 35.706432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438494, 28.106579, 35.649727>,  <30.595789, 27.751154, 35.555218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438494, 28.106579, 35.649727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296670, 0.365849, -0.882123,
		-0.870260, -0.276789, -0.407474,
		-0.393236, 0.888562, 0.236268,
		30.320522, 28.373148, 35.720608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321968, 27.921267, 34.888660>,  <30.595789, 27.751154, 35.555218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.321968, 27.921267, 34.888660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.298355, 28.269732, 35.083633>,  <30.284187, 28.478809, 35.200619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.298355, 28.269732, 35.083633>,  <30.321968, 27.921267, 34.888660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.298355, 28.269732, 35.083633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104521, 0.490999, -0.864867,
		-0.992769, -0.000110, -0.120040,
		-0.059034, 0.871160, 0.487437,
		30.280645, 28.531080, 35.229866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854984, 28.303886, 34.546379>,  <30.321968, 27.921267, 34.888660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854984, 28.303886, 34.546379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.095478, 28.564953, 34.730789>,  <30.239775, 28.721594, 34.841434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.095478, 28.564953, 34.730789>,  <29.854984, 28.303886, 34.546379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.095478, 28.564953, 34.730789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259742, 0.385991, -0.885180,
		-0.755681, 0.651947, 0.062545,
		0.601232, 0.652668, 0.461024,
		30.275848, 28.760754, 34.869095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703857, 28.962667, 34.214394>,  <29.854984, 28.303886, 34.546379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703857, 28.962667, 34.214394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.071329, 28.977428, 34.371704>,  <30.291813, 28.986284, 34.466091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.071329, 28.977428, 34.371704>,  <29.703857, 28.962667, 34.214394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071329, 28.977428, 34.371704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324776, 0.496136, -0.805214,
		-0.224832, 0.867460, 0.443806,
		0.918679, 0.036900, 0.393278,
		30.346933, 28.988499, 34.489689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.075972, 29.511068, 33.861881>,  <29.703857, 28.962667, 34.214394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.075972, 29.511068, 33.861881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.392143, 29.378450, 34.067909>,  <30.581846, 29.298880, 34.191525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.392143, 29.378450, 34.067909>,  <30.075972, 29.511068, 33.861881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.392143, 29.378450, 34.067909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612495, 0.416462, -0.671869,
		0.008249, 0.846543, 0.532255,
		0.790431, -0.331546, 0.515069,
		30.629272, 29.278986, 34.222431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537920, 30.101202, 34.032738>,  <30.075972, 29.511068, 33.861881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.537920, 30.101202, 34.032738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760466, 29.769039, 34.044586>,  <30.893993, 29.569740, 34.051697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760466, 29.769039, 34.044586>,  <30.537920, 30.101202, 34.032738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760466, 29.769039, 34.044586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678828, 0.433671, -0.592556,
		0.479217, 0.349786, 0.804985,
		0.556366, -0.830409, 0.029622,
		30.927376, 29.519917, 34.053474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.134975, 30.335810, 34.261982>,  <30.537920, 30.101202, 34.032738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.134975, 30.335810, 34.261982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197552, 29.988436, 34.073792>,  <31.235098, 29.780012, 33.960876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197552, 29.988436, 34.073792>,  <31.134975, 30.335810, 34.261982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197552, 29.988436, 34.073792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674173, 0.442007, -0.591709,
		0.721815, -0.224617, 0.654623,
		0.156440, -0.868434, -0.470478,
		31.244484, 29.727905, 33.932648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879488, 30.409468, 34.113586>,  <31.134975, 30.335810, 34.261982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879488, 30.409468, 34.113586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761488, 30.095287, 33.895947>,  <31.690689, 29.906778, 33.765362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761488, 30.095287, 33.895947>,  <31.879488, 30.409468, 34.113586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761488, 30.095287, 33.895947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355571, 0.438298, -0.825508,
		0.886874, -0.436988, 0.149987,
		-0.294999, -0.785452, -0.544095,
		31.672989, 29.859652, 33.732719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500816, 30.224342, 33.761124>,  <31.879488, 30.409468, 34.113586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500816, 30.224342, 33.761124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158794, 30.125257, 33.578907>,  <31.953581, 30.065807, 33.469578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158794, 30.125257, 33.578907>,  <32.500816, 30.224342, 33.761124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158794, 30.125257, 33.578907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327384, 0.423394, -0.844723,
		0.402112, -0.871426, -0.280933,
		-0.855059, -0.247700, -0.455542,
		31.902279, 30.050943, 33.442242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676006, 29.906826, 33.167339>,  <32.500816, 30.224342, 33.761124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676006, 29.906826, 33.167339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302692, 30.038818, 33.110649>,  <32.078705, 30.118013, 33.076633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302692, 30.038818, 33.110649>,  <32.676006, 29.906826, 33.167339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302692, 30.038818, 33.110649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291182, 0.464302, -0.836443,
		-0.210205, -0.821911, -0.529411,
		-0.933288, 0.329980, -0.141726,
		32.022705, 30.137812, 33.068130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619072, 29.810402, 32.389835>,  <32.676006, 29.906826, 33.167339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619072, 29.810402, 32.389835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323441, 30.050241, 32.512627>,  <32.146061, 30.194145, 32.586304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323441, 30.050241, 32.512627>,  <32.619072, 29.810402, 32.389835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323441, 30.050241, 32.512627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195322, 0.626904, -0.754215,
		-0.644675, -0.497467, -0.580449,
		-0.739083, 0.599598, 0.306983,
		32.101715, 30.230122, 32.604721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208439, 29.931463, 31.775305>,  <32.619072, 29.810402, 32.389835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208439, 29.931463, 31.775305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179104, 30.216198, 32.054707>,  <32.161503, 30.387039, 32.222347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179104, 30.216198, 32.054707>,  <32.208439, 29.931463, 31.775305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179104, 30.216198, 32.054707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208282, 0.695880, -0.687292,
		-0.975316, 0.095084, -0.199295,
		-0.073335, 0.711836, 0.698506,
		32.157104, 30.429749, 32.264259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868296, 30.403858, 31.427778>,  <32.208439, 29.931463, 31.775305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868296, 30.403858, 31.427778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036816, 30.621313, 31.718149>,  <32.137928, 30.751785, 31.892372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036816, 30.621313, 31.718149>,  <31.868296, 30.403858, 31.427778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036816, 30.621313, 31.718149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171995, 0.738008, -0.652504,
		-0.890464, 0.399754, 0.217419,
		0.421298, 0.543636, 0.725925,
		32.163204, 30.784405, 31.935926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710985, 31.112043, 31.291355>,  <31.868296, 30.403858, 31.427778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710985, 31.112043, 31.291355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022602, 31.152861, 31.538801>,  <32.209572, 31.177351, 31.687269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022602, 31.152861, 31.538801>,  <31.710985, 31.112043, 31.291355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022602, 31.152861, 31.538801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242653, 0.860705, -0.447557,
		-0.578113, 0.498773, 0.645764,
		0.779041, 0.102042, 0.618613,
		32.256313, 31.183474, 31.724384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767181, 31.806124, 31.481989>,  <31.710985, 31.112043, 31.291355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767181, 31.806124, 31.481989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131378, 31.661074, 31.561491>,  <32.349895, 31.574043, 31.609192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131378, 31.661074, 31.561491>,  <31.767181, 31.806124, 31.481989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131378, 31.661074, 31.561491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403658, 0.675028, -0.617574,
		0.089784, 0.642526, 0.760986,
		0.910494, -0.362626, 0.198754,
		32.404526, 31.552286, 31.621117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221970, 32.403927, 31.607273>,  <31.767181, 31.806124, 31.481989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221970, 32.403927, 31.607273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465176, 32.101551, 31.510212>,  <32.611099, 31.920126, 31.451975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465176, 32.101551, 31.510212>,  <32.221970, 32.403927, 31.607273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465176, 32.101551, 31.510212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511877, 0.606880, -0.608012,
		0.606880, 0.245470, 0.755937,
		0.608012, -0.755937, -0.242653,
		32.647579, 31.874769, 31.437416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851292, 32.755806, 31.387314>,  <32.221970, 32.403927, 31.607273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851292, 32.755806, 31.387314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921036, 32.385448, 31.253254>,  <32.962883, 32.163235, 31.172817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921036, 32.385448, 31.253254>,  <32.851292, 32.755806, 31.387314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921036, 32.385448, 31.253254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646969, 0.364310, -0.669858,
		0.742314, -0.100035, 0.662543,
		0.174361, -0.925890, -0.335152,
		32.973343, 32.107681, 31.152708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606339, 32.616055, 31.382111>,  <32.851292, 32.755806, 31.387314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606339, 32.616055, 31.382111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417229, 32.402340, 31.101820>,  <33.303764, 32.274109, 30.933645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417229, 32.402340, 31.101820>,  <33.606339, 32.616055, 31.382111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417229, 32.402340, 31.101820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567721, 0.423490, -0.705939,
		0.673926, -0.731569, 0.103111,
		-0.472776, -0.534289, -0.700727,
		33.275394, 32.242054, 30.891602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140991, 32.414467, 30.923391>,  <33.606339, 32.616055, 31.382111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140991, 32.414467, 30.923391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809807, 32.357231, 30.706501>,  <33.611095, 32.322891, 30.576366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809807, 32.357231, 30.706501>,  <34.140991, 32.414467, 30.923391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809807, 32.357231, 30.706501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430445, 0.457596, -0.778025,
		0.359445, -0.877572, -0.317281,
		-0.827959, -0.143085, -0.542227,
		33.561420, 32.314304, 30.543833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419704, 32.387016, 30.263815>,  <34.140991, 32.414467, 30.923391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419704, 32.387016, 30.263815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029915, 32.415062, 30.178499>,  <33.796043, 32.431889, 30.127310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029915, 32.415062, 30.178499>,  <34.419704, 32.387016, 30.263815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029915, 32.415062, 30.178499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223151, 0.197736, -0.954518,
		-0.024749, -0.977745, -0.208334,
		-0.974470, 0.070113, -0.213291,
		33.737576, 32.436096, 30.114511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309643, 32.007015, 29.703257>,  <34.419704, 32.387016, 30.263815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309643, 32.007015, 29.703257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996082, 32.255352, 29.706150>,  <33.807945, 32.404354, 29.707886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996082, 32.255352, 29.706150>,  <34.309643, 32.007015, 29.703257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996082, 32.255352, 29.706150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199518, 0.262920, -0.943963,
		-0.587952, -0.738533, -0.329973,
		-0.783904, 0.620840, 0.007234,
		33.760910, 32.441605, 29.708321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840782, 31.784830, 29.134691>,  <34.309643, 32.007015, 29.703257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840782, 31.784830, 29.134691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795036, 32.170727, 29.229513>,  <33.767590, 32.402264, 29.286406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795036, 32.170727, 29.229513>,  <33.840782, 31.784830, 29.134691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795036, 32.170727, 29.229513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179321, 0.254746, -0.950236,
		-0.977120, -0.066167, -0.202133,
		-0.114367, 0.964742, 0.237053,
		33.760727, 32.460148, 29.300629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369255, 32.132256, 28.575010>,  <33.840782, 31.784830, 29.134691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369255, 32.132256, 28.575010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552395, 32.441322, 28.750906>,  <33.662277, 32.626762, 28.856443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552395, 32.441322, 28.750906>,  <33.369255, 32.132256, 28.575010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552395, 32.441322, 28.750906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199101, 0.392948, -0.897748,
		-0.866450, 0.498582, 0.026071,
		0.457845, 0.772663, 0.439738,
		33.689747, 32.673122, 28.882828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087063, 32.572819, 28.233282>,  <33.369255, 32.132256, 28.575010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087063, 32.572819, 28.233282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416637, 32.750332, 28.374239>,  <33.614384, 32.856842, 28.458813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416637, 32.750332, 28.374239>,  <33.087063, 32.572819, 28.233282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416637, 32.750332, 28.374239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183813, 0.378930, -0.906987,
		-0.536039, 0.812076, 0.230641,
		0.823939, 0.443785, 0.352391,
		33.663818, 32.883469, 28.479956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077023, 33.366753, 28.018093>,  <33.087063, 32.572819, 28.233282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077023, 33.366753, 28.018093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454174, 33.278282, 28.117746>,  <33.680466, 33.225201, 28.177538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454174, 33.278282, 28.117746>,  <33.077023, 33.366753, 28.018093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454174, 33.278282, 28.117746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318193, 0.376347, -0.870124,
		0.098695, 0.899690, 0.425227,
		0.942875, -0.221181, 0.249131,
		33.737038, 33.211929, 28.192486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529667, 34.026150, 27.842875>,  <33.077023, 33.366753, 28.018093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529667, 34.026150, 27.842875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785976, 33.719894, 27.865524>,  <33.939762, 33.536140, 27.879114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785976, 33.719894, 27.865524>,  <33.529667, 34.026150, 27.842875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785976, 33.719894, 27.865524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549027, 0.405431, -0.730886,
		0.536640, 0.499418, 0.680146,
		0.640770, -0.765642, 0.056623,
		33.978207, 33.490200, 27.882511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204556, 34.215443, 28.232515>,  <33.529667, 34.026150, 27.842875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204556, 34.215443, 28.232515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241486, 33.966000, 27.922010>,  <34.263641, 33.816334, 27.735706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241486, 33.966000, 27.922010>,  <34.204556, 34.215443, 28.232515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241486, 33.966000, 27.922010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404175, 0.735950, -0.543157,
		0.910010, -0.263600, 0.319994,
		0.092323, -0.623612, -0.776263,
		34.269184, 33.778915, 27.689131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924408, 34.110519, 28.002642>,  <34.204556, 34.215443, 28.232515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924408, 34.110519, 28.002642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631741, 34.110142, 27.729979>,  <34.456139, 34.109917, 27.566381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631741, 34.110142, 27.729979>,  <34.924408, 34.110519, 28.002642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631741, 34.110142, 27.729979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432119, 0.772754, -0.464892,
		0.527191, -0.634705, -0.564995,
		-0.731672, -0.000942, -0.681656,
		34.412239, 34.109859, 27.525482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089642, 34.200291, 27.153000>,  <34.924408, 34.110519, 28.002642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089642, 34.200291, 27.153000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731255, 34.375381, 27.183016>,  <34.516220, 34.480438, 27.201025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731255, 34.375381, 27.183016>,  <35.089642, 34.200291, 27.153000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731255, 34.375381, 27.183016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349512, 0.799219, -0.488968,
		-0.274009, -0.411874, -0.869068,
		-0.895969, 0.437731, 0.075038,
		34.462463, 34.506702, 27.205526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777691, 34.551464, 26.591919>,  <35.089642, 34.200291, 27.153000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777691, 34.551464, 26.591919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671883, 34.731773, 26.932938>,  <34.608398, 34.839958, 27.137548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671883, 34.731773, 26.932938>,  <34.777691, 34.551464, 26.591919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671883, 34.731773, 26.932938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599007, 0.769622, -0.221073,
		-0.755792, 0.452204, -0.473592,
		-0.264517, 0.450770, 0.852547,
		34.592529, 34.867004, 27.188702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717804, 35.252239, 26.300768>,  <34.777691, 34.551464, 26.591919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717804, 35.252239, 26.300768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885975, 35.199711, 26.659876>,  <34.986877, 35.168194, 26.875341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885975, 35.199711, 26.659876>,  <34.717804, 35.252239, 26.300768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885975, 35.199711, 26.659876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906985, 0.087886, -0.411891,
		-0.024812, 0.987437, 0.156055,
		0.420431, -0.131320, 0.897771,
		35.012104, 35.160316, 26.929207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367527, 35.654175, 26.449293>,  <34.717804, 35.252239, 26.300768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367527, 35.654175, 26.449293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398376, 35.374622, 26.733719>,  <35.416885, 35.206890, 26.904375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398376, 35.374622, 26.733719>,  <35.367527, 35.654175, 26.449293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398376, 35.374622, 26.733719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992334, -0.015268, -0.122639,
		0.096566, 0.715074, 0.692347,
		0.077125, -0.698882, 0.711067,
		35.421513, 35.164959, 26.947039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792793, 35.847279, 27.018148>,  <35.367527, 35.654175, 26.449293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792793, 35.847279, 27.018148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813438, 35.452065, 26.960012>,  <35.825825, 35.214935, 26.925131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813438, 35.452065, 26.960012>,  <35.792793, 35.847279, 27.018148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813438, 35.452065, 26.960012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903944, 0.108088, -0.413766,
		0.424524, -0.110024, 0.898707,
		0.051616, -0.988034, -0.145342,
		35.828922, 35.155655, 26.916410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698486, 36.473980, 26.711447>,  <35.792793, 35.847279, 27.018148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698486, 36.473980, 26.711447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947178, 36.208084, 26.545755>,  <36.096394, 36.048546, 26.446341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947178, 36.208084, 26.545755>,  <35.698486, 36.473980, 26.711447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947178, 36.208084, 26.545755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087391, 0.466689, -0.880093,
		0.778345, 0.583376, 0.232060,
		0.621725, -0.664736, -0.414227,
		36.133694, 36.008663, 26.421488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403183, 36.712067, 26.318504>,  <35.698486, 36.473980, 26.711447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403183, 36.712067, 26.318504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241619, 36.376434, 26.172731>,  <36.144680, 36.175056, 26.085268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241619, 36.376434, 26.172731>,  <36.403183, 36.712067, 26.318504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241619, 36.376434, 26.172731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198797, 0.469361, -0.860337,
		0.892939, -0.275047, -0.356384,
		-0.403906, -0.839076, -0.364432,
		36.120449, 36.124710, 26.063402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297565, 36.891174, 25.492889>,  <36.403183, 36.712067, 26.318504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297565, 36.891174, 25.492889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037132, 36.610611, 25.608896>,  <35.880871, 36.442272, 25.678499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037132, 36.610611, 25.608896>,  <36.297565, 36.891174, 25.492889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037132, 36.610611, 25.608896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412639, 0.006413, -0.910872,
		0.637035, -0.712729, -0.293605,
		-0.651087, -0.701410, 0.290015,
		35.841805, 36.400188, 25.695900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955036, 36.605705, 25.388695>,  <36.297565, 36.891174, 25.492889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955036, 36.605705, 25.388695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814953, 36.707298, 25.028063>,  <36.730904, 36.768253, 24.811684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814953, 36.707298, 25.028063>,  <36.955036, 36.605705, 25.388695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814953, 36.707298, 25.028063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813373, 0.559806, -0.158243,
		0.464519, -0.788739, -0.402634,
		-0.350209, 0.253985, -0.901579,
		36.709888, 36.783493, 24.757589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600315, 36.001953, 24.879436>,  <36.955036, 36.605705, 25.388695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600315, 36.001953, 24.879436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532856, 35.683109, 24.647514>,  <36.492382, 35.491802, 24.508362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532856, 35.683109, 24.647514>,  <36.600315, 36.001953, 24.879436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532856, 35.683109, 24.647514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942779, -0.302095, 0.141091,
		-0.287621, -0.522831, 0.802447,
		-0.168648, -0.797111, -0.579803,
		36.482262, 35.443977, 24.473574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754826, 35.337402, 25.322168>,  <36.600315, 36.001953, 24.879436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754826, 35.337402, 25.322168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785847, 35.286552, 24.926628>,  <36.804459, 35.256042, 24.689304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785847, 35.286552, 24.926628>,  <36.754826, 35.337402, 25.322168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785847, 35.286552, 24.926628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938570, -0.325214, 0.115421,
		-0.336261, -0.937056, 0.094097,
		0.077554, -0.127128, -0.988850,
		36.809113, 35.248413, 24.629972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872757, 34.607155, 25.058075>,  <36.754826, 35.337402, 25.322168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872757, 34.607155, 25.058075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068401, 34.914070, 24.892166>,  <37.185787, 35.098221, 24.792620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068401, 34.914070, 24.892166>,  <36.872757, 34.607155, 25.058075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068401, 34.914070, 24.892166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871362, -0.450966, 0.193282,
		-0.038745, -0.455953, -0.889160,
		0.489108, 0.767292, -0.414773,
		37.215134, 35.144257, 24.767735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270916, 34.341877, 24.674606>,  <36.872757, 34.607155, 25.058075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270916, 34.341877, 24.674606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447128, 34.686745, 24.774687>,  <37.552856, 34.893665, 24.834736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447128, 34.686745, 24.774687>,  <37.270916, 34.341877, 24.674606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447128, 34.686745, 24.774687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894331, -0.445729, -0.038706,
		0.078151, 0.240814, -0.967420,
		0.440528, 0.862168, 0.250201,
		37.579288, 34.945396, 24.849747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773800, 34.578724, 24.164806>,  <37.270916, 34.341877, 24.674606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773800, 34.578724, 24.164806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858585, 34.654598, 24.548285>,  <37.909454, 34.700123, 24.778372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858585, 34.654598, 24.548285>,  <37.773800, 34.578724, 24.164806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858585, 34.654598, 24.548285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836006, -0.543242, -0.077351,
		0.506130, 0.817868, -0.273723,
		0.211961, 0.189684, 0.958693,
		37.922173, 34.711502, 24.835892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465004, 34.918140, 24.336760>,  <37.773800, 34.578724, 24.164806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.465004, 34.918140, 24.336760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348022, 34.688213, 24.642452>,  <38.277832, 34.550255, 24.825869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348022, 34.688213, 24.642452>,  <38.465004, 34.918140, 24.336760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348022, 34.688213, 24.642452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907575, -0.418636, 0.032433,
		0.301292, 0.703084, 0.644124,
		-0.292457, -0.574819, 0.764233,
		38.260284, 34.515766, 24.871721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922951, 34.983753, 24.885359>,  <38.465004, 34.918140, 24.336760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922951, 34.983753, 24.885359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748409, 34.628838, 24.945099>,  <38.643684, 34.415886, 24.980944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748409, 34.628838, 24.945099>,  <38.922951, 34.983753, 24.885359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748409, 34.628838, 24.945099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899553, -0.426508, 0.094312,
		-0.019983, 0.175503, 0.984276,
		-0.436354, -0.887293, 0.149351,
		38.617504, 34.362648, 24.989904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035709, 35.722637, 25.110359>,  <38.922951, 34.983753, 24.885359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035709, 35.722637, 25.110359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288822, 35.737576, 25.419729>,  <39.440689, 35.746540, 25.605352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288822, 35.737576, 25.419729>,  <39.035709, 35.722637, 25.110359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288822, 35.737576, 25.419729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125040, -0.990655, -0.054468,
		0.764165, 0.131176, -0.631542,
		0.632785, 0.037346, 0.773426,
		39.478657, 35.748779, 25.651756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590443, 35.270790, 24.848351>,  <39.035709, 35.722637, 25.110359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590443, 35.270790, 24.848351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.520485, 35.285885, 25.241896>,  <39.478508, 35.294941, 25.478024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.520485, 35.285885, 25.241896>,  <39.590443, 35.270790, 24.848351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520485, 35.285885, 25.241896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107159, -0.994059, 0.019081,
		0.978738, -0.102093, 0.177904,
		-0.174899, 0.037740, 0.983863,
		39.468014, 35.297207, 25.537054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120468, 34.889912, 25.374321>,  <39.590443, 35.270790, 24.848351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120468, 34.889912, 25.374321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.735157, 34.848354, 25.473352>,  <39.503971, 34.823418, 25.532772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.735157, 34.848354, 25.473352>,  <40.120468, 34.889912, 25.374321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735157, 34.848354, 25.473352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083872, -0.992392, -0.090128,
		0.255059, -0.066054, 0.964667,
		-0.963281, -0.103896, 0.247578,
		39.446171, 34.817184, 25.547626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742466, 34.538773, 25.587164>,  <40.120468, 34.889912, 25.374321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742466, 34.538773, 25.587164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.379044, 34.506809, 25.751181>,  <40.160988, 34.487633, 25.849590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.379044, 34.506809, 25.751181>,  <40.742466, 34.538773, 25.587164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379044, 34.506809, 25.751181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416592, 0.246518, -0.875031,
		-0.031163, -0.965839, -0.257264,
		-0.908560, -0.079905, 0.410043,
		40.106476, 34.482838, 25.874193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422821, 34.396873, 25.479017>,  <40.742466, 34.538773, 25.587164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.422821, 34.396873, 25.479017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.595276, 34.604458, 25.183773>,  <41.698750, 34.729008, 25.006626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.595276, 34.604458, 25.183773>,  <41.422821, 34.396873, 25.479017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.595276, 34.604458, 25.183773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673564, 0.359196, 0.645979,
		0.600362, -0.775668, -0.194690,
		0.431134, 0.518958, -0.738110,
		41.724617, 34.760147, 24.962339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.144093, 34.362984, 25.548443>,  <41.422821, 34.396873, 25.479017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.144093, 34.362984, 25.548443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112537, 34.680813, 25.307634>,  <42.093605, 34.871510, 25.163149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112537, 34.680813, 25.307634>,  <42.144093, 34.362984, 25.548443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112537, 34.680813, 25.307634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529439, 0.545086, 0.650058,
		0.844672, -0.267454, -0.463677,
		-0.078884, 0.794575, -0.602020,
		42.088871, 34.919186, 25.127028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.795231, 34.690479, 25.189466>,  <42.144093, 34.362984, 25.548443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.795231, 34.690479, 25.189466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.536354, 34.994247, 25.216084>,  <42.381027, 35.176506, 25.232054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.536354, 34.994247, 25.216084>,  <42.795231, 34.690479, 25.189466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.536354, 34.994247, 25.216084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630763, 0.484434, 0.606186,
		0.428113, 0.434290, -0.792535,
		-0.647192, 0.759418, 0.066542,
		42.342197, 35.222073, 25.236046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.228951, 35.254604, 25.184294>,  <42.795231, 34.690479, 25.189466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.228951, 35.254604, 25.184294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.874695, 35.382877, 25.318640>,  <42.662140, 35.459843, 25.399246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.874695, 35.382877, 25.318640>,  <43.228951, 35.254604, 25.184294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.874695, 35.382877, 25.318640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447487, 0.782628, 0.432723,
		-0.124088, 0.533531, -0.836628,
		-0.885639, 0.320684, 0.335863,
		42.609001, 35.479084, 25.419399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.511639, 34.898445, 24.626930>,  <43.228951, 35.254604, 25.184294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.511639, 34.898445, 24.626930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.414921, 34.787361, 24.255033>,  <43.356892, 34.720711, 24.031897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.414921, 34.787361, 24.255033>,  <43.511639, 34.898445, 24.626930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.414921, 34.787361, 24.255033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894407, -0.435333, -0.102570,
		-0.376261, -0.856367, 0.353644,
		-0.241790, -0.277708, -0.929740,
		43.342384, 34.704048, 23.976112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.032181, 34.959179, 25.204720>,  <43.511639, 34.898445, 24.626930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.032181, 34.959179, 25.204720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.189224, 35.056625, 25.559462>,  <44.283451, 35.115093, 25.772306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.189224, 35.056625, 25.559462>,  <44.032181, 34.959179, 25.204720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.189224, 35.056625, 25.559462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892191, -0.334985, -0.302954,
		0.223280, 0.910186, -0.348867,
		0.392609, 0.243612, 0.886855,
		44.307007, 35.129707, 25.825518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.617863, 35.268154, 25.024248>,  <44.032181, 34.959179, 25.204720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.617863, 35.268154, 25.024248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.653439, 35.122276, 25.394997>,  <44.674782, 35.034748, 25.617445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.653439, 35.122276, 25.394997>,  <44.617863, 35.268154, 25.024248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.653439, 35.122276, 25.394997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954819, -0.233710, -0.183575,
		0.283568, 0.901319, 0.327434,
		0.088935, -0.364696, 0.926870,
		44.680119, 35.012867, 25.673058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.276413, 35.508881, 25.342875>,  <44.617863, 35.268154, 25.024248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.276413, 35.508881, 25.342875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.173634, 35.142696, 25.466751>,  <45.111965, 34.922985, 25.541077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.173634, 35.142696, 25.466751>,  <45.276413, 35.508881, 25.342875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.173634, 35.142696, 25.466751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853986, -0.365093, -0.370694,
		0.452422, 0.169223, 0.875601,
		-0.256946, -0.915462, 0.309691,
		45.096550, 34.868057, 25.559658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.915611, 35.308205, 25.665640>,  <45.276413, 35.508881, 25.342875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.915611, 35.308205, 25.665640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.674820, 35.009239, 25.553217>,  <45.530346, 34.829861, 25.485764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.674820, 35.009239, 25.553217>,  <45.915611, 35.308205, 25.665640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.674820, 35.009239, 25.553217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732592, -0.376903, -0.566792,
		0.317697, -0.547097, 0.774437,
		-0.601978, -0.747415, -0.281058,
		45.494225, 34.785015, 25.468899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.363514, 34.796131, 25.504570>,  <45.915611, 35.308205, 25.665640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.363514, 34.796131, 25.504570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.013241, 34.669739, 25.358513>,  <45.803078, 34.593903, 25.270880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.013241, 34.669739, 25.358513>,  <46.363514, 34.796131, 25.504570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.013241, 34.669739, 25.358513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480440, -0.646043, -0.593133,
		-0.048478, -0.694827, 0.717541,
		-0.875687, -0.315981, -0.365141,
		45.750534, 34.574944, 25.248970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.662563, 35.503021, 25.096310>,  <46.363514, 34.796131, 25.504570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.662563, 35.503021, 25.096310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.434803, 35.417786, 24.778727>,  <46.298145, 35.366646, 24.588177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.434803, 35.417786, 24.778727>,  <46.662563, 35.503021, 25.096310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.434803, 35.417786, 24.778727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764583, 0.217509, -0.606714,
		0.301978, -0.952514, 0.039074,
		-0.569405, -0.213089, -0.793959,
		46.263981, 35.353859, 24.540539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.040890, 35.510204, 25.742685>,  <46.662563, 35.503021, 25.096310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.040890, 35.510204, 25.742685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.059956, 35.122066, 25.837475>,  <47.071396, 34.889183, 25.894348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.059956, 35.122066, 25.837475>,  <47.040890, 35.510204, 25.742685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.059956, 35.122066, 25.837475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583845, -0.219563, -0.781612,
		0.810465, -0.101099, -0.576998,
		0.047667, -0.970346, 0.236974,
		47.074257, 34.830963, 25.908567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.751675, 36.106327, 25.808105>,  <47.040890, 35.510204, 25.742685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.751675, 36.106327, 25.808105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.924587, 35.947556, 25.484234>,  <47.028336, 35.852291, 25.289911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.924587, 35.947556, 25.484234>,  <46.751675, 36.106327, 25.808105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.924587, 35.947556, 25.484234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681792, -0.731526, -0.005388,
		-0.590164, 0.554362, -0.586847,
		0.432281, -0.396927, -0.809680,
		47.054272, 35.828476, 25.241329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.372253, 36.682751, 25.507816>,  <46.751675, 36.106327, 25.808105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.372253, 36.682751, 25.507816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.604664, 36.901077, 25.266321>,  <46.744110, 37.032074, 25.121424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.604664, 36.901077, 25.266321>,  <46.372253, 36.682751, 25.507816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.604664, 36.901077, 25.266321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705679, -0.031734, -0.707821,
		-0.405497, 0.837306, 0.366730,
		0.581025, 0.545812, -0.603738,
		46.778973, 37.064819, 25.085199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.963963, 36.767723, 26.040482>,  <46.372253, 36.682751, 25.507816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.963963, 36.767723, 26.040482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.981529, 36.468750, 26.305637>,  <46.992069, 36.289368, 26.464731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.981529, 36.468750, 26.305637>,  <46.963963, 36.767723, 26.040482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.981529, 36.468750, 26.305637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216025, 0.640727, 0.736751,
		-0.975400, -0.175554, -0.133326,
		0.043914, -0.747429, 0.662889,
		46.994705, 36.244522, 26.504503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.283264, 36.428543, 26.466537>,  <46.963963, 36.767723, 26.040482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.283264, 36.428543, 26.466537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.629688, 36.458771, 26.664217>,  <46.837543, 36.476910, 26.782824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.629688, 36.458771, 26.664217>,  <46.283264, 36.428543, 26.466537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.629688, 36.458771, 26.664217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413695, 0.663364, 0.623542,
		-0.280711, -0.744471, 0.605776,
		0.866059, 0.075571, 0.494197,
		46.889507, 36.481441, 26.812475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.058002, 36.871490, 27.042919>,  <46.283264, 36.428543, 26.466537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.058002, 36.871490, 27.042919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.440121, 36.827374, 27.152647>,  <46.669392, 36.800903, 27.218485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.440121, 36.827374, 27.152647>,  <46.058002, 36.871490, 27.042919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.440121, 36.827374, 27.152647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144612, 0.634957, 0.758892,
		-0.257885, -0.764634, 0.590619,
		0.955292, -0.110296, 0.274321,
		46.726707, 36.794285, 27.234943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.079205, 36.793186, 27.828165>,  <46.058002, 36.871490, 27.042919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.079205, 36.793186, 27.828165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.417946, 36.946724, 27.680925>,  <46.621193, 37.038845, 27.592581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.417946, 36.946724, 27.680925>,  <46.079205, 36.793186, 27.828165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.417946, 36.946724, 27.680925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128246, 0.819122, 0.559100,
		0.516124, -0.426271, 0.742906,
		0.846858, 0.383840, -0.368101,
		46.672005, 37.061874, 27.570496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.799881, 37.525360, 27.879660>,  <46.079205, 36.793186, 27.828165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.799881, 37.525360, 27.879660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.446571, 37.691010, 27.967590>,  <45.234585, 37.790401, 28.020350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.446571, 37.691010, 27.967590>,  <45.799881, 37.525360, 27.879660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.446571, 37.691010, 27.967590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016283, -0.495672, 0.868357,
		0.468572, 0.763419, 0.444557,
		-0.883275, 0.414127, 0.219828,
		45.181587, 37.815247, 28.033539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.789257, 37.939266, 28.516956>,  <45.799881, 37.525360, 27.879660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.789257, 37.939266, 28.516956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.450798, 37.749615, 28.419594>,  <45.247723, 37.635826, 28.361177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.450798, 37.749615, 28.419594>,  <45.789257, 37.939266, 28.516956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.450798, 37.749615, 28.419594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057588, -0.535370, 0.842652,
		-0.529835, 0.698987, 0.480304,
		-0.846143, -0.474126, -0.243405,
		45.196957, 37.607376, 28.346573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.662266, 37.744366, 29.057444>,  <45.789257, 37.939266, 28.516956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.662266, 37.744366, 29.057444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.398182, 37.526814, 28.850245>,  <45.239731, 37.396282, 28.725925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.398182, 37.526814, 28.850245>,  <45.662266, 37.744366, 29.057444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.398182, 37.526814, 28.850245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055591, -0.652390, 0.755842,
		-0.749025, 0.527807, 0.400476,
		-0.660205, -0.543881, -0.517998,
		45.200119, 37.363647, 28.694845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.265652, 37.386192, 29.580221>,  <45.662266, 37.744366, 29.057444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.265652, 37.386192, 29.580221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.233459, 37.189137, 29.233620>,  <45.214146, 37.070904, 29.025660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.233459, 37.189137, 29.233620>,  <45.265652, 37.386192, 29.580221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.233459, 37.189137, 29.233620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077311, -0.863620, 0.498181,
		-0.993753, 0.107084, 0.031419,
		-0.080481, -0.492640, -0.866504,
		45.209316, 37.041344, 28.973669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.768867, 36.864559, 29.620468>,  <45.265652, 37.386192, 29.580221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.768867, 36.864559, 29.620468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.004604, 36.745010, 29.320240>,  <45.146046, 36.673283, 29.140104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.004604, 36.745010, 29.320240>,  <44.768867, 36.864559, 29.620468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.004604, 36.745010, 29.320240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090467, -0.947625, 0.306305,
		-0.802803, -0.112616, -0.585513,
		0.589341, -0.298872, -0.750568,
		45.181408, 36.655350, 29.095070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.487396, 36.456379, 29.135235>,  <44.768867, 36.864559, 29.620468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.487396, 36.456379, 29.135235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.869228, 36.339558, 29.111629>,  <45.098328, 36.269463, 29.097466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.869228, 36.339558, 29.111629>,  <44.487396, 36.456379, 29.135235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.869228, 36.339558, 29.111629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276902, -0.942681, 0.186218,
		-0.110019, -0.161419, -0.980734,
		0.954579, -0.292055, -0.059015,
		45.155602, 36.251942, 29.093925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.449638, 35.865162, 28.767639>,  <44.487396, 36.456379, 29.135235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.449638, 35.865162, 28.767639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.788555, 35.883850, 28.979267>,  <44.991905, 35.895061, 29.106245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.788555, 35.883850, 28.979267>,  <44.449638, 35.865162, 28.767639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.788555, 35.883850, 28.979267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126634, -0.949626, 0.286659,
		0.515813, -0.309882, -0.798693,
		0.847290, 0.046721, 0.529071,
		45.042744, 35.897865, 29.137989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.941940, 35.476250, 28.463583>,  <44.449638, 35.865162, 28.767639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.941940, 35.476250, 28.463583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.971165, 35.461159, 28.862228>,  <44.988701, 35.452103, 29.101416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.971165, 35.461159, 28.862228>,  <44.941940, 35.476250, 28.463583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.971165, 35.461159, 28.862228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062379, -0.997155, -0.042320,
		0.995375, 0.065259, -0.070498,
		0.073059, -0.037726, 0.996614,
		44.993084, 35.449841, 29.161213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.516472, 35.046005, 28.708284>,  <44.941940, 35.476250, 28.463583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.516472, 35.046005, 28.708284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.286320, 35.048454, 29.035431>,  <45.148228, 35.049923, 29.231718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.286320, 35.048454, 29.035431>,  <45.516472, 35.046005, 28.708284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.286320, 35.048454, 29.035431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316196, -0.920556, 0.229341,
		0.754294, 0.390563, 0.527732,
		-0.575379, 0.006123, 0.817864,
		45.113705, 35.050293, 29.280790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.856167, 35.134632, 29.416636>,  <45.516472, 35.046005, 28.708284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.856167, 35.134632, 29.416636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.538250, 34.891903, 29.413273>,  <45.347500, 34.746265, 29.411255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.538250, 34.891903, 29.413273>,  <45.856167, 35.134632, 29.416636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.538250, 34.891903, 29.413273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578338, -0.761540, 0.292544,
		-0.183924, 0.227651, 0.956215,
		-0.794794, -0.606821, -0.008406,
		45.299812, 34.709858, 29.410751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.825691, 34.813663, 30.086399>,  <45.856167, 35.134632, 29.416636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.825691, 34.813663, 30.086399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.659012, 34.583012, 29.805300>,  <45.559006, 34.444618, 29.636641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.659012, 34.583012, 29.805300>,  <45.825691, 34.813663, 30.086399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.659012, 34.583012, 29.805300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707705, -0.690976, 0.147332,
		-0.570539, -0.435946, 0.696014,
		-0.416700, -0.576631, -0.702750,
		45.534000, 34.410023, 29.594475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.830551, 34.245869, 30.414415>,  <45.825691, 34.813663, 30.086399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.830551, 34.245869, 30.414415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.870796, 34.176647, 30.022511>,  <45.894943, 34.135117, 29.787369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.870796, 34.176647, 30.022511>,  <45.830551, 34.245869, 30.414415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.870796, 34.176647, 30.022511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876589, -0.450378, 0.169562,
		-0.470606, -0.875907, 0.106381,
		0.100609, -0.173050, -0.979761,
		45.900978, 34.124733, 29.728582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.800098, 33.487297, 30.112291>,  <45.830551, 34.245869, 30.414415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.800098, 33.487297, 30.112291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.041824, 33.746895, 29.927422>,  <46.186859, 33.902653, 29.816500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.041824, 33.746895, 29.927422>,  <45.800098, 33.487297, 30.112291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.041824, 33.746895, 29.927422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793144, -0.545101, 0.271638,
		-0.075640, -0.530726, -0.844161,
		0.604319, 0.648995, -0.462174,
		46.223122, 33.941593, 29.788769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.442089, 32.889549, 30.380966>,  <45.800098, 33.487297, 30.112291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.442089, 32.889549, 30.380966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.496464, 32.932030, 30.774969>,  <45.529087, 32.957516, 31.011372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.496464, 32.932030, 30.774969>,  <45.442089, 32.889549, 30.380966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.496464, 32.932030, 30.774969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965765, -0.207534, 0.155654,
		0.220954, -0.972446, 0.074354,
		0.135934, 0.106200, 0.985009,
		45.537243, 32.963890, 31.070473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.208141, 32.246510, 30.614210>,  <45.442089, 32.889549, 30.380966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.208141, 32.246510, 30.614210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.175884, 32.527237, 30.897322>,  <45.156532, 32.695671, 31.067188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.175884, 32.527237, 30.897322>,  <45.208141, 32.246510, 30.614210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.175884, 32.527237, 30.897322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936734, -0.296027, 0.186810,
		0.340628, -0.647938, 0.681285,
		-0.080638, 0.701815, 0.707780,
		45.151691, 32.737782, 31.109655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.980583, 32.035732, 31.337967>,  <45.208141, 32.246510, 30.614210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.980583, 32.035732, 31.337967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.864246, 32.403992, 31.233807>,  <44.794445, 32.624947, 31.171310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.864246, 32.403992, 31.233807>,  <44.980583, 32.035732, 31.337967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.864246, 32.403992, 31.233807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941181, -0.226371, 0.250865,
		0.172013, 0.318047, 0.932340,
		-0.290842, 0.920653, -0.260402,
		44.776993, 32.680187, 31.155685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.766895, 32.378609, 31.895205>,  <44.980583, 32.035732, 31.337967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.766895, 32.378609, 31.895205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.558617, 32.462742, 31.564234>,  <44.433651, 32.513222, 31.365652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.558617, 32.462742, 31.564234>,  <44.766895, 32.378609, 31.895205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.558617, 32.462742, 31.564234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851418, -0.199390, 0.485108,
		-0.062944, 0.957080, 0.282907,
		-0.520696, 0.210337, -0.827426,
		44.402409, 32.525845, 31.316006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.779507, 32.830776, 32.510429>,  <44.766895, 32.378609, 31.895205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.779507, 32.830776, 32.510429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.635708, 32.458889, 32.542397>,  <44.549431, 32.235756, 32.561577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.635708, 32.458889, 32.542397>,  <44.779507, 32.830776, 32.510429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.635708, 32.458889, 32.542397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310424, -0.199915, -0.929339,
		0.880001, -0.309282, 0.360476,
		-0.359492, -0.929720, 0.079917,
		44.527859, 32.179974, 32.566372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.463146, 32.821430, 32.617481>,  <44.779507, 32.830776, 32.510429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.463146, 32.821430, 32.617481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.773571, 33.046661, 32.503868>,  <45.959824, 33.181801, 32.435699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.773571, 33.046661, 32.503868>,  <45.463146, 32.821430, 32.617481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.773571, 33.046661, 32.503868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246562, 0.143630, 0.958424,
		0.580465, -0.813825, -0.027368,
		0.776059, 0.563079, -0.284031,
		46.006390, 33.215584, 32.418659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.181267, 32.546310, 32.872013>,  <45.463146, 32.821430, 32.617481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.181267, 32.546310, 32.872013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.179996, 32.942360, 32.815937>,  <46.179234, 33.179989, 32.782291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.179996, 32.942360, 32.815937>,  <46.181267, 32.546310, 32.872013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.179996, 32.942360, 32.815937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302992, 0.134553, 0.943446,
		0.952988, -0.039485, -0.300425,
		-0.003171, 0.990119, -0.140191,
		46.179047, 33.239395, 32.773880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.762810, 32.925163, 33.093975>,  <46.181267, 32.546310, 32.872013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.762810, 32.925163, 33.093975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.429272, 33.142776, 33.131359>,  <46.229149, 33.273346, 33.153790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.429272, 33.142776, 33.131359>,  <46.762810, 32.925163, 33.093975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.429272, 33.142776, 33.131359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250490, 0.222043, 0.942312,
		0.491896, 0.809151, -0.321424,
		-0.833842, 0.544033, 0.093462,
		46.179119, 33.305984, 33.159397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.867130, 33.623512, 33.440723>,  <46.762810, 32.925163, 33.093975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.867130, 33.623512, 33.440723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.489330, 33.521873, 33.524017>,  <46.262650, 33.460892, 33.573994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.489330, 33.521873, 33.524017>,  <46.867130, 33.623512, 33.440723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.489330, 33.521873, 33.524017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152506, 0.222301, 0.962977,
		-0.290979, 0.941285, -0.171212,
		-0.944496, -0.254095, 0.208237,
		46.205982, 33.445644, 33.586487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.418018, 34.115562, 33.935566>,  <46.867130, 33.623512, 33.440723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.418018, 34.115562, 33.935566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.238796, 33.760986, 33.981998>,  <46.131264, 33.548241, 34.009857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.238796, 33.760986, 33.981998>,  <46.418018, 34.115562, 33.935566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.238796, 33.760986, 33.981998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236355, 0.007770, 0.971636,
		-0.862195, 0.462786, 0.206032,
		-0.448059, -0.886436, 0.116081,
		46.104378, 33.495056, 34.016823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.214878, 34.087269, 34.608009>,  <46.418018, 34.115562, 33.935566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.214878, 34.087269, 34.608009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.170925, 33.700588, 34.515564>,  <46.144554, 33.468578, 34.460098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.170925, 33.700588, 34.515564>,  <46.214878, 34.087269, 34.608009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.170925, 33.700588, 34.515564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134005, -0.244807, 0.960267,
		-0.984870, 0.074545, 0.156443,
		-0.109881, -0.966702, -0.231114,
		46.137962, 33.410576, 34.446228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.650749, 33.925873, 35.119644>,  <46.214878, 34.087269, 34.608009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.650749, 33.925873, 35.119644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.556633, 33.565548, 34.973675>,  <46.500164, 33.349354, 34.886093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.556633, 33.565548, 34.973675>,  <46.650749, 33.925873, 35.119644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.556633, 33.565548, 34.973675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073283, -0.390842, 0.917536,
		-0.969158, 0.189147, 0.157976,
		-0.235293, -0.900814, -0.364926,
		46.486046, 33.295303, 34.864197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.299000, 34.044670, 35.340813>,  <46.650749, 33.925873, 35.119644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.299000, 34.044670, 35.340813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.221550, 33.708153, 35.542702>,  <47.175079, 33.506245, 35.663834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.221550, 33.708153, 35.542702>,  <47.299000, 34.044670, 35.340813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.221550, 33.708153, 35.542702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365297, -0.539286, -0.758768,
		0.910533, 0.037461, 0.411737,
		-0.193620, -0.841289, 0.504722,
		47.163464, 33.455765, 35.694118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.610653, 34.767059, 35.294437>,  <47.299000, 34.044670, 35.340813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.610653, 34.767059, 35.294437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.800293, 35.115330, 35.242058>,  <47.914078, 35.324291, 35.210629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.800293, 35.115330, 35.242058>,  <47.610653, 34.767059, 35.294437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.800293, 35.115330, 35.242058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013892, 0.141309, 0.989868,
		0.880360, -0.471117, 0.054900,
		0.474101, 0.870678, -0.130947,
		47.942524, 35.376534, 35.202774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.232265, 28.869413, 37.218376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.326355, 29.113358, 37.521095>,  <35.382809, 29.259724, 37.702728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.326355, 29.113358, 37.521095>,  <35.232265, 28.869413, 37.218376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326355, 29.113358, 37.521095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380180, 0.658874, -0.649113,
		-0.894502, 0.440405, -0.076876,
		0.235221, 0.609860, 0.756797,
		35.396923, 29.296316, 37.748135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247879, 29.511499, 36.958504>,  <35.232265, 28.869413, 37.218376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247879, 29.511499, 36.958504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.452534, 29.631266, 37.280643>,  <35.575325, 29.703125, 37.473927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.452534, 29.631266, 37.280643>,  <35.247879, 29.511499, 36.958504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452534, 29.631266, 37.280643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470574, 0.686588, -0.554217,
		-0.718881, 0.662531, 0.210386,
		0.511635, 0.299414, 0.805345,
		35.606026, 29.721090, 37.522247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219692, 30.320156, 36.951447>,  <35.247879, 29.511499, 36.958504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219692, 30.320156, 36.951447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.532276, 30.252338, 37.191639>,  <35.719826, 30.211647, 37.335754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.532276, 30.252338, 37.191639>,  <35.219692, 30.320156, 36.951447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532276, 30.252338, 37.191639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472857, 0.788819, -0.392647,
		-0.407098, 0.590778, 0.696600,
		0.781459, -0.169547, 0.600480,
		35.766712, 30.201475, 37.371784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272507, 30.885990, 37.363552>,  <35.219692, 30.320156, 36.951447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272507, 30.885990, 37.363552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.634777, 30.718365, 37.337799>,  <35.852139, 30.617790, 37.322346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.634777, 30.718365, 37.337799>,  <35.272507, 30.885990, 37.363552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634777, 30.718365, 37.337799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362440, 0.844027, -0.395293,
		0.219993, 0.334671, 0.916296,
		0.905671, -0.419064, -0.064381,
		35.906479, 30.592646, 37.318485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746346, 31.445444, 37.617290>,  <35.272507, 30.885990, 37.363552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746346, 31.445444, 37.617290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.922729, 31.170174, 37.386822>,  <36.028561, 31.005013, 37.248543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.922729, 31.170174, 37.386822>,  <35.746346, 31.445444, 37.617290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922729, 31.170174, 37.386822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473382, 0.723727, -0.502124,
		0.762537, -0.051332, 0.644904,
		0.440960, -0.688174, -0.576169,
		36.055016, 30.963722, 37.213970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440842, 31.794184, 37.437828>,  <35.746346, 31.445444, 37.617290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440842, 31.794184, 37.437828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.378189, 31.473913, 37.206524>,  <36.340599, 31.281750, 37.067741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.378189, 31.473913, 37.206524>,  <36.440842, 31.794184, 37.437828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378189, 31.473913, 37.206524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474032, 0.452696, -0.755222,
		0.866464, -0.392404, 0.308640,
		-0.156632, -0.800678, -0.578257,
		36.331200, 31.233709, 37.033047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065651, 31.596476, 36.984863>,  <36.440842, 31.794184, 37.437828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065651, 31.596476, 36.984863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.746292, 31.431505, 36.809380>,  <36.554676, 31.332523, 36.704090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.746292, 31.431505, 36.809380>,  <37.065651, 31.596476, 36.984863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746292, 31.431505, 36.809380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201821, 0.503161, -0.840296,
		0.567303, -0.759430, -0.318485,
		-0.798396, -0.412425, -0.438714,
		36.506775, 31.307777, 36.677765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333046, 31.512827, 36.326378>,  <37.065651, 31.596476, 36.984863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333046, 31.512827, 36.326378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.935818, 31.479155, 36.293594>,  <36.697479, 31.458950, 36.273922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.935818, 31.479155, 36.293594>,  <37.333046, 31.512827, 36.326378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935818, 31.479155, 36.293594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012189, 0.620020, -0.784491,
		0.116859, -0.780057, -0.614699,
		-0.993074, -0.084182, -0.081963,
		36.637894, 31.453899, 36.269005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128662, 31.242476, 35.609493>,  <37.333046, 31.512827, 36.326378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128662, 31.242476, 35.609493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.780838, 31.407572, 35.717941>,  <36.572144, 31.506630, 35.783012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.780838, 31.407572, 35.717941>,  <37.128662, 31.242476, 35.609493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780838, 31.407572, 35.717941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155907, 0.291492, -0.943782,
		-0.468566, -0.862948, -0.189121,
		-0.869562, 0.412739, 0.271123,
		36.519970, 31.531393, 35.799278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613949, 31.004972, 35.153717>,  <37.128662, 31.242476, 35.609493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613949, 31.004972, 35.153717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.443684, 31.327389, 35.318207>,  <36.341522, 31.520838, 35.416901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.443684, 31.327389, 35.318207>,  <36.613949, 31.004972, 35.153717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443684, 31.327389, 35.318207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187749, 0.365889, -0.911524,
		-0.885188, -0.465212, -0.004414,
		-0.425667, 0.806041, 0.411224,
		36.315983, 31.569201, 35.441574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934250, 31.102625, 34.820827>,  <36.613949, 31.004972, 35.153717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934250, 31.102625, 34.820827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.059261, 31.453659, 34.966251>,  <36.134270, 31.664280, 35.053505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.059261, 31.453659, 34.966251>,  <35.934250, 31.102625, 34.820827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059261, 31.453659, 34.966251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031905, 0.392209, -0.919323,
		-0.949373, 0.275715, 0.150576,
		0.312528, 0.877584, 0.363556,
		36.153019, 31.716934, 35.075317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546005, 31.447117, 34.516457>,  <35.934250, 31.102625, 34.820827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546005, 31.447117, 34.516457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.813957, 31.715662, 34.643280>,  <35.974728, 31.876789, 34.719376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.813957, 31.715662, 34.643280>,  <35.546005, 31.447117, 34.516457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813957, 31.715662, 34.643280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031285, 0.401138, -0.915483,
		-0.741807, 0.623186, 0.247713,
		0.669884, 0.671362, 0.317063,
		36.014923, 31.917070, 34.738400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205006, 32.079227, 34.238419>,  <35.546005, 31.447117, 34.516457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205006, 32.079227, 34.238419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.596767, 32.139172, 34.292545>,  <35.831825, 32.175137, 34.325024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.596767, 32.139172, 34.292545>,  <35.205006, 32.079227, 34.238419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596767, 32.139172, 34.292545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066636, 0.392750, -0.917228,
		-0.190601, 0.907353, 0.374675,
		0.979403, 0.149858, 0.135321,
		35.890587, 32.184128, 34.333141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436043, 32.776054, 34.020138>,  <35.205006, 32.079227, 34.238419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436043, 32.776054, 34.020138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.779644, 32.571407, 34.012505>,  <35.985806, 32.448620, 34.007923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.779644, 32.571407, 34.012505>,  <35.436043, 32.776054, 34.020138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779644, 32.571407, 34.012505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229901, 0.418776, -0.878506,
		0.457448, 0.750252, 0.477350,
		0.859003, -0.511614, -0.019085,
		36.037346, 32.417923, 34.006779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920700, 33.261585, 33.870529>,  <35.436043, 32.776054, 34.020138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920700, 33.261585, 33.870529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.079193, 32.911255, 33.760303>,  <36.174290, 32.701057, 33.694168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.079193, 32.911255, 33.760303>,  <35.920700, 33.261585, 33.870529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079193, 32.911255, 33.760303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365554, 0.425799, -0.827687,
		0.842241, 0.227224, 0.488876,
		0.396233, -0.875822, -0.275563,
		36.198063, 32.648510, 33.677635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527279, 33.353077, 33.558514>,  <35.920700, 33.261585, 33.870529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527279, 33.353077, 33.558514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.497005, 32.979607, 33.418507>,  <36.478840, 32.755524, 33.334503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.497005, 32.979607, 33.418507>,  <36.527279, 33.353077, 33.558514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497005, 32.979607, 33.418507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446726, 0.282079, -0.849039,
		0.891464, -0.220623, 0.395749,
		-0.075686, -0.933679, -0.350021,
		36.474300, 32.699501, 33.313499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017521, 33.349113, 33.189926>,  <36.527279, 33.353077, 33.558514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017521, 33.349113, 33.189926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.818359, 33.034225, 33.044395>,  <36.698864, 32.845291, 32.957077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.818359, 33.034225, 33.044395>,  <37.017521, 33.349113, 33.189926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818359, 33.034225, 33.044395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350502, 0.201069, -0.914724,
		0.793248, -0.582965, 0.175812,
		-0.497902, -0.787225, -0.363828,
		36.668987, 32.798058, 32.935246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473927, 32.789753, 32.824150>,  <37.017521, 33.349113, 33.189926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473927, 32.789753, 32.824150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.098793, 32.742859, 32.693474>,  <36.873714, 32.714722, 32.615067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.098793, 32.742859, 32.693474>,  <37.473927, 32.789753, 32.824150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098793, 32.742859, 32.693474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333571, -0.044294, -0.941684,
		0.095928, -0.992116, 0.080646,
		-0.937832, -0.117235, -0.326692,
		36.817444, 32.707687, 32.595467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580425, 32.397732, 32.264462>,  <37.473927, 32.789753, 32.824150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580425, 32.397732, 32.264462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.213150, 32.547771, 32.213509>,  <36.992783, 32.637794, 32.182938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.213150, 32.547771, 32.213509>,  <37.580425, 32.397732, 32.264462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213150, 32.547771, 32.213509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066914, -0.170079, -0.983156,
		-0.390448, -0.911248, 0.131066,
		-0.918190, 0.375101, -0.127383,
		36.937695, 32.660301, 32.175293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200207, 31.880020, 31.900818>,  <37.580425, 32.397732, 32.264462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200207, 31.880020, 31.900818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.014061, 32.231079, 31.854918>,  <36.902374, 32.441715, 31.827377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.014061, 32.231079, 31.854918>,  <37.200207, 31.880020, 31.900818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014061, 32.231079, 31.854918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038927, -0.149812, -0.987948,
		-0.884261, -0.455293, 0.103882,
		-0.465368, 0.877647, -0.114749,
		36.874451, 32.494373, 31.820494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638752, 31.866943, 31.401825>,  <37.200207, 31.880020, 31.900818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638752, 31.866943, 31.401825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.692715, 32.263248, 31.396328>,  <36.725090, 32.501030, 31.393030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.692715, 32.263248, 31.396328>,  <36.638752, 31.866943, 31.401825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692715, 32.263248, 31.396328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156405, 0.007595, -0.987664,
		-0.978437, 0.135388, 0.155985,
		0.134903, 0.990763, -0.013744,
		36.733185, 32.560478, 31.392204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261967, 32.123138, 30.862789>,  <36.638752, 31.866943, 31.401825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261967, 32.123138, 30.862789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.531818, 32.408447, 30.938812>,  <36.693729, 32.579632, 30.984426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.531818, 32.408447, 30.938812>,  <36.261967, 32.123138, 30.862789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531818, 32.408447, 30.938812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142551, 0.126740, -0.981640,
		-0.724264, 0.689333, -0.016176,
		0.674626, 0.713272, 0.190058,
		36.734207, 32.622429, 30.995831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508545, 32.473194, 30.215742>,  <36.261967, 32.123138, 30.862789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508545, 32.473194, 30.215742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.351303, 32.191360, 29.979425>,  <36.256958, 32.022263, 29.837635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.351303, 32.191360, 29.979425>,  <36.508545, 32.473194, 30.215742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351303, 32.191360, 29.979425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422633, -0.432170, 0.796624,
		-0.816609, 0.562844, -0.127891,
		-0.393105, -0.704581, -0.590791,
		36.233372, 31.979986, 29.802189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734852, 32.445866, 30.297153>,  <36.508545, 32.473194, 30.215742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734852, 32.445866, 30.297153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.872223, 32.088409, 30.181595>,  <35.954647, 31.873936, 30.112261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.872223, 32.088409, 30.181595>,  <35.734852, 32.445866, 30.297153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872223, 32.088409, 30.181595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412173, -0.419811, 0.808623,
		-0.843901, -0.158632, -0.512511,
		0.343431, -0.893641, -0.288895,
		35.975254, 31.820316, 30.094927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135166, 32.055691, 30.350773>,  <35.734852, 32.445866, 30.297153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135166, 32.055691, 30.350773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.396519, 31.755379, 30.311934>,  <35.553329, 31.575191, 30.288630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.396519, 31.755379, 30.311934>,  <35.135166, 32.055691, 30.350773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396519, 31.755379, 30.311934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471762, -0.504119, 0.723398,
		-0.592059, -0.426847, -0.683570,
		0.653381, -0.750777, -0.097098,
		35.592533, 31.530146, 30.282804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729115, 31.531212, 30.301281>,  <35.135166, 32.055691, 30.350773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729115, 31.531212, 30.301281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.088535, 31.398743, 30.416464>,  <35.304188, 31.319262, 30.485575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.088535, 31.398743, 30.416464>,  <34.729115, 31.531212, 30.301281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088535, 31.398743, 30.416464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435912, -0.597626, 0.672921,
		-0.050762, -0.730183, -0.681364,
		0.898557, -0.331174, 0.287958,
		35.358101, 31.299391, 30.502851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638172, 30.831785, 30.252884>,  <34.729115, 31.531212, 30.301281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638172, 30.831785, 30.252884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.951714, 30.899572, 30.491831>,  <35.139839, 30.940245, 30.635199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.951714, 30.899572, 30.491831>,  <34.638172, 30.831785, 30.252884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951714, 30.899572, 30.491831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464668, -0.478052, 0.745352,
		0.411888, -0.861827, -0.295977,
		0.783857, 0.169470, 0.597368,
		35.186871, 30.950413, 30.671041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712894, 30.185583, 30.584244>,  <34.638172, 30.831785, 30.252884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712894, 30.185583, 30.584244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.925449, 30.441404, 30.806452>,  <35.052982, 30.594896, 30.939775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.925449, 30.441404, 30.806452>,  <34.712894, 30.185583, 30.584244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925449, 30.441404, 30.806452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201834, -0.541299, 0.816247,
		0.822734, -0.545865, -0.158556,
		0.531386, 0.639552, 0.555519,
		35.084866, 30.633270, 30.973108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371853, 29.836239, 30.932823>,  <34.712894, 30.185583, 30.584244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371853, 29.836239, 30.932823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.252563, 30.161757, 31.132343>,  <35.180988, 30.357067, 31.252054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.252563, 30.161757, 31.132343>,  <35.371853, 29.836239, 30.932823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252563, 30.161757, 31.132343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106351, -0.547654, 0.829918,
		0.948553, 0.194453, 0.249871,
		-0.298223, 0.813795, 0.498799,
		35.163097, 30.405895, 31.281982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476315, 29.563162, 31.560007>,  <35.371853, 29.836239, 30.932823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476315, 29.563162, 31.560007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.309631, 29.917980, 31.639509>,  <35.209621, 30.130871, 31.687210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.309631, 29.917980, 31.639509>,  <35.476315, 29.563162, 31.560007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309631, 29.917980, 31.639509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123608, -0.271905, 0.954352,
		0.900598, 0.373117, 0.222951,
		-0.416706, 0.887046, 0.198757,
		35.184620, 30.184093, 31.699137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919701, 29.866074, 32.108906>,  <35.476315, 29.563162, 31.560007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919701, 29.866074, 32.108906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.550766, 30.020613, 32.111217>,  <35.329407, 30.113337, 32.112602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.550766, 30.020613, 32.111217>,  <35.919701, 29.866074, 32.108906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550766, 30.020613, 32.111217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091532, -0.232989, 0.968162,
		0.375391, 0.892442, 0.250258,
		-0.922336, 0.386346, 0.005775,
		35.274067, 30.136517, 32.112949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911030, 30.241188, 32.712013>,  <35.919701, 29.866074, 32.108906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911030, 30.241188, 32.712013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.526352, 30.185562, 32.617519>,  <35.295544, 30.152187, 32.560822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.526352, 30.185562, 32.617519>,  <35.911030, 30.241188, 32.712013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526352, 30.185562, 32.617519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215042, -0.151745, 0.964744,
		-0.170009, 0.978588, 0.116027,
		-0.961693, -0.139065, -0.236235,
		35.237843, 30.143843, 32.546650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521641, 30.663897, 33.287796>,  <35.911030, 30.241188, 32.712013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521641, 30.663897, 33.287796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.296486, 30.378277, 33.121281>,  <35.161392, 30.206905, 33.021374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.296486, 30.378277, 33.121281>,  <35.521641, 30.663897, 33.287796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296486, 30.378277, 33.121281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190014, -0.378370, 0.905942,
		-0.804399, 0.589040, 0.077298,
		-0.562883, -0.714051, -0.416286,
		35.127621, 30.164061, 32.996395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972549, 30.543053, 33.725788>,  <35.521641, 30.663897, 33.287796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972549, 30.543053, 33.725788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.946678, 30.215082, 33.498268>,  <34.931156, 30.018299, 33.361755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.946678, 30.215082, 33.498268>,  <34.972549, 30.543053, 33.725788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946678, 30.215082, 33.498268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179152, -0.551196, 0.814915,
		-0.981693, 0.154608, -0.111242,
		-0.064677, -0.819926, -0.568804,
		34.927277, 29.969105, 33.327625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362022, 30.239258, 33.864635>,  <34.972549, 30.543053, 33.725788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362022, 30.239258, 33.864635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.600613, 29.948824, 33.727806>,  <34.743767, 29.774565, 33.645706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.600613, 29.948824, 33.727806>,  <34.362022, 30.239258, 33.864635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600613, 29.948824, 33.727806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307739, -0.600512, 0.738026,
		-0.741289, -0.334947, -0.581637,
		0.596479, -0.726083, -0.342076,
		34.779556, 29.730999, 33.625183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875046, 29.617369, 33.881973>,  <34.362022, 30.239258, 33.864635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875046, 29.617369, 33.881973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.262348, 29.519060, 33.863724>,  <34.494728, 29.460075, 33.852776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.262348, 29.519060, 33.863724>,  <33.875046, 29.617369, 33.881973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262348, 29.519060, 33.863724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159366, -0.747539, 0.644817,
		-0.192583, -0.617075, -0.762975,
		0.968253, -0.245773, -0.045623,
		34.552826, 29.445328, 33.850037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796921, 28.925041, 33.750786>,  <33.875046, 29.617369, 33.881973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796921, 28.925041, 33.750786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.162010, 28.995831, 33.898087>,  <34.381065, 29.038305, 33.986465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.162010, 28.995831, 33.898087>,  <33.796921, 28.925041, 33.750786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162010, 28.995831, 33.898087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176193, -0.642709, 0.745575,
		0.368627, -0.745389, -0.555436,
		0.912726, 0.176975, 0.368252,
		34.435829, 29.048923, 34.008560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149437, 28.268766, 33.888474>,  <33.796921, 28.925041, 33.750786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149437, 28.268766, 33.888474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.330711, 28.541073, 34.118668>,  <34.439476, 28.704456, 34.256783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.330711, 28.541073, 34.118668>,  <34.149437, 28.268766, 33.888474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330711, 28.541073, 34.118668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012120, -0.640818, 0.767597,
		0.891333, -0.354840, -0.282160,
		0.453187, 0.680765, 0.575483,
		34.466667, 28.745302, 34.291313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662075, 27.821697, 34.257317>,  <34.149437, 28.268766, 33.888474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662075, 27.821697, 34.257317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.651051, 28.165173, 34.462021>,  <34.644436, 28.371258, 34.584843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.651051, 28.165173, 34.462021>,  <34.662075, 27.821697, 34.257317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651051, 28.165173, 34.462021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141602, -0.503437, 0.852350,
		0.989540, 0.095959, -0.107716,
		-0.027563, 0.858687, 0.511759,
		34.642780, 28.422779, 34.615547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948101, 27.668072, 34.898579>,  <34.662075, 27.821697, 34.257317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948101, 27.668072, 34.898579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.800404, 28.027514, 34.993374>,  <34.711784, 28.243179, 35.050251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.800404, 28.027514, 34.993374>,  <34.948101, 27.668072, 34.898579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800404, 28.027514, 34.993374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052194, -0.274660, 0.960124,
		0.927864, 0.342154, 0.148319,
		-0.369247, 0.898606, 0.236989,
		34.689629, 28.297096, 35.064472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.385193, 27.824219, 35.545925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.032070, 28.010134, 35.518726>,  <34.820198, 28.121683, 35.502407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.032070, 28.010134, 35.518726>,  <35.385193, 27.824219, 35.545925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032070, 28.010134, 35.518726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189407, -0.219760, 0.956990,
		0.429855, 0.857717, 0.282040,
		-0.882808, 0.464788, -0.067992,
		34.767227, 28.149570, 35.498329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336353, 28.196768, 36.241600>,  <35.385193, 27.824219, 35.545925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336353, 28.196768, 36.241600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.983082, 28.117697, 36.071461>,  <34.771118, 28.070253, 35.969376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.983082, 28.117697, 36.071461>,  <35.336353, 28.196768, 36.241600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983082, 28.117697, 36.071461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357349, -0.303809, 0.883177,
		-0.303809, 0.932000, 0.197677,
		-0.883177, -0.197677, -0.425349,
		34.718128, 28.058393, 35.943855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919353, 28.582392, 36.636017>,  <35.336353, 28.196768, 36.241600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919353, 28.582392, 36.636017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.669586, 28.318140, 36.469318>,  <34.519726, 28.159590, 36.369297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.669586, 28.318140, 36.469318>,  <34.919353, 28.582392, 36.636017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669586, 28.318140, 36.469318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400415, -0.187377, 0.896971,
		-0.670653, 0.726954, -0.147525,
		-0.624414, -0.660627, -0.416748,
		34.482262, 28.119951, 36.344296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348099, 28.716722, 36.933601>,  <34.919353, 28.582392, 36.636017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348099, 28.716722, 36.933601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.273392, 28.350531, 36.791046>,  <34.228569, 28.130816, 36.705513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.273392, 28.350531, 36.791046>,  <34.348099, 28.716722, 36.933601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273392, 28.350531, 36.791046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546259, -0.204745, 0.812207,
		-0.816528, 0.346374, -0.461850,
		-0.186766, -0.915480, -0.356391,
		34.217361, 28.075886, 36.684128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685417, 28.581249, 37.167606>,  <34.348099, 28.716722, 36.933601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685417, 28.581249, 37.167606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.829388, 28.218491, 37.079983>,  <33.915771, 28.000835, 37.027409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.829388, 28.218491, 37.079983>,  <33.685417, 28.581249, 37.167606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829388, 28.218491, 37.079983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420580, -0.367304, 0.829578,
		-0.832805, -0.206455, -0.513626,
		0.359928, -0.906898, -0.219062,
		33.937366, 27.946421, 37.014263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176582, 28.121037, 37.281933>,  <33.685417, 28.581249, 37.167606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176582, 28.121037, 37.281933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.482906, 27.864580, 37.301846>,  <33.666698, 27.710707, 37.313793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.482906, 27.864580, 37.301846>,  <33.176582, 28.121037, 37.281933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482906, 27.864580, 37.301846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475944, -0.513018, 0.714346,
		-0.432457, -0.570745, -0.698019,
		0.765806, -0.641142, 0.049785,
		33.712646, 27.672237, 37.316780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792690, 27.550428, 37.378761>,  <33.176582, 28.121037, 37.281933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792690, 27.550428, 37.378761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.164539, 27.504986, 37.518986>,  <33.387650, 27.477720, 37.603119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.164539, 27.504986, 37.518986>,  <32.792690, 27.550428, 37.378761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164539, 27.504986, 37.518986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359464, -0.489030, 0.794755,
		0.081148, -0.864837, -0.495451,
		0.929624, -0.113604, 0.350562,
		33.443428, 27.470905, 37.624153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802078, 26.828060, 37.557491>,  <32.792690, 27.550428, 37.378761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802078, 26.828060, 37.557491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.111061, 26.993458, 37.750298>,  <33.296452, 27.092697, 37.865982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.111061, 26.993458, 37.750298>,  <32.802078, 26.828060, 37.557491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111061, 26.993458, 37.750298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351516, -0.353735, 0.866780,
		0.528912, -0.838984, -0.127895,
		0.772456, 0.413494, 0.482011,
		33.342796, 27.117506, 37.894901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120251, 26.273769, 37.997417>,  <32.802078, 26.828060, 37.557491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120251, 26.273769, 37.997417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.213795, 26.624098, 38.166294>,  <33.269920, 26.834295, 38.267620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.213795, 26.624098, 38.166294>,  <33.120251, 26.273769, 37.997417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213795, 26.624098, 38.166294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291529, -0.351092, 0.889801,
		0.927534, -0.331172, 0.173220,
		0.233861, 0.875819, 0.422196,
		33.283955, 26.886843, 38.292953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452847, 26.022985, 38.539387>,  <33.120251, 26.273769, 37.997417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452847, 26.022985, 38.539387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.401005, 26.402147, 38.655785>,  <33.369900, 26.629644, 38.725624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.401005, 26.402147, 38.655785>,  <33.452847, 26.022985, 38.539387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401005, 26.402147, 38.655785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063733, -0.284904, 0.956435,
		0.989516, 0.142504, -0.023488,
		-0.129604, 0.947904, 0.290999,
		33.362125, 26.686518, 38.743084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911839, 26.141586, 39.007797>,  <33.452847, 26.022985, 38.539387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911839, 26.141586, 39.007797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.638252, 26.422632, 39.086311>,  <33.474102, 26.591259, 39.133419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.638252, 26.422632, 39.086311>,  <33.911839, 26.141586, 39.007797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.638252, 26.422632, 39.086311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022305, -0.289081, 0.957045,
		0.729175, 0.650206, 0.213393,
		-0.683964, 0.702613, 0.196287,
		33.433064, 26.633415, 39.145199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003464, 26.312775, 39.653709>,  <33.911839, 26.141586, 39.007797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003464, 26.312775, 39.653709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.620071, 26.407934, 39.590832>,  <33.390034, 26.465031, 39.553104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.620071, 26.407934, 39.590832>,  <34.003464, 26.312775, 39.653709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620071, 26.407934, 39.590832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246395, -0.413537, 0.876514,
		0.143514, 0.878858, 0.454986,
		-0.958485, 0.237899, -0.157198,
		33.332527, 26.479303, 39.543671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800060, 26.656055, 40.255436>,  <34.003464, 26.312775, 39.653709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800060, 26.656055, 40.255436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.442715, 26.565109, 40.100414>,  <33.228306, 26.510542, 40.007401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.442715, 26.565109, 40.100414>,  <33.800060, 26.656055, 40.255436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442715, 26.565109, 40.100414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320304, -0.282657, 0.904163,
		-0.315121, 0.931885, 0.179691,
		-0.893367, -0.227365, -0.387557,
		33.174706, 26.496901, 39.984146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183147, 26.985130, 40.667034>,  <33.800060, 26.656055, 40.255436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183147, 26.985130, 40.667034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.018013, 26.693159, 40.449127>,  <32.918930, 26.517977, 40.318382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.018013, 26.693159, 40.449127>,  <33.183147, 26.985130, 40.667034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018013, 26.693159, 40.449127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607250, -0.225196, 0.761928,
		-0.678831, 0.645363, -0.350279,
		-0.412839, -0.729927, -0.544767,
		32.894161, 26.474180, 40.285698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443283, 27.052805, 40.610153>,  <33.183147, 26.985130, 40.667034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443283, 27.052805, 40.610153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.503605, 26.659945, 40.565182>,  <32.539799, 26.424229, 40.538200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.503605, 26.659945, 40.565182>,  <32.443283, 27.052805, 40.610153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503605, 26.659945, 40.565182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619301, -0.182504, 0.763648,
		-0.770535, -0.045535, -0.635769,
		0.150803, -0.982150, -0.112426,
		32.548847, 26.365299, 40.531452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775129, 26.725658, 40.560902>,  <32.443283, 27.052805, 40.610153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775129, 26.725658, 40.560902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.028141, 26.452492, 40.707069>,  <32.179947, 26.288591, 40.794769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.028141, 26.452492, 40.707069>,  <31.775129, 26.725658, 40.560902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028141, 26.452492, 40.707069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727410, -0.361710, 0.583130,
		-0.266051, -0.634658, -0.725552,
		0.632528, -0.682916, 0.365423,
		32.217899, 26.247616, 40.816696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300491, 26.329109, 40.749439>,  <31.775129, 26.725658, 40.560902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300491, 26.329109, 40.749439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.615767, 26.185808, 40.949608>,  <31.804932, 26.099829, 41.069710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.615767, 26.185808, 40.949608>,  <31.300491, 26.329109, 40.749439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615767, 26.185808, 40.949608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604143, -0.295340, 0.740125,
		-0.117357, -0.885681, -0.449218,
		0.788187, -0.358251, 0.500418,
		31.852222, 26.078333, 41.099731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039005, 25.699432, 40.985157>,  <31.300491, 26.329109, 40.749439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039005, 25.699432, 40.985157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.357628, 25.797020, 41.206417>,  <31.548801, 25.855572, 41.339172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.357628, 25.797020, 41.206417>,  <31.039005, 25.699432, 40.985157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357628, 25.797020, 41.206417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511981, -0.214370, 0.831818,
		0.321517, -0.945793, -0.045851,
		0.796557, 0.243969, 0.553152,
		31.596596, 25.870211, 41.372364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017876, 25.169594, 41.384861>,  <31.039005, 25.699432, 40.985157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017876, 25.169594, 41.384861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.260767, 25.443327, 41.546337>,  <31.406502, 25.607567, 41.643223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.260767, 25.443327, 41.546337>,  <31.017876, 25.169594, 41.384861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260767, 25.443327, 41.546337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451247, -0.121146, 0.884138,
		0.653950, -0.719035, 0.235240,
		0.607228, 0.684334, 0.403687,
		31.442936, 25.648626, 41.667442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366926, 24.848759, 41.872086>,  <31.017876, 25.169594, 41.384861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366926, 24.848759, 41.872086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.355124, 25.239401, 41.957291>,  <31.348042, 25.473785, 42.008415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.355124, 25.239401, 41.957291>,  <31.366926, 24.848759, 41.872086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355124, 25.239401, 41.957291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481437, -0.200646, 0.853206,
		0.875984, -0.077378, 0.476093,
		-0.029507, 0.976603, 0.213015,
		31.346272, 25.532381, 42.021194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703009, 24.958353, 42.451069>,  <31.366926, 24.848759, 41.872086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703009, 24.958353, 42.451069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.490391, 25.297064, 42.442791>,  <31.362820, 25.500290, 42.437824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.490391, 25.297064, 42.442791>,  <31.703009, 24.958353, 42.451069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490391, 25.297064, 42.442791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340540, -0.191264, 0.920571,
		0.775561, 0.496370, 0.390027,
		-0.531542, 0.846779, -0.020697,
		31.330929, 25.551098, 42.436581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773371, 25.352043, 43.081284>,  <31.703009, 24.958353, 42.451069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773371, 25.352043, 43.081284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.420624, 25.466681, 42.931522>,  <31.208977, 25.535463, 42.841667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.420624, 25.466681, 42.931522>,  <31.773371, 25.352043, 43.081284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420624, 25.466681, 42.931522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374228, 0.057603, 0.925546,
		0.286822, 0.956319, 0.056453,
		-0.881866, 0.286593, -0.374403,
		31.156065, 25.552658, 42.819202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608883, 25.926512, 43.464279>,  <31.773371, 25.352043, 43.081284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608883, 25.926512, 43.464279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.242384, 25.833418, 43.333851>,  <31.022484, 25.777561, 43.255592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.242384, 25.833418, 43.333851>,  <31.608883, 25.926512, 43.464279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242384, 25.833418, 43.333851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339378, 0.018444, 0.940469,
		-0.212864, 0.972366, -0.095883,
		-0.916249, -0.232732, -0.326073,
		30.967510, 25.763597, 43.236031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122284, 26.471489, 43.557186>,  <31.608883, 25.926512, 43.464279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122284, 26.471489, 43.557186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.956232, 26.111523, 43.610580>,  <30.856600, 25.895542, 43.642616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.956232, 26.111523, 43.610580>,  <31.122284, 26.471489, 43.557186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956232, 26.111523, 43.610580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216712, 0.240317, 0.946194,
		-0.883573, 0.363868, -0.294786,
		-0.415132, -0.899916, 0.133483,
		30.831692, 25.841549, 43.650627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946163, 26.688318, 44.268353>,  <31.122284, 26.471489, 43.557186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946163, 26.688318, 44.268353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.028391, 27.052982, 44.410686>,  <31.077726, 27.271780, 44.496086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.028391, 27.052982, 44.410686>,  <30.946163, 26.688318, 44.268353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028391, 27.052982, 44.410686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253944, 0.301455, -0.919042,
		-0.945122, 0.279287, -0.169540,
		0.205568, 0.911660, 0.355835,
		31.090061, 27.326481, 44.517437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591249, 27.214685, 43.843021>,  <30.946163, 26.688318, 44.268353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591249, 27.214685, 43.843021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.910234, 27.405830, 43.990372>,  <31.101625, 27.520517, 44.078781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.910234, 27.405830, 43.990372>,  <30.591249, 27.214685, 43.843021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910234, 27.405830, 43.990372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129424, 0.460849, -0.877990,
		-0.589326, 0.747841, 0.305662,
		0.797461, 0.477862, 0.368379,
		31.149473, 27.549189, 44.100887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596331, 27.869129, 43.445282>,  <30.591249, 27.214685, 43.843021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596331, 27.869129, 43.445282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.956928, 27.884529, 43.617710>,  <31.173286, 27.893770, 43.721169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.956928, 27.884529, 43.617710>,  <30.596331, 27.869129, 43.445282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956928, 27.884529, 43.617710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345958, 0.534345, -0.771225,
		-0.260034, 0.844389, 0.468390,
		0.901496, 0.038501, 0.431071,
		31.227377, 27.896080, 43.747032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913387, 28.530968, 43.305748>,  <30.596331, 27.869129, 43.445282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913387, 28.530968, 43.305748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.223694, 28.299686, 43.406837>,  <31.409878, 28.160917, 43.467491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.223694, 28.299686, 43.406837>,  <30.913387, 28.530968, 43.305748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.223694, 28.299686, 43.406837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559982, 0.446192, -0.698093,
		0.290874, 0.683078, 0.669923,
		0.775766, -0.578202, 0.252726,
		31.456423, 28.126226, 43.482655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437881, 28.931915, 43.327927>,  <30.913387, 28.530968, 43.305748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437881, 28.931915, 43.327927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.593189, 28.566410, 43.280125>,  <31.686373, 28.347107, 43.251442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.593189, 28.566410, 43.280125>,  <31.437881, 28.931915, 43.327927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593189, 28.566410, 43.280125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647785, 0.362858, -0.669858,
		0.655456, 0.182670, 0.732809,
		0.388268, -0.913765, -0.119506,
		31.709669, 28.292280, 43.244274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120312, 29.160963, 43.153290>,  <31.437881, 28.931915, 43.327927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120312, 29.160963, 43.153290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.047478, 28.782896, 43.044842>,  <32.003777, 28.556057, 42.979774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.047478, 28.782896, 43.044842>,  <32.120312, 29.160963, 43.153290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047478, 28.782896, 43.044842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707193, 0.065688, -0.703963,
		0.683170, -0.319917, 0.656454,
		-0.182089, -0.945166, -0.271119,
		31.992851, 28.499346, 42.963505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791740, 28.891560, 43.152405>,  <32.120312, 29.160963, 43.153290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791740, 28.891560, 43.152405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.532902, 28.701668, 42.913776>,  <32.377598, 28.587732, 42.770599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.532902, 28.701668, 42.913776>,  <32.791740, 28.891560, 43.152405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532902, 28.701668, 42.913776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699248, -0.057702, -0.712546,
		0.303843, -0.878238, 0.369292,
		-0.647095, -0.474729, -0.596574,
		32.338772, 28.559250, 42.734802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268913, 28.520987, 42.830662>,  <32.791740, 28.891560, 43.152405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268913, 28.520987, 42.830662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.943253, 28.491577, 42.600269>,  <32.747856, 28.473932, 42.462032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.943253, 28.491577, 42.600269>,  <33.268913, 28.520987, 42.830662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943253, 28.491577, 42.600269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568014, 0.105006, -0.816293,
		0.120505, -0.991749, -0.043724,
		-0.814149, -0.073531, -0.575981,
		32.699009, 28.469521, 42.427475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359783, 28.046885, 42.294529>,  <33.268913, 28.520987, 42.830662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359783, 28.046885, 42.294529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.068417, 28.264357, 42.127762>,  <32.893597, 28.394840, 42.027702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.068417, 28.264357, 42.127762>,  <33.359783, 28.046885, 42.294529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068417, 28.264357, 42.127762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471867, -0.043093, -0.880616,
		-0.496738, -0.838186, -0.225155,
		-0.728418, 0.543679, -0.416918,
		32.849892, 28.427460, 42.002686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238152, 27.728331, 41.674107>,  <33.359783, 28.046885, 42.294529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238152, 27.728331, 41.674107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.109772, 28.105402, 41.637562>,  <33.032745, 28.331644, 41.615635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.109772, 28.105402, 41.637562>,  <33.238152, 27.728331, 41.674107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109772, 28.105402, 41.637562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329787, 0.020804, -0.943826,
		-0.887824, -0.333053, -0.317561,
		-0.320951, 0.942678, -0.091367,
		33.013485, 28.388206, 41.610153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959499, 27.756386, 40.892986>,  <33.238152, 27.728331, 41.674107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959499, 27.756386, 40.892986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.003094, 28.134459, 41.016113>,  <33.029251, 28.361303, 41.089989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.003094, 28.134459, 41.016113>,  <32.959499, 27.756386, 40.892986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003094, 28.134459, 41.016113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451488, 0.228812, -0.862441,
		-0.885597, 0.232966, -0.401802,
		0.108982, 0.945184, 0.307817,
		33.035789, 28.418015, 41.108459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715530, 28.219540, 40.370945>,  <32.959499, 27.756386, 40.892986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715530, 28.219540, 40.370945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.991787, 28.421055, 40.578487>,  <33.157539, 28.541964, 40.703014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.991787, 28.421055, 40.578487>,  <32.715530, 28.219540, 40.370945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991787, 28.421055, 40.578487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438496, 0.278818, -0.854390,
		-0.575099, 0.817593, -0.028347,
		0.690639, 0.503789, 0.518859,
		33.198978, 28.572191, 40.734146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855049, 28.932783, 40.036362>,  <32.715530, 28.219540, 40.370945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855049, 28.932783, 40.036362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.178776, 28.850353, 40.256374>,  <33.373013, 28.800896, 40.388382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.178776, 28.850353, 40.256374>,  <32.855049, 28.932783, 40.036362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178776, 28.850353, 40.256374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569678, 0.503485, -0.649591,
		-0.143071, 0.839069, 0.524875,
		0.809319, -0.206073, 0.550033,
		33.421570, 28.788532, 40.421383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235481, 29.482689, 39.889153>,  <32.855049, 28.932783, 40.036362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235481, 29.482689, 39.889153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.490261, 29.241526, 40.081322>,  <33.643127, 29.096828, 40.196621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.490261, 29.241526, 40.081322>,  <33.235481, 29.482689, 39.889153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490261, 29.241526, 40.081322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756509, 0.368945, -0.539975,
		0.148307, 0.707376, 0.691104,
		0.636945, -0.602909, 0.480419,
		33.681343, 29.060654, 40.225449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805801, 29.873791, 40.120159>,  <33.235481, 29.482689, 39.889153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805801, 29.873791, 40.120159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.905640, 29.488773, 40.077801>,  <33.965542, 29.257763, 40.052383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.905640, 29.488773, 40.077801>,  <33.805801, 29.873791, 40.120159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905640, 29.488773, 40.077801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757108, 0.262156, -0.598383,
		0.603731, 0.069175, 0.794181,
		0.249592, -0.962543, -0.105899,
		33.980518, 29.200010, 40.046032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534836, 29.854080, 40.138405>,  <33.805801, 29.873791, 40.120159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534836, 29.854080, 40.138405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.450970, 29.499138, 39.974144>,  <34.400650, 29.286173, 39.875587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.450970, 29.499138, 39.974144>,  <34.534836, 29.854080, 40.138405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450970, 29.499138, 39.974144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799334, 0.086328, -0.594653,
		0.563120, -0.452930, 0.691195,
		-0.209666, -0.887357, -0.410655,
		34.388069, 29.232931, 39.850948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206081, 29.598841, 40.027256>,  <34.534836, 29.854080, 40.138405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206081, 29.598841, 40.027256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.980934, 29.353771, 39.805336>,  <34.845844, 29.206730, 39.672184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.980934, 29.353771, 39.805336>,  <35.206081, 29.598841, 40.027256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980934, 29.353771, 39.805336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651020, 0.084945, -0.754293,
		0.509264, -0.785757, 0.351050,
		-0.562871, -0.612675, -0.554803,
		34.812073, 29.169970, 39.638897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719498, 29.114164, 39.862114>,  <35.206081, 29.598841, 40.027256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719498, 29.114164, 39.862114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.429443, 29.114523, 39.586670>,  <35.255413, 29.114738, 39.421406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.429443, 29.114523, 39.586670>,  <35.719498, 29.114164, 39.862114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429443, 29.114523, 39.586670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688388, -0.024382, -0.724933,
		-0.017436, -0.999702, 0.017066,
		-0.725133, 0.000892, -0.688608,
		35.211903, 29.114792, 39.380089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908882, 28.651751, 39.283985>,  <35.719498, 29.114164, 39.862114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908882, 28.651751, 39.283985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.615936, 28.853935, 39.101490>,  <35.440170, 28.975246, 38.991993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.615936, 28.853935, 39.101490>,  <35.908882, 28.651751, 39.283985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615936, 28.853935, 39.101490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595563, 0.150717, -0.789043,
		-0.330070, -0.849584, -0.411415,
		-0.732365, 0.505463, -0.456233,
		35.396225, 29.005573, 38.964619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043224, 28.546186, 38.624969>,  <35.908882, 28.651751, 39.283985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043224, 28.546186, 38.624969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.808372, 28.869864, 38.616093>,  <35.667461, 29.064070, 38.610767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.808372, 28.869864, 38.616093>,  <36.043224, 28.546186, 38.624969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808372, 28.869864, 38.616093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368592, 0.242836, -0.897313,
		-0.720710, -0.535014, -0.440837,
		-0.587126, 0.809192, -0.022188,
		35.632236, 29.112621, 38.609436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<34.934803, 28.865017, 32.640671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.935379, 29.204557, 32.852123>,  <34.935722, 29.408281, 32.978992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.935379, 29.204557, 32.852123>,  <34.934803, 28.865017, 32.640671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935379, 29.204557, 32.852123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029905, 0.528429, -0.848451,
		-0.999552, -0.014588, 0.026145,
		0.001438, 0.848852, 0.528628,
		34.935810, 29.459213, 33.010712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345577, 29.278530, 32.438881>,  <34.934803, 28.865017, 32.640671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345577, 29.278530, 32.438881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.618660, 29.538719, 32.572021>,  <34.782509, 29.694834, 32.651905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.618660, 29.538719, 32.572021>,  <34.345577, 29.278530, 32.438881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618660, 29.538719, 32.572021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268034, 0.646718, -0.714082,
		-0.679753, 0.398296, 0.615870,
		0.682710, 0.650474, 0.332852,
		34.823471, 29.733862, 32.671879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047550, 29.820402, 32.361439>,  <34.345577, 29.278530, 32.438881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047550, 29.820402, 32.361439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.426826, 29.938122, 32.409298>,  <34.654392, 30.008753, 32.438015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.426826, 29.938122, 32.409298>,  <34.047550, 29.820402, 32.361439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426826, 29.938122, 32.409298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124214, 0.690074, -0.713000,
		-0.292399, 0.661201, 0.690881,
		0.948195, 0.294298, 0.119647,
		34.711285, 30.026411, 32.445190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016190, 30.592609, 32.272575>,  <34.047550, 29.820402, 32.361439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016190, 30.592609, 32.272575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.387600, 30.460630, 32.204491>,  <34.610447, 30.381443, 32.163639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.387600, 30.460630, 32.204491>,  <34.016190, 30.592609, 32.272575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387600, 30.460630, 32.204491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097206, 0.658528, -0.746252,
		0.358316, 0.676368, 0.643534,
		0.928526, -0.329949, -0.170214,
		34.666157, 30.361645, 32.153427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487072, 31.204678, 32.087135>,  <34.016190, 30.592609, 32.272575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487072, 31.204678, 32.087135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.713829, 30.896486, 31.970514>,  <34.849884, 30.711571, 31.900543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.713829, 30.896486, 31.970514>,  <34.487072, 31.204678, 32.087135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713829, 30.896486, 31.970514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324916, 0.534338, -0.780328,
		0.757012, 0.347630, 0.553251,
		0.566889, -0.770478, -0.291550,
		34.883896, 30.665342, 31.883049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065804, 31.558790, 31.899931>,  <34.487072, 31.204678, 32.087135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065804, 31.558790, 31.899931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.114674, 31.194910, 31.741175>,  <35.143997, 30.976582, 31.645922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.114674, 31.194910, 31.741175>,  <35.065804, 31.558790, 31.899931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114674, 31.194910, 31.741175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539894, 0.396460, -0.742519,
		0.832819, -0.123562, 0.539578,
		0.122174, -0.909699, -0.396891,
		35.151325, 30.922001, 31.622108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865589, 31.488169, 31.675278>,  <35.065804, 31.558790, 31.899931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865589, 31.488169, 31.675278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.628544, 31.246956, 31.461674>,  <35.486317, 31.102228, 31.333511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.628544, 31.246956, 31.461674>,  <35.865589, 31.488169, 31.675278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628544, 31.246956, 31.461674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424393, 0.329725, -0.843310,
		0.684617, -0.726386, 0.060523,
		-0.592612, -0.603031, -0.534008,
		35.450760, 31.066046, 31.301472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285553, 31.084234, 31.356161>,  <35.865589, 31.488169, 31.675278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285553, 31.084234, 31.356161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.943516, 31.060760, 31.150105>,  <35.738293, 31.046677, 31.026470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.943516, 31.060760, 31.150105>,  <36.285553, 31.084234, 31.356161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943516, 31.060760, 31.150105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509812, 0.085666, -0.856010,
		0.094388, -0.994592, -0.043320,
		-0.855092, -0.058712, -0.515141,
		35.686989, 31.043156, 30.995562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494083, 30.752562, 30.842388>,  <36.285553, 31.084234, 31.356161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494083, 30.752562, 30.842388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.147774, 30.919451, 30.731853>,  <35.939987, 31.019585, 30.665533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.147774, 30.919451, 30.731853>,  <36.494083, 30.752562, 30.842388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147774, 30.919451, 30.731853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391019, 0.219371, -0.893857,
		-0.312317, -0.881930, -0.353067,
		-0.865772, 0.417223, -0.276339,
		35.888042, 31.044617, 30.648952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314556, 30.483347, 30.231619>,  <36.494083, 30.752562, 30.842388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314556, 30.483347, 30.231619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.101681, 30.821991, 30.233652>,  <35.973953, 31.025177, 30.234873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.101681, 30.821991, 30.233652>,  <36.314556, 30.483347, 30.231619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101681, 30.821991, 30.233652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346513, 0.223295, -0.911081,
		-0.772464, -0.483109, -0.412197,
		-0.532192, 0.846608, 0.005084,
		35.942024, 31.075974, 30.235178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094299, 30.587393, 29.591560>,  <36.314556, 30.483347, 30.231619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094299, 30.587393, 29.591560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.055244, 30.953547, 29.747786>,  <36.031811, 31.173239, 29.841520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.055244, 30.953547, 29.747786>,  <36.094299, 30.587393, 29.591560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055244, 30.953547, 29.747786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235674, 0.402541, -0.884544,
		-0.966915, 0.005677, -0.255036,
		-0.097641, 0.915384, 0.390561,
		36.025951, 31.228161, 29.864954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770988, 31.036829, 29.025024>,  <36.094299, 30.587393, 29.591560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770988, 31.036829, 29.025024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.939098, 31.303154, 29.271620>,  <36.039967, 31.462950, 29.419577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.939098, 31.303154, 29.271620>,  <35.770988, 31.036829, 29.025024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939098, 31.303154, 29.271620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370410, 0.494334, -0.786403,
		-0.828349, 0.558863, -0.038865,
		0.420279, 0.665812, 0.616490,
		36.065182, 31.502897, 29.456566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755154, 31.688349, 28.643534>,  <35.770988, 31.036829, 29.025024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755154, 31.688349, 28.643534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.033329, 31.699265, 28.930761>,  <36.200233, 31.705814, 29.103098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.033329, 31.699265, 28.930761>,  <35.755154, 31.688349, 28.643534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033329, 31.699265, 28.930761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642318, 0.424411, -0.638203,
		-0.322173, 0.905058, 0.277622,
		0.695437, 0.027290, 0.718069,
		36.241959, 31.707451, 29.146181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395622, 32.050167, 28.067005>,  <35.755154, 31.688349, 28.643534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395622, 32.050167, 28.067005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.680141, 31.907034, 27.825010>,  <35.850853, 31.821154, 27.679813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.680141, 31.907034, 27.825010>,  <35.395622, 32.050167, 28.067005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680141, 31.907034, 27.825010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428423, 0.461632, -0.776756,
		0.557232, 0.811695, 0.175053,
		0.711299, -0.357837, -0.604985,
		35.893532, 31.799683, 27.643515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749233, 32.433487, 27.931101>,  <35.395622, 32.050167, 28.067005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749233, 32.433487, 27.931101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.522026, 32.762375, 27.916634>,  <34.385704, 32.959709, 27.907953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.522026, 32.762375, 27.916634>,  <34.749233, 32.433487, 27.931101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522026, 32.762375, 27.916634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332352, -0.188952, 0.924034,
		0.752928, 0.536887, 0.380595,
		-0.568016, 0.822222, -0.036168,
		34.351620, 33.009041, 27.905783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930737, 32.800594, 28.527937>,  <34.749233, 32.433487, 27.931101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930737, 32.800594, 28.527937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.564251, 32.919292, 28.420235>,  <34.344360, 32.990513, 28.355614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.564251, 32.919292, 28.420235>,  <34.930737, 32.800594, 28.527937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564251, 32.919292, 28.420235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361152, -0.320480, 0.875707,
		0.173573, 0.899574, 0.400798,
		-0.916211, 0.296748, -0.269256,
		34.289387, 33.008316, 28.339458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766594, 33.286713, 29.021866>,  <34.930737, 32.800594, 28.527937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766594, 33.286713, 29.021866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.435730, 33.134235, 28.856699>,  <34.237213, 33.042747, 28.757599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.435730, 33.134235, 28.856699>,  <34.766594, 33.286713, 29.021866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435730, 33.134235, 28.856699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406000, -0.102679, 0.908086,
		-0.388558, 0.918774, -0.069834,
		-0.827156, -0.381197, -0.412919,
		34.187584, 33.019875, 28.732822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341496, 33.629189, 29.458433>,  <34.766594, 33.286713, 29.021866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341496, 33.629189, 29.458433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.122036, 33.344433, 29.283070>,  <33.990360, 33.173580, 29.177853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.122036, 33.344433, 29.283070>,  <34.341496, 33.629189, 29.458433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122036, 33.344433, 29.283070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474647, -0.166456, 0.864293,
		-0.688254, 0.682282, -0.246569,
		-0.548649, -0.711887, -0.438407,
		33.957439, 33.130867, 29.151548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580814, 33.724171, 29.593016>,  <34.341496, 33.629189, 29.458433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580814, 33.724171, 29.593016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.626648, 33.339165, 29.494688>,  <33.654148, 33.108162, 29.435692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.626648, 33.339165, 29.494688>,  <33.580814, 33.724171, 29.593016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626648, 33.339165, 29.494688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457655, -0.270772, 0.846897,
		-0.881716, 0.015461, -0.471527,
		0.114583, -0.962520, -0.245820,
		33.661022, 33.050407, 29.420942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956738, 33.407257, 29.814020>,  <33.580814, 33.724171, 29.593016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956738, 33.407257, 29.814020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.206066, 33.096134, 29.781797>,  <33.355663, 32.909462, 29.762465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.206066, 33.096134, 29.781797>,  <32.956738, 33.407257, 29.814020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206066, 33.096134, 29.781797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410428, -0.413103, 0.812954,
		-0.665601, -0.473666, -0.576729,
		0.623317, -0.777808, -0.080556,
		33.393063, 32.862793, 29.757631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472626, 32.776466, 29.866293>,  <32.956738, 33.407257, 29.814020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472626, 32.776466, 29.866293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.852482, 32.667252, 29.927794>,  <33.080395, 32.601723, 29.964693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.852482, 32.667252, 29.927794>,  <32.472626, 32.776466, 29.866293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852482, 32.667252, 29.927794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300170, -0.651845, 0.696417,
		-0.089925, -0.707495, -0.700974,
		0.949638, -0.273037, 0.153751,
		33.137375, 32.585342, 29.973919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489773, 32.054966, 29.788868>,  <32.472626, 32.776466, 29.866293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489773, 32.054966, 29.788868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.827381, 32.106735, 29.997051>,  <33.029945, 32.137798, 30.121962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.827381, 32.106735, 29.997051>,  <32.489773, 32.054966, 29.788868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827381, 32.106735, 29.997051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390462, -0.516966, 0.761765,
		0.367652, -0.846165, -0.385794,
		0.844021, 0.129427, 0.520459,
		33.080589, 32.145561, 30.153189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671181, 31.395630, 30.128782>,  <32.489773, 32.054966, 29.788868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671181, 31.395630, 30.128782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.868168, 31.657824, 30.357803>,  <32.986362, 31.815140, 30.495216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.868168, 31.657824, 30.357803>,  <32.671181, 31.395630, 30.128782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868168, 31.657824, 30.357803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200208, -0.554893, 0.807471,
		0.846988, -0.512286, -0.142036,
		0.492471, 0.655482, 0.572552,
		33.015911, 31.854467, 30.529570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139908, 30.973537, 30.634052>,  <32.671181, 31.395630, 30.128782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139908, 30.973537, 30.634052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.095024, 31.326254, 30.817293>,  <33.068092, 31.537884, 30.927237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.095024, 31.326254, 30.817293>,  <33.139908, 30.973537, 30.634052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095024, 31.326254, 30.817293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219488, -0.471619, 0.854049,
		0.969141, -0.004715, 0.246463,
		-0.112209, 0.881790, 0.458100,
		33.061363, 31.590792, 30.954723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510571, 30.882011, 31.257038>,  <33.139908, 30.973537, 30.634052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510571, 30.882011, 31.257038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.243649, 31.176350, 31.303066>,  <33.083496, 31.352953, 31.330683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.243649, 31.176350, 31.303066>,  <33.510571, 30.882011, 31.257038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243649, 31.176350, 31.303066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329840, -0.430501, 0.840163,
		0.667767, 0.522689, 0.529985,
		-0.667303, 0.735844, 0.115070,
		33.043457, 31.397102, 31.337587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535091, 31.091562, 32.024990>,  <33.510571, 30.882011, 31.257038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535091, 31.091562, 32.024990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.185585, 31.234373, 31.892893>,  <32.975880, 31.320059, 31.813633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.185585, 31.234373, 31.892893>,  <33.535091, 31.091562, 32.024990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185585, 31.234373, 31.892893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424737, -0.229401, 0.875771,
		0.236914, 0.905488, 0.352085,
		-0.873768, 0.357026, -0.330246,
		32.923454, 31.341480, 31.793819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151852, 31.405668, 32.645432>,  <33.535091, 31.091562, 32.024990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151852, 31.405668, 32.645432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.882057, 31.310028, 32.366032>,  <32.720181, 31.252644, 32.198391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.882057, 31.310028, 32.366032>,  <33.151852, 31.405668, 32.645432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882057, 31.310028, 32.366032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641605, -0.278233, 0.714793,
		-0.365253, 0.930277, 0.034256,
		-0.674487, -0.239102, -0.698496,
		32.679710, 31.238297, 32.156483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553410, 31.573259, 32.913139>,  <33.151852, 31.405668, 32.645432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553410, 31.573259, 32.913139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.437599, 31.327951, 32.619183>,  <32.368111, 31.180767, 32.442806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.437599, 31.327951, 32.619183>,  <32.553410, 31.573259, 32.913139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437599, 31.327951, 32.619183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819787, -0.237447, 0.521122,
		-0.494088, 0.753338, -0.434003,
		-0.289528, -0.613271, -0.734896,
		32.350742, 31.143970, 32.398712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149837, 32.192738, 32.871540>,  <32.553410, 31.573259, 32.913139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149837, 32.192738, 32.871540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.058937, 32.525307, 33.074356>,  <32.004398, 32.724850, 33.196045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.058937, 32.525307, 33.074356>,  <32.149837, 32.192738, 32.871540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058937, 32.525307, 33.074356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480289, 0.548620, -0.684353,
		-0.847160, 0.088006, -0.523999,
		-0.227249, 0.831427, 0.507037,
		31.990763, 32.774734, 33.226467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936020, 32.721497, 32.410835>,  <32.149837, 32.192738, 32.871540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936020, 32.721497, 32.410835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.073883, 32.930706, 32.722645>,  <32.156601, 33.056232, 32.909729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.073883, 32.930706, 32.722645>,  <31.936020, 32.721497, 32.410835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073883, 32.930706, 32.722645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588424, 0.526640, -0.613520,
		-0.731414, 0.670145, -0.126250,
		0.344660, 0.523026, 0.779521,
		32.177280, 33.087612, 32.956501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110523, 33.428783, 32.176090>,  <31.936020, 32.721497, 32.410835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110523, 33.428783, 32.176090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.313053, 33.389782, 32.518814>,  <32.434570, 33.366383, 32.724449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.313053, 33.389782, 32.518814>,  <32.110523, 33.428783, 32.176090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313053, 33.389782, 32.518814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818503, 0.367109, -0.441909,
		-0.271459, 0.925054, 0.265679,
		0.506323, -0.097499, 0.856814,
		32.464951, 33.360531, 32.775860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329941, 34.013710, 32.259342>,  <32.110523, 33.428783, 32.176090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329941, 34.013710, 32.259342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.580402, 33.810436, 32.495876>,  <32.730679, 33.688473, 32.637798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.580402, 33.810436, 32.495876>,  <32.329941, 34.013710, 32.259342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580402, 33.810436, 32.495876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779479, 0.389863, -0.490326,
		0.018638, 0.767953, 0.640235,
		0.626151, -0.508188, 0.591337,
		32.768250, 33.657978, 32.673279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680828, 34.533005, 32.692474>,  <32.329941, 34.013710, 32.259342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680828, 34.533005, 32.692474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.921841, 34.213818, 32.686733>,  <33.066448, 34.022305, 32.683289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.921841, 34.213818, 32.686733>,  <32.680828, 34.533005, 32.692474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921841, 34.213818, 32.686733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670735, 0.516042, -0.532743,
		0.432522, 0.311362, 0.846155,
		0.602527, -0.797969, -0.014357,
		33.102600, 33.974426, 32.682426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312748, 34.911598, 32.640038>,  <32.680828, 34.533005, 32.692474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312748, 34.911598, 32.640038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.405891, 34.525368, 32.593655>,  <33.461777, 34.293629, 32.565826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.405891, 34.525368, 32.593655>,  <33.312748, 34.911598, 32.640038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405891, 34.525368, 32.593655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836270, 0.259668, -0.482934,
		0.496418, 0.015485, 0.867946,
		0.232856, -0.965574, -0.115954,
		33.475750, 34.235695, 32.558868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929741, 34.727871, 32.982887>,  <33.312748, 34.911598, 32.640038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929741, 34.727871, 32.982887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.892658, 34.484539, 32.667587>,  <33.870407, 34.338539, 32.478409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.892658, 34.484539, 32.667587>,  <33.929741, 34.727871, 32.982887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892658, 34.484539, 32.667587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844818, 0.370917, -0.385620,
		0.526961, -0.701676, 0.479544,
		-0.092709, -0.608334, -0.788248,
		33.864845, 34.302040, 32.431114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611076, 34.500217, 32.874054>,  <33.929741, 34.727871, 32.982887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611076, 34.500217, 32.874054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.408768, 34.389946, 32.547081>,  <34.287384, 34.323784, 32.350899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.408768, 34.389946, 32.547081>,  <34.611076, 34.500217, 32.874054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408768, 34.389946, 32.547081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724083, 0.379417, -0.575974,
		0.468933, -0.883200, 0.007718,
		-0.505772, -0.275682, -0.817431,
		34.257034, 34.307243, 32.301853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081387, 34.076317, 32.528008>,  <34.611076, 34.500217, 32.874054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081387, 34.076317, 32.528008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.810448, 34.242752, 32.285332>,  <34.647884, 34.342613, 32.139725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.810448, 34.242752, 32.285332>,  <35.081387, 34.076317, 32.528008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810448, 34.242752, 32.285332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733107, 0.313094, -0.603760,
		-0.061267, -0.853723, -0.517110,
		-0.677349, 0.416087, -0.606688,
		34.607243, 34.367577, 32.103325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208881, 33.775517, 31.860615>,  <35.081387, 34.076317, 32.528008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208881, 33.775517, 31.860615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.025681, 34.124180, 31.790813>,  <34.915760, 34.333378, 31.748934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.025681, 34.124180, 31.790813>,  <35.208881, 33.775517, 31.860615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025681, 34.124180, 31.790813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804108, 0.322532, -0.499384,
		-0.379008, -0.369036, -0.848625,
		-0.457999, 0.871657, -0.174502,
		34.888279, 34.385677, 31.738462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486103, 34.046890, 31.270311>,  <35.208881, 33.775517, 31.860615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486103, 34.046890, 31.270311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.282295, 34.366966, 31.396860>,  <35.160011, 34.559013, 31.472790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.282295, 34.366966, 31.396860>,  <35.486103, 34.046890, 31.270311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282295, 34.366966, 31.396860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659541, 0.599326, -0.453668,
		-0.552630, -0.022491, -0.833123,
		-0.509516, 0.800189, 0.316371,
		35.129440, 34.607021, 31.491772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361988, 34.398956, 30.726795>,  <35.486103, 34.046890, 31.270311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361988, 34.398956, 30.726795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.336109, 34.673706, 31.016352>,  <35.320583, 34.838558, 31.190084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.336109, 34.673706, 31.016352>,  <35.361988, 34.398956, 30.726795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336109, 34.673706, 31.016352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474597, 0.659296, -0.583169,
		-0.877822, 0.305827, -0.368643,
		-0.064696, 0.686876, 0.723889,
		35.316700, 34.879768, 31.233519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<29.108625, 31.316267, 35.312412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.275682, 31.563898, 35.578442>,  <29.375917, 31.712477, 35.738060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.275682, 31.563898, 35.578442>,  <29.108625, 31.316267, 35.312412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.275682, 31.563898, 35.578442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479867, 0.471269, -0.740022,
		-0.771559, 0.628209, -0.100253,
		0.417642, 0.619079, 0.665069,
		29.400974, 31.749622, 35.777962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.027882, 32.071499, 35.071739>,  <29.108625, 31.316267, 35.312412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.027882, 32.071499, 35.071739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336060, 32.057209, 35.326340>,  <29.520966, 32.048634, 35.479099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336060, 32.057209, 35.326340>,  <29.027882, 32.071499, 35.071739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336060, 32.057209, 35.326340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529588, 0.591689, -0.607816,
		-0.354898, 0.805374, 0.474784,
		0.770444, -0.035727, 0.636506,
		29.567192, 32.046490, 35.517292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.213482, 32.776237, 35.002621>,  <29.027882, 32.071499, 35.071739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.213482, 32.776237, 35.002621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.508734, 32.534336, 35.122246>,  <29.685884, 32.389194, 35.194023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.508734, 32.534336, 35.122246>,  <29.213482, 32.776237, 35.002621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.508734, 32.534336, 35.122246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617886, 0.427975, -0.659587,
		0.270896, 0.671647, 0.689569,
		0.738127, -0.604755, 0.299065,
		29.730171, 32.352909, 35.211964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.750055, 33.155903, 34.833271>,  <29.213482, 32.776237, 35.002621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.750055, 33.155903, 34.833271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.937370, 32.810043, 34.906025>,  <30.049759, 32.602528, 34.949677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.937370, 32.810043, 34.906025>,  <29.750055, 33.155903, 34.833271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.937370, 32.810043, 34.906025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718258, 0.252634, -0.648291,
		0.514598, 0.434224, 0.739350,
		0.468289, -0.864653, 0.181880,
		30.077856, 32.550648, 34.960590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384556, 33.237892, 35.171772>,  <29.750055, 33.155903, 34.833271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384556, 33.237892, 35.171772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401257, 32.893562, 34.968895>,  <30.411276, 32.686966, 34.847168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401257, 32.893562, 34.968895>,  <30.384556, 33.237892, 35.171772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.401257, 32.893562, 34.968895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837999, 0.306601, -0.451392,
		0.544073, -0.406178, 0.734169,
		0.041751, -0.860822, -0.507190,
		30.413782, 32.635315, 34.816738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115639, 33.020226, 35.106594>,  <30.384556, 33.237892, 35.171772>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115639, 33.020226, 35.106594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951710, 32.809555, 34.808693>,  <30.853354, 32.683155, 34.629951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951710, 32.809555, 34.808693>,  <31.115639, 33.020226, 35.106594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951710, 32.809555, 34.808693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763214, 0.249157, -0.596176,
		0.499550, -0.812734, 0.299855,
		-0.409822, -0.526673, -0.744756,
		30.828764, 32.651554, 34.585266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601618, 32.515911, 34.854637>,  <31.115639, 33.020226, 35.106594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601618, 32.515911, 34.854637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353085, 32.534031, 34.541744>,  <31.203964, 32.544903, 34.354008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353085, 32.534031, 34.541744>,  <31.601618, 32.515911, 34.854637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353085, 32.534031, 34.541744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769577, 0.222955, -0.598366,
		0.147300, -0.973776, -0.173387,
		-0.621332, 0.045295, -0.782237,
		31.166685, 32.547619, 34.307072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850183, 32.090748, 34.332733>,  <31.601618, 32.515911, 34.854637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850183, 32.090748, 34.332733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611540, 32.356827, 34.153149>,  <31.468353, 32.516476, 34.045399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611540, 32.356827, 34.153149>,  <31.850183, 32.090748, 34.332733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.611540, 32.356827, 34.153149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671887, 0.108074, -0.732726,
		-0.438888, -0.738803, -0.511418,
		-0.596611, 0.665200, -0.448960,
		31.432556, 32.556385, 34.018459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961191, 31.956985, 33.511204>,  <31.850183, 32.090748, 34.332733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961191, 31.956985, 33.511204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.810638, 32.325871, 33.546673>,  <31.720306, 32.547203, 33.567955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.810638, 32.325871, 33.546673>,  <31.961191, 31.956985, 33.511204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810638, 32.325871, 33.546673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618098, 0.321249, -0.717464,
		-0.690139, -0.215232, -0.690930,
		-0.376382, 0.922212, 0.088672,
		31.697723, 32.602535, 33.573273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738281, 31.426466, 32.994747>,  <31.961191, 31.956985, 33.511204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738281, 31.426466, 32.994747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850359, 31.115602, 32.769352>,  <31.917606, 30.929085, 32.634113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850359, 31.115602, 32.769352>,  <31.738281, 31.426466, 32.994747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850359, 31.115602, 32.769352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618532, -0.595066, 0.513142,
		-0.734104, 0.204755, -0.647431,
		0.280196, -0.777157, -0.563488,
		31.934418, 30.882456, 32.600307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156166, 31.055288, 32.907795>,  <31.738281, 31.426466, 32.994747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156166, 31.055288, 32.907795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434198, 30.782671, 32.816265>,  <31.601017, 30.619101, 32.761349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434198, 30.782671, 32.816265>,  <31.156166, 31.055288, 32.907795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434198, 30.782671, 32.816265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441483, -0.655842, 0.612343,
		-0.567410, -0.324608, -0.756754,
		0.695083, -0.681543, -0.228822,
		31.642723, 30.578207, 32.747620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.750628, 30.457527, 32.918228>,  <31.156166, 31.055288, 32.907795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.750628, 30.457527, 32.918228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136650, 30.356340, 32.945564>,  <31.368263, 30.295628, 32.961964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136650, 30.356340, 32.945564>,  <30.750628, 30.457527, 32.918228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.136650, 30.356340, 32.945564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234331, -0.716452, 0.657104,
		-0.117265, -0.650157, -0.750696,
		0.965059, -0.252966, 0.068337,
		31.426168, 30.280451, 32.966064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767969, 29.768881, 32.857059>,  <30.750628, 30.457527, 32.918228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.767969, 29.768881, 32.857059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126461, 29.845097, 33.017292>,  <31.341557, 29.890827, 33.113434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126461, 29.845097, 33.017292>,  <30.767969, 29.768881, 32.857059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126461, 29.845097, 33.017292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199799, -0.632865, 0.748039,
		0.396048, -0.750450, -0.529122,
		0.896229, 0.190541, 0.400584,
		31.395330, 29.902260, 33.137466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005749, 29.099211, 32.901463>,  <30.767969, 29.768881, 32.857059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005749, 29.099211, 32.901463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236481, 29.318628, 33.143574>,  <31.374920, 29.450279, 33.288841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236481, 29.318628, 33.143574>,  <31.005749, 29.099211, 32.901463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236481, 29.318628, 33.143574> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218067, -0.610682, 0.761258,
		0.787217, -0.571110, -0.232642,
		0.576832, 0.548544, 0.605280,
		31.409531, 29.483192, 33.325157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446835, 28.612942, 33.294884>,  <31.005749, 29.099211, 32.901463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446835, 28.612942, 33.294884> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409126, 28.956852, 33.495644>,  <31.386501, 29.163198, 33.616100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409126, 28.956852, 33.495644>,  <31.446835, 28.612942, 33.294884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409126, 28.956852, 33.495644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304787, -0.504861, 0.807602,
		0.947744, -0.076839, 0.309641,
		-0.094270, 0.859774, 0.501898,
		31.380846, 29.214785, 33.646214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565845, 28.416534, 34.032440>,  <31.446835, 28.612942, 33.294884>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565845, 28.416534, 34.032440> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385935, 28.773628, 34.043217>,  <31.277988, 28.987885, 34.049683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385935, 28.773628, 34.043217>,  <31.565845, 28.416534, 34.032440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385935, 28.773628, 34.043217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530249, -0.291179, 0.796273,
		0.718705, 0.343859, 0.604337,
		-0.449777, 0.892735, 0.026941,
		31.251001, 29.041449, 34.051300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.664330, 28.759684, 34.706703>,  <31.565845, 28.416534, 34.032440>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.664330, 28.759684, 34.706703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315069, 28.901873, 34.573288>,  <31.105513, 28.987186, 34.493240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315069, 28.901873, 34.573288>,  <31.664330, 28.759684, 34.706703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315069, 28.901873, 34.573288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443889, -0.297110, 0.845393,
		0.201416, 0.886209, 0.417212,
		-0.873152, 0.355471, -0.333536,
		31.053123, 29.008514, 34.473228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477682, 29.154764, 35.159935>,  <31.664330, 28.759684, 34.706703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477682, 29.154764, 35.159935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138075, 29.099541, 34.955933>,  <30.934311, 29.066406, 34.833530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138075, 29.099541, 34.955933>,  <31.477682, 29.154764, 35.159935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.138075, 29.099541, 34.955933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484132, -0.183344, 0.855570,
		-0.211626, 0.973306, 0.088824,
		-0.849017, -0.138059, -0.510009,
		30.883369, 29.058123, 34.802929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.048252, 29.493011, 35.545364>,  <31.477682, 29.154764, 35.159935>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.048252, 29.493011, 35.545364> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801094, 29.263880, 35.329933>,  <30.652800, 29.126400, 35.200672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801094, 29.263880, 35.329933>,  <31.048252, 29.493011, 35.545364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.801094, 29.263880, 35.329933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532480, -0.199131, 0.822686,
		-0.578508, 0.795118, -0.181978,
		-0.617895, -0.572830, -0.538583,
		30.615726, 29.092031, 35.168358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411579, 29.723114, 35.722065>,  <31.048252, 29.493011, 35.545364>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411579, 29.723114, 35.722065> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376158, 29.347395, 35.589474>,  <30.354906, 29.121964, 35.509918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376158, 29.347395, 35.589474>,  <30.411579, 29.723114, 35.722065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.376158, 29.347395, 35.589474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546678, -0.232355, 0.804459,
		-0.832647, 0.252449, -0.492918,
		-0.088552, -0.939298, -0.331478,
		30.349592, 29.065605, 35.490028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743446, 29.511106, 35.912132>,  <30.411579, 29.723114, 35.722065>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.743446, 29.511106, 35.912132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.874634, 29.145159, 35.817936>,  <29.953346, 28.925591, 35.761417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.874634, 29.145159, 35.817936>,  <29.743446, 29.511106, 35.912132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.874634, 29.145159, 35.817936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577338, -0.391415, 0.716572,
		-0.747743, -0.099055, -0.656559,
		0.327966, -0.914868, -0.235489,
		29.973024, 28.870699, 35.747288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.115141, 28.938612, 35.946991>,  <29.743446, 29.511106, 35.912132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.115141, 28.938612, 35.946991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.471851, 28.768646, 36.009193>,  <29.685877, 28.666666, 36.046516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.471851, 28.768646, 36.009193>,  <29.115141, 28.938612, 35.946991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.471851, 28.768646, 36.009193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320013, -0.349320, 0.880663,
		-0.319879, -0.835122, -0.447492,
		0.891779, -0.424909, 0.155509,
		29.739384, 28.641172, 36.055843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.079676, 28.103989, 36.128468>,  <29.115141, 28.938612, 35.946991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.079676, 28.103989, 36.128468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.377586, 28.310862, 36.297150>,  <29.556332, 28.434984, 36.398357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.377586, 28.310862, 36.297150>,  <29.079676, 28.103989, 36.128468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377586, 28.310862, 36.297150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264119, -0.351879, 0.898010,
		0.612823, -0.780196, -0.125473,
		0.744775, 0.517181, 0.421704,
		29.601019, 28.466015, 36.423660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.685062, 32.285057, 40.335049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.421696, 32.096817, 40.100094>,  <33.263676, 31.983871, 39.959122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.421696, 32.096817, 40.100094>,  <33.685062, 32.285057, 40.335049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421696, 32.096817, 40.100094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554731, 0.224029, -0.801302,
		0.508688, -0.853429, 0.113555,
		-0.658415, -0.470605, -0.587385,
		33.224171, 31.955635, 39.923878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043472, 31.780979, 39.837902>,  <33.685062, 32.285057, 40.335049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043472, 31.780979, 39.837902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.698929, 31.913315, 39.683701>,  <33.492203, 31.992716, 39.591179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.698929, 31.913315, 39.683701>,  <34.043472, 31.780979, 39.837902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698929, 31.913315, 39.683701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487659, 0.325902, -0.809924,
		-0.142321, -0.885625, -0.442055,
		-0.861355, 0.330841, -0.385501,
		33.440521, 32.012566, 39.568050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018871, 31.493086, 39.239697>,  <34.043472, 31.780979, 39.837902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018871, 31.493086, 39.239697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.766323, 31.802002, 39.211590>,  <33.614796, 31.987352, 39.194725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.766323, 31.802002, 39.211590>,  <34.018871, 31.493086, 39.239697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766323, 31.802002, 39.211590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510939, 0.346121, -0.786855,
		-0.583362, -0.532699, -0.613124,
		-0.631372, 0.772291, -0.070263,
		33.576912, 32.033688, 39.190510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054218, 31.536222, 38.566086>,  <34.018871, 31.493086, 39.239697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054218, 31.536222, 38.566086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.905529, 31.891426, 38.674358>,  <33.816315, 32.104549, 38.739323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.905529, 31.891426, 38.674358>,  <34.054218, 31.536222, 38.566086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905529, 31.891426, 38.674358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571968, 0.448728, -0.686656,
		-0.731217, -0.100423, -0.674713,
		-0.371719, 0.888008, 0.270679,
		33.794014, 32.157829, 38.755562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998695, 31.969334, 37.940098>,  <34.054218, 31.536222, 38.566086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998695, 31.969334, 37.940098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.984398, 32.247513, 38.227173>,  <33.975819, 32.414421, 38.399418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.984398, 32.247513, 38.227173>,  <33.998695, 31.969334, 37.940098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984398, 32.247513, 38.227173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593781, 0.592417, -0.544487,
		-0.803832, 0.406686, -0.434120,
		-0.035745, 0.695448, 0.717686,
		33.973675, 32.456146, 38.442478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840164, 32.586445, 37.594849>,  <33.998695, 31.969334, 37.940098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840164, 32.586445, 37.594849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.001942, 32.703281, 37.941513>,  <34.099007, 32.773384, 38.149513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.001942, 32.703281, 37.941513>,  <33.840164, 32.586445, 37.594849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001942, 32.703281, 37.941513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629470, 0.598552, -0.495482,
		-0.663471, 0.745934, 0.058216,
		0.404442, 0.292093, 0.866665,
		34.123276, 32.790909, 38.201511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845207, 33.310154, 37.574944>,  <33.840164, 32.586445, 37.594849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845207, 33.310154, 37.574944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.097794, 33.188919, 37.860428>,  <34.249348, 33.116177, 38.031719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.097794, 33.188919, 37.860428>,  <33.845207, 33.310154, 37.574944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097794, 33.188919, 37.860428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685318, 0.648752, -0.330846,
		-0.362746, 0.698039, 0.617379,
		0.631470, -0.303088, 0.713711,
		34.287235, 33.097992, 38.074543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071751, 33.929554, 37.959949>,  <33.845207, 33.310154, 37.574944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071751, 33.929554, 37.959949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.341251, 33.635921, 37.993866>,  <34.502953, 33.459743, 38.014217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.341251, 33.635921, 37.993866>,  <34.071751, 33.929554, 37.959949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341251, 33.635921, 37.993866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665134, 0.552440, -0.502400,
		0.321960, 0.394888, 0.860468,
		0.673749, -0.734080, 0.084790,
		34.543377, 33.415699, 38.019302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702747, 34.276367, 38.014729>,  <34.071751, 33.929554, 37.959949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702747, 34.276367, 38.014729> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.824757, 33.909065, 37.913712>,  <34.897961, 33.688686, 37.853104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.824757, 33.909065, 37.913712>,  <34.702747, 34.276367, 38.014729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824757, 33.909065, 37.913712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757995, 0.394619, -0.519344,
		0.576546, -0.033013, 0.816397,
		0.305021, -0.918251, -0.252540,
		34.916264, 33.633591, 37.837948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455299, 34.187946, 38.193596>,  <34.702747, 34.276367, 38.014729>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455299, 34.187946, 38.193596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.392590, 33.889553, 37.934696>,  <35.354965, 33.710518, 37.779358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.392590, 33.889553, 37.934696>,  <35.455299, 34.187946, 38.193596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392590, 33.889553, 37.934696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772384, 0.315815, -0.551075,
		0.615503, -0.586319, 0.526674,
		-0.156775, -0.745983, -0.647249,
		35.345558, 33.665760, 37.740520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204124, 33.822803, 38.034332>,  <35.455299, 34.187946, 38.193596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204124, 33.822803, 38.034332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.956375, 33.711647, 37.740627>,  <35.807724, 33.644951, 37.564404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.956375, 33.711647, 37.740627>,  <36.204124, 33.822803, 38.034332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956375, 33.711647, 37.740627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717120, 0.180415, -0.673193,
		0.319549, -0.943517, 0.087538,
		-0.619376, -0.277894, -0.734267,
		35.770561, 33.628281, 37.520348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639816, 33.389553, 37.725807>,  <36.204124, 33.822803, 38.034332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639816, 33.389553, 37.725807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.341217, 33.488106, 37.478573>,  <36.162056, 33.547237, 37.330231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.341217, 33.488106, 37.478573>,  <36.639816, 33.389553, 37.725807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341217, 33.488106, 37.478573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644016, 0.034026, -0.764255,
		-0.167270, -0.968574, -0.184077,
		-0.746501, 0.246386, -0.618086,
		36.117268, 33.562019, 37.293148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680077, 32.909756, 37.096191>,  <36.639816, 33.389553, 37.725807>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680077, 32.909756, 37.096191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.477425, 33.233231, 36.976627>,  <36.355831, 33.427315, 36.904888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.477425, 33.233231, 36.976627>,  <36.680077, 32.909756, 37.096191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477425, 33.233231, 36.976627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549989, 0.036156, -0.834389,
		-0.663953, -0.587125, -0.463088,
		-0.506633, 0.808689, -0.298906,
		36.325436, 33.475838, 36.886955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515457, 32.814476, 36.320084>,  <36.680077, 32.909756, 37.096191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515457, 32.814476, 36.320084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.506554, 33.207424, 36.394325>,  <36.501213, 33.443195, 36.438869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.506554, 33.207424, 36.394325>,  <36.515457, 32.814476, 36.320084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506554, 33.207424, 36.394325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463710, 0.174616, -0.868609,
		-0.885707, 0.066736, -0.459422,
		-0.022255, 0.982372, 0.185605,
		36.499878, 33.502136, 36.450008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855446, 32.687492, 35.949055>,  <36.515457, 32.814476, 36.320084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855446, 32.687492, 35.949055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.019318, 32.355350, 35.797966>,  <36.117641, 32.156063, 35.707314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.019318, 32.355350, 35.797966>,  <35.855446, 32.687492, 35.949055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019318, 32.355350, 35.797966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157699, -0.472294, 0.867219,
		-0.898497, -0.295712, -0.324434,
		0.409675, -0.830357, -0.377722,
		36.142220, 32.106243, 35.684650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463020, 32.084045, 36.229088>,  <35.855446, 32.687492, 35.949055>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463020, 32.084045, 36.229088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.801662, 31.918173, 36.095646>,  <36.004848, 31.818649, 36.015579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.801662, 31.918173, 36.095646>,  <35.463020, 32.084045, 36.229088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801662, 31.918173, 36.095646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052447, -0.558771, 0.827662,
		-0.529622, -0.718204, -0.451313,
		0.846611, -0.414678, -0.333605,
		36.055645, 31.793768, 35.995564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370140, 31.384790, 36.024391>,  <35.463020, 32.084045, 36.229088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370140, 31.384790, 36.024391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.760792, 31.417223, 36.104019>,  <35.995182, 31.436682, 36.151798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.760792, 31.417223, 36.104019>,  <35.370140, 31.384790, 36.024391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760792, 31.417223, 36.104019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097087, -0.659891, 0.745062,
		0.191775, -0.746974, -0.636595,
		0.976625, 0.081079, 0.199073,
		36.053780, 31.441547, 36.163742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605808, 30.653452, 36.055973>,  <35.370140, 31.384790, 36.024391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605808, 30.653452, 36.055973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.880692, 30.875975, 36.242847>,  <36.045624, 31.009489, 36.354973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.880692, 30.875975, 36.242847>,  <35.605808, 30.653452, 36.055973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880692, 30.875975, 36.242847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019153, -0.629003, 0.777167,
		0.726204, -0.543027, -0.421604,
		0.687212, 0.556307, 0.467185,
		36.086857, 31.042868, 36.383003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249672, 30.130661, 36.251945>,  <35.605808, 30.653452, 36.055973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249672, 30.130661, 36.251945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.254139, 30.452904, 36.488884>,  <36.256821, 30.646250, 36.631046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.254139, 30.452904, 36.488884>,  <36.249672, 30.130661, 36.251945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254139, 30.452904, 36.488884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026802, -0.592409, 0.805191,
		0.999578, 0.006883, -0.028208,
		0.011169, 0.805608, 0.592344,
		36.257488, 30.694586, 36.666588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737103, 30.053726, 36.687904>,  <36.249672, 30.130661, 36.251945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737103, 30.053726, 36.687904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.532578, 30.338003, 36.881180>,  <36.409863, 30.508570, 36.997147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.532578, 30.338003, 36.881180>,  <36.737103, 30.053726, 36.687904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532578, 30.338003, 36.881180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099247, -0.607315, 0.788238,
		0.853644, 0.355082, 0.381063,
		-0.511314, 0.710694, 0.483190,
		36.379185, 30.551210, 37.026138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064541, 30.051970, 37.338070>,  <36.737103, 30.053726, 36.687904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064541, 30.051970, 37.338070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.701679, 30.219505, 37.354275>,  <36.483963, 30.320026, 37.363998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.701679, 30.219505, 37.354275>,  <37.064541, 30.051970, 37.338070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701679, 30.219505, 37.354275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223392, -0.560951, 0.797139,
		0.356598, 0.714079, 0.602436,
		-0.907157, 0.418838, 0.040514,
		36.429531, 30.345158, 37.366428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822395, 29.920593, 38.025860>,  <37.064541, 30.051970, 37.338070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822395, 29.920593, 38.025860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.487835, 30.014944, 37.827950>,  <36.287098, 30.071554, 37.709206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.487835, 30.014944, 37.827950>,  <36.822395, 29.920593, 38.025860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487835, 30.014944, 37.827950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541519, -0.495277, 0.679307,
		-0.084818, 0.836100, 0.541980,
		-0.836399, 0.235875, -0.494772,
		36.236916, 30.085707, 37.679520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287785, 29.971334, 38.588036>,  <36.822395, 29.920593, 38.025860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287785, 29.971334, 38.588036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.081478, 29.906591, 38.251514>,  <35.957695, 29.867744, 38.049603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.081478, 29.906591, 38.251514>,  <36.287785, 29.971334, 38.588036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081478, 29.906591, 38.251514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711438, -0.466198, 0.525847,
		-0.477325, 0.869748, 0.125297,
		-0.515767, -0.161859, -0.841300,
		35.926746, 29.858034, 37.999123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635323, 30.178205, 38.709003>,  <36.287785, 29.971334, 38.588036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635323, 30.178205, 38.709003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.606453, 29.901329, 38.421764>,  <35.589130, 29.735203, 38.249420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.606453, 29.901329, 38.421764>,  <35.635323, 30.178205, 38.709003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606453, 29.901329, 38.421764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643604, -0.517693, 0.563710,
		-0.761948, 0.502855, -0.408132,
		-0.072177, -0.692193, -0.718095,
		35.584801, 29.693672, 38.206337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950951, 30.096207, 38.324669>,  <35.635323, 30.178205, 38.709003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950951, 30.096207, 38.324669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.151138, 29.755289, 38.385494>,  <35.271252, 29.550737, 38.421989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.151138, 29.755289, 38.385494>,  <34.950951, 30.096207, 38.324669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151138, 29.755289, 38.385494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651401, -0.255009, 0.714596,
		-0.570269, -0.456686, -0.682811,
		0.500469, -0.852296, 0.152062,
		35.301281, 29.499601, 38.431114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419716, 29.717882, 38.430145>,  <34.950951, 30.096207, 38.324669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419716, 29.717882, 38.430145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.708374, 29.505798, 38.608181>,  <34.881569, 29.378548, 38.715004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.708374, 29.505798, 38.608181>,  <34.419716, 29.717882, 38.430145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708374, 29.505798, 38.608181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623120, -0.217408, 0.751302,
		-0.301585, -0.819516, -0.487278,
		0.721643, -0.530214, 0.445090,
		34.924866, 29.346735, 38.741707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138172, 29.086090, 38.595142>,  <34.419716, 29.717882, 38.430145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138172, 29.086090, 38.595142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.477104, 29.063368, 38.806351>,  <34.680462, 29.049734, 38.933075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.477104, 29.063368, 38.806351>,  <34.138172, 29.086090, 38.595142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477104, 29.063368, 38.806351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514795, -0.332103, 0.790376,
		0.130460, -0.941531, -0.310644,
		0.847329, -0.056806, 0.528021,
		34.731304, 29.046326, 38.964756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137398, 28.473116, 38.785984>,  <34.138172, 29.086090, 38.595142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137398, 28.473116, 38.785984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.341545, 28.684114, 39.057652>,  <34.464035, 28.810715, 39.220650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.341545, 28.684114, 39.057652>,  <34.137398, 28.473116, 38.785984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341545, 28.684114, 39.057652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572705, -0.380660, 0.726021,
		0.641507, -0.759502, 0.107823,
		0.510371, 0.527498, 0.679167,
		34.494656, 28.842363, 39.261402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308422, 27.714931, 38.558666>,  <34.137398, 28.473116, 38.785984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308422, 27.714931, 38.558666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.021351, 27.514668, 38.365059>,  <33.849106, 27.394508, 38.248894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.021351, 27.514668, 38.365059>,  <34.308422, 27.714931, 38.558666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021351, 27.514668, 38.365059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486030, 0.137632, -0.863037,
		0.498706, -0.854632, 0.144561,
		-0.717682, -0.500662, -0.484015,
		33.806046, 27.364470, 38.219856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582371, 27.146662, 38.125546>,  <34.308422, 27.714931, 38.558666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582371, 27.146662, 38.125546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.238529, 27.264721, 37.958702>,  <34.032227, 27.335556, 37.858597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.238529, 27.264721, 37.958702>,  <34.582371, 27.146662, 38.125546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238529, 27.264721, 37.958702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473792, 0.154729, -0.866937,
		-0.191338, -0.942839, -0.272845,
		-0.859599, 0.295150, -0.417104,
		33.980648, 27.353266, 37.833572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707806, 26.824869, 37.430614>,  <34.582371, 27.146662, 38.125546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707806, 26.824869, 37.430614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.393681, 27.067266, 37.379929>,  <34.205204, 27.212704, 37.349518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.393681, 27.067266, 37.379929>,  <34.707806, 26.824869, 37.430614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393681, 27.067266, 37.379929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272136, 0.154052, -0.949847,
		-0.556080, -0.780411, -0.285891,
		-0.785313, 0.605992, -0.126713,
		34.158085, 27.249063, 37.341915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443535, 26.762144, 36.743259>,  <34.707806, 26.824869, 37.430614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443535, 26.762144, 36.743259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.263062, 27.111448, 36.816853>,  <34.154778, 27.321030, 36.861008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.263062, 27.111448, 36.816853>,  <34.443535, 26.762144, 36.743259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263062, 27.111448, 36.816853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095223, 0.252086, -0.963008,
		-0.887335, -0.416978, -0.196892,
		-0.451187, 0.873259, 0.183979,
		34.127705, 27.373426, 36.872047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184170, 26.882668, 36.154449>,  <34.443535, 26.762144, 36.743259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184170, 26.882668, 36.154449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.174427, 27.249071, 36.314617>,  <34.168583, 27.468914, 36.410717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.174427, 27.249071, 36.314617>,  <34.184170, 26.882668, 36.154449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174427, 27.249071, 36.314617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237427, 0.394375, -0.887748,
		-0.971100, 0.073450, -0.227090,
		-0.024354, 0.916010, 0.400417,
		34.167122, 27.523874, 36.434742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726730, 27.307867, 35.718472>,  <34.184170, 26.882668, 36.154449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726730, 27.307867, 35.718472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.976036, 27.549206, 35.917477>,  <34.125618, 27.694008, 36.036880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.976036, 27.549206, 35.917477>,  <33.726730, 27.307867, 35.718472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976036, 27.549206, 35.917477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147909, 0.533758, -0.832601,
		-0.767895, 0.592517, 0.243433,
		0.623265, 0.603345, 0.497509,
		34.163017, 27.730209, 36.066730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521633, 27.958626, 35.485844>,  <33.726730, 27.307867, 35.718472>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521633, 27.958626, 35.485844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.891018, 27.992863, 35.635448>,  <34.112648, 28.013405, 35.725212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.891018, 27.992863, 35.635448>,  <33.521633, 27.958626, 35.485844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891018, 27.992863, 35.635448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260639, 0.575413, -0.775220,
		-0.281564, 0.813372, 0.509066,
		0.923466, 0.085592, 0.374012,
		34.168056, 28.018539, 35.747654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600662, 28.685158, 35.522457>,  <33.521633, 27.958626, 35.485844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600662, 28.685158, 35.522457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.972683, 28.538685, 35.510376>,  <34.195896, 28.450800, 35.503128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.972683, 28.538685, 35.510376>,  <33.600662, 28.685158, 35.522457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972683, 28.538685, 35.510376> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199077, 0.571293, -0.796237,
		0.308821, 0.734530, 0.604231,
		0.930053, -0.366183, -0.030199,
		34.251698, 28.428829, 35.501316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036690, 29.306311, 35.442635>,  <33.600662, 28.685158, 35.522457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036690, 29.306311, 35.442635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.262810, 28.995737, 35.331215>,  <34.398479, 28.809393, 35.264362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.262810, 28.995737, 35.331215>,  <34.036690, 29.306311, 35.442635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262810, 28.995737, 35.331215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308909, 0.512374, -0.801279,
		0.764863, 0.366913, 0.529490,
		0.565297, -0.776433, -0.278553,
		34.432400, 28.762808, 35.247650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670654, 29.549984, 35.272617>,  <34.036690, 29.306311, 35.442635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670654, 29.549984, 35.272617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.686859, 29.200108, 35.079422>,  <34.696583, 28.990181, 34.963505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.686859, 29.200108, 35.079422>,  <34.670654, 29.549984, 35.272617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686859, 29.200108, 35.079422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268123, 0.475170, -0.838047,
		0.962533, -0.095551, 0.253773,
		0.040509, -0.874690, -0.482986,
		34.699013, 28.937700, 34.934525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251221, 29.607742, 34.853771>,  <34.670654, 29.549984, 35.272617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251221, 29.607742, 34.853771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.004375, 29.322681, 34.720325>,  <34.856266, 29.151646, 34.640259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.004375, 29.322681, 34.720325>,  <35.251221, 29.607742, 34.853771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004375, 29.322681, 34.720325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179049, 0.285676, -0.941451,
		0.766231, -0.640717, -0.048696,
		-0.617115, -0.712651, -0.333614,
		34.819241, 29.108887, 34.620243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674126, 29.243336, 34.386578>,  <35.251221, 29.607742, 34.853771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674126, 29.243336, 34.386578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.289288, 29.201567, 34.285812>,  <35.058384, 29.176506, 34.225353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.289288, 29.201567, 34.285812>,  <35.674126, 29.243336, 34.386578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289288, 29.201567, 34.285812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222977, 0.230593, -0.947158,
		0.156993, -0.967431, -0.198570,
		-0.962099, -0.104421, -0.251916,
		35.000656, 29.170240, 34.210236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685314, 28.777466, 33.848633>,  <35.674126, 29.243336, 34.386578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685314, 28.777466, 33.848633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.339298, 28.977753, 33.836029>,  <35.131687, 29.097925, 33.828468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.339298, 28.977753, 33.836029>,  <35.685314, 28.777466, 33.848633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339298, 28.977753, 33.836029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127145, 0.158037, -0.979213,
		-0.485327, -0.851063, -0.200372,
		-0.865038, 0.500715, -0.031509,
		35.079788, 29.127968, 33.826576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500835, 28.718822, 33.186859>,  <35.685314, 28.777466, 33.848633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500835, 28.718822, 33.186859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.288498, 29.024286, 33.333847>,  <35.161095, 29.207565, 33.422039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.288498, 29.024286, 33.333847>,  <35.500835, 28.718822, 33.186859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288498, 29.024286, 33.333847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029183, 0.449821, -0.892642,
		-0.846969, -0.463127, -0.261069,
		-0.530841, 0.763659, 0.367469,
		35.129246, 29.253384, 33.444088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.943193, 26.807751, 36.392052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.008133, 27.189430, 36.492569>,  <30.047096, 27.418438, 36.552879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.008133, 27.189430, 36.492569>,  <29.943193, 26.807751, 36.392052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.008133, 27.189430, 36.492569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153200, -0.275959, 0.948882,
		0.974768, -0.115553, -0.190985,
		0.162350, 0.954198, 0.251294,
		30.056839, 27.475689, 36.567959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.452843, 26.714668, 36.830135>,  <29.943193, 26.807751, 36.392052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.452843, 26.714668, 36.830135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.305685, 27.075371, 36.920898>,  <30.217390, 27.291792, 36.975357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.305685, 27.075371, 36.920898>,  <30.452843, 26.714668, 36.830135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.305685, 27.075371, 36.920898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042891, -0.227302, 0.972880,
		0.928877, 0.367651, 0.044946,
		-0.367896, 0.901758, 0.226904,
		30.195316, 27.345898, 36.988968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.938805, 26.936571, 37.291557>,  <30.452843, 26.714668, 36.830135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.938805, 26.936571, 37.291557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.612894, 27.158916, 37.357468>,  <30.417347, 27.292324, 37.397015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.612894, 27.158916, 37.357468>,  <30.938805, 26.936571, 37.291557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612894, 27.158916, 37.357468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144827, -0.080065, 0.986212,
		0.561393, 0.827409, -0.015269,
		-0.814778, 0.555864, 0.164779,
		30.368460, 27.325676, 37.406902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101503, 27.427721, 37.834206>,  <30.938805, 26.936571, 37.291557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101503, 27.427721, 37.834206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.702805, 27.407495, 37.859306>,  <30.463585, 27.395361, 37.874367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.702805, 27.407495, 37.859306>,  <31.101503, 27.427721, 37.834206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.702805, 27.407495, 37.859306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051792, 0.194704, 0.979494,
		-0.061745, 0.979558, -0.191452,
		-0.996747, -0.050564, 0.062756,
		30.403780, 27.392326, 37.878132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.931030, 27.873640, 38.361362>,  <31.101503, 27.427721, 37.834206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.931030, 27.873640, 38.361362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.599367, 27.656469, 38.308102>,  <30.400370, 27.526167, 38.276146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.599367, 27.656469, 38.308102>,  <30.931030, 27.873640, 38.361362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.599367, 27.656469, 38.308102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131461, -0.042136, 0.990425,
		-0.543339, 0.838723, -0.036436,
		-0.829157, -0.542926, -0.133153,
		30.350620, 27.493591, 38.268154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.418276, 28.140951, 38.733959>,  <30.931030, 27.873640, 38.361362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.418276, 28.140951, 38.733959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.284662, 27.767126, 38.684940>,  <30.204494, 27.542831, 38.655529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.284662, 27.767126, 38.684940>,  <30.418276, 28.140951, 38.733959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284662, 27.767126, 38.684940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196830, -0.057990, 0.978721,
		-0.921781, 0.351047, -0.164578,
		-0.334033, -0.934561, -0.122551,
		30.184452, 27.486757, 38.648174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981752, 28.112015, 39.270191>,  <30.418276, 28.140951, 38.733959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.981752, 28.112015, 39.270191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.990490, 27.727461, 39.160458>,  <29.995733, 27.496729, 39.094616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.990490, 27.727461, 39.160458>,  <29.981752, 28.112015, 39.270191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.990490, 27.727461, 39.160458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189953, -0.273392, 0.942961,
		-0.981550, 0.031512, -0.188591,
		0.021845, -0.961387, -0.274333,
		29.997044, 27.439045, 39.078159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.343929, 27.721935, 39.485775>,  <29.981752, 28.112015, 39.270191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.343929, 27.721935, 39.485775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.623831, 27.442039, 39.428207>,  <29.791771, 27.274103, 39.393665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.623831, 27.442039, 39.428207>,  <29.343929, 27.721935, 39.485775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.623831, 27.442039, 39.428207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222907, -0.405268, 0.886606,
		-0.678718, -0.588324, -0.439564,
		0.699753, -0.699738, -0.143921,
		29.833757, 27.232119, 39.385033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979485, 27.092491, 39.522396>,  <29.343929, 27.721935, 39.485775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979485, 27.092491, 39.522396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.365042, 27.007504, 39.586601>,  <29.596376, 26.956511, 39.625126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.365042, 27.007504, 39.586601>,  <28.979485, 27.092491, 39.522396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365042, 27.007504, 39.586601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240500, -0.435851, 0.867291,
		-0.114311, -0.874581, -0.471213,
		0.963894, -0.212468, 0.160514,
		29.654209, 26.943764, 39.634754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095869, 26.407574, 39.650684>,  <28.979485, 27.092491, 39.522396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095869, 26.407574, 39.650684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.439795, 26.532040, 39.812622>,  <29.646149, 26.606720, 39.909782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.439795, 26.532040, 39.812622>,  <29.095869, 26.407574, 39.650684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.439795, 26.532040, 39.812622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202390, -0.520233, 0.829696,
		0.468786, -0.795320, -0.384326,
		0.859813, 0.311166, 0.404843,
		29.697739, 26.625389, 39.934074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.568256, 25.746901, 39.855873>,  <29.095869, 26.407574, 39.650684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.568256, 25.746901, 39.855873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.646475, 26.073595, 40.073021>,  <29.693405, 26.269611, 40.203308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.646475, 26.073595, 40.073021>,  <29.568256, 25.746901, 39.855873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646475, 26.073595, 40.073021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337110, -0.463843, 0.819272,
		0.920934, -0.343212, 0.184626,
		0.195546, 0.816734, 0.542869,
		29.705139, 26.318615, 40.235882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.054483, 25.504532, 40.471340>,  <29.568256, 25.746901, 39.855873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.054483, 25.504532, 40.471340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.866323, 25.846373, 40.559319>,  <29.753428, 26.051477, 40.612106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.866323, 25.846373, 40.559319>,  <30.054483, 25.504532, 40.471340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866323, 25.846373, 40.559319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360150, -0.413464, 0.836266,
		0.805615, 0.314166, 0.502279,
		-0.470400, 0.854604, 0.219946,
		29.725203, 26.102755, 40.625301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140926, 25.583281, 41.218464>,  <30.054483, 25.504532, 40.471340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.140926, 25.583281, 41.218464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.863565, 25.854239, 41.120216>,  <29.697149, 26.016813, 41.061268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.863565, 25.854239, 41.120216>,  <30.140926, 25.583281, 41.218464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.863565, 25.854239, 41.120216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327858, 0.006941, 0.944701,
		0.641643, 0.735585, 0.217277,
		-0.693400, 0.677397, -0.245621,
		29.655546, 26.057457, 41.046532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.164095, 26.152840, 41.667484>,  <30.140926, 25.583281, 41.218464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.164095, 26.152840, 41.667484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.797480, 26.189295, 41.511711>,  <29.577511, 26.211168, 41.418247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.797480, 26.189295, 41.511711>,  <30.164095, 26.152840, 41.667484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.797480, 26.189295, 41.511711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372017, 0.163236, 0.913760,
		0.146849, 0.982368, -0.115707,
		-0.916536, 0.091140, -0.389428,
		29.522518, 26.216637, 41.394882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050795, 26.192055, 42.358055>,  <30.164095, 26.152840, 41.667484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050795, 26.192055, 42.358055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.371483, 26.011467, 42.514729>,  <30.563896, 25.903114, 42.608734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.371483, 26.011467, 42.514729>,  <30.050795, 26.192055, 42.358055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371483, 26.011467, 42.514729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583517, 0.449308, -0.676484,
		0.129422, 0.770908, 0.623659,
		0.801722, -0.451467, 0.391688,
		30.612000, 25.876026, 42.632236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620094, 26.661955, 42.315598>,  <30.050795, 26.192055, 42.358055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.620094, 26.661955, 42.315598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.839113, 26.331303, 42.367561>,  <30.970526, 26.132912, 42.398739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.839113, 26.331303, 42.367561>,  <30.620094, 26.661955, 42.315598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.839113, 26.331303, 42.367561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684039, 0.352763, -0.638474,
		0.481955, 0.438456, 0.758601,
		0.547549, -0.826628, 0.129905,
		31.003378, 26.083315, 42.406532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306499, 26.864614, 42.056969>,  <30.620094, 26.661955, 42.315598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306499, 26.864614, 42.056969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.301434, 26.465309, 42.079975>,  <31.298395, 26.225725, 42.093781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.301434, 26.465309, 42.079975>,  <31.306499, 26.864614, 42.056969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301434, 26.465309, 42.079975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567687, -0.054531, -0.821437,
		0.823147, 0.022250, 0.567392,
		-0.012664, -0.998264, 0.057518,
		31.297634, 26.165831, 42.097229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074657, 26.656384, 42.067169>,  <31.306499, 26.864614, 42.056969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074657, 26.656384, 42.067169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.896812, 26.314413, 41.960270>,  <31.790106, 26.109230, 41.896130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.896812, 26.314413, 41.960270>,  <32.074657, 26.656384, 42.067169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896812, 26.314413, 41.960270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606605, -0.067859, -0.792102,
		0.659053, -0.514293, 0.548773,
		-0.444611, -0.854926, -0.267250,
		31.763430, 26.057936, 41.880096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613743, 26.189833, 42.075741>,  <32.074657, 26.656384, 42.067169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613743, 26.189833, 42.075741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.308651, 26.090105, 41.837051>,  <32.125595, 26.030268, 41.693836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.308651, 26.090105, 41.837051>,  <32.613743, 26.189833, 42.075741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308651, 26.090105, 41.837051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634172, -0.107474, -0.765686,
		0.126767, -0.962439, 0.240085,
		-0.762729, -0.249319, -0.596728,
		32.079834, 26.015310, 41.658031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930943, 25.607201, 41.702278>,  <32.613743, 26.189833, 42.075741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930943, 25.607201, 41.702278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.611046, 25.759243, 41.516407>,  <32.419106, 25.850470, 41.404884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.611046, 25.759243, 41.516407>,  <32.930943, 25.607201, 41.702278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611046, 25.759243, 41.516407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552120, 0.161752, -0.817925,
		-0.235737, -0.910689, -0.339225,
		-0.799745, 0.380108, -0.464678,
		32.371124, 25.873276, 41.377003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046814, 25.313717, 41.136391>,  <32.930943, 25.607201, 41.702278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046814, 25.313717, 41.136391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.768356, 25.584579, 41.041019>,  <32.601284, 25.747097, 40.983799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.768356, 25.584579, 41.041019>,  <33.046814, 25.313717, 41.136391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768356, 25.584579, 41.041019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474553, 0.184844, -0.860600,
		-0.538689, -0.712245, -0.450024,
		-0.696142, 0.677156, -0.238425,
		32.559513, 25.787725, 40.969494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811836, 25.109112, 40.377079>,  <33.046814, 25.313717, 41.136391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811836, 25.109112, 40.377079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.719421, 25.493811, 40.435955>,  <32.663975, 25.724630, 40.471279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.719421, 25.493811, 40.435955>,  <32.811836, 25.109112, 40.377079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719421, 25.493811, 40.435955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331554, 0.220051, -0.917414,
		-0.914710, -0.163152, -0.369711,
		-0.231034, 0.961748, 0.147189,
		32.650112, 25.782335, 40.480110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501045, 25.368076, 39.710960>,  <32.811836, 25.109112, 40.377079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501045, 25.368076, 39.710960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.629215, 25.691412, 39.908512>,  <32.706120, 25.885414, 40.027042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.629215, 25.691412, 39.908512>,  <32.501045, 25.368076, 39.710960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629215, 25.691412, 39.908512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130428, 0.478752, -0.868208,
		-0.938250, 0.342614, 0.047976,
		0.320429, 0.808339, 0.493876,
		32.725346, 25.933914, 40.056675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099140, 26.016199, 39.472614>,  <32.501045, 25.368076, 39.710960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099140, 26.016199, 39.472614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.433655, 26.176331, 39.622471>,  <32.634365, 26.272409, 39.712383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.433655, 26.176331, 39.622471>,  <32.099140, 26.016199, 39.472614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433655, 26.176331, 39.622471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135130, 0.511728, -0.848454,
		-0.531375, 0.760179, 0.373856,
		0.836290, 0.400328, 0.374642,
		32.684540, 26.296429, 39.734863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078655, 26.723314, 39.332184>,  <32.099140, 26.016199, 39.472614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078655, 26.723314, 39.332184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.464161, 26.635910, 39.393379>,  <32.695465, 26.583467, 39.430096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.464161, 26.635910, 39.393379>,  <32.078655, 26.723314, 39.332184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464161, 26.635910, 39.393379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252357, 0.561086, -0.788352,
		0.086423, 0.798396, 0.595898,
		0.963767, -0.218510, 0.152990,
		32.753292, 26.570356, 39.439278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361706, 27.382395, 39.104248>,  <32.078655, 26.723314, 39.332184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361706, 27.382395, 39.104248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.695759, 27.166746, 39.147877>,  <32.896191, 27.037357, 39.174053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.695759, 27.166746, 39.147877>,  <32.361706, 27.382395, 39.104248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695759, 27.166746, 39.147877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369142, 0.402325, -0.837776,
		0.407781, 0.739919, 0.535009,
		0.835134, -0.539123, 0.109075,
		32.946301, 27.005009, 39.180599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855820, 27.897240, 39.010956>,  <32.361706, 27.382395, 39.104248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855820, 27.897240, 39.010956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.992199, 27.530359, 38.928497>,  <33.074028, 27.310230, 38.879021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.992199, 27.530359, 38.928497>,  <32.855820, 27.897240, 39.010956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992199, 27.530359, 38.928497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523833, 0.367450, -0.768492,
		0.780611, 0.154027, 0.605740,
		0.340948, -0.917200, -0.206151,
		33.094482, 27.255199, 38.866653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577198, 28.038105, 38.838482>,  <32.855820, 27.897240, 39.010956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577198, 28.038105, 38.838482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.492405, 27.686464, 38.667721>,  <33.441528, 27.475479, 38.565266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.492405, 27.686464, 38.667721>,  <33.577198, 28.038105, 38.838482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492405, 27.686464, 38.667721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469885, 0.291337, -0.833265,
		0.856897, -0.377232, 0.351318,
		-0.211982, -0.879101, -0.426901,
		33.428810, 27.422733, 38.539650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082340, 28.070538, 39.386410>,  <33.577198, 28.038105, 38.838482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082340, 28.070538, 39.386410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.225906, 28.423656, 39.507637>,  <34.312046, 28.635527, 39.580372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.225906, 28.423656, 39.507637>,  <34.082340, 28.070538, 39.386410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225906, 28.423656, 39.507637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305545, -0.195686, 0.931853,
		0.881942, -0.427058, 0.199499,
		0.358916, 0.882796, 0.303069,
		34.333580, 28.688496, 39.598557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483749, 28.009708, 39.948215>,  <34.082340, 28.070538, 39.386410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483749, 28.009708, 39.948215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.317638, 28.372375, 39.977867>,  <34.217972, 28.589975, 39.995659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.317638, 28.372375, 39.977867>,  <34.483749, 28.009708, 39.948215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317638, 28.372375, 39.977867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375041, -0.244879, 0.894080,
		0.828785, 0.343495, 0.441731,
		-0.415282, 0.906667, 0.074127,
		34.193054, 28.644375, 40.000107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573563, 28.254223, 40.647060>,  <34.483749, 28.009708, 39.948215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573563, 28.254223, 40.647060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.275097, 28.495647, 40.534668>,  <34.096016, 28.640503, 40.467232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.275097, 28.495647, 40.534668>,  <34.573563, 28.254223, 40.647060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275097, 28.495647, 40.534668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414103, -0.090289, 0.905741,
		0.521302, 0.792187, 0.317307,
		-0.746165, 0.603563, -0.280979,
		34.051247, 28.676716, 40.450375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463612, 28.714243, 41.213203>,  <34.573563, 28.254223, 40.647060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463612, 28.714243, 41.213203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.144390, 28.699610, 40.972614>,  <33.952858, 28.690830, 40.828262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.144390, 28.699610, 40.972614>,  <34.463612, 28.714243, 41.213203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144390, 28.699610, 40.972614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602050, 0.006540, 0.798431,
		-0.025275, 0.999309, -0.027244,
		-0.798058, -0.036583, -0.601469,
		33.904972, 28.688635, 40.792175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951118, 29.304209, 41.449257>,  <34.463612, 28.714243, 41.213203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951118, 29.304209, 41.449257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.719875, 29.067759, 41.224274>,  <33.581131, 28.925888, 41.089283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.719875, 29.067759, 41.224274>,  <33.951118, 29.304209, 41.449257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719875, 29.067759, 41.224274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654808, -0.075196, 0.752045,
		-0.486849, 0.803066, -0.343603,
		-0.578105, -0.591127, -0.562463,
		33.546444, 28.890421, 41.055534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189980, 29.689581, 41.495651>,  <33.951118, 29.304209, 41.449257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189980, 29.689581, 41.495651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.157784, 29.310991, 41.370617>,  <33.138466, 29.083838, 41.295597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.157784, 29.310991, 41.370617>,  <33.189980, 29.689581, 41.495651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157784, 29.310991, 41.370617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607340, -0.202097, 0.768307,
		-0.790355, 0.251688, -0.558563,
		-0.080489, -0.946473, -0.312589,
		33.133636, 29.027050, 41.276840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437431, 29.574507, 41.362732>,  <33.189980, 29.689581, 41.495651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437431, 29.574507, 41.362732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.616070, 29.230917, 41.462902>,  <32.723251, 29.024763, 41.523003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.616070, 29.230917, 41.462902>,  <32.437431, 29.574507, 41.362732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616070, 29.230917, 41.462902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695226, -0.156961, 0.701444,
		-0.563216, -0.487365, -0.667280,
		0.446596, -0.858975, 0.250426,
		32.750050, 28.973225, 41.538029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606115, 29.799322, 41.567013>,  <32.437431, 29.574507, 41.362732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606115, 29.799322, 41.567013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.672956, 30.158545, 41.729774>,  <31.713062, 30.374079, 41.827431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.672956, 30.158545, 41.729774>,  <31.606115, 29.799322, 41.567013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672956, 30.158545, 41.729774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324848, 0.339508, -0.882728,
		-0.930887, 0.279688, -0.234999,
		0.167104, 0.898058, 0.406900,
		31.723087, 30.427961, 41.851845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399950, 30.236525, 41.082245>,  <31.606115, 29.799322, 41.567013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399950, 30.236525, 41.082245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.620819, 30.487003, 41.302422>,  <31.753340, 30.637291, 41.434528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.620819, 30.487003, 41.302422>,  <31.399950, 30.236525, 41.082245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620819, 30.487003, 41.302422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250456, 0.505136, -0.825899,
		-0.795222, 0.593900, 0.122088,
		0.552172, 0.626195, 0.550441,
		31.786470, 30.674862, 41.467552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236668, 31.005278, 41.013130>,  <31.399950, 30.236525, 41.082245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236668, 31.005278, 41.013130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.615789, 30.975420, 41.137127>,  <31.843264, 30.957506, 41.211525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.615789, 30.975420, 41.137127>,  <31.236668, 31.005278, 41.013130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615789, 30.975420, 41.137127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289356, 0.609737, -0.737899,
		-0.133933, 0.789081, 0.599510,
		0.947805, -0.074642, 0.309989,
		31.900131, 30.953028, 41.230125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.461916, 31.572115, 40.857788>,  <31.236668, 31.005278, 41.013130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.461916, 31.572115, 40.857788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.802202, 31.381153, 40.945755>,  <32.006374, 31.266577, 40.998535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.802202, 31.381153, 40.945755>,  <31.461916, 31.572115, 40.857788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802202, 31.381153, 40.945755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466949, 0.494331, -0.733209,
		0.241325, 0.726444, 0.643460,
		0.850718, -0.477405, 0.219918,
		32.057419, 31.237932, 41.011730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918850, 32.106762, 40.915039>,  <31.461916, 31.572115, 40.857788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918850, 32.106762, 40.915039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.161053, 31.791779, 40.868969>,  <32.306374, 31.602789, 40.841328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.161053, 31.791779, 40.868969>,  <31.918850, 32.106762, 40.915039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161053, 31.791779, 40.868969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494509, 0.485677, -0.720818,
		0.623554, 0.379506, 0.683488,
		0.605509, -0.787460, -0.115177,
		32.342705, 31.555540, 40.834415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474632, 32.383602, 40.974640>,  <31.918850, 32.106762, 40.915039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474632, 32.383602, 40.974640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.545181, 32.060837, 40.749153>,  <32.587509, 31.867178, 40.613861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.545181, 32.060837, 40.749153>,  <32.474632, 32.383602, 40.974640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545181, 32.060837, 40.749153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419403, 0.579717, -0.698591,
		0.890502, -0.113213, 0.440669,
		0.176373, -0.806915, -0.563721,
		32.598095, 31.818762, 40.580036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047638, 32.512100, 40.579876>,  <32.474632, 32.383602, 40.974640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047638, 32.512100, 40.579876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.927078, 32.196503, 40.365719>,  <32.854744, 32.007145, 40.237225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.927078, 32.196503, 40.365719>,  <33.047638, 32.512100, 40.579876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927078, 32.196503, 40.365719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518211, 0.335789, -0.786577,
		0.800385, -0.514518, 0.307661,
		-0.301399, -0.788997, -0.535390,
		32.836658, 31.959803, 40.205101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.406946, 28.923471, 41.922478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.460373, 28.590916, 41.706718>,  <28.492428, 28.391382, 41.577263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.460373, 28.590916, 41.706718>,  <28.406946, 28.923471, 41.922478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.460373, 28.590916, 41.706718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387632, 0.544743, -0.743637,
		0.912086, -0.109765, 0.395032,
		0.133565, -0.831388, -0.539401,
		28.500443, 28.341499, 41.544899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.161480, 28.932920, 41.787964>,  <28.406946, 28.923471, 41.922478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.161480, 28.932920, 41.787964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.959194, 28.712259, 41.522655>,  <28.837824, 28.579863, 41.363468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.959194, 28.712259, 41.522655>,  <29.161480, 28.932920, 41.787964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.959194, 28.712259, 41.522655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370195, 0.555687, -0.744424,
		0.779237, -0.622006, -0.076799,
		-0.505713, -0.551652, -0.663276,
		28.807480, 28.546764, 41.323673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.730152, 28.737720, 41.306458>,  <29.161480, 28.932920, 41.787964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.730152, 28.737720, 41.306458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.368484, 28.701279, 41.139519>,  <29.151484, 28.679415, 41.039356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.368484, 28.701279, 41.139519>,  <29.730152, 28.737720, 41.306458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.368484, 28.701279, 41.139519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246845, 0.685935, -0.684515,
		0.348635, -0.721937, -0.597713,
		-0.904169, -0.091103, -0.417347,
		29.097233, 28.673948, 41.014313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827904, 28.680691, 40.625034>,  <29.730152, 28.737720, 41.306458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827904, 28.680691, 40.625034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.448727, 28.807962, 40.619900>,  <29.221220, 28.884325, 40.616817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.448727, 28.807962, 40.619900>,  <29.827904, 28.680691, 40.625034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448727, 28.807962, 40.619900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222033, 0.631525, -0.742885,
		-0.228261, -0.707064, -0.669296,
		-0.947944, 0.318178, -0.012839,
		29.164343, 28.903416, 40.616047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671076, 28.823612, 39.913731>,  <29.827904, 28.680691, 40.625034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671076, 28.823612, 39.913731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.375742, 29.010695, 40.108097>,  <29.198542, 29.122944, 40.224716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.375742, 29.010695, 40.108097>,  <29.671076, 28.823612, 39.913731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.375742, 29.010695, 40.108097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029226, 0.697614, -0.715878,
		-0.673799, -0.542760, -0.501404,
		-0.738336, 0.467704, 0.485914,
		29.154242, 29.151005, 40.253872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.285740, 29.033854, 39.376282>,  <29.671076, 28.823612, 39.913731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.285740, 29.033854, 39.376282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.184366, 29.273621, 39.679985>,  <29.123541, 29.417480, 39.862206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.184366, 29.273621, 39.679985>,  <29.285740, 29.033854, 39.376282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.184366, 29.273621, 39.679985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204894, 0.733807, -0.647723,
		-0.945404, -0.319723, -0.063155,
		-0.253436, 0.599420, 0.759254,
		29.108335, 29.453447, 39.907761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.640348, 29.258766, 39.102493>,  <29.285740, 29.033854, 39.376282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.640348, 29.258766, 39.102493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.773132, 29.521950, 39.372868>,  <28.852802, 29.679859, 39.535091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.773132, 29.521950, 39.372868>,  <28.640348, 29.258766, 39.102493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.773132, 29.521950, 39.372868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037005, 0.725105, -0.687643,
		-0.942568, 0.203256, 0.265053,
		0.331958, 0.657959, 0.675939,
		28.872721, 29.719337, 39.575649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.264719, 29.788973, 38.946903>,  <28.640348, 29.258766, 39.102493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.264719, 29.788973, 38.946903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.555014, 29.942209, 39.175480>,  <28.729191, 30.034151, 39.312626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.555014, 29.942209, 39.175480>,  <28.264719, 29.788973, 38.946903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.555014, 29.942209, 39.175480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013847, 0.822317, -0.568862,
		-0.687833, 0.420757, 0.591481,
		0.725737, 0.383092, 0.571443,
		28.772736, 30.057137, 39.346912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.121727, 30.406643, 39.029312>,  <28.264719, 29.788973, 38.946903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.121727, 30.406643, 39.029312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.518627, 30.416147, 39.078094>,  <28.756767, 30.421850, 39.107365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.518627, 30.416147, 39.078094>,  <28.121727, 30.406643, 39.029312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.518627, 30.416147, 39.078094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063080, 0.749291, -0.659230,
		-0.107045, 0.661814, 0.741986,
		0.992251, 0.023763, 0.121955,
		28.816303, 30.423277, 39.114681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.227596, 31.103264, 38.989098>,  <28.121727, 30.406643, 39.029312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.227596, 31.103264, 38.989098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.577749, 30.917418, 38.935680>,  <28.787842, 30.805910, 38.903629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.577749, 30.917418, 38.935680>,  <28.227596, 31.103264, 38.989098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.577749, 30.917418, 38.935680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268583, 0.697108, -0.664759,
		0.401954, 0.546052, 0.735025,
		0.875384, -0.464617, -0.133545,
		28.840364, 30.778032, 38.895618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.730732, 31.569660, 38.865673>,  <28.227596, 31.103264, 38.989098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.730732, 31.569660, 38.865673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.931749, 31.258307, 38.715168>,  <29.052359, 31.071495, 38.624866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.931749, 31.258307, 38.715168>,  <28.730732, 31.569660, 38.865673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.931749, 31.258307, 38.715168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391387, 0.592886, -0.703777,
		0.770888, 0.206413, 0.602599,
		0.502541, -0.778383, -0.376261,
		29.082512, 31.024792, 38.602291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322746, 31.871586, 38.679157>,  <28.730732, 31.569660, 38.865673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.322746, 31.871586, 38.679157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.318438, 31.532925, 38.466343>,  <29.315851, 31.329729, 38.338654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.318438, 31.532925, 38.466343>,  <29.322746, 31.871586, 38.679157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318438, 31.532925, 38.466343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366430, 0.491714, -0.789903,
		0.930383, -0.203465, 0.304942,
		-0.010773, -0.846652, -0.532038,
		29.315205, 31.278929, 38.306732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051601, 32.026268, 38.865936>,  <29.322746, 31.871586, 38.679157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051601, 32.026268, 38.865936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.976833, 32.391613, 39.010612>,  <29.931973, 32.610821, 39.097420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.976833, 32.391613, 39.010612>,  <30.051601, 32.026268, 38.865936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.976833, 32.391613, 39.010612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283758, -0.402689, 0.870243,
		0.940501, 0.060031, 0.334445,
		-0.186919, 0.913367, 0.361695,
		29.920757, 32.665623, 39.119122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.358528, 32.088112, 39.482674>,  <30.051601, 32.026268, 38.865936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.358528, 32.088112, 39.482674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.087156, 32.380405, 39.513016>,  <29.924334, 32.555782, 39.531223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.087156, 32.380405, 39.513016>,  <30.358528, 32.088112, 39.482674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.087156, 32.380405, 39.513016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316799, -0.384149, 0.867219,
		0.662849, 0.564317, 0.492115,
		-0.678432, 0.730736, 0.075858,
		29.883627, 32.599625, 39.535774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322268, 32.182133, 40.191273>,  <30.358528, 32.088112, 39.482674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322268, 32.182133, 40.191273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.004238, 32.391663, 40.068981>,  <29.813421, 32.517380, 39.995605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.004238, 32.391663, 40.068981>,  <30.322268, 32.182133, 40.191273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.004238, 32.391663, 40.068981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417975, -0.107956, 0.902022,
		0.439495, 0.844959, 0.304777,
		-0.795073, 0.523823, -0.305725,
		29.765717, 32.548809, 39.977264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.239941, 32.749435, 40.653027>,  <30.322268, 32.182133, 40.191273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.239941, 32.749435, 40.653027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.888674, 32.677624, 40.475674>,  <29.677914, 32.634537, 40.369263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.888674, 32.677624, 40.475674>,  <30.239941, 32.749435, 40.653027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888674, 32.677624, 40.475674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414095, -0.178701, 0.892520,
		-0.239467, 0.967386, 0.082587,
		-0.878169, -0.179530, -0.443383,
		29.625223, 32.623764, 40.342659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.758383, 33.209721, 40.998867>,  <30.239941, 32.749435, 40.653027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.758383, 33.209721, 40.998867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.551777, 32.914261, 40.825611>,  <29.427813, 32.736984, 40.721657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.551777, 32.914261, 40.825611>,  <29.758383, 33.209721, 40.998867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.551777, 32.914261, 40.825611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476387, -0.172448, 0.862158,
		-0.711525, 0.651662, -0.262810,
		-0.516514, -0.738647, -0.433144,
		29.396822, 32.692665, 40.695667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.006016, 33.279884, 41.254299>,  <29.758383, 33.209721, 40.998867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.006016, 33.279884, 41.254299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.073675, 32.905537, 41.130661>,  <29.114271, 32.680927, 41.056480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.073675, 32.905537, 41.130661>,  <29.006016, 33.279884, 41.254299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073675, 32.905537, 41.130661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389418, -0.351555, 0.851330,
		-0.905396, -0.023635, -0.423909,
		0.169149, -0.935869, -0.309093,
		29.124420, 32.624775, 41.037933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.429113, 32.922829, 41.595875>,  <29.006016, 33.279884, 41.254299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.429113, 32.922829, 41.595875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.703758, 32.648441, 41.499535>,  <28.868546, 32.483810, 41.441730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.703758, 32.648441, 41.499535>,  <28.429113, 32.922829, 41.595875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.703758, 32.648441, 41.499535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409148, -0.638434, 0.651921,
		-0.600963, -0.349076, -0.719020,
		0.686616, -0.685966, -0.240851,
		28.909742, 32.442650, 41.427277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.042637, 32.354385, 41.552399>,  <28.429113, 32.922829, 41.595875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.042637, 32.354385, 41.552399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.416864, 32.225212, 41.609570>,  <28.641401, 32.147709, 41.643871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.416864, 32.225212, 41.609570>,  <28.042637, 32.354385, 41.552399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.416864, 32.225212, 41.609570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344392, -0.744729, 0.571641,
		-0.078163, -0.584030, -0.807960,
		0.935567, -0.322937, 0.142925,
		28.697535, 32.128330, 41.652447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921122, 31.650948, 41.478535>,  <28.042637, 32.354385, 41.552399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921122, 31.650948, 41.478535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.252996, 31.715551, 41.692276>,  <28.452122, 31.754314, 41.820518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.252996, 31.715551, 41.692276>,  <27.921122, 31.650948, 41.478535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.252996, 31.715551, 41.692276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298510, -0.680502, 0.669185,
		0.471707, -0.714724, -0.516393,
		0.829690, 0.161511, 0.534350,
		28.501904, 31.764004, 41.852581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.013374, 31.034920, 41.801941>,  <27.921122, 31.650948, 41.478535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.013374, 31.034920, 41.801941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.300402, 31.223673, 42.006847>,  <28.472618, 31.336926, 42.129791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.300402, 31.223673, 42.006847>,  <28.013374, 31.034920, 41.801941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.300402, 31.223673, 42.006847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376267, -0.356295, 0.855264,
		0.586105, -0.806461, -0.078111,
		0.717568, 0.471884, 0.512271,
		28.515673, 31.365238, 42.160530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.405045, 30.596453, 42.274197>,  <28.013374, 31.034920, 41.801941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.405045, 30.596453, 42.274197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.444414, 30.951372, 42.454426>,  <28.468037, 31.164324, 42.562565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.444414, 30.951372, 42.454426>,  <28.405045, 30.596453, 42.274197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.444414, 30.951372, 42.454426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261377, -0.413826, 0.872027,
		0.960205, -0.203599, 0.191188,
		0.098425, 0.887297, 0.450574,
		28.473942, 31.217562, 42.589600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.629553, 30.388840, 42.974106>,  <28.405045, 30.596453, 42.274197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.629553, 30.388840, 42.974106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.532936, 30.775446, 43.008751>,  <28.474966, 31.007410, 43.029537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.532936, 30.775446, 43.008751>,  <28.629553, 30.388840, 42.974106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.532936, 30.775446, 43.008751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260904, -0.150649, 0.953538,
		0.934659, 0.207722, 0.288556,
		-0.241541, 0.966518, 0.086610,
		28.460474, 31.065401, 43.034733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028584, 30.571453, 43.506504>,  <28.629553, 30.388840, 42.974106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028584, 30.571453, 43.506504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.736429, 30.843281, 43.479019>,  <28.561136, 31.006378, 43.462528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.736429, 30.843281, 43.479019>,  <29.028584, 30.571453, 43.506504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.736429, 30.843281, 43.479019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270556, -0.195469, 0.942651,
		0.627166, 0.707090, 0.326630,
		-0.730385, 0.679570, -0.068716,
		28.517313, 31.047152, 43.458405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067402, 31.086550, 44.050648>,  <29.028584, 30.571453, 43.506504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067402, 31.086550, 44.050648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.685511, 31.130733, 43.940163>,  <28.456377, 31.157244, 43.873871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.685511, 31.130733, 43.940163>,  <29.067402, 31.086550, 44.050648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.685511, 31.130733, 43.940163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295223, -0.237540, 0.925428,
		0.036608, 0.965077, 0.259396,
		-0.954727, 0.110458, -0.276217,
		28.399092, 31.163872, 43.857296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681948, 31.323246, 44.152653>,  <29.067402, 31.086550, 44.050648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.681948, 31.323246, 44.152653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.878021, 30.985723, 44.240025>,  <29.995665, 30.783211, 44.292450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.878021, 30.985723, 44.240025>,  <29.681948, 31.323246, 44.152653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.878021, 30.985723, 44.240025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648704, 0.185798, -0.738013,
		0.582154, 0.503461, 0.638454,
		0.490185, -0.843804, 0.218434,
		30.025076, 30.732582, 44.305553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317144, 31.531317, 44.181599>,  <29.681948, 31.323246, 44.152653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317144, 31.531317, 44.181599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.328512, 31.134201, 44.135014>,  <30.335333, 30.895931, 44.107063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.328512, 31.134201, 44.135014>,  <30.317144, 31.531317, 44.181599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.328512, 31.134201, 44.135014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555046, 0.112569, -0.824168,
		0.831334, -0.041217, 0.554242,
		0.028421, -0.992789, -0.116460,
		30.337038, 30.836365, 44.100075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981129, 31.325775, 44.132298>,  <30.317144, 31.531317, 44.181599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981129, 31.325775, 44.132298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.826180, 30.998285, 43.962765>,  <30.733210, 30.801790, 43.861046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.826180, 30.998285, 43.962765>,  <30.981129, 31.325775, 44.132298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826180, 30.998285, 43.962765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692309, 0.045257, -0.720180,
		0.608811, -0.572398, 0.549280,
		-0.387371, -0.818726, -0.423830,
		30.709969, 30.752668, 43.835617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499031, 30.974260, 43.841473>,  <30.981129, 31.325775, 44.132298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499031, 30.974260, 43.841473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.208435, 30.771759, 43.655605>,  <31.034077, 30.650259, 43.544083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.208435, 30.771759, 43.655605>,  <31.499031, 30.974260, 43.841473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.208435, 30.771759, 43.655605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587107, -0.105886, -0.802554,
		0.357094, -0.855860, 0.374150,
		-0.726491, -0.506253, -0.464671,
		30.990488, 30.619883, 43.516205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859711, 30.388210, 43.582874>,  <31.499031, 30.974260, 43.841473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859711, 30.388210, 43.582874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.530073, 30.440369, 43.362377>,  <31.332291, 30.471664, 43.230080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.530073, 30.440369, 43.362377>,  <31.859711, 30.388210, 43.582874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530073, 30.440369, 43.362377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539613, -0.115306, -0.833979,
		-0.172311, -0.984734, 0.024659,
		-0.824091, 0.130398, -0.551244,
		31.282846, 30.479488, 43.197002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930513, 29.899174, 42.966789>,  <31.859711, 30.388210, 43.582874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930513, 29.899174, 42.966789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.666906, 30.174004, 42.844398>,  <31.508741, 30.338902, 42.770966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.666906, 30.174004, 42.844398>,  <31.930513, 29.899174, 42.966789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666906, 30.174004, 42.844398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418498, -0.003049, -0.908213,
		-0.624943, -0.726581, -0.285530,
		-0.659019, 0.687074, -0.305978,
		31.469200, 30.380125, 42.752605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859949, 29.675024, 42.244629>,  <31.930513, 29.899174, 42.966789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859949, 29.675024, 42.244629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.714125, 30.047283, 42.257183>,  <31.626631, 30.270639, 42.264717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.714125, 30.047283, 42.257183>,  <31.859949, 29.675024, 42.244629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714125, 30.047283, 42.257183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293094, 0.146675, -0.944766,
		-0.883850, -0.335226, -0.326240,
		-0.364562, 0.930650, 0.031386,
		31.604755, 30.326479, 42.266598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843758, 29.132479, 41.626575>,  <31.859949, 29.675024, 42.244629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843758, 29.132479, 41.626575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.151985, 28.899206, 41.729431>,  <32.336922, 28.759243, 41.791145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.151985, 28.899206, 41.729431>,  <31.843758, 29.132479, 41.626575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151985, 28.899206, 41.729431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567668, -0.444547, 0.692915,
		-0.289781, -0.679912, -0.673608,
		0.770571, -0.583179, 0.257143,
		32.383156, 28.724253, 41.806572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572607, 28.448208, 41.677265>,  <31.843758, 29.132479, 41.626575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572607, 28.448208, 41.677265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.894836, 28.471706, 41.913097>,  <32.088173, 28.485806, 42.054596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.894836, 28.471706, 41.913097>,  <31.572607, 28.448208, 41.677265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894836, 28.471706, 41.913097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548488, -0.302405, 0.779559,
		0.224089, -0.951367, -0.211386,
		0.805571, 0.058748, 0.589579,
		32.136509, 28.489330, 42.089970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656031, 27.827385, 41.944321>,  <31.572607, 28.448208, 41.677265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656031, 27.827385, 41.944321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.835964, 28.082973, 42.193916>,  <31.943924, 28.236326, 42.343674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.835964, 28.082973, 42.193916>,  <31.656031, 27.827385, 41.944321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835964, 28.082973, 42.193916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489171, -0.408282, 0.770725,
		0.747235, -0.651937, 0.128906,
		0.449835, 0.638970, 0.623992,
		31.970915, 28.274664, 42.381115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816586, 27.290346, 42.484051>,  <31.656031, 27.827385, 41.944321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816586, 27.290346, 42.484051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.880512, 27.658079, 42.627876>,  <31.918869, 27.878719, 42.714172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.880512, 27.658079, 42.627876>,  <31.816586, 27.290346, 42.484051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880512, 27.658079, 42.627876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358927, -0.285197, 0.888726,
		0.919582, -0.271091, 0.284394,
		0.159817, 0.919333, 0.359564,
		31.928457, 27.933880, 42.735744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104507, 27.068048, 43.096409>,  <31.816586, 27.290346, 42.484051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104507, 27.068048, 43.096409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.987247, 27.447933, 43.140430>,  <31.916893, 27.675863, 43.166843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.987247, 27.447933, 43.140430>,  <32.104507, 27.068048, 43.096409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987247, 27.447933, 43.140430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352710, -0.214420, 0.910834,
		0.888629, 0.228190, 0.397830,
		-0.293146, 0.949712, 0.110055,
		31.899303, 27.732847, 43.173447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457539, 27.322773, 43.679211>,  <32.104507, 27.068048, 43.096409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457539, 27.322773, 43.679211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.139782, 27.558588, 43.620720>,  <31.949127, 27.700077, 43.585625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.139782, 27.558588, 43.620720>,  <32.457539, 27.322773, 43.679211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139782, 27.558588, 43.620720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354342, -0.254266, 0.899884,
		0.493336, 0.766676, 0.410886,
		-0.794394, 0.589539, -0.146227,
		31.901464, 27.735449, 43.576851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356304, 27.751078, 44.307201>,  <32.457539, 27.322773, 43.679211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356304, 27.751078, 44.307201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.993441, 27.811722, 44.150188>,  <31.775723, 27.848108, 44.055981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.993441, 27.811722, 44.150188>,  <32.356304, 27.751078, 44.307201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993441, 27.811722, 44.150188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415787, -0.179478, 0.891577,
		0.064722, 0.972009, 0.225852,
		-0.907156, 0.151610, -0.392532,
		31.721294, 27.857204, 44.032429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972235, 28.382784, 44.687744>,  <32.356304, 27.751078, 44.307201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972235, 28.382784, 44.687744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.719105, 28.117775, 44.527447>,  <31.567226, 27.958771, 44.431267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.719105, 28.117775, 44.527447>,  <31.972235, 28.382784, 44.687744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719105, 28.117775, 44.527447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498174, -0.047837, 0.865757,
		-0.592752, 0.747514, -0.299778,
		-0.632825, -0.662521, -0.400747,
		31.529257, 27.919018, 44.407223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291239, 28.584921, 44.817467>,  <31.972235, 28.382784, 44.687744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291239, 28.584921, 44.817467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.270611, 28.191956, 44.745682>,  <31.258234, 27.956177, 44.702610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.270611, 28.191956, 44.745682>,  <31.291239, 28.584921, 44.817467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270611, 28.191956, 44.745682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650574, -0.103290, 0.752386,
		-0.757689, 0.155554, -0.633806,
		-0.051571, -0.982412, -0.179461,
		31.255140, 27.897232, 44.691845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.374638, 33.694233, 30.948973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.122017, 33.387184, 30.992588>,  <36.970444, 33.202953, 31.018757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.122017, 33.387184, 30.992588>,  <37.374638, 33.694233, 30.948973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122017, 33.387184, 30.992588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064327, 0.088269, 0.994017,
		-0.772657, 0.634792, -0.006368,
		-0.631556, -0.767625, 0.109036,
		36.932549, 33.156898, 31.025299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832661, 33.822842, 31.506443>,  <37.374638, 33.694233, 30.948973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832661, 33.822842, 31.506443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.788242, 33.427143, 31.468348>,  <36.761593, 33.189724, 31.445490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.788242, 33.427143, 31.468348>,  <36.832661, 33.822842, 31.506443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788242, 33.427143, 31.468348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140364, -0.079259, 0.986923,
		-0.983854, 0.122957, -0.130053,
		-0.111042, -0.989242, -0.095238,
		36.754929, 33.130371, 31.439775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188370, 33.664307, 31.830389>,  <36.832661, 33.822842, 31.506443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188370, 33.664307, 31.830389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.402218, 33.326912, 31.809570>,  <36.530529, 33.124474, 31.797079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.402218, 33.326912, 31.809570>,  <36.188370, 33.664307, 31.830389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402218, 33.326912, 31.809570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187556, -0.178479, 0.965903,
		-0.824014, -0.506633, -0.253620,
		0.534624, -0.843486, -0.052047,
		36.562607, 33.073868, 31.793957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739288, 33.178391, 31.927055>,  <36.188370, 33.664307, 31.830389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739288, 33.178391, 31.927055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.103329, 33.035896, 32.011738>,  <36.321751, 32.950401, 32.062546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.103329, 33.035896, 32.011738>,  <35.739288, 33.178391, 31.927055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103329, 33.035896, 32.011738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356220, -0.411517, 0.838905,
		-0.211724, -0.838900, -0.501418,
		0.910099, -0.356231, 0.211705,
		36.376358, 32.929028, 32.075249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602268, 32.467960, 32.081669>,  <35.739288, 33.178391, 31.927055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602268, 32.467960, 32.081669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.955914, 32.581718, 32.229973>,  <36.168102, 32.649971, 32.318954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.955914, 32.581718, 32.229973>,  <35.602268, 32.467960, 32.081669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955914, 32.581718, 32.229973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270514, -0.335466, 0.902377,
		0.381009, -0.898099, -0.219657,
		0.884112, 0.284394, 0.370764,
		36.221146, 32.667038, 32.341202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786701, 31.911470, 32.519421>,  <35.602268, 32.467960, 32.081669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786701, 31.911470, 32.519421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.060726, 32.174755, 32.644287>,  <36.225140, 32.332726, 32.719208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.060726, 32.174755, 32.644287>,  <35.786701, 31.911470, 32.519421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060726, 32.174755, 32.644287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118996, -0.321654, 0.939350,
		0.718703, -0.680657, -0.142028,
		0.685059, 0.658213, 0.312169,
		36.266243, 32.372219, 32.737938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238434, 31.546371, 32.828842>,  <35.786701, 31.911470, 32.519421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238434, 31.546371, 32.828842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.317284, 31.910252, 32.975040>,  <36.364594, 32.128578, 33.062759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.317284, 31.910252, 32.975040>,  <36.238434, 31.546371, 32.828842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317284, 31.910252, 32.975040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011469, -0.370650, 0.928702,
		0.980312, -0.187259, -0.062630,
		0.197122, 0.909699, 0.365500,
		36.376419, 32.183163, 33.084690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806393, 31.541115, 33.359547>,  <36.238434, 31.546371, 32.828842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806393, 31.541115, 33.359547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.618374, 31.882219, 33.450638>,  <36.505562, 32.086880, 33.505291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.618374, 31.882219, 33.450638>,  <36.806393, 31.541115, 33.359547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618374, 31.882219, 33.450638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033685, -0.275148, 0.960812,
		0.881999, 0.443954, 0.158057,
		-0.470046, 0.852759, 0.227726,
		36.477360, 32.138046, 33.518955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244804, 31.938997, 33.969662>,  <36.806393, 31.541115, 33.359547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244804, 31.938997, 33.969662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.871647, 32.082943, 33.963837>,  <36.647755, 32.169312, 33.960342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.871647, 32.082943, 33.963837>,  <37.244804, 31.938997, 33.969662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871647, 32.082943, 33.963837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060066, -0.115585, 0.991480,
		0.355114, 0.925818, 0.129443,
		-0.932891, 0.359863, -0.014564,
		36.591778, 32.190903, 33.959469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155342, 32.375614, 34.525269>,  <37.244804, 31.938997, 33.969662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155342, 32.375614, 34.525269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.772350, 32.295185, 34.442505>,  <36.542557, 32.246929, 34.392845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.772350, 32.295185, 34.442505>,  <37.155342, 32.375614, 34.525269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772350, 32.295185, 34.442505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144222, -0.287556, 0.946843,
		-0.249883, 0.936419, 0.246328,
		-0.957475, -0.201074, -0.206908,
		36.485107, 32.234863, 34.380432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799686, 32.901905, 34.967106>,  <37.155342, 32.375614, 34.525269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799686, 32.901905, 34.967106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.561146, 32.585346, 34.913342>,  <36.418022, 32.395412, 34.881084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.561146, 32.585346, 34.913342>,  <36.799686, 32.901905, 34.967106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561146, 32.585346, 34.913342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007027, -0.172581, 0.984970,
		-0.802695, 0.586441, 0.108479,
		-0.596348, -0.791393, -0.134409,
		36.382240, 32.347927, 34.873020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446644, 32.930683, 35.556313>,  <36.799686, 32.901905, 34.967106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446644, 32.930683, 35.556313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.353943, 32.565842, 35.421040>,  <36.298325, 32.346939, 35.339874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.353943, 32.565842, 35.421040>,  <36.446644, 32.930683, 35.556313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353943, 32.565842, 35.421040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046936, -0.336757, 0.940421,
		-0.971643, 0.233815, 0.035233,
		-0.231749, -0.912099, -0.338182,
		36.284416, 32.292213, 35.319584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797134, 33.368443, 35.494907>,  <36.446644, 32.930683, 35.556313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797134, 33.368443, 35.494907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.031662, 33.616604, 35.703266>,  <36.172379, 33.765499, 35.828281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.031662, 33.616604, 35.703266>,  <35.797134, 33.368443, 35.494907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031662, 33.616604, 35.703266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205332, 0.508206, -0.836400,
		-0.783627, 0.597353, 0.170582,
		0.586317, 0.620400, 0.520899,
		36.207558, 33.802723, 35.859535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659931, 34.124771, 35.320248>,  <35.797134, 33.368443, 35.494907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659931, 34.124771, 35.320248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.037041, 34.112915, 35.453098>,  <36.263306, 34.105801, 35.532806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.037041, 34.112915, 35.453098>,  <35.659931, 34.124771, 35.320248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037041, 34.112915, 35.453098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312775, 0.423823, -0.850027,
		-0.115567, 0.905260, 0.408838,
		0.942770, -0.029640, 0.332123,
		36.319870, 34.104023, 35.552734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927334, 34.799747, 35.217575>,  <35.659931, 34.124771, 35.320248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927334, 34.799747, 35.217575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.247875, 34.562263, 35.246792>,  <36.440201, 34.419773, 35.264320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.247875, 34.562263, 35.246792>,  <35.927334, 34.799747, 35.217575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247875, 34.562263, 35.246792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426686, 0.481753, -0.765410,
		0.419247, 0.644530, 0.639384,
		0.801355, -0.593713, 0.073038,
		36.488281, 34.384151, 35.268703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431229, 35.291325, 35.330803>,  <35.927334, 34.799747, 35.217575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431229, 35.291325, 35.330803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.620716, 34.962364, 35.204788>,  <36.734409, 34.764988, 35.129177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.620716, 34.962364, 35.204788>,  <36.431229, 35.291325, 35.330803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620716, 34.962364, 35.204788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488049, 0.542920, -0.683407,
		0.733075, 0.169987, 0.658563,
		0.473718, -0.822400, -0.315039,
		36.762833, 34.715645, 35.110275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997929, 35.578907, 35.006725>,  <36.431229, 35.291325, 35.330803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997929, 35.578907, 35.006725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.014854, 35.198719, 34.883556>,  <37.025009, 34.970608, 34.809654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.014854, 35.198719, 34.883556>,  <36.997929, 35.578907, 35.006725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014854, 35.198719, 34.883556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355726, 0.302331, -0.884339,
		0.933632, -0.072118, 0.350899,
		0.042311, -0.950471, -0.307920,
		37.027546, 34.913578, 34.791180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724709, 35.429325, 34.710163>,  <36.997929, 35.578907, 35.006725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724709, 35.429325, 34.710163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.471355, 35.159817, 34.557919>,  <37.319344, 34.998112, 34.466572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.471355, 35.159817, 34.557919>,  <37.724709, 35.429325, 34.710163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471355, 35.159817, 34.557919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381090, 0.156485, -0.911198,
		0.673498, -0.722182, 0.157653,
		-0.633381, -0.673770, -0.380609,
		37.281342, 34.957687, 34.443737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110249, 34.938564, 34.227852>,  <37.724709, 35.429325, 34.710163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110249, 34.938564, 34.227852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.736774, 34.871346, 34.101368>,  <37.512688, 34.831017, 34.025478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.736774, 34.871346, 34.101368>,  <38.110249, 34.938564, 34.227852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736774, 34.871346, 34.101368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302937, 0.100173, -0.947731,
		0.190937, -0.980677, -0.042624,
		-0.933687, -0.168044, -0.316210,
		37.456669, 34.820934, 34.006504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147793, 34.422649, 33.655128>,  <38.110249, 34.938564, 34.227852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147793, 34.422649, 33.655128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.794117, 34.606163, 33.619976>,  <37.581913, 34.716270, 33.598885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.794117, 34.606163, 33.619976>,  <38.147793, 34.422649, 33.655128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794117, 34.606163, 33.619976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175068, 0.151031, -0.972903,
		-0.433079, -0.875618, -0.213859,
		-0.884191, 0.458784, -0.087885,
		37.528858, 34.743797, 33.593609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936310, 34.220383, 32.980431>,  <38.147793, 34.422649, 33.655128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936310, 34.220383, 32.980431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.716297, 34.544529, 33.061199>,  <37.584290, 34.739017, 33.109661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.716297, 34.544529, 33.061199>,  <37.936310, 34.220383, 32.980431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716297, 34.544529, 33.061199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026276, 0.224870, -0.974035,
		-0.834728, -0.541058, -0.102393,
		-0.550035, 0.810364, 0.201922,
		37.551285, 34.787640, 33.121777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501366, 34.306801, 32.418232>,  <37.936310, 34.220383, 32.980431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501366, 34.306801, 32.418232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.446922, 34.659237, 32.599407>,  <37.414257, 34.870697, 32.708115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.446922, 34.659237, 32.599407>,  <37.501366, 34.306801, 32.418232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446922, 34.659237, 32.599407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088988, 0.444473, -0.891361,
		-0.986689, -0.161627, 0.017910,
		-0.136107, 0.881090, 0.452940,
		37.406090, 34.923565, 32.735291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910534, 34.573521, 32.085152>,  <37.501366, 34.306801, 32.418232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910534, 34.573521, 32.085152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.131706, 34.867329, 32.242504>,  <37.264408, 35.043613, 32.336914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.131706, 34.867329, 32.242504>,  <36.910534, 34.573521, 32.085152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131706, 34.867329, 32.242504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120176, 0.537477, -0.834671,
		-0.824518, 0.414237, 0.385457,
		0.552926, 0.734524, 0.393379,
		37.297585, 35.087685, 32.360519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567726, 35.240059, 31.978634>,  <36.910534, 34.573521, 32.085152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567726, 35.240059, 31.978634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.950756, 35.337410, 32.040356>,  <37.180576, 35.395821, 32.077389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.950756, 35.337410, 32.040356>,  <36.567726, 35.240059, 31.978634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950756, 35.337410, 32.040356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005549, 0.519787, -0.854278,
		-0.288120, 0.818894, 0.496386,
		0.957578, 0.243380, 0.154306,
		37.238029, 35.410423, 32.086647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635677, 35.941036, 31.702145>,  <36.567726, 35.240059, 31.978634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635677, 35.941036, 31.702145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.012245, 35.816380, 31.753685>,  <37.238186, 35.741585, 31.784609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.012245, 35.816380, 31.753685>,  <36.635677, 35.941036, 31.702145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012245, 35.816380, 31.753685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238911, 0.346686, -0.907045,
		0.238006, 0.884695, 0.400834,
		0.941422, -0.311646, 0.128849,
		37.294670, 35.722885, 31.792339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091850, 36.487728, 31.565250>,  <36.635677, 35.941036, 31.702145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091850, 36.487728, 31.565250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.287987, 36.147392, 31.489744>,  <37.405670, 35.943192, 31.444441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.287987, 36.147392, 31.489744>,  <37.091850, 36.487728, 31.565250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287987, 36.147392, 31.489744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127310, 0.284197, -0.950276,
		0.862180, 0.441930, 0.247675,
		0.490344, -0.850841, -0.188767,
		37.435089, 35.892139, 31.433115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834057, 36.873901, 32.187042>,  <37.091850, 36.487728, 31.565250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834057, 36.873901, 32.187042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.651825, 37.117077, 31.926931>,  <36.542484, 37.262981, 31.770866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.651825, 37.117077, 31.926931>,  <36.834057, 36.873901, 32.187042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651825, 37.117077, 31.926931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869362, -0.146744, 0.471886,
		0.191454, 0.780306, 0.595373,
		-0.455582, 0.607939, -0.650273,
		36.515152, 37.299458, 31.731850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649078, 37.591103, 32.358803>,  <36.834057, 36.873901, 32.187042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649078, 37.591103, 32.358803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.396664, 37.432877, 32.091873>,  <36.245216, 37.337940, 31.931717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.396664, 37.432877, 32.091873>,  <36.649078, 37.591103, 32.358803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396664, 37.432877, 32.091873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665796, -0.165317, 0.727589,
		-0.398132, 0.903435, -0.159047,
		-0.631037, -0.395569, -0.667322,
		36.207352, 37.314205, 31.891676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991020, 37.831436, 32.460976>,  <36.649078, 37.591103, 32.358803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991020, 37.831436, 32.460976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.948460, 37.471657, 32.291420>,  <35.922924, 37.255791, 32.189686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.948460, 37.471657, 32.291420>,  <35.991020, 37.831436, 32.460976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948460, 37.471657, 32.291420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718562, -0.225107, 0.658024,
		-0.687276, 0.374602, -0.622355,
		-0.106401, -0.899444, -0.423885,
		35.916538, 37.201824, 32.164253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324947, 37.679718, 32.572273>,  <35.991020, 37.831436, 32.460976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324947, 37.679718, 32.572273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.473618, 37.320805, 32.476997>,  <35.562820, 37.105457, 32.419834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.473618, 37.320805, 32.476997>,  <35.324947, 37.679718, 32.572273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473618, 37.320805, 32.476997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695926, -0.439106, 0.568219,
		-0.614445, -0.045434, -0.787650,
		0.371678, -0.897286, -0.238188,
		35.585121, 37.051620, 32.405540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722919, 37.286583, 32.456173>,  <35.324947, 37.679718, 32.572273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722919, 37.286583, 32.456173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.022011, 37.030994, 32.528412>,  <35.201466, 36.877640, 32.571754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.022011, 37.030994, 32.528412>,  <34.722919, 37.286583, 32.456173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022011, 37.030994, 32.528412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599374, -0.532462, 0.597692,
		-0.285744, -0.555160, -0.781120,
		0.747731, -0.638969, 0.180601,
		35.246330, 36.839302, 32.582592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489548, 36.606319, 32.412743>,  <34.722919, 37.286583, 32.456173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489548, 36.606319, 32.412743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.815071, 36.583702, 32.644093>,  <35.010384, 36.570133, 32.782902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.815071, 36.583702, 32.644093>,  <34.489548, 36.606319, 32.412743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815071, 36.583702, 32.644093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527851, -0.488222, 0.694991,
		0.243079, -0.870886, -0.427166,
		0.813810, -0.056542, 0.578374,
		35.059216, 36.566738, 32.817604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325962, 36.102039, 32.702362>,  <34.489548, 36.606319, 32.412743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325962, 36.102039, 32.702362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.625492, 36.206539, 32.946007>,  <34.805210, 36.269238, 33.092194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.625492, 36.206539, 32.946007>,  <34.325962, 36.102039, 32.702362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625492, 36.206539, 32.946007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418816, -0.525763, 0.740383,
		0.513672, -0.809520, -0.284287,
		0.748822, 0.261250, 0.609109,
		34.850140, 36.284912, 33.128738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397648, 35.491180, 33.184925>,  <34.325962, 36.102039, 32.702362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397648, 35.491180, 33.184925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.530968, 35.836777, 33.335888>,  <34.610958, 36.044132, 33.426468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.530968, 35.836777, 33.335888>,  <34.397648, 35.491180, 33.184925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530968, 35.836777, 33.335888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387166, -0.239569, 0.890342,
		0.859661, -0.442868, 0.254659,
		0.333295, 0.863988, 0.377411,
		34.630955, 36.095974, 33.449112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564175, 35.282257, 33.828693>,  <34.397648, 35.491180, 33.184925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564175, 35.282257, 33.828693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.545643, 35.681488, 33.845150>,  <34.534523, 35.921028, 33.855026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.545643, 35.681488, 33.845150>,  <34.564175, 35.282257, 33.828693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545643, 35.681488, 33.845150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460029, -0.057876, 0.886016,
		0.886695, 0.022118, 0.461826,
		-0.046325, 0.998079, 0.041144,
		34.531746, 35.980911, 33.857494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767555, 35.436321, 34.558235>,  <34.564175, 35.282257, 33.828693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767555, 35.436321, 34.558235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.584732, 35.770691, 34.436695>,  <34.475040, 35.971313, 34.363770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.584732, 35.770691, 34.436695>,  <34.767555, 35.436321, 34.558235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584732, 35.770691, 34.436695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472770, 0.061042, 0.879069,
		0.753386, 0.545435, 0.367302,
		-0.457054, 0.835928, -0.303854,
		34.447617, 36.021469, 34.345539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799160, 35.988022, 35.189461>,  <34.767555, 35.436321, 34.558235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799160, 35.988022, 35.189461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.498692, 36.041245, 34.930836>,  <34.318413, 36.073177, 34.775661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.498692, 36.041245, 34.930836>,  <34.799160, 35.988022, 35.189461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498692, 36.041245, 34.930836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658643, -0.216363, 0.720678,
		-0.044003, 0.967204, 0.250160,
		-0.751168, 0.133054, -0.646562,
		34.273342, 36.081161, 34.736866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362633, 36.355404, 35.541061>,  <34.799160, 35.988022, 35.189461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362633, 36.355404, 35.541061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.139366, 36.199726, 35.247944>,  <34.005405, 36.106319, 35.072075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.139366, 36.199726, 35.247944>,  <34.362633, 36.355404, 35.541061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139366, 36.199726, 35.247944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694666, -0.263783, 0.669221,
		-0.453753, 0.882581, -0.123124,
		-0.558164, -0.389191, -0.732792,
		33.971916, 36.082970, 35.028107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747570, 36.681549, 35.624569>,  <34.362633, 36.355404, 35.541061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747570, 36.681549, 35.624569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.676365, 36.339069, 35.430561>,  <33.633640, 36.133583, 35.314156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.676365, 36.339069, 35.430561>,  <33.747570, 36.681549, 35.624569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676365, 36.339069, 35.430561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709743, -0.229690, 0.665964,
		-0.681598, 0.462786, -0.566791,
		-0.178013, -0.856196, -0.485016,
		33.622959, 36.082211, 35.285057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025890, 36.575794, 35.610844>,  <33.747570, 36.681549, 35.624569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025890, 36.575794, 35.610844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.141132, 36.209576, 35.498581>,  <33.210278, 35.989845, 35.431225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.141132, 36.209576, 35.498581>,  <33.025890, 36.575794, 35.610844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141132, 36.209576, 35.498581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782483, -0.394031, 0.482141,
		-0.552009, 0.080698, -0.829924,
		0.288108, -0.915548, -0.280653,
		33.227566, 35.934910, 35.414387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516022, 36.271122, 35.388210>,  <33.025890, 36.575794, 35.610844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516022, 36.271122, 35.388210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.743279, 35.957153, 35.487095>,  <32.879631, 35.768772, 35.546425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.743279, 35.957153, 35.487095>,  <32.516022, 36.271122, 35.388210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743279, 35.957153, 35.487095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741194, -0.357554, 0.568143,
		-0.357554, -0.506020, -0.784920,
		-0.568143, 0.784920, -0.247214,
		32.913723, 35.721676, 35.561260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057739, 35.676762, 35.384052>,  <32.516022, 36.271122, 35.388210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057739, 35.676762, 35.384052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.367893, 35.535763, 35.593632>,  <32.553986, 35.451164, 35.719379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.367893, 35.535763, 35.593632>,  <32.057739, 35.676762, 35.384052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367893, 35.535763, 35.593632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593582, -0.689988, 0.414218,
		0.215509, -0.632187, -0.744242,
		0.775381, -0.352501, 0.523954,
		32.600506, 35.430012, 35.750816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062599, 34.968239, 35.271370>,  <32.057739, 35.676762, 35.384052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062599, 34.968239, 35.271370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.267776, 35.028149, 35.609470>,  <32.390884, 35.064095, 35.812332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.267776, 35.028149, 35.609470>,  <32.062599, 34.968239, 35.271370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267776, 35.028149, 35.609470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565302, -0.682069, 0.463913,
		0.646003, -0.715786, -0.265198,
		0.512946, 0.149772, 0.845255,
		32.421661, 35.073082, 35.863049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272781, 34.301640, 35.523388>,  <32.062599, 34.968239, 35.271370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272781, 34.301640, 35.523388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.317928, 34.541706, 35.840137>,  <32.345016, 34.685745, 36.030186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.317928, 34.541706, 35.840137>,  <32.272781, 34.301640, 35.523388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317928, 34.541706, 35.840137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490988, -0.659175, 0.569578,
		0.863824, -0.453084, 0.220279,
		0.112864, 0.600170, 0.791869,
		32.351788, 34.721756, 36.077698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595272, 33.913361, 36.116714>,  <32.272781, 34.301640, 35.523388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595272, 33.913361, 36.116714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.418983, 34.226959, 36.291584>,  <32.313210, 34.415119, 36.396507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.418983, 34.226959, 36.291584>,  <32.595272, 33.913361, 36.116714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418983, 34.226959, 36.291584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436877, -0.612787, 0.658507,
		0.784160, 0.099225, 0.612575,
		-0.440718, 0.783994, 0.437173,
		32.286766, 34.462158, 36.422737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514111, 33.801731, 36.767143>,  <32.595272, 33.913361, 36.116714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514111, 33.801731, 36.767143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.254120, 34.105133, 36.748405>,  <32.098125, 34.287174, 36.737164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.254120, 34.105133, 36.748405>,  <32.514111, 33.801731, 36.767143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254120, 34.105133, 36.748405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512697, -0.392174, 0.763768,
		0.560952, 0.520451, 0.643789,
		-0.649981, 0.758506, -0.046843,
		32.059124, 34.332684, 36.734352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.417793, 33.983936, 37.400875>,  <32.514111, 33.801731, 36.767143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.417793, 33.983936, 37.400875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.101677, 34.146679, 37.217617>,  <31.912006, 34.244324, 37.107662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.101677, 34.146679, 37.217617>,  <32.417793, 33.983936, 37.400875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101677, 34.146679, 37.217617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599355, -0.357947, 0.715994,
		0.127316, 0.840440, 0.526737,
		-0.790294, 0.406860, -0.458149,
		31.864590, 34.268738, 37.080173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981701, 34.323349, 37.936691>,  <32.417793, 33.983936, 37.400875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981701, 34.323349, 37.936691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.741457, 34.278866, 37.619984>,  <31.597311, 34.252178, 37.429958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.741457, 34.278866, 37.619984>,  <31.981701, 34.323349, 37.936691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741457, 34.278866, 37.619984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730367, -0.326612, 0.599907,
		-0.325314, 0.938594, 0.114947,
		-0.600612, -0.111205, -0.791769,
		31.561274, 34.245506, 37.382454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362164, 34.670757, 38.138206>,  <31.981701, 34.323349, 37.936691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362164, 34.670757, 38.138206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.256327, 34.406174, 37.857502>,  <31.192823, 34.247425, 37.689079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.256327, 34.406174, 37.857502>,  <31.362164, 34.670757, 38.138206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256327, 34.406174, 37.857502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792312, -0.265731, 0.549207,
		-0.549755, 0.701330, -0.453769,
		-0.264594, -0.661456, -0.701759,
		31.176949, 34.207737, 37.646973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643497, 34.684372, 38.237724>,  <31.362164, 34.670757, 38.138206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643497, 34.684372, 38.237724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.691715, 34.365902, 38.000546>,  <30.720646, 34.174820, 37.858238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.691715, 34.365902, 38.000546>,  <30.643497, 34.684372, 38.237724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.691715, 34.365902, 38.000546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482265, -0.569045, 0.666040,
		-0.867692, 0.205669, -0.452560,
		0.120543, -0.796171, -0.592943,
		30.727879, 34.127052, 37.822662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003006, 34.374554, 38.028706>,  <30.643497, 34.684372, 38.237724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.003006, 34.374554, 38.028706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.251198, 34.061081, 38.017097>,  <30.400114, 33.872997, 38.010132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.251198, 34.061081, 38.017097>,  <30.003006, 34.374554, 38.028706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251198, 34.061081, 38.017097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650393, -0.534916, 0.539310,
		-0.438170, -0.315760, -0.841608,
		0.620481, -0.783685, -0.029016,
		30.437342, 33.825977, 38.008392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.523827, 33.767227, 37.993053>,  <30.003006, 34.374554, 38.028706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.523827, 33.767227, 37.993053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.876646, 33.622181, 38.113392>,  <30.088337, 33.535152, 38.185593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.876646, 33.622181, 38.113392>,  <29.523827, 33.767227, 37.993053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876646, 33.622181, 38.113392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470838, -0.701990, 0.534342,
		0.017429, -0.612963, -0.789919,
		0.882047, -0.362611, 0.300842,
		30.141260, 33.513397, 38.203644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326014, 33.161095, 38.097980>,  <29.523827, 33.767227, 37.993053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326014, 33.161095, 38.097980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.677660, 33.181095, 38.287571>,  <29.888647, 33.193096, 38.401325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.677660, 33.181095, 38.287571>,  <29.326014, 33.161095, 38.097980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.677660, 33.181095, 38.287571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325016, -0.664482, 0.672925,
		0.348600, -0.745629, -0.567904,
		0.879115, 0.050004, 0.473980,
		29.941395, 33.196095, 38.429764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.640142, 32.402046, 38.332214>,  <29.326014, 33.161095, 38.097980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.640142, 32.402046, 38.332214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.787472, 32.703705, 38.549690>,  <29.875870, 32.884701, 38.680176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.787472, 32.703705, 38.549690>,  <29.640142, 32.402046, 38.332214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.787472, 32.703705, 38.549690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274664, -0.470436, 0.838600,
		0.888199, -0.458210, 0.033863,
		0.368324, 0.754145, 0.543694,
		29.897968, 32.929947, 38.712799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.084068, 31.812523, 38.102840>,  <29.640142, 32.402046, 38.332214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.084068, 31.812523, 38.102840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.807753, 31.558243, 37.965034>,  <29.641962, 31.405674, 37.882351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.807753, 31.558243, 37.965034>,  <30.084068, 31.812523, 38.102840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807753, 31.558243, 37.965034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256983, 0.229510, -0.938768,
		0.675845, -0.737028, 0.004821,
		-0.690791, -0.635701, -0.344517,
		29.600515, 31.367533, 37.861679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.333712, 31.498095, 37.514996>,  <30.084068, 31.812523, 38.102840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.333712, 31.498095, 37.514996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.937323, 31.461004, 37.476273>,  <29.699490, 31.438751, 37.453037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.937323, 31.461004, 37.476273>,  <30.333712, 31.498095, 37.514996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.937323, 31.461004, 37.476273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076385, 0.202888, -0.976218,
		0.110158, -0.974802, -0.193974,
		-0.990974, -0.092722, -0.096810,
		29.640030, 31.433187, 37.447231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224619, 31.028473, 37.036190>,  <30.333712, 31.498095, 37.514996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224619, 31.028473, 37.036190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.887657, 31.243896, 37.043236>,  <29.685480, 31.373150, 37.047462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.887657, 31.243896, 37.043236>,  <30.224619, 31.028473, 37.036190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.887657, 31.243896, 37.043236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058203, 0.123449, -0.990643,
		-0.535693, -0.833497, -0.135340,
		-0.842405, 0.538557, 0.017619,
		29.634935, 31.405464, 37.048523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.762020, 30.764578, 36.436127>,  <30.224619, 31.028473, 37.036190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.762020, 30.764578, 36.436127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.643961, 31.131029, 36.544643>,  <29.573126, 31.350901, 36.609753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.643961, 31.131029, 36.544643>,  <29.762020, 30.764578, 36.436127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.643961, 31.131029, 36.544643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093817, 0.310356, -0.945980,
		-0.950835, -0.253751, -0.177549,
		-0.295146, 0.916128, 0.271291,
		29.555416, 31.405867, 36.626030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.348820, 30.979286, 35.883736>,  <29.762020, 30.764578, 36.436127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.348820, 30.979286, 35.883736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.432789, 31.324797, 36.066963>,  <29.483170, 31.532103, 36.176899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.432789, 31.324797, 36.066963>,  <29.348820, 30.979286, 35.883736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432789, 31.324797, 36.066963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216867, 0.415697, -0.883269,
		-0.953363, 0.284756, -0.100062,
		0.209921, 0.863777, 0.458064,
		29.495766, 31.583929, 36.204384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
