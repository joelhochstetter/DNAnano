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
	<2.965217, 1.425404, 2.879833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.690033, 1.586765, 3.121155>,  <2.524922, 1.683582, 3.265948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.690033, 1.586765, 3.121155>,  <2.965217, 1.425404, 2.879833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.690033, 1.586765, 3.121155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063452, -0.794668, 0.603718,
		0.722968, 0.453616, 0.521104,
		-0.687961, 0.403404, 0.603303,
		2.483645, 1.707787, 3.302146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.899688, 0.874666, 2.478738>,  <2.965217, 1.425404, 2.879833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.899688, 0.874666, 2.478738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.712662, 0.827908, 2.128260>,  <2.600446, 0.799853, 1.917973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.712662, 0.827908, 2.128260>,  <2.899688, 0.874666, 2.478738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.712662, 0.827908, 2.128260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684625, -0.579131, 0.442601,
		-0.559170, 0.806810, 0.190752,
		-0.467565, -0.116895, -0.876195,
		2.572392, 0.792839, 1.865401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.151264, 1.046916, 2.516963>,  <2.899688, 0.874666, 2.478738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.151264, 1.046916, 2.516963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.222099, 0.768267, 2.238868>,  <2.264601, 0.601077, 2.072011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.222099, 0.768267, 2.238868>,  <2.151264, 1.046916, 2.516963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.222099, 0.768267, 2.238868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628019, -0.623878, 0.465155,
		-0.757781, 0.354248, -0.547975,
		0.177089, -0.696624, -0.695237,
		2.275226, 0.559280, 2.030297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.435072, 0.976851, 2.323874>,  <2.151264, 1.046916, 2.516963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.435072, 0.976851, 2.323874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.774536, 0.946552, 2.114480>,  <1.978215, 0.928373, 1.988844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.774536, 0.946552, 2.114480>,  <1.435072, 0.976851, 2.323874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.774536, 0.946552, 2.114480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528856, -0.138848, -0.837277,
		-0.009264, 0.987413, -0.157894,
		0.848661, -0.075746, -0.523485,
		2.029135, 0.923828, 1.957435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.624039, 1.512677, 1.744374>,  <1.435072, 0.976851, 2.323874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.624039, 1.512677, 1.744374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.843445, 1.189501, 1.658245>,  <1.975088, 0.995595, 1.606568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.843445, 1.189501, 1.658245>,  <1.624039, 1.512677, 1.744374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.843445, 1.189501, 1.658245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372947, -0.005921, -0.927833,
		0.748359, 0.589235, -0.304567,
		0.548515, -0.807940, -0.215323,
		2.007999, 0.947119, 1.593648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.129943, 1.628598, 1.104481>,  <1.624039, 1.512677, 1.744374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.129943, 1.628598, 1.104481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.024212, 1.244955, 1.144965>,  <1.960773, 1.014769, 1.169256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.024212, 1.244955, 1.144965>,  <2.129943, 1.628598, 1.104481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.024212, 1.244955, 1.144965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313992, -0.013643, -0.949328,
		0.911888, -0.282713, -0.297546,
		-0.264328, -0.959108, 0.101211,
		1.944914, 0.957223, 1.175328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.360439, 1.228070, 0.516339>,  <2.129943, 1.628598, 1.104481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.360439, 1.228070, 0.516339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.080303, 0.983849, 0.664257>,  <1.912222, 0.837316, 0.753008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.080303, 0.983849, 0.664257>,  <2.360439, 1.228070, 0.516339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.080303, 0.983849, 0.664257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296797, -0.222078, -0.928759,
		0.649181, -0.760200, -0.025681,
		-0.700339, -0.610555, 0.369794,
		1.870201, 0.800682, 0.775195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.443713, 0.567742, 0.214432>,  <2.360439, 1.228070, 0.516339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.443713, 0.567742, 0.214432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.057251, 0.595404, 0.313841>,  <1.825374, 0.612001, 0.373486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.057251, 0.595404, 0.313841>,  <2.443713, 0.567742, 0.214432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.057251, 0.595404, 0.313841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257681, -0.213634, -0.942317,
		-0.012071, -0.974463, 0.224223,
		-0.966155, 0.069153, 0.248521,
		1.767405, 0.616150, 0.388397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.598013, 0.414356, -0.819925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.303215, 0.202281, -0.652241>,  <1.126336, 0.075036, -0.551630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.303215, 0.202281, -0.652241>,  <1.598013, 0.414356, -0.819925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.303215, 0.202281, -0.652241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168026, 0.457041, 0.873430,
		-0.654679, 0.714153, -0.247752,
		-0.736996, -0.530187, 0.419212,
		1.082116, 0.043225, -0.526477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.126211, 0.885342, -0.491734>,  <1.598013, 0.414356, -0.819925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.126211, 0.885342, -0.491734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.107033, 0.528617, -0.311790>,  <1.095526, 0.314582, -0.203824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.107033, 0.528617, -0.311790>,  <1.126211, 0.885342, -0.491734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.107033, 0.528617, -0.311790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060343, 0.446968, 0.892512,
		-0.997025, 0.069938, 0.032385,
		-0.047945, -0.891812, 0.449859,
		1.092649, 0.261073, -0.176833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.567578, 0.926330, 0.101544>,  <1.126211, 0.885342, -0.491734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.567578, 0.926330, 0.101544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.859032, 0.655718, 0.144249>,  <1.033904, 0.493350, 0.169872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.859032, 0.655718, 0.144249>,  <0.567578, 0.926330, 0.101544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.859032, 0.655718, 0.144249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144823, 0.304540, 0.941425,
		-0.669417, -0.670493, 0.319876,
		0.728634, -0.676532, 0.106762,
		1.077622, 0.452758, 0.176278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.561965, 0.515946, 0.782018>,  <0.567578, 0.926330, 0.101544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.561965, 0.515946, 0.782018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.939247, 0.515821, 0.649134>,  <1.165616, 0.515747, 0.569403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.939247, 0.515821, 0.649134>,  <0.561965, 0.515946, 0.782018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.939247, 0.515821, 0.649134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330640, -0.096280, 0.938833,
		-0.032274, -0.995354, -0.090710,
		0.943205, -0.000308, -0.332211,
		1.222209, 0.515728, 0.549470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.922076, 0.036043, 1.220717>,  <0.561965, 0.515946, 0.782018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.922076, 0.036043, 1.220717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.226921, 0.244569, 1.067139>,  <1.409828, 0.369684, 0.974992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.226921, 0.244569, 1.067139>,  <0.922076, 0.036043, 1.220717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.226921, 0.244569, 1.067139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503378, -0.104151, 0.857766,
		0.407178, -0.846985, -0.341794,
		0.762113, 0.521315, -0.383946,
		1.455555, 0.400963, 0.951955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.581429, -0.343253, 1.343954>,  <0.922076, 0.036043, 1.220717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.581429, -0.343253, 1.343954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.656578, 0.047261, 1.300924>,  <1.701668, 0.281570, 1.275106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.656578, 0.047261, 1.300924>,  <1.581429, -0.343253, 1.343954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.656578, 0.047261, 1.300924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413143, 0.020814, 0.910428,
		0.891076, -0.215488, -0.399434,
		0.187873, 0.976285, -0.107574,
		1.712940, 0.340147, 1.268652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.240905, -0.260126, 1.493885>,  <1.581429, -0.343253, 1.343954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.240905, -0.260126, 1.493885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.053787, 0.087678, 1.557281>,  <1.941517, 0.296361, 1.595319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.053787, 0.087678, 1.557281>,  <2.240905, -0.260126, 1.493885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.053787, 0.087678, 1.557281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438214, 0.072449, 0.895946,
		0.767552, 0.488572, -0.414923,
		-0.467795, 0.869511, 0.158491,
		1.913449, 0.348531, 1.604829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.689421, 0.245495, 1.723623>,  <2.240905, -0.260126, 1.493885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.689421, 0.245495, 1.723623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.326065, 0.325027, 1.870752>,  <2.108052, 0.372747, 1.959030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.326065, 0.325027, 1.870752>,  <2.689421, 0.245495, 1.723623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.326065, 0.325027, 1.870752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351823, -0.111889, 0.929355,
		0.225939, 0.973626, 0.031686,
		-0.908390, 0.198830, 0.367824,
		2.053548, 0.384677, 1.981100>
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
