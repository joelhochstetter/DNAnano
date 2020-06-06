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
	<24.730051, 35.093861, 35.469452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.532341, 35.040802, 35.125801>,  <24.413715, 35.008968, 34.919609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.532341, 35.040802, 35.125801>,  <24.730051, 35.093861, 35.469452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.532341, 35.040802, 35.125801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533469, -0.826598, -0.179295,
		-0.686369, -0.546938, 0.479329,
		-0.494275, -0.132644, -0.859126,
		24.384058, 35.001007, 34.868065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.424402, 35.119297, 35.670258>,  <24.730051, 35.093861, 35.469452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.424402, 35.119297, 35.670258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.790257, 34.959988, 35.642487>,  <26.009769, 34.864403, 35.625824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.790257, 34.959988, 35.642487>,  <25.424402, 35.119297, 35.670258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.790257, 34.959988, 35.642487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110087, -0.080128, -0.990687,
		0.388997, 0.913762, -0.117133,
		0.914638, -0.398269, -0.069424,
		26.064648, 34.840508, 35.621658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.584532, 35.382442, 35.038296>,  <25.424402, 35.119297, 35.670258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.584532, 35.382442, 35.038296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.846071, 35.083820, 35.087517>,  <26.002995, 34.904648, 35.117050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.846071, 35.083820, 35.087517>,  <25.584532, 35.382442, 35.038296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.846071, 35.083820, 35.087517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060513, -0.213706, -0.975022,
		0.754202, 0.630070, -0.184908,
		0.653848, -0.746553, 0.123050,
		26.042225, 34.859856, 35.124432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.093582, 35.446178, 34.510368>,  <25.584532, 35.382442, 35.038296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.093582, 35.446178, 34.510368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.102785, 35.066849, 34.636951>,  <26.108307, 34.839249, 34.712902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.102785, 35.066849, 34.636951>,  <26.093582, 35.446178, 34.510368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.102785, 35.066849, 34.636951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183631, -0.315164, -0.931102,
		0.982726, -0.036690, -0.181393,
		0.023007, -0.948328, 0.316458,
		26.109688, 34.782349, 34.731888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.626009, 34.995239, 34.103081>,  <26.093582, 35.446178, 34.510368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.626009, 34.995239, 34.103081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.337317, 34.766293, 34.258774>,  <26.164101, 34.628925, 34.352188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.337317, 34.766293, 34.258774>,  <26.626009, 34.995239, 34.103081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.337317, 34.766293, 34.258774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191859, -0.374877, -0.907005,
		0.665055, -0.729290, 0.160747,
		-0.721729, -0.572367, 0.389234,
		26.120798, 34.594582, 34.375546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.795591, 34.320080, 33.883247>,  <26.626009, 34.995239, 34.103081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.795591, 34.320080, 33.883247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.404997, 34.366837, 33.955696>,  <26.170639, 34.394890, 33.999165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.404997, 34.366837, 33.955696>,  <26.795591, 34.320080, 33.883247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.404997, 34.366837, 33.955696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205604, -0.252478, -0.945506,
		-0.064794, -0.960516, 0.270576,
		-0.976488, 0.116894, 0.181127,
		26.112051, 34.401905, 34.010033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.492250, 33.630543, 33.725025>,  <26.795591, 34.320080, 33.883247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.492250, 33.630543, 33.725025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.254637, 33.947872, 33.671711>,  <26.112068, 34.138268, 33.639725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.254637, 33.947872, 33.671711>,  <26.492250, 33.630543, 33.725025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.254637, 33.947872, 33.671711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281099, -0.359946, -0.889619,
		-0.753727, -0.491001, 0.436822,
		-0.594036, 0.793320, -0.133281,
		26.076426, 34.185867, 33.631725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.822374, 33.334969, 33.687740>,  <26.492250, 33.630543, 33.725025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.822374, 33.334969, 33.687740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.818037, 33.692593, 33.508617>,  <25.815435, 33.907169, 33.401142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.818037, 33.692593, 33.508617>,  <25.822374, 33.334969, 33.687740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.818037, 33.692593, 33.508617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522310, -0.386951, -0.759909,
		-0.852687, 0.225657, 0.471173,
		-0.010842, 0.894063, -0.447811,
		25.814785, 33.960812, 33.374275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.149130, 33.521423, 33.438049>,  <25.822374, 33.334969, 33.687740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.149130, 33.521423, 33.438049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.430901, 33.693470, 33.212204>,  <25.599962, 33.796696, 33.076698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.430901, 33.693470, 33.212204>,  <25.149130, 33.521423, 33.438049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.430901, 33.693470, 33.212204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424342, -0.382457, -0.820768,
		-0.568964, 0.817759, -0.086897,
		0.704425, 0.430113, -0.564614,
		25.642227, 33.822502, 33.042820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.806158, 33.718315, 32.869732>,  <25.149130, 33.521423, 33.438049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.806158, 33.718315, 32.869732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.187462, 33.672977, 32.757698>,  <25.416245, 33.645775, 32.690475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.187462, 33.672977, 32.757698>,  <24.806158, 33.718315, 32.869732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.187462, 33.672977, 32.757698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295979, -0.536718, -0.790146,
		-0.060768, 0.836114, -0.545180,
		0.953260, -0.113346, -0.280087,
		25.473440, 33.638973, 32.673672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.752178, 33.921532, 32.220592>,  <24.806158, 33.718315, 32.869732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.752178, 33.921532, 32.220592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.047756, 33.655167, 32.261623>,  <25.225103, 33.495350, 32.286243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.047756, 33.655167, 32.261623>,  <24.752178, 33.921532, 32.220592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.047756, 33.655167, 32.261623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351622, -0.511017, -0.784362,
		0.574736, 0.543531, -0.611762,
		0.738946, -0.665910, 0.102582,
		25.269440, 33.455395, 32.292397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.827820, 33.757351, 31.580708>,  <24.752178, 33.921532, 32.220592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.827820, 33.757351, 31.580708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.030361, 33.478367, 31.783552>,  <25.151886, 33.310978, 31.905258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.030361, 33.478367, 31.783552>,  <24.827820, 33.757351, 31.580708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.030361, 33.478367, 31.783552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164297, -0.655328, -0.737260,
		0.846530, 0.289997, -0.446417,
		0.506353, -0.697457, 0.507109,
		25.182266, 33.269131, 31.935684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.392012, 33.552364, 31.163021>,  <24.827820, 33.757351, 31.580708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.392012, 33.552364, 31.163021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.263823, 33.265839, 31.410954>,  <25.186909, 33.093922, 31.559713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.263823, 33.265839, 31.410954>,  <25.392012, 33.552364, 31.163021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.263823, 33.265839, 31.410954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153933, -0.606262, -0.780225,
		0.934666, -0.345454, 0.084027,
		-0.320475, -0.716316, 0.619829,
		25.167681, 33.050945, 31.596903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.760845, 33.049885, 31.105894>,  <25.392012, 33.552364, 31.163021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.760845, 33.049885, 31.105894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.386946, 32.931553, 31.184614>,  <25.162605, 32.860554, 31.231846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.386946, 32.931553, 31.184614>,  <25.760845, 33.049885, 31.105894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.386946, 32.931553, 31.184614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112664, -0.278529, -0.953797,
		0.336973, -0.913733, 0.227026,
		-0.934749, -0.295826, 0.196801,
		25.106522, 32.842804, 31.243654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.244432, 32.998486, 31.727911>,  <25.760845, 33.049885, 31.105894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.244432, 32.998486, 31.727911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.177309, 32.618515, 31.622473>,  <26.137035, 32.390533, 31.559210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.177309, 32.618515, 31.622473>,  <26.244432, 32.998486, 31.727911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.177309, 32.618515, 31.622473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982342, -0.138685, -0.125584,
		0.082739, -0.280016, 0.956423,
		-0.167807, -0.949925, -0.263597,
		26.126966, 32.333538, 31.543394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.440645, 32.884537, 32.366470>,  <26.244432, 32.998486, 31.727911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.440645, 32.884537, 32.366470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.098944, 33.084896, 32.310837>,  <25.893923, 33.205112, 32.277458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.098944, 33.084896, 32.310837>,  <26.440645, 32.884537, 32.366470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.098944, 33.084896, 32.310837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326850, 0.725570, 0.605572,
		0.404248, 0.471853, -0.783542,
		-0.854256, 0.500902, -0.139085,
		25.842667, 33.235168, 32.269112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.695000, 33.557980, 32.191563>,  <26.440645, 32.884537, 32.366470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.695000, 33.557980, 32.191563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.322386, 33.585663, 32.334362>,  <26.098818, 33.602272, 32.420044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.322386, 33.585663, 32.334362>,  <26.695000, 33.557980, 32.191563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.322386, 33.585663, 32.334362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291706, 0.728396, 0.619957,
		-0.217133, 0.681652, -0.698715,
		-0.931537, 0.069206, 0.357001,
		26.042925, 33.606426, 32.441463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.458994, 34.283279, 32.131729>,  <26.695000, 33.557980, 32.191563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.458994, 34.283279, 32.131729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240292, 34.121887, 32.425194>,  <26.109070, 34.025051, 32.601273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240292, 34.121887, 32.425194>,  <26.458994, 34.283279, 32.131729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.240292, 34.121887, 32.425194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160759, 0.809347, 0.564901,
		-0.821715, 0.426806, -0.377651,
		-0.546754, -0.403477, 0.733666,
		26.076265, 34.000843, 32.645294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.318449, 34.921597, 32.494999>,  <26.458994, 34.283279, 32.131729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.318449, 34.921597, 32.494999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.239061, 34.628128, 32.754948>,  <26.191429, 34.452045, 32.910915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.239061, 34.628128, 32.754948>,  <26.318449, 34.921597, 32.494999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.239061, 34.628128, 32.754948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416980, 0.536855, 0.733426,
		-0.886983, 0.416545, 0.199379,
		-0.198467, -0.733673, 0.649872,
		26.179522, 34.408028, 32.949909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.646658, 35.100407, 32.635044>,  <26.318449, 34.921597, 32.494999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.646658, 35.100407, 32.635044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.546833, 34.744633, 32.788212>,  <25.486938, 34.531170, 32.880112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.546833, 34.744633, 32.788212>,  <25.646658, 35.100407, 32.635044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.546833, 34.744633, 32.788212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286970, 0.309739, 0.906482,
		-0.924860, 0.336112, 0.177941,
		-0.249564, -0.889433, 0.382920,
		25.471964, 34.477802, 32.903088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.527031, 35.271481, 33.316025>,  <25.646658, 35.100407, 32.635044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.527031, 35.271481, 33.316025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.516392, 34.871689, 33.308662>,  <25.510008, 34.631813, 33.304245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.516392, 34.871689, 33.308662>,  <25.527031, 35.271481, 33.316025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.516392, 34.871689, 33.308662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010660, -0.018699, 0.999768,
		-0.999589, 0.026394, 0.011151,
		-0.026596, -0.999477, -0.018410,
		25.508413, 34.571846, 33.303139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.010441, 34.959389, 33.765797>,  <25.527031, 35.271481, 33.316025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.010441, 34.959389, 33.765797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.318680, 34.706387, 33.734501>,  <25.503624, 34.554585, 33.715721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.318680, 34.706387, 33.734501>,  <25.010441, 34.959389, 33.765797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.318680, 34.706387, 33.734501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043670, -0.070074, 0.996586,
		-0.635825, -0.771383, -0.026377,
		0.770597, -0.632502, -0.078241,
		25.549858, 34.516636, 33.711029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.856123, 34.619534, 34.352432>,  <25.010441, 34.959389, 33.765797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.856123, 34.619534, 34.352432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.224129, 34.521187, 34.230370>,  <25.444933, 34.462177, 34.157131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.224129, 34.521187, 34.230370>,  <24.856123, 34.619534, 34.352432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.224129, 34.521187, 34.230370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269936, -0.166894, 0.948304,
		-0.284091, -0.954826, -0.087175,
		0.920015, -0.245873, -0.305155,
		25.500134, 34.447426, 34.138824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.042995, 33.905838, 34.576763>,  <24.856123, 34.619534, 34.352432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.042995, 33.905838, 34.576763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.364355, 34.142075, 34.546406>,  <25.557171, 34.283817, 34.528191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.364355, 34.142075, 34.546406>,  <25.042995, 33.905838, 34.576763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.364355, 34.142075, 34.546406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224379, -0.182204, 0.957317,
		0.551550, -0.786135, -0.278897,
		0.803397, 0.590587, -0.075897,
		25.605373, 34.319252, 34.523636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.584005, 33.547394, 34.968864>,  <25.042995, 33.905838, 34.576763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.584005, 33.547394, 34.968864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.803028, 33.819401, 34.773823>,  <25.934443, 33.982605, 34.656796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.803028, 33.819401, 34.773823>,  <25.584005, 33.547394, 34.968864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.803028, 33.819401, 34.773823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478671, 0.223415, 0.849094,
		0.686335, -0.698331, -0.203170,
		0.547557, 0.680014, -0.487608,
		25.967295, 34.023407, 34.627541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.215540, 33.522514, 35.252522>,  <25.584005, 33.547394, 34.968864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.215540, 33.522514, 35.252522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.193182, 33.885429, 35.085812>,  <26.179768, 34.103180, 34.985786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.193182, 33.885429, 35.085812>,  <26.215540, 33.522514, 35.252522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.193182, 33.885429, 35.085812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316357, 0.412015, 0.854495,
		0.946992, -0.084090, -0.310056,
		-0.055894, 0.907289, -0.416777,
		26.176414, 34.157616, 34.960777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.826479, 33.818039, 35.301891>,  <26.215540, 33.522514, 35.252522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.826479, 33.818039, 35.301891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.569897, 34.123577, 35.273399>,  <26.415947, 34.306900, 35.256306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.569897, 34.123577, 35.273399>,  <26.826479, 33.818039, 35.301891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.569897, 34.123577, 35.273399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408856, 0.418951, 0.810751,
		0.649131, 0.490938, -0.581042,
		-0.641456, 0.763845, -0.071231,
		26.377460, 34.352730, 35.252029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.241138, 34.498951, 35.339195>,  <26.826479, 33.818039, 35.301891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.241138, 34.498951, 35.339195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.870289, 34.620617, 35.426762>,  <26.647779, 34.693619, 35.479301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.870289, 34.620617, 35.426762>,  <27.241138, 34.498951, 35.339195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.870289, 34.620617, 35.426762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312086, 0.303251, 0.900356,
		0.207474, 0.903061, -0.376078,
		-0.927123, 0.304169, 0.218916,
		26.592152, 34.711868, 35.492435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.923470, 34.251553, 35.558582>,  <27.241138, 34.498951, 35.339195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.923470, 34.251553, 35.558582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.730759, 34.351665, 35.222668>,  <27.615131, 34.411732, 35.021118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.730759, 34.351665, 35.222668>,  <27.923470, 34.251553, 35.558582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.730759, 34.351665, 35.222668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868083, 0.005433, -0.496389,
		-0.119676, -0.968157, -0.219885,
		-0.481777, 0.250284, -0.839790,
		27.586226, 34.426750, 34.970730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.411385, 34.014709, 36.108173>,  <27.923470, 34.251553, 35.558582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.411385, 34.014709, 36.108173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549625, 33.792698, 36.410828>,  <28.632570, 33.659489, 36.592422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549625, 33.792698, 36.410828>,  <28.411385, 34.014709, 36.108173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549625, 33.792698, 36.410828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055492, -0.792823, -0.606920,
		0.936740, 0.251739, -0.243200,
		0.345600, -0.555031, 0.756639,
		28.653305, 33.626190, 36.637817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800714, 33.583088, 35.885899>,  <28.411385, 34.014709, 36.108173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.800714, 33.583088, 35.885899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.798283, 33.379623, 36.230274>,  <28.796824, 33.257545, 36.436901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.798283, 33.379623, 36.230274>,  <28.800714, 33.583088, 35.885899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.798283, 33.379623, 36.230274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160812, -0.850251, -0.501212,
		0.986966, 0.135403, 0.086968,
		-0.006079, -0.508665, 0.860943,
		28.796459, 33.227024, 36.488556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326759, 33.158066, 35.884892>,  <28.800714, 33.583088, 35.885899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326759, 33.158066, 35.884892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.048319, 33.016994, 36.135033>,  <28.881254, 32.932350, 36.285118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.048319, 33.016994, 36.135033>,  <29.326759, 33.158066, 35.884892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.048319, 33.016994, 36.135033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047761, -0.891846, -0.449810,
		0.716354, -0.283246, 0.637659,
		-0.696100, -0.352679, 0.625350,
		28.839489, 32.911190, 36.322636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.520712, 32.510460, 36.148262>,  <29.326759, 33.158066, 35.884892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.520712, 32.510460, 36.148262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.126371, 32.486591, 36.210915>,  <28.889767, 32.472271, 36.248505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.126371, 32.486591, 36.210915>,  <29.520712, 32.510460, 36.148262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.126371, 32.486591, 36.210915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027342, -0.864713, -0.501521,
		0.165369, -0.498709, 0.850848,
		-0.985853, -0.059672, 0.156632,
		28.830616, 32.468689, 36.257904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414684, 31.806284, 36.253479>,  <29.520712, 32.510460, 36.148262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.414684, 31.806284, 36.253479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041893, 31.933447, 36.183792>,  <28.818218, 32.009743, 36.141979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041893, 31.933447, 36.183792>,  <29.414684, 31.806284, 36.253479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.041893, 31.933447, 36.183792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191159, -0.839310, -0.508936,
		-0.308017, -0.441014, 0.842990,
		-0.931978, 0.317906, -0.174218,
		28.762299, 32.028820, 36.131527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.866665, 31.595257, 36.671688>,  <29.414684, 31.806284, 36.253479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.866665, 31.595257, 36.671688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.534653, 31.779514, 36.545921>,  <28.335445, 31.890068, 36.470463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.534653, 31.779514, 36.545921>,  <28.866665, 31.595257, 36.671688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.534653, 31.779514, 36.545921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101486, -0.679092, -0.727004,
		-0.548407, -0.571527, 0.610416,
		-0.830031, 0.460642, -0.314417,
		28.285645, 31.917707, 36.451595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.367365, 31.128016, 36.655510>,  <28.866665, 31.595257, 36.671688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.367365, 31.128016, 36.655510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236893, 31.403553, 36.396557>,  <28.158609, 31.568876, 36.241184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236893, 31.403553, 36.396557>,  <28.367365, 31.128016, 36.655510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.236893, 31.403553, 36.396557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495977, -0.707710, -0.503144,
		-0.804745, 0.156969, 0.572492,
		-0.326180, 0.688845, -0.647379,
		28.139038, 31.610207, 36.202343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.725733, 31.046261, 36.707504>,  <28.367365, 31.128016, 36.655510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.725733, 31.046261, 36.707504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.823738, 31.213905, 36.357803>,  <27.882542, 31.314491, 36.147984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.823738, 31.213905, 36.357803>,  <27.725733, 31.046261, 36.707504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.823738, 31.213905, 36.357803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512169, -0.709691, -0.483758,
		-0.823197, 0.566291, 0.040773,
		0.245011, 0.419110, -0.874252,
		27.897242, 31.339638, 36.095528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.127592, 31.074982, 36.357620>,  <27.725733, 31.046261, 36.707504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.127592, 31.074982, 36.357620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.411671, 31.107555, 36.077911>,  <27.582119, 31.127100, 35.910084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.411671, 31.107555, 36.077911>,  <27.127592, 31.074982, 36.357620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.411671, 31.107555, 36.077911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411500, -0.757916, -0.506192,
		-0.571216, 0.647249, -0.504759,
		0.710198, 0.081437, -0.699277,
		27.624729, 31.131987, 35.868130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.877174, 31.043291, 35.568680>,  <27.127592, 31.074982, 36.357620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.877174, 31.043291, 35.568680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.253319, 30.920938, 35.628220>,  <27.479006, 30.847527, 35.663944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.253319, 30.920938, 35.628220>,  <26.877174, 31.043291, 35.568680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.253319, 30.920938, 35.628220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210364, -0.866757, -0.452194,
		0.267335, 0.393913, -0.879412,
		0.940361, -0.305884, 0.148849,
		27.535427, 30.829174, 35.672874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.787416, 30.301003, 35.289703>,  <26.877174, 31.043291, 35.568680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.787416, 30.301003, 35.289703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.040928, 30.107756, 35.048069>,  <27.193035, 29.991808, 34.903088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.040928, 30.107756, 35.048069>,  <26.787416, 30.301003, 35.289703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.040928, 30.107756, 35.048069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667384, 0.736351, 0.111294,
		0.391051, -0.473693, 0.789110,
		0.633781, -0.483117, -0.604086,
		27.231062, 29.962820, 34.866844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.409510, 29.961874, 35.585495>,  <26.787416, 30.301003, 35.289703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.409510, 29.961874, 35.585495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.425303, 30.135254, 35.225368>,  <27.434778, 30.239283, 35.009293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.425303, 30.135254, 35.225368>,  <27.409510, 29.961874, 35.585495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.425303, 30.135254, 35.225368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704964, 0.626463, 0.332522,
		0.708144, -0.647816, -0.280834,
		0.039481, 0.433451, -0.900312,
		27.437147, 30.265289, 34.955276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.125874, 29.925507, 35.315231>,  <27.409510, 29.961874, 35.585495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.125874, 29.925507, 35.315231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918444, 30.240213, 35.181320>,  <27.793985, 30.429037, 35.100975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918444, 30.240213, 35.181320>,  <28.125874, 29.925507, 35.315231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.918444, 30.240213, 35.181320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697682, 0.615704, 0.366263,
		0.494288, -0.043634, -0.868202,
		-0.518575, 0.786768, -0.334778,
		27.762871, 30.476244, 35.080887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.611479, 30.439741, 35.278015>,  <28.125874, 29.925507, 35.315231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.611479, 30.439741, 35.278015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254545, 30.620068, 35.286987>,  <28.040384, 30.728264, 35.292370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254545, 30.620068, 35.286987>,  <28.611479, 30.439741, 35.278015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.254545, 30.620068, 35.286987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426872, 0.826696, 0.366543,
		0.146697, 0.336656, -0.930131,
		-0.892334, 0.450817, 0.022435,
		27.986845, 30.755312, 35.293716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.629051, 31.116344, 34.999680>,  <28.611479, 30.439741, 35.278015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.629051, 31.116344, 34.999680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319372, 31.137083, 35.252007>,  <28.133564, 31.149527, 35.403404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319372, 31.137083, 35.252007>,  <28.629051, 31.116344, 34.999680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319372, 31.137083, 35.252007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345182, 0.869971, 0.352135,
		-0.530536, 0.490369, -0.691427,
		-0.774197, 0.051848, 0.630817,
		28.087112, 31.152637, 35.441250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.340183, 31.717564, 34.853886>,  <28.629051, 31.116344, 34.999680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.340183, 31.717564, 34.853886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.231255, 31.615444, 35.224972>,  <28.165897, 31.554173, 35.447624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.231255, 31.615444, 35.224972>,  <28.340183, 31.717564, 34.853886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.231255, 31.615444, 35.224972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156775, 0.939501, 0.304563,
		-0.949349, 0.228382, -0.215821,
		-0.272321, -0.255301, 0.927719,
		28.149559, 31.538855, 35.503288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.088083, 32.399475, 35.197765>,  <28.340183, 31.717564, 34.853886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.088083, 32.399475, 35.197765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137264, 32.136215, 35.494877>,  <28.166773, 31.978260, 35.673145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137264, 32.136215, 35.494877>,  <28.088083, 32.399475, 35.197765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.137264, 32.136215, 35.494877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030532, 0.745598, 0.665697,
		-0.991943, -0.104528, 0.071579,
		0.122953, -0.658147, 0.742781,
		28.174150, 31.938770, 35.717712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.550644, 32.411980, 35.809696>,  <28.088083, 32.399475, 35.197765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.550644, 32.411980, 35.809696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.924652, 32.309044, 35.907280>,  <28.149057, 32.247284, 35.965832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.924652, 32.309044, 35.907280>,  <27.550644, 32.411980, 35.809696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.924652, 32.309044, 35.907280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045898, 0.770041, 0.636341,
		-0.351615, -0.583794, 0.731814,
		0.935019, -0.257335, 0.243963,
		28.205158, 32.231842, 35.980469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579628, 32.472427, 36.488811>,  <27.550644, 32.411980, 35.809696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579628, 32.472427, 36.488811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.974501, 32.453426, 36.427868>,  <28.211424, 32.442024, 36.391304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.974501, 32.453426, 36.427868>,  <27.579628, 32.472427, 36.488811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.974501, 32.453426, 36.427868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138513, 0.729204, 0.670131,
		0.079266, -0.682646, 0.726437,
		0.987183, -0.047502, -0.152356,
		28.270657, 32.439175, 36.382160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.840240, 32.606926, 37.140099>,  <27.579628, 32.472427, 36.488811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.840240, 32.606926, 37.140099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140160, 32.672974, 36.883804>,  <28.320110, 32.712601, 36.730030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140160, 32.672974, 36.883804>,  <27.840240, 32.606926, 37.140099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140160, 32.672974, 36.883804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321305, 0.755665, 0.570731,
		0.578416, -0.633804, 0.513544,
		0.749799, 0.165115, -0.640733,
		28.365099, 32.722507, 36.691586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.419327, 32.614349, 37.549408>,  <27.840240, 32.606926, 37.140099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.419327, 32.614349, 37.549408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.488079, 32.825485, 37.216702>,  <28.529329, 32.952168, 37.017078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.488079, 32.825485, 37.216702>,  <28.419327, 32.614349, 37.549408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.488079, 32.825485, 37.216702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359462, 0.752514, 0.551825,
		0.917194, -0.393836, -0.060397,
		0.171879, 0.527841, -0.831770,
		28.539642, 32.983837, 36.967171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857746, 33.028690, 37.789059>,  <28.419327, 32.614349, 37.549408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.857746, 33.028690, 37.789059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785105, 33.200043, 37.434994>,  <28.741520, 33.302856, 37.222557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785105, 33.200043, 37.434994>,  <28.857746, 33.028690, 37.789059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.785105, 33.200043, 37.434994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233507, 0.893168, 0.384350,
		0.955245, -0.136892, -0.262234,
		-0.181604, 0.428383, -0.885160,
		28.730623, 33.328556, 37.169445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.447418, 33.381138, 37.649025>,  <28.857746, 33.028690, 37.789059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.447418, 33.381138, 37.649025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120588, 33.541649, 37.483437>,  <28.924490, 33.637955, 37.384083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120588, 33.541649, 37.483437>,  <29.447418, 33.381138, 37.649025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.120588, 33.541649, 37.483437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223568, 0.882375, 0.414043,
		0.531422, 0.245752, -0.810676,
		-0.817073, 0.401273, -0.413971,
		28.875467, 33.662029, 37.359245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.167202, 33.682545, 37.659458>,  <29.447418, 33.381138, 37.649025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.167202, 33.682545, 37.659458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.335304, 33.439114, 37.390232>,  <30.436167, 33.293053, 37.228695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.335304, 33.439114, 37.390232>,  <30.167202, 33.682545, 37.659458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335304, 33.439114, 37.390232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653529, -0.311585, 0.689793,
		-0.629510, -0.729757, 0.266779,
		0.420257, -0.608580, -0.673064,
		30.461382, 33.256538, 37.188313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223604, 32.880295, 37.811642>,  <30.167202, 33.682545, 37.659458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223604, 32.880295, 37.811642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528065, 32.992794, 37.577873>,  <30.710741, 33.060295, 37.437611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528065, 32.992794, 37.577873>,  <30.223604, 32.880295, 37.811642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528065, 32.992794, 37.577873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639389, -0.174279, 0.748871,
		0.108767, -0.943677, -0.312481,
		0.761151, 0.281249, -0.584421,
		30.756411, 33.077168, 37.402546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650276, 32.297562, 37.744244>,  <30.223604, 32.880295, 37.811642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650276, 32.297562, 37.744244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.870310, 32.625443, 37.680374>,  <31.002331, 32.822170, 37.642052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.870310, 32.625443, 37.680374>,  <30.650276, 32.297562, 37.744244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.870310, 32.625443, 37.680374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626887, -0.278992, 0.727445,
		0.551741, -0.500251, -0.667331,
		0.550085, 0.819703, -0.159670,
		31.035336, 32.871353, 37.632473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389736, 32.096359, 37.618610>,  <30.650276, 32.297562, 37.744244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389736, 32.096359, 37.618610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419193, 32.472622, 37.751122>,  <31.436869, 32.698380, 37.830627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419193, 32.472622, 37.751122>,  <31.389736, 32.096359, 37.618610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.419193, 32.472622, 37.751122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696028, -0.286376, 0.658432,
		0.714228, 0.182088, -0.675813,
		0.073644, 0.940655, 0.331276,
		31.441286, 32.754818, 37.850506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042934, 32.075375, 37.840809>,  <31.389736, 32.096359, 37.618610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042934, 32.075375, 37.840809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933453, 32.419296, 38.013241>,  <31.867764, 32.625648, 38.116699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933453, 32.419296, 38.013241>,  <32.042934, 32.075375, 37.840809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933453, 32.419296, 38.013241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500526, -0.255400, 0.827191,
		0.821317, 0.442171, -0.360449,
		-0.273701, 0.859800, 0.431082,
		31.851343, 32.677235, 38.142567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575619, 32.367245, 38.147804>,  <32.042934, 32.075375, 37.840809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575619, 32.367245, 38.147804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268978, 32.487492, 38.374767>,  <32.084995, 32.559639, 38.510944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268978, 32.487492, 38.374767>,  <32.575619, 32.367245, 38.147804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268978, 32.487492, 38.374767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457932, -0.363502, 0.811273,
		0.450135, 0.881758, 0.141000,
		-0.766601, 0.300614, 0.567410,
		32.038998, 32.577675, 38.544991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846722, 32.834805, 38.733242>,  <32.575619, 32.367245, 38.147804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846722, 32.834805, 38.733242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530987, 32.611515, 38.835484>,  <32.341545, 32.477543, 38.896828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530987, 32.611515, 38.835484>,  <32.846722, 32.834805, 38.733242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530987, 32.611515, 38.835484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552770, -0.464965, 0.691558,
		-0.267195, 0.687164, 0.675583,
		-0.789337, -0.558222, 0.255607,
		32.294186, 32.444050, 38.912167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625416, 33.037979, 39.420280>,  <32.846722, 32.834805, 38.733242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625416, 33.037979, 39.420280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541191, 32.649429, 39.376308>,  <32.490654, 32.416298, 39.349926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541191, 32.649429, 39.376308>,  <32.625416, 33.037979, 39.420280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541191, 32.649429, 39.376308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527015, -0.207509, 0.824133,
		-0.823358, 0.115597, 0.555625,
		-0.210565, -0.971379, -0.109933,
		32.478024, 32.358017, 39.343327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968376, 33.224567, 39.083027>,  <32.625416, 33.037979, 39.420280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968376, 33.224567, 39.083027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892126, 32.932816, 39.345833>,  <31.846376, 32.757763, 39.503517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892126, 32.932816, 39.345833>,  <31.968376, 33.224567, 39.083027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892126, 32.932816, 39.345833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142187, 0.641712, 0.753650,
		-0.971311, 0.237084, -0.018618,
		-0.190626, -0.729381, 0.657012,
		31.834938, 32.714001, 39.542938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352451, 33.265465, 39.564335>,  <31.968376, 33.224567, 39.083027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.352451, 33.265465, 39.564335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633890, 33.055473, 39.755898>,  <31.802753, 32.929478, 39.870834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633890, 33.055473, 39.755898>,  <31.352451, 33.265465, 39.564335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633890, 33.055473, 39.755898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087969, 0.733111, 0.674396,
		-0.705135, -0.432372, 0.561995,
		0.703595, -0.524979, 0.478907,
		31.844969, 32.897980, 39.899570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845785, 33.481125, 39.185085>,  <31.352451, 33.265465, 39.564335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.845785, 33.481125, 39.185085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.535097, 33.263504, 39.312027>,  <30.348684, 33.132931, 39.388191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.535097, 33.263504, 39.312027>,  <30.845785, 33.481125, 39.185085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.535097, 33.263504, 39.312027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542829, -0.833772, -0.100798,
		0.319437, 0.093975, 0.942936,
		-0.776721, -0.544052, 0.317350,
		30.302080, 33.100288, 39.407230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241905, 33.697754, 38.622673>,  <30.845785, 33.481125, 39.185085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241905, 33.697754, 38.622673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462841, 33.393646, 38.485905>,  <31.595402, 33.211182, 38.403843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462841, 33.393646, 38.485905>,  <31.241905, 33.697754, 38.622673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462841, 33.393646, 38.485905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228951, 0.256046, -0.939160,
		0.801562, 0.597020, -0.032640,
		0.552340, -0.760268, -0.341925,
		31.628544, 33.165565, 38.383327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745735, 33.940872, 38.168037>,  <31.241905, 33.697754, 38.622673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745735, 33.940872, 38.168037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654341, 33.564915, 38.066536>,  <31.599504, 33.339340, 38.005634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654341, 33.564915, 38.066536>,  <31.745735, 33.940872, 38.168037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654341, 33.564915, 38.066536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205512, 0.301338, -0.931107,
		0.951608, -0.160597, -0.262012,
		-0.228488, -0.939896, -0.253751,
		31.585794, 33.282948, 37.990410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940598, 33.868641, 37.434963>,  <31.745735, 33.940872, 38.168037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940598, 33.868641, 37.434963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669443, 33.580853, 37.495411>,  <31.506750, 33.408180, 37.531677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669443, 33.580853, 37.495411>,  <31.940598, 33.868641, 37.434963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669443, 33.580853, 37.495411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395441, 0.183562, -0.899962,
		0.619754, -0.669830, -0.408941,
		-0.677887, -0.719467, 0.151114,
		31.466076, 33.365013, 37.540745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011810, 33.216835, 36.982960>,  <31.940598, 33.868641, 37.434963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011810, 33.216835, 36.982960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.651106, 33.357323, 37.083725>,  <31.434683, 33.441616, 37.144184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.651106, 33.357323, 37.083725>,  <32.011810, 33.216835, 36.982960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651106, 33.357323, 37.083725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200727, 0.175873, -0.963731,
		-0.382790, -0.919625, -0.088096,
		-0.901766, 0.351223, 0.251916,
		31.380577, 33.462688, 37.159298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466959, 32.887997, 36.564087>,  <32.011810, 33.216835, 36.982960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466959, 32.887997, 36.564087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346422, 33.256802, 36.661324>,  <31.274101, 33.478085, 36.719666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346422, 33.256802, 36.661324>,  <31.466959, 32.887997, 36.564087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346422, 33.256802, 36.661324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271051, 0.161593, -0.948904,
		-0.914180, -0.351832, 0.201217,
		-0.301340, 0.922010, 0.243090,
		31.256020, 33.533405, 36.734249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.802818, 32.987305, 36.283447>,  <31.466959, 32.887997, 36.564087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.802818, 32.987305, 36.283447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970961, 33.347679, 36.326553>,  <31.071846, 33.563904, 36.352417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970961, 33.347679, 36.326553>,  <30.802818, 32.987305, 36.283447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970961, 33.347679, 36.326553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285711, 0.244149, -0.926693,
		-0.861203, 0.358750, 0.360037,
		0.420354, 0.900938, 0.107763,
		31.097067, 33.617962, 36.358883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.330879, 33.505821, 35.985596>,  <30.802818, 32.987305, 36.283447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.330879, 33.505821, 35.985596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.705198, 33.645355, 36.005966>,  <30.929790, 33.729076, 36.018188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.705198, 33.645355, 36.005966>,  <30.330879, 33.505821, 35.985596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.705198, 33.645355, 36.005966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043469, 0.257520, -0.965295,
		-0.349846, 0.901108, 0.256150,
		0.935798, 0.348839, 0.050922,
		30.985937, 33.750008, 36.021244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352938, 34.292057, 35.707169>,  <30.330879, 33.505821, 35.985596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352938, 34.292057, 35.707169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.703667, 34.112137, 35.639206>,  <30.914104, 34.004185, 35.598431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.703667, 34.112137, 35.639206>,  <30.352938, 34.292057, 35.707169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.703667, 34.112137, 35.639206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058655, 0.250662, -0.966296,
		0.477225, 0.857235, 0.193403,
		0.876821, -0.449797, -0.169903,
		30.966713, 33.977200, 35.588234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732786, 34.731384, 35.332626>,  <30.352938, 34.292057, 35.707169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.732786, 34.731384, 35.332626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959393, 34.405075, 35.286018>,  <31.095356, 34.209290, 35.258053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959393, 34.405075, 35.286018>,  <30.732786, 34.731384, 35.332626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959393, 34.405075, 35.286018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264838, 0.314144, -0.911688,
		0.780333, 0.485626, 0.394015,
		0.566516, -0.815771, -0.116525,
		31.129347, 34.160343, 35.251060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.119587, 34.901207, 34.744011>,  <30.732786, 34.731384, 35.332626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.119587, 34.901207, 34.744011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225481, 34.517418, 34.782627>,  <31.289017, 34.287144, 34.805798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225481, 34.517418, 34.782627>,  <31.119587, 34.901207, 34.744011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225481, 34.517418, 34.782627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338421, -0.001303, -0.940994,
		0.902988, 0.281784, 0.324362,
		0.264735, -0.959477, 0.096538,
		31.304901, 34.229576, 34.811588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839821, 34.752033, 34.632759>,  <31.119587, 34.901207, 34.744011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839821, 34.752033, 34.632759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637037, 34.420860, 34.536831>,  <31.515368, 34.222157, 34.479275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637037, 34.420860, 34.536831>,  <31.839821, 34.752033, 34.632759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637037, 34.420860, 34.536831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268986, 0.112375, -0.956566,
		0.818926, -0.549447, 0.165734,
		-0.506958, -0.827937, -0.239820,
		31.484949, 34.172478, 34.464886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.256115, 34.391270, 34.296581>,  <31.839821, 34.752033, 34.632759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.256115, 34.391270, 34.296581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914221, 34.216961, 34.183781>,  <31.709084, 34.112373, 34.116100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914221, 34.216961, 34.183781>,  <32.256115, 34.391270, 34.296581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914221, 34.216961, 34.183781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186647, 0.248908, -0.950373,
		0.484341, -0.864954, -0.131414,
		-0.854738, -0.435776, -0.281997,
		31.657799, 34.086227, 34.099182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442596, 34.279881, 33.576527>,  <32.256115, 34.391270, 34.296581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442596, 34.279881, 33.576527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052082, 34.196186, 33.598732>,  <31.817774, 34.145969, 33.612053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052082, 34.196186, 33.598732>,  <32.442596, 34.279881, 33.576527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052082, 34.196186, 33.598732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125598, 0.338633, -0.932498,
		0.176317, -0.917359, -0.356883,
		-0.976288, -0.209239, 0.055512,
		31.759195, 34.133415, 33.615387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058903, 33.722511, 33.042305>,  <32.442596, 34.279881, 33.576527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058903, 33.722511, 33.042305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774185, 33.986729, 33.137836>,  <31.603355, 34.145260, 33.195156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774185, 33.986729, 33.137836>,  <32.058903, 33.722511, 33.042305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774185, 33.986729, 33.137836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087990, 0.421199, -0.902690,
		-0.696858, -0.621512, -0.357926,
		-0.711791, 0.660541, 0.238829,
		31.560648, 34.184891, 33.209484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.542000, 33.740841, 32.556301>,  <32.058903, 33.722511, 33.042305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.542000, 33.740841, 32.556301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.468624, 34.086739, 32.743305>,  <31.424599, 34.294277, 32.855507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.468624, 34.086739, 32.743305>,  <31.542000, 33.740841, 32.556301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.468624, 34.086739, 32.743305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134280, 0.449085, -0.883341,
		-0.973816, -0.224819, 0.033737,
		-0.183441, 0.864742, 0.467515,
		31.413591, 34.346161, 32.883560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997284, 34.070976, 32.159840>,  <31.542000, 33.740841, 32.556301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997284, 34.070976, 32.159840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139704, 34.381569, 32.367805>,  <31.225155, 34.567924, 32.492584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139704, 34.381569, 32.367805>,  <30.997284, 34.070976, 32.159840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139704, 34.381569, 32.367805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010311, 0.553079, -0.833065,
		-0.934411, 0.301972, 0.188917,
		0.356048, 0.776477, 0.519916,
		31.246519, 34.614513, 32.523781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.595245, 34.651054, 31.971964>,  <30.997284, 34.070976, 32.159840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.595245, 34.651054, 31.971964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920582, 34.819191, 32.132858>,  <31.115784, 34.920071, 32.229393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920582, 34.819191, 32.132858>,  <30.595245, 34.651054, 31.971964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.920582, 34.819191, 32.132858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001121, 0.692509, -0.721408,
		-0.581786, 0.586300, 0.563717,
		0.813341, 0.420337, 0.402234,
		31.164585, 34.945293, 32.253529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.457552, 35.328350, 31.861942>,  <30.595245, 34.651054, 31.971964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.457552, 35.328350, 31.861942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850142, 35.323906, 31.938454>,  <31.085695, 35.321239, 31.984362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850142, 35.323906, 31.938454>,  <30.457552, 35.328350, 31.861942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850142, 35.323906, 31.938454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114908, 0.833005, -0.541202,
		-0.153322, 0.553154, 0.818848,
		0.981473, -0.011115, 0.191280,
		31.144583, 35.320572, 31.995838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625078, 35.960030, 32.233501>,  <30.457552, 35.328350, 31.861942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625078, 35.960030, 32.233501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.954031, 35.809742, 32.062611>,  <31.151403, 35.719570, 31.960075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.954031, 35.809742, 32.062611>,  <30.625078, 35.960030, 32.233501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954031, 35.809742, 32.062611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068205, 0.810619, -0.581589,
		0.564830, 0.449150, 0.692265,
		0.822384, -0.375715, -0.427228,
		31.200747, 35.697029, 31.934443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092501, 36.528400, 32.287987>,  <30.625078, 35.960030, 32.233501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092501, 36.528400, 32.287987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.205626, 36.289902, 31.987452>,  <31.273500, 36.146801, 31.807131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.205626, 36.289902, 31.987452>,  <31.092501, 36.528400, 32.287987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.205626, 36.289902, 31.987452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062652, 0.770157, -0.634770,
		0.957127, 0.226593, 0.180454,
		0.282812, -0.596249, -0.751335,
		31.290468, 36.111027, 31.762051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585861, 36.842926, 31.836859>,  <31.092501, 36.528400, 32.287987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585861, 36.842926, 31.836859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450119, 36.577648, 31.570021>,  <31.368673, 36.418480, 31.409918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450119, 36.577648, 31.570021>,  <31.585861, 36.842926, 31.836859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450119, 36.577648, 31.570021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062223, 0.691797, -0.719406,
		0.938599, -0.285642, -0.193498,
		-0.339354, -0.663193, -0.667093,
		31.348312, 36.378689, 31.369892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975697, 37.092598, 31.199579>,  <31.585861, 36.842926, 31.836859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975697, 37.092598, 31.199579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.674168, 36.856915, 31.083248>,  <31.493250, 36.715504, 31.013449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.674168, 36.856915, 31.083248>,  <31.975697, 37.092598, 31.199579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674168, 36.856915, 31.083248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117216, 0.556095, -0.822811,
		0.646539, -0.586163, -0.488262,
		-0.753822, -0.589212, -0.290830,
		31.448021, 36.680153, 30.996000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153923, 36.938328, 30.458076>,  <31.975697, 37.092598, 31.199579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153923, 36.938328, 30.458076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767563, 36.852158, 30.515516>,  <31.535746, 36.800457, 30.549980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767563, 36.852158, 30.515516>,  <32.153923, 36.938328, 30.458076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767563, 36.852158, 30.515516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227502, 0.441487, -0.867947,
		0.123577, -0.871024, -0.475443,
		-0.965905, -0.215422, 0.143602,
		31.477791, 36.787529, 30.558598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927099, 36.534485, 29.881336>,  <32.153923, 36.938328, 30.458076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927099, 36.534485, 29.881336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605453, 36.726322, 30.021847>,  <31.412466, 36.841423, 30.106153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605453, 36.726322, 30.021847>,  <31.927099, 36.534485, 29.881336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605453, 36.726322, 30.021847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051086, 0.532971, -0.844590,
		-0.592278, -0.697091, -0.404068,
		-0.804113, 0.479590, 0.351278,
		31.364220, 36.870197, 30.127230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453817, 36.590790, 29.319145>,  <31.927099, 36.534485, 29.881336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453817, 36.590790, 29.319145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.326155, 36.852764, 29.593138>,  <31.249557, 37.009949, 29.757532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.326155, 36.852764, 29.593138>,  <31.453817, 36.590790, 29.319145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.326155, 36.852764, 29.593138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172918, 0.670402, -0.721568,
		-0.931793, -0.348738, -0.100713,
		-0.319157, 0.654937, 0.684979,
		31.230408, 37.049244, 29.798632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807686, 36.808716, 29.188332>,  <31.453817, 36.590790, 29.319145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807686, 36.808716, 29.188332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.945995, 37.106049, 29.417381>,  <31.028980, 37.284451, 29.554811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.945995, 37.106049, 29.417381>,  <30.807686, 36.808716, 29.188332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.945995, 37.106049, 29.417381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233417, 0.659221, -0.714804,
		-0.908823, 0.113499, 0.401446,
		0.345771, 0.743334, 0.572622,
		31.049726, 37.329048, 29.589169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.305464, 37.313721, 29.046782>,  <30.807686, 36.808716, 29.188332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.305464, 37.313721, 29.046782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.607916, 37.517887, 29.210606>,  <30.789387, 37.640388, 29.308901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.607916, 37.517887, 29.210606>,  <30.305464, 37.313721, 29.046782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.607916, 37.517887, 29.210606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173397, 0.759732, -0.626690,
		-0.631029, 0.402843, 0.662962,
		0.756132, 0.510416, 0.409561,
		30.834755, 37.671013, 29.333473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053604, 38.050369, 29.131657>,  <30.305464, 37.313721, 29.046782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053604, 38.050369, 29.131657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453564, 38.050304, 29.137384>,  <30.693539, 38.050266, 29.140821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453564, 38.050304, 29.137384>,  <30.053604, 38.050369, 29.131657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453564, 38.050304, 29.137384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005064, 0.939415, -0.342745,
		-0.013395, 0.342782, 0.939319,
		0.999898, -0.000165, 0.014320,
		30.753532, 38.050255, 29.141680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.323078, 38.779011, 29.286709>,  <30.053604, 38.050369, 29.131657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.323078, 38.779011, 29.286709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.634827, 38.606007, 29.105373>,  <30.821875, 38.502205, 28.996572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.634827, 38.606007, 29.105373>,  <30.323078, 38.779011, 29.286709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.634827, 38.606007, 29.105373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237954, 0.873638, -0.424423,
		0.579621, 0.222910, 0.783805,
		0.779370, -0.432514, -0.453337,
		30.868637, 38.476254, 28.969372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.910160, 39.201241, 29.391464>,  <30.323078, 38.779011, 29.286709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.910160, 39.201241, 29.391464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.034992, 38.999352, 29.069506>,  <31.109892, 38.878220, 28.876329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.034992, 38.999352, 29.069506>,  <30.910160, 39.201241, 29.391464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.034992, 38.999352, 29.069506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337507, 0.850848, -0.402675,
		0.888085, -0.145992, 0.435880,
		0.312080, -0.504722, -0.804899,
		31.128616, 38.847935, 28.828035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469261, 39.649773, 29.177694>,  <30.910160, 39.201241, 29.391464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469261, 39.649773, 29.177694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358767, 39.401249, 28.884392>,  <31.292469, 39.252132, 28.708410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358767, 39.401249, 28.884392>,  <31.469261, 39.649773, 29.177694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358767, 39.401249, 28.884392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071659, 0.747505, -0.660380,
		0.958415, -0.234965, -0.161965,
		-0.276236, -0.621311, -0.733257,
		31.275896, 39.214855, 28.664415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958551, 39.741734, 28.640408>,  <31.469261, 39.649773, 29.177694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958551, 39.741734, 28.640408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633459, 39.583126, 28.469646>,  <31.438404, 39.487961, 28.367189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633459, 39.583126, 28.469646>,  <31.958551, 39.741734, 28.640408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633459, 39.583126, 28.469646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068739, 0.662328, -0.746054,
		0.578573, -0.635685, -0.511037,
		-0.812729, -0.396518, -0.426901,
		31.389641, 39.464172, 28.341576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118835, 39.655006, 27.916649>,  <31.958551, 39.741734, 28.640408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118835, 39.655006, 27.916649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719046, 39.663853, 27.926153>,  <31.479172, 39.669163, 27.931856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719046, 39.663853, 27.926153>,  <32.118835, 39.655006, 27.916649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719046, 39.663853, 27.926153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001802, 0.693048, -0.720889,
		-0.032412, -0.720552, -0.692643,
		-0.999473, 0.022118, 0.023762,
		31.419203, 39.670486, 27.933281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948097, 39.557091, 27.220228>,  <32.118835, 39.655006, 27.916649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948097, 39.557091, 27.220228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623652, 39.710907, 27.396513>,  <31.428984, 39.803196, 27.502283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623652, 39.710907, 27.396513>,  <31.948097, 39.557091, 27.220228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623652, 39.710907, 27.396513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105695, 0.644723, -0.757074,
		-0.575259, -0.660654, -0.482300,
		-0.811114, 0.384537, 0.440711,
		31.380318, 39.826267, 27.528727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514811, 39.526241, 26.727924>,  <31.948097, 39.557091, 27.220228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514811, 39.526241, 26.727924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358406, 39.780319, 26.994349>,  <31.264563, 39.932766, 27.154203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358406, 39.780319, 26.994349>,  <31.514811, 39.526241, 26.727924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358406, 39.780319, 26.994349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147167, 0.757511, -0.636017,
		-0.908544, -0.150667, -0.389675,
		-0.391010, 0.635197, 0.666059,
		31.241102, 39.970879, 27.194166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.074293, 39.981377, 26.304974>,  <31.514811, 39.526241, 26.727924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.074293, 39.981377, 26.304974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.130621, 40.195141, 26.638338>,  <31.164417, 40.323399, 26.838356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.130621, 40.195141, 26.638338>,  <31.074293, 39.981377, 26.304974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.130621, 40.195141, 26.638338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150231, 0.820518, -0.551526,
		-0.978571, 0.202869, 0.035259,
		0.140818, 0.534411, 0.833412,
		31.172867, 40.355465, 26.888361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590227, 40.604027, 26.281195>,  <31.074293, 39.981377, 26.304974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590227, 40.604027, 26.281195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.893396, 40.688946, 26.527929>,  <31.075298, 40.739899, 26.675970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.893396, 40.688946, 26.527929>,  <30.590227, 40.604027, 26.281195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893396, 40.688946, 26.527929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122522, 0.882411, -0.454247,
		-0.640737, 0.419859, 0.642787,
		0.757921, 0.212297, 0.616835,
		31.120773, 40.752636, 26.712980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561855, 41.265491, 26.415941>,  <30.590227, 40.604027, 26.281195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.561855, 41.265491, 26.415941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.943075, 41.219471, 26.527987>,  <31.171806, 41.191860, 26.595213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.943075, 41.219471, 26.527987>,  <30.561855, 41.265491, 26.415941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.943075, 41.219471, 26.527987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234869, 0.864724, -0.443947,
		-0.191144, 0.488892, 0.851145,
		0.953048, -0.115049, 0.280112,
		31.228991, 41.184956, 26.612020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782505, 41.840466, 26.643301>,  <30.561855, 41.265491, 26.415941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782505, 41.840466, 26.643301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.133505, 41.667812, 26.559692>,  <31.344105, 41.564220, 26.509527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.133505, 41.667812, 26.559692>,  <30.782505, 41.840466, 26.643301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.133505, 41.667812, 26.559692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362917, 0.882569, -0.298938,
		0.313506, 0.186460, 0.931100,
		0.877500, -0.431630, -0.209021,
		31.396755, 41.538322, 26.496986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.332119, 42.253277, 27.120701>,  <30.782505, 41.840466, 26.643301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.332119, 42.253277, 27.120701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503809, 42.091084, 26.797876>,  <31.606823, 41.993767, 26.604181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503809, 42.091084, 26.797876>,  <31.332119, 42.253277, 27.120701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.503809, 42.091084, 26.797876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530491, 0.836369, -0.138078,
		0.730989, -0.368872, 0.574098,
		0.429225, -0.405487, -0.807060,
		31.632576, 41.969437, 26.555758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052513, 42.342636, 27.288960>,  <31.332119, 42.253277, 27.120701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052513, 42.342636, 27.288960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075241, 42.295486, 26.892399>,  <32.088879, 42.267197, 26.654463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075241, 42.295486, 26.892399>,  <32.052513, 42.342636, 27.288960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075241, 42.295486, 26.892399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556280, 0.828322, -0.066601,
		0.829050, -0.547712, 0.112635,
		0.056820, -0.117873, -0.991402,
		32.092289, 42.260124, 26.594978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729805, 42.583691, 26.967142>,  <32.052513, 42.342636, 27.288960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729805, 42.583691, 26.967142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479088, 42.584282, 26.655468>,  <32.328659, 42.584637, 26.468464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479088, 42.584282, 26.655468>,  <32.729805, 42.583691, 26.967142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479088, 42.584282, 26.655468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290598, 0.928294, -0.231999,
		0.722970, -0.371844, -0.582276,
		-0.626791, 0.001480, -0.779186,
		32.291050, 42.584724, 26.421713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124557, 42.633068, 26.344486>,  <32.729805, 42.583691, 26.967142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124557, 42.633068, 26.344486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762379, 42.768852, 26.242552>,  <32.545071, 42.850323, 26.181391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762379, 42.768852, 26.242552>,  <33.124557, 42.633068, 26.344486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762379, 42.768852, 26.242552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405038, 0.870519, -0.279536,
		0.126947, -0.356322, -0.925699,
		-0.905444, 0.339457, -0.254834,
		32.490746, 42.870689, 26.166101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265373, 43.081635, 25.720194>,  <33.124557, 42.633068, 26.344486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265373, 43.081635, 25.720194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912388, 43.193745, 25.871298>,  <32.700596, 43.261009, 25.961960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912388, 43.193745, 25.871298>,  <33.265373, 43.081635, 25.720194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912388, 43.193745, 25.871298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141172, 0.923886, -0.355675,
		-0.448692, -0.260542, -0.854865,
		-0.882466, 0.280272, 0.377759,
		32.647648, 43.277824, 25.984625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985558, 43.461578, 25.130882>,  <33.265373, 43.081635, 25.720194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985558, 43.461578, 25.130882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815224, 43.580532, 25.472694>,  <32.713024, 43.651905, 25.677782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815224, 43.580532, 25.472694>,  <32.985558, 43.461578, 25.130882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815224, 43.580532, 25.472694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255178, 0.945577, -0.201910,
		-0.868070, 0.132076, -0.478550,
		-0.425839, 0.297388, 0.854530,
		32.687473, 43.669750, 25.729053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596146, 44.015942, 24.931850>,  <32.985558, 43.461578, 25.130882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596146, 44.015942, 24.931850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630623, 44.047630, 25.329100>,  <32.651310, 44.066643, 25.567450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630623, 44.047630, 25.329100>,  <32.596146, 44.015942, 24.931850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630623, 44.047630, 25.329100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354872, 0.929011, -0.104903,
		-0.930933, 0.361474, 0.051957,
		0.086188, 0.079220, 0.993124,
		32.656479, 44.071396, 25.627037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309639, 44.605499, 25.100506>,  <32.596146, 44.015942, 24.931850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309639, 44.605499, 25.100506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580688, 44.525845, 25.383678>,  <32.743320, 44.478050, 25.553581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580688, 44.525845, 25.383678>,  <32.309639, 44.605499, 25.100506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580688, 44.525845, 25.383678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165690, 0.979230, 0.116857,
		-0.716496, 0.038111, 0.696549,
		0.677628, -0.199139, 0.707929,
		32.783978, 44.466103, 25.596058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940170, 44.982296, 25.043695>,  <32.309639, 44.605499, 25.100506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940170, 44.982296, 25.043695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890705, 45.350430, 25.192127>,  <32.861027, 45.571308, 25.281185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890705, 45.350430, 25.192127>,  <32.940170, 44.982296, 25.043695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890705, 45.350430, 25.192127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031196, 0.370158, -0.928445,
		-0.991834, -0.126389, -0.017064,
		-0.123662, 0.920331, 0.371078,
		32.853607, 45.626530, 25.303452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590408, 45.228687, 24.545458>,  <32.940170, 44.982296, 25.043695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590408, 45.228687, 24.545458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717178, 45.547039, 24.751812>,  <32.793240, 45.738049, 24.875624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717178, 45.547039, 24.751812>,  <32.590408, 45.228687, 24.545458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717178, 45.547039, 24.751812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050984, 0.528842, -0.847188,
		-0.947080, 0.294796, 0.127026,
		0.316924, 0.795878, 0.515885,
		32.812256, 45.785801, 24.906578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128273, 45.778622, 24.420742>,  <32.590408, 45.228687, 24.545458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128273, 45.778622, 24.420742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479465, 45.934116, 24.532473>,  <32.690182, 46.027412, 24.599512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479465, 45.934116, 24.532473>,  <32.128273, 45.778622, 24.420742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479465, 45.934116, 24.532473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051505, 0.503424, -0.862503,
		-0.475911, 0.771651, 0.421976,
		0.877984, 0.388741, 0.279329,
		32.742859, 46.050739, 24.616272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100307, 46.438271, 24.182957>,  <32.128273, 45.778622, 24.420742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100307, 46.438271, 24.182957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488476, 46.345615, 24.210159>,  <32.721378, 46.290024, 24.226480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488476, 46.345615, 24.210159>,  <32.100307, 46.438271, 24.182957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488476, 46.345615, 24.210159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170854, 0.459953, -0.871351,
		0.170556, 0.857198, 0.485925,
		0.970422, -0.231636, 0.068007,
		32.779602, 46.276123, 24.230562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419643, 46.863564, 23.784725>,  <32.100307, 46.438271, 24.182957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419643, 46.863564, 23.784725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750927, 46.641342, 23.814207>,  <32.949696, 46.508011, 23.831896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750927, 46.641342, 23.814207>,  <32.419643, 46.863564, 23.784725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750927, 46.641342, 23.814207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258956, 0.262738, -0.929468,
		0.497004, 0.788879, 0.361466,
		0.828208, -0.555553, 0.073703,
		32.999390, 46.474678, 23.836317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488667, 47.570461, 24.122183>,  <32.419643, 46.863564, 23.784725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488667, 47.570461, 24.122183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779087, 47.412815, 23.896788>,  <32.953339, 47.318226, 23.761551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779087, 47.412815, 23.896788>,  <32.488667, 47.570461, 24.122183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779087, 47.412815, 23.896788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639731, 0.687651, 0.343337,
		0.252168, -0.609762, 0.751400,
		0.726055, -0.394115, -0.563487,
		32.996902, 47.294582, 23.727741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131985, 47.361965, 24.525871>,  <32.488667, 47.570461, 24.122183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131985, 47.361965, 24.525871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249969, 47.470684, 24.159456>,  <33.320763, 47.535915, 23.939608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249969, 47.470684, 24.159456>,  <33.131985, 47.361965, 24.525871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249969, 47.470684, 24.159456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666966, 0.627929, 0.401075,
		0.684216, -0.729268, 0.003938,
		0.294964, 0.271796, -0.916036,
		33.338459, 47.552223, 23.884645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950932, 47.175896, 24.332737>,  <33.131985, 47.361965, 24.525871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950932, 47.175896, 24.332737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771519, 47.508125, 24.200699>,  <33.663872, 47.707462, 24.121475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771519, 47.508125, 24.200699>,  <33.950932, 47.175896, 24.332737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771519, 47.508125, 24.200699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743823, 0.551657, 0.377362,
		0.495527, -0.076273, -0.865237,
		-0.448531, 0.830576, -0.330095,
		33.636959, 47.757298, 24.101671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781281, 46.719696, 24.995138>,  <33.950932, 47.175896, 24.332737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781281, 46.719696, 24.995138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454384, 46.530590, 24.863312>,  <33.258247, 46.417126, 24.784216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454384, 46.530590, 24.863312>,  <33.781281, 46.719696, 24.995138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454384, 46.530590, 24.863312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241256, -0.238686, 0.940651,
		-0.523370, 0.848246, 0.081006,
		-0.817239, -0.472765, -0.329566,
		33.209213, 46.388760, 24.764442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304749, 46.987339, 25.391258>,  <33.781281, 46.719696, 24.995138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304749, 46.987339, 25.391258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.176308, 46.629292, 25.267540>,  <33.099243, 46.414463, 25.193310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.176308, 46.629292, 25.267540>,  <33.304749, 46.987339, 25.391258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176308, 46.629292, 25.267540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325321, -0.202464, 0.923675,
		-0.889416, 0.397211, -0.226189,
		-0.321099, -0.895115, -0.309296,
		33.079979, 46.360756, 25.174751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692356, 46.865082, 25.727739>,  <33.304749, 46.987339, 25.391258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692356, 46.865082, 25.727739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758625, 46.489155, 25.608210>,  <32.798386, 46.263599, 25.536491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758625, 46.489155, 25.608210>,  <32.692356, 46.865082, 25.727739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758625, 46.489155, 25.608210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194146, -0.328164, 0.924454,
		-0.966882, -0.095137, -0.236828,
		0.165668, -0.939818, -0.298825,
		32.808327, 46.207211, 25.518562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227558, 46.533150, 26.133484>,  <32.692356, 46.865082, 25.727739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227558, 46.533150, 26.133484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478374, 46.247147, 26.009817>,  <32.628864, 46.075542, 25.935617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478374, 46.247147, 26.009817>,  <32.227558, 46.533150, 26.133484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478374, 46.247147, 26.009817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078164, -0.337130, 0.938208,
		-0.775059, -0.612456, -0.155504,
		0.627036, -0.715012, -0.309167,
		32.666485, 46.032642, 25.917067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967808, 45.968349, 26.391993>,  <32.227558, 46.533150, 26.133484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.967808, 45.968349, 26.391993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360146, 45.924789, 26.327393>,  <32.595547, 45.898655, 26.288633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360146, 45.924789, 26.327393>,  <31.967808, 45.968349, 26.391993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360146, 45.924789, 26.327393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121942, -0.303239, 0.945080,
		-0.151890, -0.946672, -0.284151,
		0.980846, -0.108899, -0.161498,
		32.654400, 45.892120, 26.278942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150631, 45.323742, 26.743608>,  <31.967808, 45.968349, 26.391993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150631, 45.323742, 26.743608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498062, 45.510250, 26.676485>,  <32.706520, 45.622154, 26.636211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498062, 45.510250, 26.676485>,  <32.150631, 45.323742, 26.743608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498062, 45.510250, 26.676485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339162, -0.312454, 0.887323,
		0.361303, -0.827624, -0.429533,
		0.868578, 0.466274, -0.167808,
		32.758636, 45.650131, 26.626143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553631, 44.913963, 27.090452>,  <32.150631, 45.323742, 26.743608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553631, 44.913963, 27.090452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815144, 45.207794, 27.017824>,  <32.972050, 45.384094, 26.974247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815144, 45.207794, 27.017824>,  <32.553631, 44.913963, 27.090452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815144, 45.207794, 27.017824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527187, -0.270055, 0.805695,
		0.542812, -0.622468, -0.563816,
		0.653781, 0.734577, -0.181568,
		33.011276, 45.428169, 26.963354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185299, 44.644943, 27.032270>,  <32.553631, 44.913963, 27.090452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185299, 44.644943, 27.032270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269733, 45.017941, 27.149504>,  <33.320393, 45.241737, 27.219843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269733, 45.017941, 27.149504>,  <33.185299, 44.644943, 27.032270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269733, 45.017941, 27.149504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501505, -0.360686, 0.786384,
		0.839009, -0.019012, -0.543786,
		0.211087, 0.932494, 0.293084,
		33.333061, 45.297688, 27.237429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779793, 44.587715, 27.225735>,  <33.185299, 44.644943, 27.032270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779793, 44.587715, 27.225735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663155, 44.922222, 27.411480>,  <33.593174, 45.122925, 27.522926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663155, 44.922222, 27.411480>,  <33.779793, 44.587715, 27.225735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663155, 44.922222, 27.411480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491029, -0.285751, 0.822944,
		0.820892, 0.467981, -0.327308,
		-0.291594, 0.836265, 0.464363,
		33.575676, 45.173103, 27.550789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262447, 44.731907, 27.660435>,  <33.779793, 44.587715, 27.225735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262447, 44.731907, 27.660435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972069, 44.963413, 27.809046>,  <33.797840, 45.102318, 27.898212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972069, 44.963413, 27.809046>,  <34.262447, 44.731907, 27.660435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972069, 44.963413, 27.809046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371809, -0.124189, 0.919965,
		0.578583, 0.805983, -0.125035,
		-0.725948, 0.578765, 0.371525,
		33.754284, 45.137043, 27.920504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638916, 45.137711, 28.044949>,  <34.262447, 44.731907, 27.660435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638916, 45.137711, 28.044949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262711, 45.129185, 28.180586>,  <34.036987, 45.124069, 28.261969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262711, 45.129185, 28.180586>,  <34.638916, 45.137711, 28.044949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262711, 45.129185, 28.180586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337006, -0.185416, 0.923065,
		0.043196, 0.982429, 0.181570,
		-0.940511, -0.021317, 0.339093,
		33.980556, 45.122791, 28.282314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670322, 45.410122, 28.623127>,  <34.638916, 45.137711, 28.044949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670322, 45.410122, 28.623127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331879, 45.197762, 28.642042>,  <34.128811, 45.070347, 28.653391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331879, 45.197762, 28.642042>,  <34.670322, 45.410122, 28.623127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331879, 45.197762, 28.642042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211610, -0.253170, 0.943995,
		-0.489198, 0.808732, 0.326554,
		-0.846113, -0.530902, 0.047286,
		34.078045, 45.038490, 28.656227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540401, 45.495834, 29.346382>,  <34.670322, 45.410122, 28.623127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540401, 45.495834, 29.346382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314354, 45.191761, 29.218157>,  <34.178726, 45.009315, 29.141222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314354, 45.191761, 29.218157>,  <34.540401, 45.495834, 29.346382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314354, 45.191761, 29.218157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239727, -0.523099, 0.817863,
		-0.789410, 0.385346, 0.477851,
		-0.565123, -0.760182, -0.320561,
		34.144817, 44.963707, 29.121988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102615, 45.211212, 29.972471>,  <34.540401, 45.495834, 29.346382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102615, 45.211212, 29.972471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136112, 44.932903, 29.687126>,  <34.156208, 44.765919, 29.515919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136112, 44.932903, 29.687126>,  <34.102615, 45.211212, 29.972471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136112, 44.932903, 29.687126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033683, -0.717445, 0.695800,
		-0.995918, -0.034238, -0.083515,
		0.083741, -0.695774, -0.713363,
		34.161236, 44.724171, 29.473118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535614, 44.764122, 29.999067>,  <34.102615, 45.211212, 29.972471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535614, 44.764122, 29.999067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799911, 44.533741, 29.806524>,  <33.958488, 44.395512, 29.690998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799911, 44.533741, 29.806524>,  <33.535614, 44.764122, 29.999067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799911, 44.533741, 29.806524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097791, -0.701867, 0.705563,
		-0.744219, -0.419120, -0.520074,
		0.660739, -0.575952, -0.481356,
		33.998135, 44.360954, 29.662117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266182, 44.079929, 29.799688>,  <33.535614, 44.764122, 29.999067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266182, 44.079929, 29.799688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660202, 44.053860, 29.863464>,  <33.896614, 44.038219, 29.901730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660202, 44.053860, 29.863464>,  <33.266182, 44.079929, 29.799688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660202, 44.053860, 29.863464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152179, -0.762895, 0.628357,
		0.080688, -0.643229, -0.761410,
		0.985054, -0.065170, 0.159442,
		33.955719, 44.034309, 29.911297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405277, 43.375900, 29.676409>,  <33.266182, 44.079929, 29.799688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405277, 43.375900, 29.676409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672073, 43.548584, 29.919308>,  <33.832153, 43.652195, 30.065046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672073, 43.548584, 29.919308>,  <33.405277, 43.375900, 29.676409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672073, 43.548584, 29.919308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155035, -0.716768, 0.679858,
		0.728755, -0.547606, -0.411149,
		0.666993, 0.431708, 0.607247,
		33.872169, 43.678097, 30.101482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605267, 42.823635, 29.911343>,  <33.405277, 43.375900, 29.676409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605267, 42.823635, 29.911343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714420, 43.124763, 30.150938>,  <33.779915, 43.305443, 30.294695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714420, 43.124763, 30.150938>,  <33.605267, 42.823635, 29.911343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714420, 43.124763, 30.150938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114942, -0.592648, 0.797218,
		0.955154, -0.286402, -0.075196,
		0.272889, 0.752823, 0.598990,
		33.796288, 43.350609, 30.330635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079758, 42.527164, 30.344938>,  <33.605267, 42.823635, 29.911343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079758, 42.527164, 30.344938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951824, 42.857517, 30.530682>,  <33.875065, 43.055729, 30.642128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951824, 42.857517, 30.530682>,  <34.079758, 42.527164, 30.344938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951824, 42.857517, 30.530682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257690, -0.547449, 0.796176,
		0.911758, 0.134983, 0.387914,
		-0.319833, 0.825881, 0.464357,
		33.855873, 43.105282, 30.669989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335091, 42.465649, 30.983301>,  <34.079758, 42.527164, 30.344938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335091, 42.465649, 30.983301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009922, 42.697292, 31.007961>,  <33.814823, 42.836277, 31.022757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009922, 42.697292, 31.007961>,  <34.335091, 42.465649, 30.983301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009922, 42.697292, 31.007961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393921, -0.624736, 0.674189,
		0.428941, 0.523775, 0.735981,
		-0.812918, 0.579106, 0.061649,
		33.766048, 42.871025, 31.026457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306751, 42.634132, 31.783363>,  <34.335091, 42.465649, 30.983301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306751, 42.634132, 31.783363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933521, 42.740135, 31.686094>,  <33.709583, 42.803738, 31.627733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933521, 42.740135, 31.686094>,  <34.306751, 42.634132, 31.783363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933521, 42.740135, 31.686094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330900, -0.367544, 0.869147,
		0.140954, 0.891449, 0.430639,
		-0.933079, 0.265008, -0.243174,
		33.653599, 42.819637, 31.613142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955128, 42.888401, 32.454586>,  <34.306751, 42.634132, 31.783363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955128, 42.888401, 32.454586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652199, 42.815834, 32.203651>,  <33.470440, 42.772293, 32.053093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652199, 42.815834, 32.203651>,  <33.955128, 42.888401, 32.454586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652199, 42.815834, 32.203651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490432, -0.476311, 0.729797,
		-0.431201, 0.860358, 0.271751,
		-0.757325, -0.181414, -0.627334,
		33.425003, 42.761410, 32.015450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417126, 43.016399, 32.788517>,  <33.955128, 42.888401, 32.454586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417126, 43.016399, 32.788517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.248440, 42.766899, 32.525280>,  <33.147228, 42.617199, 32.367336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.248440, 42.766899, 32.525280>,  <33.417126, 43.016399, 32.788517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248440, 42.766899, 32.525280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497178, -0.447887, 0.743109,
		-0.758269, 0.640570, -0.121236,
		-0.421713, -0.623753, -0.658096,
		33.121925, 42.579773, 32.327850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672714, 43.076401, 32.869083>,  <33.417126, 43.016399, 32.788517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672714, 43.076401, 32.869083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788578, 42.716396, 32.738800>,  <32.858097, 42.500393, 32.660629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788578, 42.716396, 32.738800>,  <32.672714, 43.076401, 32.869083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788578, 42.716396, 32.738800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420159, -0.425317, 0.801606,
		-0.859979, -0.095345, -0.501343,
		0.289659, -0.900008, -0.325704,
		32.875477, 42.446392, 32.641090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247475, 42.705925, 33.194359>,  <32.672714, 43.076401, 32.869083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247475, 42.705925, 33.194359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439137, 42.407738, 33.009022>,  <32.554134, 42.228825, 32.897820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439137, 42.407738, 33.009022>,  <32.247475, 42.705925, 33.194359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439137, 42.407738, 33.009022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241435, -0.619467, 0.746974,
		-0.843873, -0.246046, -0.476801,
		0.479153, -0.745468, -0.463347,
		32.582882, 42.184097, 32.870018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797873, 42.139889, 32.995972>,  <32.247475, 42.705925, 33.194359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797873, 42.139889, 32.995972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167736, 41.990040, 33.023289>,  <32.389656, 41.900131, 33.039680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167736, 41.990040, 33.023289>,  <31.797873, 42.139889, 32.995972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167736, 41.990040, 33.023289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324290, -0.680681, 0.656893,
		-0.199599, -0.629550, -0.750884,
		0.924660, -0.374620, 0.068293,
		32.445133, 41.877655, 33.043777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732302, 41.373558, 33.060791>,  <31.797873, 42.139889, 32.995972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732302, 41.373558, 33.060791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107101, 41.421413, 33.192074>,  <32.331982, 41.450127, 33.270844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107101, 41.421413, 33.192074>,  <31.732302, 41.373558, 33.060791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107101, 41.421413, 33.192074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175716, -0.650608, 0.738805,
		0.301924, -0.749931, -0.588597,
		0.936998, 0.119637, 0.328210,
		32.388203, 41.457306, 33.290535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020363, 40.698727, 33.149834>,  <31.732302, 41.373558, 33.060791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020363, 40.698727, 33.149834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224911, 40.939976, 33.394699>,  <32.347641, 41.084724, 33.541618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224911, 40.939976, 33.394699>,  <32.020363, 40.698727, 33.149834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224911, 40.939976, 33.394699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130975, -0.649325, 0.749148,
		0.849319, -0.463272, -0.253053,
		0.511373, 0.603122, 0.612162,
		32.378323, 41.120911, 33.578346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499313, 40.275085, 33.495804>,  <32.020363, 40.698727, 33.149834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499313, 40.275085, 33.495804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455105, 40.595078, 33.731705>,  <32.428581, 40.787075, 33.873245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455105, 40.595078, 33.731705>,  <32.499313, 40.275085, 33.495804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455105, 40.595078, 33.731705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182458, -0.599638, 0.779194,
		0.976982, -0.021488, 0.212236,
		-0.110521, 0.799983, 0.589757,
		32.421947, 40.835072, 33.908630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958450, 40.099674, 34.017117>,  <32.499313, 40.275085, 33.495804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958450, 40.099674, 34.017117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722195, 40.384880, 34.168243>,  <32.580441, 40.556004, 34.258919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722195, 40.384880, 34.168243>,  <32.958450, 40.099674, 34.017117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722195, 40.384880, 34.168243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012794, -0.459882, 0.887888,
		0.806833, 0.529257, 0.262503,
		-0.590641, 0.713019, 0.377819,
		32.545002, 40.598785, 34.281590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348152, 40.301083, 34.639175>,  <32.958450, 40.099674, 34.017117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348152, 40.301083, 34.639175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966831, 40.420261, 34.658966>,  <32.738041, 40.491768, 34.670841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966831, 40.420261, 34.658966>,  <33.348152, 40.301083, 34.639175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966831, 40.420261, 34.658966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063598, -0.358176, 0.931485,
		0.295254, 0.884838, 0.360398,
		-0.953300, 0.297946, 0.049479,
		32.680840, 40.509644, 34.673809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180424, 40.538670, 35.306568>,  <33.348152, 40.301083, 34.639175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180424, 40.538670, 35.306568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833725, 40.412453, 35.152069>,  <32.625706, 40.336723, 35.059368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833725, 40.412453, 35.152069>,  <33.180424, 40.538670, 35.306568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833725, 40.412453, 35.152069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240073, -0.414855, 0.877645,
		-0.437171, 0.853421, 0.283820,
		-0.866745, -0.315544, -0.386246,
		32.573700, 40.317791, 35.036194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674477, 40.694336, 35.923332>,  <33.180424, 40.538670, 35.306568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674477, 40.694336, 35.923332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502567, 40.431473, 35.675644>,  <32.399422, 40.273754, 35.527031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502567, 40.431473, 35.675644>,  <32.674477, 40.694336, 35.923332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502567, 40.431473, 35.675644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399184, -0.476845, 0.783116,
		-0.809904, 0.583747, -0.057391,
		-0.429775, -0.657159, -0.619222,
		32.373634, 40.234325, 35.489876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125107, 40.350536, 36.357140>,  <32.674477, 40.694336, 35.923332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125107, 40.350536, 36.357140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188969, 40.099396, 36.052425>,  <32.227283, 39.948711, 35.869598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188969, 40.099396, 36.052425>,  <32.125107, 40.350536, 36.357140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188969, 40.099396, 36.052425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080330, -0.777384, 0.623876,
		-0.983900, -0.038408, -0.174545,
		0.159650, -0.627853, -0.761783,
		32.236862, 39.911041, 35.823891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710325, 39.783833, 36.544888>,  <32.125107, 40.350536, 36.357140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710325, 39.783833, 36.544888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949276, 39.629803, 36.263504>,  <32.092648, 39.537384, 36.094673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949276, 39.629803, 36.263504>,  <31.710325, 39.783833, 36.544888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949276, 39.629803, 36.263504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028219, -0.866542, 0.498307,
		-0.801464, -0.317528, -0.506786,
		0.597377, -0.385074, -0.703462,
		32.128490, 39.514278, 36.052464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433079, 39.121284, 36.348904>,  <31.710325, 39.783833, 36.544888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433079, 39.121284, 36.348904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806681, 39.091175, 36.209206>,  <32.030842, 39.073109, 36.125385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806681, 39.091175, 36.209206>,  <31.433079, 39.121284, 36.348904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806681, 39.091175, 36.209206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041893, -0.947736, 0.316294,
		-0.354801, -0.310050, -0.882035,
		0.934003, -0.075270, -0.349246,
		32.086880, 39.068596, 36.104431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444878, 38.537426, 36.003624>,  <31.433079, 39.121284, 36.348904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444878, 38.537426, 36.003624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837292, 38.586948, 36.063274>,  <32.072739, 38.616661, 36.099064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837292, 38.586948, 36.063274>,  <31.444878, 38.537426, 36.003624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837292, 38.586948, 36.063274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084428, -0.965540, 0.246180,
		0.174469, -0.228921, -0.957683,
		0.981037, 0.123806, 0.149129,
		32.131603, 38.624092, 36.108013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760168, 38.033062, 35.472870>,  <31.444878, 38.537426, 36.003624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760168, 38.033062, 35.472870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026917, 38.098263, 35.763721>,  <32.186966, 38.137383, 35.938232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026917, 38.098263, 35.763721>,  <31.760168, 38.033062, 35.472870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026917, 38.098263, 35.763721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167310, -0.983621, 0.067058,
		0.726149, 0.076937, -0.683219,
		0.666869, 0.163003, 0.727128,
		32.226978, 38.147163, 35.981861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357872, 37.578915, 35.297901>,  <31.760168, 38.033062, 35.472870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.357872, 37.578915, 35.297901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375736, 37.690414, 35.681629>,  <32.386456, 37.757317, 35.911865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375736, 37.690414, 35.681629>,  <32.357872, 37.578915, 35.297901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375736, 37.690414, 35.681629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278808, -0.925604, 0.255976,
		0.959308, 0.256037, -0.119052,
		0.044656, 0.278753, 0.959324,
		32.389133, 37.774040, 35.969425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959587, 37.155289, 35.457283>,  <32.357872, 37.578915, 35.297901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959587, 37.155289, 35.457283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770073, 37.259285, 35.793839>,  <32.656364, 37.321682, 35.995770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770073, 37.259285, 35.793839>,  <32.959587, 37.155289, 35.457283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770073, 37.259285, 35.793839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068517, -0.941647, 0.329553,
		0.877969, 0.213787, 0.428328,
		-0.473788, 0.259990, 0.841386,
		32.627937, 37.337280, 36.046253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413364, 36.990299, 36.099960>,  <32.959587, 37.155289, 35.457283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413364, 36.990299, 36.099960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023312, 37.010365, 36.186306>,  <32.789280, 37.022404, 36.238113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023312, 37.010365, 36.186306>,  <33.413364, 36.990299, 36.099960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023312, 37.010365, 36.186306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004618, -0.969231, 0.246108,
		0.221570, 0.240985, 0.944899,
		-0.975134, 0.050166, 0.215865,
		32.730770, 37.025414, 36.251064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766239, 37.669827, 36.236740>,  <33.413364, 36.990299, 36.099960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766239, 37.669827, 36.236740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064671, 37.544327, 36.471661>,  <34.243729, 37.469028, 36.612614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064671, 37.544327, 36.471661>,  <33.766239, 37.669827, 36.236740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064671, 37.544327, 36.471661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658994, 0.474220, -0.583817,
		-0.095341, 0.822605, 0.560563,
		0.746081, -0.313746, 0.587305,
		34.288494, 37.450203, 36.647854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146683, 38.332920, 36.614010>,  <33.766239, 37.669827, 36.236740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146683, 38.332920, 36.614010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403076, 38.026623, 36.592930>,  <34.556911, 37.842842, 36.580284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403076, 38.026623, 36.592930>,  <34.146683, 38.332920, 36.614010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403076, 38.026623, 36.592930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677016, 0.596385, -0.431246,
		0.361652, 0.240745, 0.900694,
		0.640981, -0.765746, -0.052695,
		34.595371, 37.796898, 36.577122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874199, 38.593910, 36.841251>,  <34.146683, 38.332920, 36.614010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874199, 38.593910, 36.841251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960548, 38.252213, 36.652077>,  <35.012360, 38.047195, 36.538570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960548, 38.252213, 36.652077>,  <34.874199, 38.593910, 36.841251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960548, 38.252213, 36.652077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694357, 0.474840, -0.540736,
		0.686489, -0.211657, 0.695654,
		0.215874, -0.854241, -0.472938,
		35.025311, 37.995941, 36.510197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647182, 38.444912, 36.969601>,  <34.874199, 38.593910, 36.841251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647182, 38.444912, 36.969601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523666, 38.252941, 36.641132>,  <35.449554, 38.137760, 36.444050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523666, 38.252941, 36.641132>,  <35.647182, 38.444912, 36.969601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523666, 38.252941, 36.641132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638698, 0.535113, -0.552918,
		0.704777, -0.695218, 0.141286,
		-0.308795, -0.479923, -0.821170,
		35.431026, 38.108963, 36.394783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269257, 38.219498, 36.630352>,  <35.647182, 38.444912, 36.969601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269257, 38.219498, 36.630352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977840, 38.214844, 36.356392>,  <35.802990, 38.212051, 36.192017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977840, 38.214844, 36.356392>,  <36.269257, 38.219498, 36.630352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977840, 38.214844, 36.356392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633583, 0.368612, -0.680219,
		0.260378, -0.929510, -0.261178,
		-0.728544, -0.011636, -0.684900,
		35.759277, 38.211353, 36.150921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651825, 37.928249, 35.996460>,  <36.269257, 38.219498, 36.630352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651825, 37.928249, 35.996460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312569, 38.099159, 35.871181>,  <36.109013, 38.201706, 35.796017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312569, 38.099159, 35.871181>,  <36.651825, 37.928249, 35.996460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312569, 38.099159, 35.871181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521346, 0.568203, -0.636666,
		-0.094074, -0.703265, -0.704675,
		-0.848144, 0.427273, -0.313192,
		36.058125, 38.227341, 35.777225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622238, 38.019985, 35.201763>,  <36.651825, 37.928249, 35.996460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622238, 38.019985, 35.201763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319447, 38.258904, 35.307770>,  <36.137772, 38.402252, 35.371372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319447, 38.258904, 35.307770>,  <36.622238, 38.019985, 35.201763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319447, 38.258904, 35.307770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341611, 0.707457, -0.618713,
		-0.557037, -0.377819, -0.739569,
		-0.756975, 0.597291, 0.265013,
		36.092354, 38.438091, 35.387272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414093, 38.338921, 34.646461>,  <36.622238, 38.019985, 35.201763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414093, 38.338921, 34.646461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252853, 38.590225, 34.912632>,  <36.156109, 38.741009, 35.072334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252853, 38.590225, 34.912632>,  <36.414093, 38.338921, 34.646461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252853, 38.590225, 34.912632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262274, 0.775928, -0.573714,
		-0.876768, -0.056740, -0.477555,
		-0.403101, 0.628265, 0.665427,
		36.131924, 38.778706, 35.112259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940990, 38.691875, 34.287857>,  <36.414093, 38.338921, 34.646461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940990, 38.691875, 34.287857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043739, 38.914200, 34.604111>,  <36.105389, 39.047592, 34.793861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043739, 38.914200, 34.604111>,  <35.940990, 38.691875, 34.287857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043739, 38.914200, 34.604111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043305, 0.810640, -0.583942,
		-0.965476, 0.184234, 0.184158,
		0.256868, 0.555807, 0.790631,
		36.120800, 39.080940, 34.841301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421413, 39.293499, 34.268097>,  <35.940990, 38.691875, 34.287857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421413, 39.293499, 34.268097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739864, 39.394539, 34.488049>,  <35.930935, 39.455162, 34.620022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739864, 39.394539, 34.488049>,  <35.421413, 39.293499, 34.268097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739864, 39.394539, 34.488049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092131, 0.847516, -0.522713,
		-0.598070, 0.466809, 0.651461,
		0.796131, 0.252600, 0.549881,
		35.978703, 39.470318, 34.653011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318836, 40.028091, 34.412453>,  <35.421413, 39.293499, 34.268097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318836, 40.028091, 34.412453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708534, 39.947887, 34.453716>,  <35.942352, 39.899765, 34.478474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708534, 39.947887, 34.453716>,  <35.318836, 40.028091, 34.412453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708534, 39.947887, 34.453716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224061, 0.809314, -0.542962,
		0.025382, 0.552092, 0.833397,
		0.974244, -0.200513, 0.103161,
		36.000809, 39.887733, 34.484665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565498, 40.650127, 34.477043>,  <35.318836, 40.028091, 34.412453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565498, 40.650127, 34.477043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896301, 40.445076, 34.384731>,  <36.094784, 40.322044, 34.329342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896301, 40.445076, 34.384731>,  <35.565498, 40.650127, 34.477043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896301, 40.445076, 34.384731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275835, 0.727707, -0.627979,
		0.489864, 0.455688, 0.743224,
		0.827011, -0.512632, -0.230783,
		36.144405, 40.291286, 34.315495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163311, 41.085236, 34.685280>,  <35.565498, 40.650127, 34.477043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163311, 41.085236, 34.685280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312187, 40.826603, 34.418926>,  <36.401512, 40.671425, 34.259113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312187, 40.826603, 34.418926>,  <36.163311, 41.085236, 34.685280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312187, 40.826603, 34.418926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394934, 0.759568, -0.516802,
		0.839941, -0.070632, 0.538061,
		0.372191, -0.646582, -0.665887,
		36.423843, 40.632629, 34.219158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795876, 41.404884, 34.471653>,  <36.163311, 41.085236, 34.685280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795876, 41.404884, 34.471653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704327, 41.138420, 34.187725>,  <36.649395, 40.978542, 34.017368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704327, 41.138420, 34.187725>,  <36.795876, 41.404884, 34.471653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704327, 41.138420, 34.187725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265735, 0.658725, -0.703894,
		0.936484, -0.349727, 0.026257,
		-0.228874, -0.666163, -0.709819,
		36.635666, 40.938572, 33.974781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329853, 41.400723, 33.906860>,  <36.795876, 41.404884, 34.471653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329853, 41.400723, 33.906860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.033459, 41.198032, 33.730602>,  <36.855621, 41.076420, 33.624847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.033459, 41.198032, 33.730602>,  <37.329853, 41.400723, 33.906860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033459, 41.198032, 33.730602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176156, 0.486535, -0.855718,
		0.648000, -0.711700, -0.271255,
		-0.740990, -0.506721, -0.440645,
		36.811161, 41.046017, 33.598408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606903, 41.092754, 33.313717>,  <37.329853, 41.400723, 33.906860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606903, 41.092754, 33.313717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213600, 41.148720, 33.267002>,  <36.977619, 41.182297, 33.238972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213600, 41.148720, 33.267002>,  <37.606903, 41.092754, 33.313717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213600, 41.148720, 33.267002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171958, 0.499943, -0.848815,
		-0.060371, -0.854682, -0.515629,
		-0.983252, 0.139911, -0.116787,
		36.918625, 41.190693, 33.231964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480061, 40.919277, 32.600227>,  <37.606903, 41.092754, 33.313717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480061, 40.919277, 32.600227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.157318, 41.135235, 32.696136>,  <36.963673, 41.264809, 32.753681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.157318, 41.135235, 32.696136>,  <37.480061, 40.919277, 32.600227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157318, 41.135235, 32.696136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028152, 0.440564, -0.897280,
		-0.590071, -0.717229, -0.370673,
		-0.806861, 0.539894, 0.239772,
		36.915260, 41.297203, 32.768066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870419, 40.785500, 32.030014>,  <37.480061, 40.919277, 32.600227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870419, 40.785500, 32.030014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827065, 41.136108, 32.217617>,  <36.801052, 41.346474, 32.330181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827065, 41.136108, 32.217617>,  <36.870419, 40.785500, 32.030014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827065, 41.136108, 32.217617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124592, 0.456092, -0.881168,
		-0.986271, -0.153937, 0.059775,
		-0.108382, 0.876518, 0.469010,
		36.794548, 41.399063, 32.358318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258858, 41.033527, 31.750927>,  <36.870419, 40.785500, 32.030014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258858, 41.033527, 31.750927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430580, 41.360546, 31.904453>,  <36.533615, 41.556759, 31.996569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430580, 41.360546, 31.904453>,  <36.258858, 41.033527, 31.750927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430580, 41.360546, 31.904453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248662, 0.515539, -0.819992,
		-0.868252, 0.256589, 0.424617,
		0.429308, 0.817546, 0.383814,
		36.559372, 41.605808, 32.019596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798836, 41.659378, 31.683538>,  <36.258858, 41.033527, 31.750927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798836, 41.659378, 31.683538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161884, 41.820885, 31.729475>,  <36.379715, 41.917789, 31.757036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161884, 41.820885, 31.729475>,  <35.798836, 41.659378, 31.683538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161884, 41.820885, 31.729475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127219, 0.525277, -0.841367,
		-0.400039, 0.749037, 0.528122,
		0.907625, 0.403767, 0.114840,
		36.434174, 41.942017, 31.763927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669292, 42.490742, 31.722485>,  <35.798836, 41.659378, 31.683538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669292, 42.490742, 31.722485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049541, 42.408272, 31.629694>,  <36.277691, 42.358791, 31.574018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049541, 42.408272, 31.629694>,  <35.669292, 42.490742, 31.722485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049541, 42.408272, 31.629694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022881, 0.698866, -0.714886,
		0.309511, 0.684893, 0.659639,
		0.950621, -0.206172, -0.231978,
		36.334728, 42.346420, 31.560101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890488, 43.155529, 31.667664>,  <35.669292, 42.490742, 31.722485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890488, 43.155529, 31.667664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129295, 42.916286, 31.453806>,  <36.272579, 42.772743, 31.325491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129295, 42.916286, 31.453806>,  <35.890488, 43.155529, 31.667664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129295, 42.916286, 31.453806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099596, 0.606034, -0.789179,
		0.796023, 0.524402, 0.302244,
		0.597017, -0.598102, -0.534645,
		36.308399, 42.736855, 31.293413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249367, 43.664433, 31.343189>,  <35.890488, 43.155529, 31.667664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249367, 43.664433, 31.343189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330498, 43.322464, 31.152206>,  <36.379177, 43.117283, 31.037617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330498, 43.322464, 31.152206>,  <36.249367, 43.664433, 31.343189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330498, 43.322464, 31.152206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073029, 0.473027, -0.878016,
		0.976488, 0.212954, 0.033508,
		0.202827, -0.854925, -0.477457,
		36.391346, 43.065987, 31.008970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686523, 43.849785, 30.917091>,  <36.249367, 43.664433, 31.343189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686523, 43.849785, 30.917091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538097, 43.512665, 30.761141>,  <36.449043, 43.310394, 30.667570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538097, 43.512665, 30.761141>,  <36.686523, 43.849785, 30.917091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538097, 43.512665, 30.761141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084484, 0.448748, -0.889656,
		0.924756, -0.297181, -0.237718,
		-0.371064, -0.842798, -0.389876,
		36.426777, 43.259827, 30.644178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993290, 43.891956, 30.254309>,  <36.686523, 43.849785, 30.917091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993290, 43.891956, 30.254309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733871, 43.592648, 30.198492>,  <36.578220, 43.413063, 30.165001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733871, 43.592648, 30.198492>,  <36.993290, 43.891956, 30.254309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733871, 43.592648, 30.198492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092697, 0.259605, -0.961256,
		0.755506, -0.610488, -0.237730,
		-0.648551, -0.748272, -0.139543,
		36.539307, 43.368168, 30.156630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261536, 43.545395, 29.674500>,  <36.993290, 43.891956, 30.254309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261536, 43.545395, 29.674500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.874733, 43.452370, 29.716093>,  <36.642651, 43.396557, 29.741049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.874733, 43.452370, 29.716093>,  <37.261536, 43.545395, 29.674500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874733, 43.452370, 29.716093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158821, 0.231219, -0.959851,
		0.199181, -0.944698, -0.260525,
		-0.967007, -0.232561, 0.103983,
		36.584629, 43.382603, 29.747288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079697, 42.994415, 29.246515>,  <37.261536, 43.545395, 29.674500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079697, 42.994415, 29.246515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736328, 43.189125, 29.311213>,  <36.530308, 43.305950, 29.350031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736328, 43.189125, 29.311213>,  <37.079697, 42.994415, 29.246515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736328, 43.189125, 29.311213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213421, -0.052211, -0.975564,
		-0.466432, -0.871967, 0.148707,
		-0.858424, 0.486772, 0.161744,
		36.478802, 43.335155, 29.359735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612980, 42.631802, 28.735287>,  <37.079697, 42.994415, 29.246515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612980, 42.631802, 28.735287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426823, 42.968933, 28.843395>,  <36.315128, 43.171211, 28.908260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426823, 42.968933, 28.843395>,  <36.612980, 42.631802, 28.735287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426823, 42.968933, 28.843395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425911, 0.054424, -0.903127,
		-0.775890, -0.535424, 0.333641,
		-0.465397, 0.842829, 0.270270,
		36.287205, 43.221783, 28.924477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940315, 42.681835, 28.462509>,  <36.612980, 42.631802, 28.735287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940315, 42.681835, 28.462509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034763, 43.068329, 28.503773>,  <36.091434, 43.300224, 28.528530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034763, 43.068329, 28.503773>,  <35.940315, 42.681835, 28.462509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034763, 43.068329, 28.503773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288650, 0.171112, -0.942020,
		-0.927862, 0.192657, 0.319306,
		0.236124, 0.966232, 0.103158,
		36.105602, 43.358200, 28.534719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389946, 43.030823, 28.243870>,  <35.940315, 42.681835, 28.462509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389946, 43.030823, 28.243870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672081, 43.312672, 28.212872>,  <35.841362, 43.481781, 28.194273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672081, 43.312672, 28.212872>,  <35.389946, 43.030823, 28.243870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672081, 43.312672, 28.212872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363810, 0.265999, -0.892685,
		-0.608396, 0.657835, 0.443968,
		0.705334, 0.704626, -0.077494,
		35.883682, 43.524059, 28.189623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026180, 43.587254, 27.858324>,  <35.389946, 43.030823, 28.243870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026180, 43.587254, 27.858324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402206, 43.721310, 27.833179>,  <35.627823, 43.801743, 27.818092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402206, 43.721310, 27.833179>,  <35.026180, 43.587254, 27.858324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402206, 43.721310, 27.833179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160609, 0.272574, -0.948635,
		-0.300795, 0.901877, 0.310065,
		0.940068, 0.335144, -0.062860,
		35.684227, 43.821854, 27.814322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916420, 44.196312, 27.641813>,  <35.026180, 43.587254, 27.858324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916420, 44.196312, 27.641813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295799, 44.110992, 27.548052>,  <35.523426, 44.059803, 27.491795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295799, 44.110992, 27.548052>,  <34.916420, 44.196312, 27.641813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295799, 44.110992, 27.548052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121308, 0.438962, -0.890279,
		0.292785, 0.872822, 0.390460,
		0.948452, -0.213295, -0.234401,
		35.580334, 44.047005, 27.477732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192326, 44.813305, 27.432714>,  <34.916420, 44.196312, 27.641813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192326, 44.813305, 27.432714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424511, 44.531063, 27.270140>,  <35.563824, 44.361717, 27.172594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424511, 44.531063, 27.270140>,  <35.192326, 44.813305, 27.432714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424511, 44.531063, 27.270140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035852, 0.476501, -0.878442,
		0.813498, 0.524474, 0.251293,
		0.580462, -0.705601, -0.406437,
		35.598648, 44.319382, 27.148209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551193, 45.115723, 26.840679>,  <35.192326, 44.813305, 27.432714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551193, 45.115723, 26.840679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633976, 44.731956, 26.764059>,  <35.683647, 44.501698, 26.718086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633976, 44.731956, 26.764059>,  <35.551193, 45.115723, 26.840679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633976, 44.731956, 26.764059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155956, 0.225639, -0.961647,
		0.965839, 0.169151, 0.196325,
		0.206962, -0.959414, -0.191551,
		35.696064, 44.444134, 26.706594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095516, 45.125008, 26.260141>,  <35.551193, 45.115723, 26.840679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095516, 45.125008, 26.260141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910675, 44.770336, 26.266716>,  <35.799770, 44.557533, 26.270660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910675, 44.770336, 26.266716>,  <36.095516, 45.125008, 26.260141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910675, 44.770336, 26.266716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101436, 0.034435, -0.994246,
		0.881007, -0.461109, -0.105853,
		-0.462101, -0.886675, 0.016436,
		35.772045, 44.504333, 26.271646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501385, 44.672329, 25.871395>,  <36.095516, 45.125008, 26.260141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501385, 44.672329, 25.871395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131310, 44.521378, 25.887444>,  <35.909264, 44.430809, 25.897074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131310, 44.521378, 25.887444>,  <36.501385, 44.672329, 25.871395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131310, 44.521378, 25.887444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051500, 0.020103, -0.998471,
		0.375992, -0.925842, -0.038034,
		-0.925191, -0.377376, 0.040122,
		35.853752, 44.408165, 25.899481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506531, 44.253860, 25.250204>,  <36.501385, 44.672329, 25.871395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506531, 44.253860, 25.250204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118389, 44.260597, 25.346647>,  <35.885506, 44.264641, 25.404514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118389, 44.260597, 25.346647>,  <36.506531, 44.253860, 25.250204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118389, 44.260597, 25.346647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230321, 0.238016, -0.943558,
		-0.073280, -0.971115, -0.227080,
		-0.970352, 0.016842, 0.241110,
		35.827282, 44.265652, 25.418980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151180, 43.860146, 24.774050>,  <36.506531, 44.253860, 25.250204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151180, 43.860146, 24.774050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.849857, 44.075443, 24.925215>,  <35.669064, 44.204620, 25.015913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.849857, 44.075443, 24.925215>,  <36.151180, 43.860146, 24.774050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849857, 44.075443, 24.925215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304764, 0.223504, -0.925832,
		-0.582789, -0.812612, -0.004330,
		-0.753310, 0.538245, 0.377910,
		35.623863, 44.236916, 25.038588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700645, 43.404560, 24.539707>,  <36.151180, 43.860146, 24.774050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700645, 43.404560, 24.539707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.799847, 43.082722, 24.323887>,  <36.859367, 42.889618, 24.194395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.799847, 43.082722, 24.323887>,  <36.700645, 43.404560, 24.539707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799847, 43.082722, 24.323887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184076, -0.507667, 0.841659,
		-0.951111, -0.308050, 0.022206,
		0.248000, -0.804599, -0.539552,
		36.874249, 42.841343, 24.162022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301632, 42.855682, 24.779007>,  <36.700645, 43.404560, 24.539707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301632, 42.855682, 24.779007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655151, 42.732761, 24.637884>,  <36.867264, 42.659008, 24.553209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655151, 42.732761, 24.637884>,  <36.301632, 42.855682, 24.779007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655151, 42.732761, 24.637884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115421, -0.587559, 0.800907,
		-0.453415, -0.748560, -0.483812,
		0.883795, -0.307301, -0.352807,
		36.920288, 42.640572, 24.532042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340233, 42.148853, 25.130249>,  <36.301632, 42.855682, 24.779007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340233, 42.148853, 25.130249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700005, 42.223213, 24.972029>,  <36.915867, 42.267830, 24.877096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700005, 42.223213, 24.972029>,  <36.340233, 42.148853, 25.130249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700005, 42.223213, 24.972029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414885, -0.647759, 0.638967,
		-0.137441, -0.738817, -0.659742,
		0.899433, 0.185897, -0.395552,
		36.969833, 42.278984, 24.853363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631084, 41.524120, 25.040623>,  <36.340233, 42.148853, 25.130249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631084, 41.524120, 25.040623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938034, 41.780514, 25.047338>,  <37.122204, 41.934349, 25.051369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938034, 41.780514, 25.047338>,  <36.631084, 41.524120, 25.040623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938034, 41.780514, 25.047338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481721, -0.593588, 0.644669,
		0.423189, -0.486612, -0.764277,
		0.767369, 0.640985, 0.016789,
		37.168243, 41.972809, 25.052376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251335, 41.072834, 24.855488>,  <36.631084, 41.524120, 25.040623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251335, 41.072834, 24.855488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372902, 41.404182, 25.043713>,  <37.445843, 41.602993, 25.156647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372902, 41.404182, 25.043713>,  <37.251335, 41.072834, 24.855488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372902, 41.404182, 25.043713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504576, -0.558920, 0.658036,
		0.808108, 0.037447, -0.587843,
		0.303916, 0.828376, 0.470562,
		37.464077, 41.652695, 25.184881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021503, 40.944008, 25.153843>,  <37.251335, 41.072834, 24.855488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021503, 40.944008, 25.153843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871613, 41.255222, 25.355534>,  <37.781677, 41.441952, 25.476547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871613, 41.255222, 25.355534>,  <38.021503, 40.944008, 25.153843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871613, 41.255222, 25.355534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361019, -0.378476, 0.852303,
		0.853956, 0.501420, -0.139058,
		-0.374731, 0.778032, 0.504224,
		37.759193, 41.488632, 25.506802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620785, 41.185539, 25.653206>,  <38.021503, 40.944008, 25.153843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620785, 41.185539, 25.653206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.281319, 41.357529, 25.776419>,  <38.077637, 41.460724, 25.850346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.281319, 41.357529, 25.776419>,  <38.620785, 41.185539, 25.653206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281319, 41.357529, 25.776419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164992, -0.338109, 0.926531,
		0.502533, 0.837141, 0.216000,
		-0.848669, 0.429974, 0.308032,
		38.026718, 41.486523, 25.868828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783005, 41.668903, 26.239948>,  <38.620785, 41.185539, 25.653206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783005, 41.668903, 26.239948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398548, 41.562019, 26.267691>,  <38.167873, 41.497890, 26.284336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398548, 41.562019, 26.267691>,  <38.783005, 41.668903, 26.239948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398548, 41.562019, 26.267691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181754, -0.423399, 0.887524,
		-0.207787, 0.865641, 0.455511,
		-0.961140, -0.267207, 0.069357,
		38.110207, 41.481857, 26.288498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628925, 41.736572, 26.894020>,  <38.783005, 41.668903, 26.239948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628925, 41.736572, 26.894020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303505, 41.518509, 26.813089>,  <38.108253, 41.387672, 26.764530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303505, 41.518509, 26.813089>,  <38.628925, 41.736572, 26.894020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303505, 41.518509, 26.813089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059966, -0.424745, 0.903325,
		-0.578391, 0.722769, 0.378243,
		-0.813552, -0.545157, -0.202327,
		38.059441, 41.354961, 26.752392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249512, 41.710567, 27.520432>,  <38.628925, 41.736572, 26.894020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249512, 41.710567, 27.520432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126743, 41.394566, 27.308132>,  <38.053082, 41.204964, 27.180752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126743, 41.394566, 27.308132>,  <38.249512, 41.710567, 27.520432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126743, 41.394566, 27.308132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117047, -0.522100, 0.844814,
		-0.944511, 0.321412, 0.067775,
		-0.306919, -0.790003, -0.530750,
		38.034668, 41.157566, 27.148907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558311, 41.570599, 27.729958>,  <38.249512, 41.710567, 27.520432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558311, 41.570599, 27.729958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680359, 41.231262, 27.556883>,  <37.753590, 41.027660, 27.453039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680359, 41.231262, 27.556883>,  <37.558311, 41.570599, 27.729958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680359, 41.231262, 27.556883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338237, -0.521268, 0.783502,
		-0.890223, -0.092714, -0.445991,
		0.305122, -0.848342, -0.432685,
		37.771896, 40.976761, 27.427078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089893, 41.202381, 27.960239>,  <37.558311, 41.570599, 27.729958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089893, 41.202381, 27.960239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371151, 40.938995, 27.852896>,  <37.539906, 40.780964, 27.788490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371151, 40.938995, 27.852896>,  <37.089893, 41.202381, 27.960239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371151, 40.938995, 27.852896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300734, -0.617393, 0.726901,
		-0.644319, -0.430411, -0.632138,
		0.703144, -0.658462, -0.268359,
		37.582096, 40.741459, 27.772388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787895, 40.574917, 27.818256>,  <37.089893, 41.202381, 27.960239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787895, 40.574917, 27.818256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170841, 40.521034, 27.920479>,  <37.400608, 40.488705, 27.981812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170841, 40.521034, 27.920479>,  <36.787895, 40.574917, 27.818256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170841, 40.521034, 27.920479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283308, -0.610807, 0.739359,
		0.056499, -0.780236, -0.622928,
		0.957363, -0.134708, 0.255557,
		37.458050, 40.480621, 27.997147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700752, 39.921246, 27.951267>,  <36.787895, 40.574917, 27.818256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700752, 39.921246, 27.951267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028263, 40.052971, 28.139378>,  <37.224770, 40.132004, 28.252243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028263, 40.052971, 28.139378>,  <36.700752, 39.921246, 27.951267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028263, 40.052971, 28.139378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264396, -0.510813, 0.818025,
		0.509608, -0.794119, -0.331173,
		0.818776, 0.329311, 0.470276,
		37.273895, 40.151764, 28.280460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932613, 39.314182, 28.289688>,  <36.700752, 39.921246, 27.951267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932613, 39.314182, 28.289688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079212, 39.632927, 28.481810>,  <37.167171, 39.824173, 28.597082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079212, 39.632927, 28.481810>,  <36.932613, 39.314182, 28.289688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079212, 39.632927, 28.481810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241554, -0.417030, 0.876206,
		0.898515, -0.437148, 0.039644,
		0.366499, 0.796861, 0.480303,
		37.189163, 39.871986, 28.625900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301617, 38.963501, 28.764095>,  <36.932613, 39.314182, 28.289688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301617, 38.963501, 28.764095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242390, 39.337322, 28.893518>,  <37.206856, 39.561615, 28.971172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242390, 39.337322, 28.893518>,  <37.301617, 38.963501, 28.764095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242390, 39.337322, 28.893518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092301, -0.338794, 0.936322,
		0.984661, 0.108771, 0.136423,
		-0.148064, 0.934552, 0.323558,
		37.197971, 39.617687, 28.990585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695507, 38.954243, 29.377123>,  <37.301617, 38.963501, 28.764095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695507, 38.954243, 29.377123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466362, 39.279099, 29.421427>,  <37.328876, 39.474010, 29.448009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466362, 39.279099, 29.421427>,  <37.695507, 38.954243, 29.377123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466362, 39.279099, 29.421427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199833, -0.269435, 0.942057,
		0.794920, 0.517534, 0.316640,
		-0.572861, 0.812135, 0.110759,
		37.294502, 39.522739, 29.454655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037189, 39.546696, 29.809219>,  <37.695507, 38.954243, 29.377123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037189, 39.546696, 29.809219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639549, 39.580021, 29.836979>,  <37.400963, 39.600018, 29.853634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639549, 39.580021, 29.836979>,  <38.037189, 39.546696, 29.809219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639549, 39.580021, 29.836979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055062, -0.163482, 0.985009,
		0.093410, 0.983022, 0.157931,
		-0.994104, 0.083314, 0.069398,
		37.341316, 39.605015, 29.857798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926506, 40.031906, 30.269222>,  <38.037189, 39.546696, 29.809219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926506, 40.031906, 30.269222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.592857, 39.811596, 30.257338>,  <37.392666, 39.679409, 30.250206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.592857, 39.811596, 30.257338>,  <37.926506, 40.031906, 30.269222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592857, 39.811596, 30.257338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087170, -0.184824, 0.978898,
		-0.544644, 0.813933, 0.202177,
		-0.834125, -0.550775, -0.029713,
		37.342621, 39.646362, 30.248425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625626, 40.084789, 30.943220>,  <37.926506, 40.031906, 30.269222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625626, 40.084789, 30.943220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417576, 39.785286, 30.778864>,  <37.292747, 39.605583, 30.680250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417576, 39.785286, 30.778864>,  <37.625626, 40.084789, 30.943220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417576, 39.785286, 30.778864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112031, -0.417121, 0.901920,
		-0.846711, 0.515144, 0.133071,
		-0.520125, -0.748757, -0.410893,
		37.261539, 39.560658, 30.655596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989986, 40.037777, 31.309103>,  <37.625626, 40.084789, 30.943220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989986, 40.037777, 31.309103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101719, 39.687759, 31.150978>,  <37.168758, 39.477749, 31.056103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101719, 39.687759, 31.150978>,  <36.989986, 40.037777, 31.309103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101719, 39.687759, 31.150978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002574, -0.412383, 0.911007,
		-0.960190, -0.253458, -0.117446,
		0.279335, -0.875042, -0.395313,
		37.185520, 39.425247, 31.032385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679741, 39.684109, 31.812138>,  <36.989986, 40.037777, 31.309103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679741, 39.684109, 31.812138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876431, 39.405067, 31.603695>,  <36.994446, 39.237640, 31.478628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876431, 39.405067, 31.603695>,  <36.679741, 39.684109, 31.812138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876431, 39.405067, 31.603695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056922, -0.571426, 0.818677,
		-0.868888, -0.432227, -0.241276,
		0.491725, -0.697605, -0.521108,
		37.023949, 39.195786, 31.447363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319290, 39.124973, 32.052338>,  <36.679741, 39.684109, 31.812138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319290, 39.124973, 32.052338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680363, 39.052826, 31.896067>,  <36.897007, 39.009537, 31.802303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680363, 39.052826, 31.896067>,  <36.319290, 39.124973, 32.052338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680363, 39.052826, 31.896067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241648, -0.538745, 0.807068,
		-0.356043, -0.822935, -0.442732,
		0.902684, -0.180366, -0.390678,
		36.951168, 38.998714, 31.778864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327736, 38.402348, 32.001755>,  <36.319290, 39.124973, 32.052338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327736, 38.402348, 32.001755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702911, 38.538563, 32.028023>,  <36.928017, 38.620293, 32.043785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702911, 38.538563, 32.028023>,  <36.327736, 38.402348, 32.001755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702911, 38.538563, 32.028023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159057, -0.590640, 0.791104,
		0.308189, -0.731558, -0.608147,
		0.937934, 0.340540, 0.065670,
		36.984291, 38.640724, 32.047722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830425, 37.806488, 31.999437>,  <36.327736, 38.402348, 32.001755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830425, 37.806488, 31.999437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002117, 38.118141, 32.182178>,  <37.105133, 38.305134, 32.291824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002117, 38.118141, 32.182178>,  <36.830425, 37.806488, 31.999437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002117, 38.118141, 32.182178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274352, -0.594392, 0.755930,
		0.860517, -0.199132, -0.468889,
		0.429234, 0.779131, 0.456852,
		37.130886, 38.351879, 32.319233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421768, 37.458805, 32.449932>,  <36.830425, 37.806488, 31.999437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421768, 37.458805, 32.449932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435589, 37.833271, 32.589874>,  <37.443882, 38.057949, 32.673840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435589, 37.833271, 32.589874>,  <37.421768, 37.458805, 32.449932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435589, 37.833271, 32.589874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318146, -0.342159, 0.884144,
		0.947412, 0.080755, -0.309660,
		0.034554, 0.936165, 0.349857,
		37.445953, 38.114120, 32.694832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083450, 37.503174, 32.759335>,  <37.421768, 37.458805, 32.449932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083450, 37.503174, 32.759335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858376, 37.787071, 32.928879>,  <37.723331, 37.957409, 33.030605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858376, 37.787071, 32.928879>,  <38.083450, 37.503174, 32.759335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858376, 37.787071, 32.928879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348809, -0.261015, 0.900113,
		0.749480, 0.654324, -0.100695,
		-0.562683, 0.709740, 0.423860,
		37.689571, 37.999992, 33.056038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518700, 37.784885, 33.250351>,  <38.083450, 37.503174, 32.759335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518700, 37.784885, 33.250351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145950, 37.881981, 33.358200>,  <37.922302, 37.940239, 33.422909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145950, 37.881981, 33.358200>,  <38.518700, 37.784885, 33.250351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145950, 37.881981, 33.358200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259747, -0.072429, 0.962957,
		0.253278, 0.967383, 0.004443,
		-0.931870, 0.242742, 0.269619,
		37.866390, 37.954803, 33.439087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605129, 38.277386, 33.766563>,  <38.518700, 37.784885, 33.250351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605129, 38.277386, 33.766563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235458, 38.138313, 33.829823>,  <38.013657, 38.054871, 33.867779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235458, 38.138313, 33.829823>,  <38.605129, 38.277386, 33.766563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235458, 38.138313, 33.829823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207614, -0.109711, 0.972039,
		-0.320610, 0.931172, 0.173577,
		-0.924178, -0.347682, 0.158150,
		37.958206, 38.034008, 33.877266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369583, 38.550610, 34.489491>,  <38.605129, 38.277386, 33.766563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369583, 38.550610, 34.489491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122238, 38.250835, 34.394855>,  <37.973831, 38.070972, 34.338074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122238, 38.250835, 34.394855>,  <38.369583, 38.550610, 34.489491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122238, 38.250835, 34.394855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006255, -0.296336, 0.955063,
		-0.785865, 0.592059, 0.178557,
		-0.618367, -0.749434, -0.236583,
		37.936729, 38.026005, 34.323879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923828, 38.582195, 34.964771>,  <38.369583, 38.550610, 34.489491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923828, 38.582195, 34.964771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.888939, 38.217377, 34.804489>,  <37.868004, 37.998486, 34.708321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.888939, 38.217377, 34.804489>,  <37.923828, 38.582195, 34.964771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888939, 38.217377, 34.804489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016580, -0.403511, 0.914824,
		-0.996050, 0.073153, 0.050319,
		-0.087226, -0.912046, -0.400704,
		37.862770, 37.943764, 34.684277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445072, 38.113144, 35.518547>,  <37.923828, 38.582195, 34.964771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445072, 38.113144, 35.518547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658146, 37.872959, 35.279987>,  <37.785992, 37.728848, 35.136852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658146, 37.872959, 35.279987>,  <37.445072, 38.113144, 35.518547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658146, 37.872959, 35.279987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215370, -0.585323, 0.781673,
		-0.818449, -0.544835, -0.182474,
		0.532689, -0.600460, -0.596398,
		37.817951, 37.692822, 35.101067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145260, 37.465343, 35.578373>,  <37.445072, 38.113144, 35.518547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145260, 37.465343, 35.578373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524754, 37.424358, 35.458775>,  <37.752449, 37.399765, 35.387016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524754, 37.424358, 35.458775>,  <37.145260, 37.465343, 35.578373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524754, 37.424358, 35.458775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118277, -0.762165, 0.636487,
		-0.293104, -0.639223, -0.710974,
		0.948736, -0.102465, -0.298999,
		37.809376, 37.393620, 35.369076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258839, 36.746960, 35.732388>,  <37.145260, 37.465343, 35.578373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258839, 36.746960, 35.732388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616573, 36.915260, 35.671555>,  <37.831215, 37.016243, 35.635056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616573, 36.915260, 35.671555>,  <37.258839, 36.746960, 35.732388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616573, 36.915260, 35.671555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383784, -0.546795, 0.744127,
		0.229940, -0.723865, -0.650498,
		0.894336, 0.420756, -0.152078,
		37.884872, 37.041489, 35.625931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798466, 36.232903, 35.768059>,  <37.258839, 36.746960, 35.732388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798466, 36.232903, 35.768059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017147, 36.557922, 35.848930>,  <38.148357, 36.752934, 35.897453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017147, 36.557922, 35.848930>,  <37.798466, 36.232903, 35.768059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017147, 36.557922, 35.848930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437489, -0.483077, 0.758446,
		0.713943, -0.326195, -0.619582,
		0.546707, 0.812547, 0.202183,
		38.181160, 36.801685, 35.909584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467453, 35.988857, 35.740276>,  <37.798466, 36.232903, 35.768059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467453, 35.988857, 35.740276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477928, 36.324215, 35.958050>,  <38.484211, 36.525429, 36.088715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477928, 36.324215, 35.958050>,  <38.467453, 35.988857, 35.740276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477928, 36.324215, 35.958050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526382, -0.474569, 0.705483,
		0.849845, 0.268109, -0.453742,
		0.026185, 0.838393, 0.544437,
		38.485783, 36.575733, 36.121380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161690, 36.115513, 35.913914>,  <38.467453, 35.988857, 35.740276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161690, 36.115513, 35.913914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952999, 36.312515, 36.192551>,  <38.827785, 36.430717, 36.359734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952999, 36.312515, 36.192551>,  <39.161690, 36.115513, 35.913914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952999, 36.312515, 36.192551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504088, -0.480776, 0.717461,
		0.688257, 0.725463, 0.002569,
		-0.521726, 0.492503, 0.696594,
		38.796482, 36.460266, 36.401527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607353, 36.186928, 36.361217>,  <39.161690, 36.115513, 35.913914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607353, 36.186928, 36.361217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280766, 36.277733, 36.573574>,  <39.084812, 36.332214, 36.700989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280766, 36.277733, 36.573574>,  <39.607353, 36.186928, 36.361217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280766, 36.277733, 36.573574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408652, -0.422366, 0.809080,
		0.407902, 0.877537, 0.252079,
		-0.816467, 0.227012, 0.530892,
		39.035824, 36.345837, 36.732841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.893280, 36.484928, 36.883690>,  <39.607353, 36.186928, 36.361217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.893280, 36.484928, 36.883690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528004, 36.372437, 37.001675>,  <39.308838, 36.304943, 37.072464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528004, 36.372437, 37.001675>,  <39.893280, 36.484928, 36.883690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528004, 36.372437, 37.001675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376971, -0.307861, 0.873564,
		-0.154863, 0.908919, 0.387149,
		-0.913187, -0.281226, 0.294960,
		39.254047, 36.288067, 37.090164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921776, 36.586765, 37.640816>,  <39.893280, 36.484928, 36.883690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921776, 36.586765, 37.640816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612389, 36.340122, 37.582119>,  <39.426754, 36.192135, 37.546902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612389, 36.340122, 37.582119>,  <39.921776, 36.586765, 37.640816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612389, 36.340122, 37.582119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209197, -0.466892, 0.859214,
		-0.598312, 0.633881, 0.490121,
		-0.773473, -0.616610, -0.146741,
		39.380348, 36.155140, 37.538097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464336, 36.577091, 38.147057>,  <39.921776, 36.586765, 37.640816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464336, 36.577091, 38.147057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402191, 36.215557, 37.987583>,  <39.364902, 35.998638, 37.891899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402191, 36.215557, 37.987583>,  <39.464336, 36.577091, 38.147057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402191, 36.215557, 37.987583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253374, -0.426546, 0.868252,
		-0.954811, 0.033878, 0.295278,
		-0.155364, -0.903831, -0.398686,
		39.355583, 35.944408, 37.867977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131374, 36.133427, 38.640785>,  <39.464336, 36.577091, 38.147057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131374, 36.133427, 38.640785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305412, 35.903671, 38.363438>,  <39.409836, 35.765816, 38.197029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305412, 35.903671, 38.363438>,  <39.131374, 36.133427, 38.640785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305412, 35.903671, 38.363438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198683, -0.689852, 0.696153,
		-0.878188, -0.440657, -0.186031,
		0.435099, -0.574392, -0.693371,
		39.435944, 35.731354, 38.155426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716465, 35.490288, 38.528919>,  <39.131374, 36.133427, 38.640785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716465, 35.490288, 38.528919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090500, 35.412052, 38.410694>,  <39.314922, 35.365112, 38.339760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090500, 35.412052, 38.410694>,  <38.716465, 35.490288, 38.528919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090500, 35.412052, 38.410694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023442, -0.797981, 0.602226,
		-0.353639, -0.570063, -0.741598,
		0.935088, -0.195586, -0.295561,
		39.371025, 35.353374, 38.322025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678612, 34.781799, 38.282520>,  <38.716465, 35.490288, 38.528919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678612, 34.781799, 38.282520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030743, 34.906631, 38.425419>,  <39.242023, 34.981529, 38.511158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030743, 34.906631, 38.425419>,  <38.678612, 34.781799, 38.282520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030743, 34.906631, 38.425419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167477, -0.500132, 0.849600,
		0.443811, -0.807760, -0.388016,
		0.880331, 0.312078, 0.357245,
		39.294842, 35.000256, 38.532593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733452, 34.359898, 38.850559>,  <38.678612, 34.781799, 38.282520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733452, 34.359898, 38.850559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052746, 34.595604, 38.900490>,  <39.244324, 34.737026, 38.930450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052746, 34.595604, 38.900490>,  <38.733452, 34.359898, 38.850559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052746, 34.595604, 38.900490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114644, -0.352083, 0.928921,
		0.591332, -0.727189, -0.348601,
		0.798238, 0.589265, 0.124830,
		39.292217, 34.772385, 38.937939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143711, 33.910019, 39.222443>,  <38.733452, 34.359898, 38.850559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143711, 33.910019, 39.222443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332916, 34.255322, 39.292927>,  <39.446442, 34.462502, 39.335217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332916, 34.255322, 39.292927>,  <39.143711, 33.910019, 39.222443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332916, 34.255322, 39.292927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163238, -0.282406, 0.945304,
		0.865799, -0.418380, -0.274498,
		0.473016, 0.863252, 0.176212,
		39.474823, 34.514297, 39.345791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692589, 33.743473, 39.658684>,  <39.143711, 33.910019, 39.222443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692589, 33.743473, 39.658684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594444, 34.129669, 39.693615>,  <39.535557, 34.361385, 39.714573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594444, 34.129669, 39.693615>,  <39.692589, 33.743473, 39.658684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594444, 34.129669, 39.693615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237227, -0.027544, 0.971064,
		0.939959, 0.258975, -0.222283,
		-0.245358, 0.965491, 0.087326,
		39.520836, 34.419315, 39.719814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061508, 33.962719, 40.167179>,  <39.692589, 33.743473, 39.658684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061508, 33.962719, 40.167179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785553, 34.252182, 40.159451>,  <39.619980, 34.425858, 40.154816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785553, 34.252182, 40.159451>,  <40.061508, 33.962719, 40.167179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785553, 34.252182, 40.159451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013287, 0.039341, 0.999137,
		0.723790, 0.689041, -0.036756,
		-0.689893, 0.723654, -0.019319,
		39.578587, 34.469276, 40.153656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183578, 34.285206, 40.795177>,  <40.061508, 33.962719, 40.167179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183578, 34.285206, 40.795177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.859089, 34.493328, 40.688450>,  <39.664394, 34.618202, 40.624413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.859089, 34.493328, 40.688450>,  <40.183578, 34.285206, 40.795177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859089, 34.493328, 40.688450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165464, 0.233394, 0.958201,
		0.560835, 0.821466, -0.103242,
		-0.811225, 0.520309, -0.266819,
		39.615723, 34.649422, 40.608406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276150, 34.781013, 41.221428>,  <40.183578, 34.285206, 40.795177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.276150, 34.781013, 41.221428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.890518, 34.763367, 41.116653>,  <39.659142, 34.752781, 41.053787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.890518, 34.763367, 41.116653>,  <40.276150, 34.781013, 41.221428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890518, 34.763367, 41.116653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264986, 0.228209, 0.936858,
		0.018448, 0.972612, -0.231701,
		-0.964076, -0.044115, -0.261938,
		39.601295, 34.750134, 41.038071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961872, 35.336693, 41.386360>,  <40.276150, 34.781013, 41.221428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961872, 35.336693, 41.386360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.656929, 35.078014, 41.376625>,  <39.473965, 34.922806, 41.370785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.656929, 35.078014, 41.376625>,  <39.961872, 35.336693, 41.386360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656929, 35.078014, 41.376625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283279, 0.299654, 0.911022,
		-0.581866, 0.701417, -0.411639,
		-0.762355, -0.646701, -0.024338,
		39.428223, 34.884003, 41.369324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331146, 35.653648, 41.698765>,  <39.961872, 35.336693, 41.386360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331146, 35.653648, 41.698765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294186, 35.258537, 41.748989>,  <39.272011, 35.021473, 41.779121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294186, 35.258537, 41.748989>,  <39.331146, 35.653648, 41.698765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294186, 35.258537, 41.748989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400577, 0.152319, 0.903514,
		-0.911592, 0.033187, -0.409753,
		-0.092398, -0.987774, 0.125559,
		39.266468, 34.962204, 41.786655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658096, 35.507507, 42.020020>,  <39.331146, 35.653648, 41.698765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658096, 35.507507, 42.020020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.869671, 35.173740, 42.081966>,  <38.996616, 34.973480, 42.119133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.869671, 35.173740, 42.081966>,  <38.658096, 35.507507, 42.020020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869671, 35.173740, 42.081966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371972, -0.063920, 0.926041,
		-0.762802, -0.547420, -0.344188,
		0.528934, -0.834414, 0.154866,
		39.028351, 34.923416, 42.128426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212273, 35.086224, 42.334427>,  <38.658096, 35.507507, 42.020020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212273, 35.086224, 42.334427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549202, 34.884151, 42.409569>,  <38.751358, 34.762909, 42.454655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549202, 34.884151, 42.409569>,  <38.212273, 35.086224, 42.334427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549202, 34.884151, 42.409569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315099, -0.178788, 0.932066,
		-0.437272, -0.844293, -0.309778,
		0.842322, -0.505177, 0.187857,
		38.801899, 34.732597, 42.465927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057487, 34.361076, 42.466282>,  <38.212273, 35.086224, 42.334427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057487, 34.361076, 42.466282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.407825, 34.443291, 42.640934>,  <38.618027, 34.492619, 42.745724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.407825, 34.443291, 42.640934>,  <38.057487, 34.361076, 42.466282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407825, 34.443291, 42.640934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330810, -0.403041, 0.853301,
		0.351366, -0.891803, -0.285008,
		0.875846, 0.205538, 0.436632,
		38.670578, 34.504951, 42.771923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143841, 33.816597, 42.873379>,  <38.057487, 34.361076, 42.466282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143841, 33.816597, 42.873379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388664, 34.087044, 43.037449>,  <38.535561, 34.249313, 43.135891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388664, 34.087044, 43.037449>,  <38.143841, 33.816597, 42.873379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388664, 34.087044, 43.037449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145708, -0.413381, 0.898824,
		0.777270, -0.609903, -0.154499,
		0.612063, 0.676117, 0.410176,
		38.572285, 34.289879, 43.160503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698719, 33.483994, 43.228882>,  <38.143841, 33.816597, 42.873379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698719, 33.483994, 43.228882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.674683, 33.836262, 43.416840>,  <38.660259, 34.047623, 43.529613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.674683, 33.836262, 43.416840>,  <38.698719, 33.483994, 43.228882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674683, 33.836262, 43.416840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102151, -0.473703, 0.874740,
		0.992952, 0.004566, 0.118428,
		-0.060094, 0.880672, 0.469898,
		38.656654, 34.100464, 43.557808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091927, 33.411720, 43.727802>,  <38.698719, 33.483994, 43.228882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091927, 33.411720, 43.727802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823978, 33.687111, 43.838997>,  <38.663208, 33.852345, 43.905712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823978, 33.687111, 43.838997>,  <39.091927, 33.411720, 43.727802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823978, 33.687111, 43.838997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128523, -0.476270, 0.869855,
		0.731268, 0.546965, 0.407525,
		-0.669873, 0.688474, 0.277983,
		38.623016, 33.893654, 43.922394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315258, 33.583595, 44.395493>,  <39.091927, 33.411720, 43.727802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315258, 33.583595, 44.395493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943119, 33.729412, 44.379688>,  <38.719837, 33.816902, 44.370205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943119, 33.729412, 44.379688>,  <39.315258, 33.583595, 44.395493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943119, 33.729412, 44.379688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192373, -0.393520, 0.898963,
		0.312162, 0.843950, 0.436238,
		-0.930348, 0.364543, -0.039511,
		38.664013, 33.838776, 44.367836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230530, 34.028008, 44.910702>,  <39.315258, 33.583595, 44.395493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230530, 34.028008, 44.910702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870625, 33.871853, 44.832703>,  <38.654682, 33.778160, 44.785904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870625, 33.871853, 44.832703>,  <39.230530, 34.028008, 44.910702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870625, 33.871853, 44.832703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088189, -0.274966, 0.957401,
		-0.427379, 0.878629, 0.212976,
		-0.899761, -0.390391, -0.195000,
		38.600697, 33.754734, 44.774204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935894, 34.227505, 45.462521>,  <39.230530, 34.028008, 44.910702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935894, 34.227505, 45.462521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.766510, 33.905632, 45.296066>,  <38.664879, 33.712509, 45.196194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.766510, 33.905632, 45.296066>,  <38.935894, 34.227505, 45.462521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766510, 33.905632, 45.296066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071200, -0.428373, 0.900793,
		-0.903111, 0.411083, 0.124108,
		-0.423464, -0.804679, -0.416137,
		38.639469, 33.664227, 45.171227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366692, 34.039307, 45.971313>,  <38.935894, 34.227505, 45.462521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366692, 34.039307, 45.971313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497345, 33.731514, 45.751781>,  <38.575737, 33.546837, 45.620064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497345, 33.731514, 45.751781>,  <38.366692, 34.039307, 45.971313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497345, 33.731514, 45.751781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070864, -0.559103, 0.826064,
		-0.942491, -0.308710, -0.128092,
		0.326631, -0.769481, -0.548827,
		38.595333, 33.500671, 45.587135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218353, 33.275242, 45.918045>,  <38.366692, 34.039307, 45.971313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218353, 33.275242, 45.918045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846138, 33.214928, 45.784565>,  <37.622807, 33.178738, 45.704479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846138, 33.214928, 45.784565>,  <38.218353, 33.275242, 45.918045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846138, 33.214928, 45.784565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228313, 0.473557, -0.850657,
		0.286295, -0.867760, -0.406237,
		-0.930542, -0.150789, -0.333698,
		37.566975, 33.169689, 45.684456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314316, 32.900227, 45.292423>,  <38.218353, 33.275242, 45.918045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314316, 32.900227, 45.292423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040398, 33.186478, 45.347446>,  <37.876045, 33.358231, 45.380459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040398, 33.186478, 45.347446>,  <38.314316, 32.900227, 45.292423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040398, 33.186478, 45.347446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418782, 0.540940, -0.729387,
		-0.596384, -0.441875, -0.670128,
		-0.684798, 0.715632, 0.137559,
		37.834957, 33.401169, 45.388714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825268, 32.990906, 44.735832>,  <38.314316, 32.900227, 45.292423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825268, 32.990906, 44.735832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930561, 33.329521, 44.920906>,  <37.993736, 33.532692, 45.031952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930561, 33.329521, 44.920906>,  <37.825268, 32.990906, 44.735832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930561, 33.329521, 44.920906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414678, 0.333753, -0.846553,
		-0.871064, 0.414705, -0.263187,
		0.263230, 0.846539, 0.462689,
		38.009529, 33.583485, 45.059711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484295, 33.555492, 44.421509>,  <37.825268, 32.990906, 44.735832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484295, 33.555492, 44.421509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.828190, 33.689465, 44.575745>,  <38.034527, 33.769848, 44.668285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.828190, 33.689465, 44.575745>,  <37.484295, 33.555492, 44.421509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828190, 33.689465, 44.575745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142758, 0.567279, -0.811058,
		-0.490380, 0.752341, 0.439897,
		0.859737, 0.334928, 0.385585,
		38.086109, 33.789944, 44.691422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477558, 34.348267, 44.361687>,  <37.484295, 33.555492, 44.421509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477558, 34.348267, 44.361687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842220, 34.184067, 44.369507>,  <38.061016, 34.085548, 44.374199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842220, 34.184067, 44.369507>,  <37.477558, 34.348267, 44.361687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842220, 34.184067, 44.369507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219754, 0.446739, -0.867256,
		0.347277, 0.794930, 0.497479,
		0.911651, -0.410501, 0.019547,
		38.115715, 34.060917, 44.375370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928200, 34.943657, 44.190578>,  <37.477558, 34.348267, 44.361687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928200, 34.943657, 44.190578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147667, 34.618183, 44.113758>,  <38.279346, 34.422897, 44.067665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147667, 34.618183, 44.113758>,  <37.928200, 34.943657, 44.190578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147667, 34.618183, 44.113758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377857, 0.446258, -0.811220,
		0.745783, 0.372519, 0.552302,
		0.548664, -0.813685, -0.192053,
		38.312267, 34.374077, 44.056141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477364, 35.286800, 44.123711>,  <37.928200, 34.943657, 44.190578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477364, 35.286800, 44.123711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511749, 34.931263, 43.943680>,  <38.532379, 34.717941, 43.835659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511749, 34.931263, 43.943680>,  <38.477364, 35.286800, 44.123711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511749, 34.931263, 43.943680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413910, 0.442783, -0.795375,
		0.906250, -0.117920, 0.405963,
		0.085963, -0.888841, -0.450080,
		38.537537, 34.664612, 43.808655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950527, 35.426342, 43.593494>,  <38.477364, 35.286800, 44.123711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950527, 35.426342, 43.593494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878819, 35.045967, 43.492626>,  <38.835793, 34.817741, 43.432106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878819, 35.045967, 43.492626>,  <38.950527, 35.426342, 43.593494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878819, 35.045967, 43.492626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609882, 0.093705, -0.786933,
		0.771950, -0.294864, 0.563159,
		-0.179268, -0.950934, -0.252168,
		38.825039, 34.760689, 43.416977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645069, 35.009995, 43.585419>,  <38.950527, 35.426342, 43.593494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645069, 35.009995, 43.585419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.344604, 34.905594, 43.342888>,  <39.164326, 34.842953, 43.197369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.344604, 34.905594, 43.342888>,  <39.645069, 35.009995, 43.585419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344604, 34.905594, 43.342888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587647, 0.154016, -0.794324,
		0.300704, -0.952973, 0.037686,
		-0.751164, -0.261002, -0.606325,
		39.119255, 34.827293, 43.160992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882355, 34.472633, 43.112858>,  <39.645069, 35.009995, 43.585419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882355, 34.472633, 43.112858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.509251, 34.383701, 42.999348>,  <39.285389, 34.330341, 42.931240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.509251, 34.383701, 42.999348>,  <39.882355, 34.472633, 43.112858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509251, 34.383701, 42.999348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272975, 0.078580, -0.958807,
		0.235475, -0.971798, -0.012604,
		-0.932757, -0.222334, -0.283780,
		39.229424, 34.317001, 42.914215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920055, 34.062656, 42.601547>,  <39.882355, 34.472633, 43.112858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.920055, 34.062656, 42.601547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582836, 34.274517, 42.564163>,  <39.380505, 34.401634, 42.541733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582836, 34.274517, 42.564163>,  <39.920055, 34.062656, 42.601547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582836, 34.274517, 42.564163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208982, 0.162471, -0.964328,
		-0.495573, -0.832510, -0.247659,
		-0.843050, 0.529652, -0.093463,
		39.329922, 34.433411, 42.536125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621632, 33.762650, 42.033237>,  <39.920055, 34.062656, 42.601547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621632, 33.762650, 42.033237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438152, 34.115902, 42.072586>,  <39.328064, 34.327854, 42.096195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438152, 34.115902, 42.072586>,  <39.621632, 33.762650, 42.033237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438152, 34.115902, 42.072586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025355, 0.097648, -0.994898,
		-0.888231, -0.458851, -0.022399,
		-0.458697, 0.883131, 0.098368,
		39.300545, 34.380840, 42.102097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981693, 33.692917, 41.668594>,  <39.621632, 33.762650, 42.033237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981693, 33.692917, 41.668594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126965, 34.063728, 41.705959>,  <39.214127, 34.286213, 41.728378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126965, 34.063728, 41.705959>,  <38.981693, 33.692917, 41.668594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126965, 34.063728, 41.705959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021589, 0.091858, -0.995538,
		-0.931468, 0.363577, 0.013348,
		0.363181, 0.927024, 0.093412,
		39.235920, 34.341835, 41.733982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446205, 34.048233, 41.346691>,  <38.981693, 33.692917, 41.668594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446205, 34.048233, 41.346691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.763409, 34.291908, 41.344448>,  <38.953732, 34.438114, 41.343102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.763409, 34.291908, 41.344448>,  <38.446205, 34.048233, 41.346691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763409, 34.291908, 41.344448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100954, 0.122331, -0.987342,
		-0.600791, 0.783533, 0.158509,
		0.793006, 0.609188, -0.005606,
		39.001312, 34.474667, 41.342766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431568, 34.268215, 40.672527>,  <38.446205, 34.048233, 41.346691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431568, 34.268215, 40.672527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743355, 34.484928, 40.798325>,  <38.930428, 34.614956, 40.873802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743355, 34.484928, 40.798325>,  <38.431568, 34.268215, 40.672527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743355, 34.484928, 40.798325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182886, 0.283356, -0.941415,
		-0.599152, 0.791319, 0.121783,
		0.779468, 0.541778, 0.314494,
		38.977196, 34.647461, 40.892673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442120, 34.970226, 40.392254>,  <38.431568, 34.268215, 40.672527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442120, 34.970226, 40.392254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825710, 34.873833, 40.451977>,  <39.055866, 34.815998, 40.487812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825710, 34.873833, 40.451977>,  <38.442120, 34.970226, 40.392254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825710, 34.873833, 40.451977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182900, 0.123532, -0.975340,
		0.216593, 0.962636, 0.162540,
		0.958976, -0.240980, 0.149310,
		39.113403, 34.801540, 40.496769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738251, 35.454048, 40.075649>,  <38.442120, 34.970226, 40.392254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738251, 35.454048, 40.075649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013000, 35.164303, 40.099331>,  <39.177849, 34.990456, 40.113541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013000, 35.164303, 40.099331>,  <38.738251, 35.454048, 40.075649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013000, 35.164303, 40.099331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321019, 0.229300, -0.918895,
		0.652035, 0.650172, 0.390034,
		0.686875, -0.724360, 0.059206,
		39.219063, 34.946995, 40.117092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408413, 35.733765, 39.905754>,  <38.738251, 35.454048, 40.075649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408413, 35.733765, 39.905754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.432449, 35.338398, 39.850018>,  <39.446873, 35.101177, 39.816574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.432449, 35.338398, 39.850018>,  <39.408413, 35.733765, 39.905754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432449, 35.338398, 39.850018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324584, 0.151358, -0.933668,
		0.943946, 0.010875, 0.329920,
		0.060090, -0.988419, -0.139344,
		39.450478, 35.041874, 39.808216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089687, 35.582275, 39.724052>,  <39.408413, 35.733765, 39.905754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089687, 35.582275, 39.724052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869331, 35.280239, 39.581863>,  <39.737118, 35.099018, 39.496552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869331, 35.280239, 39.581863>,  <40.089687, 35.582275, 39.724052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869331, 35.280239, 39.581863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380508, 0.151840, -0.912227,
		0.742788, -0.637796, 0.203671,
		-0.550889, -0.755090, -0.355472,
		39.704063, 35.053711, 39.475224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471748, 35.280243, 39.199257>,  <40.089687, 35.582275, 39.724052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471748, 35.280243, 39.199257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.106361, 35.159348, 39.090275>,  <39.887131, 35.086811, 39.024887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.106361, 35.159348, 39.090275>,  <40.471748, 35.280243, 39.199257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106361, 35.159348, 39.090275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237050, 0.148967, -0.960009,
		0.330736, -0.941521, -0.064431,
		-0.913467, -0.302236, -0.272456,
		39.832321, 35.068676, 39.008537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529766, 34.755440, 38.660175>,  <40.471748, 35.280243, 39.199257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529766, 34.755440, 38.660175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168331, 34.918465, 38.607372>,  <39.951469, 35.016277, 38.575691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168331, 34.918465, 38.607372>,  <40.529766, 34.755440, 38.660175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168331, 34.918465, 38.607372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278907, 0.325740, -0.903385,
		-0.325182, -0.853105, -0.408005,
		-0.903586, 0.407560, -0.132012,
		39.897255, 35.040733, 38.567768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566998, 35.076988, 37.952362>,  <40.529766, 34.755440, 38.660175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566998, 35.076988, 37.952362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.185944, 35.152607, 38.047646>,  <39.957310, 35.197979, 38.104816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.185944, 35.152607, 38.047646>,  <40.566998, 35.076988, 37.952362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185944, 35.152607, 38.047646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060084, 0.650859, -0.756817,
		-0.298112, -0.735285, -0.608674,
		-0.952638, 0.189045, 0.238208,
		39.900154, 35.209320, 38.119106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189907, 35.049896, 37.341454>,  <40.566998, 35.076988, 37.952362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189907, 35.049896, 37.341454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.954998, 35.268021, 37.580700>,  <39.814053, 35.398895, 37.724247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.954998, 35.268021, 37.580700>,  <40.189907, 35.049896, 37.341454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954998, 35.268021, 37.580700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352185, 0.493188, -0.795444,
		-0.728752, -0.677789, -0.097583,
		-0.587270, 0.545314, 0.598119,
		39.778816, 35.431614, 37.760136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545498, 34.943974, 36.964176>,  <40.189907, 35.049896, 37.341454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545498, 34.943974, 36.964176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596790, 35.254471, 37.211075>,  <39.627567, 35.440769, 37.359215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596790, 35.254471, 37.211075>,  <39.545498, 34.943974, 36.964176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596790, 35.254471, 37.211075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243463, 0.627982, -0.739165,
		-0.961396, -0.055493, 0.269515,
		0.128232, 0.776247, 0.617250,
		39.635262, 35.487347, 37.396252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239742, 35.127216, 36.587162>,  <39.545498, 34.943974, 36.964176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239742, 35.127216, 36.587162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613640, 34.988487, 36.618046>,  <40.837978, 34.905251, 36.636578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613640, 34.988487, 36.618046>,  <40.239742, 35.127216, 36.587162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613640, 34.988487, 36.618046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354471, 0.895328, -0.269701,
		0.024407, 0.279472, 0.959844,
		0.934748, -0.346820, 0.077212,
		40.894066, 34.884441, 36.641209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715759, 35.606518, 36.957088>,  <40.239742, 35.127216, 36.587162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715759, 35.606518, 36.957088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.981045, 35.402554, 36.737949>,  <41.140217, 35.280174, 36.606464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.981045, 35.402554, 36.737949>,  <40.715759, 35.606518, 36.957088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.981045, 35.402554, 36.737949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399013, 0.860191, -0.317585,
		0.633193, -0.007970, 0.773953,
		0.663216, -0.509910, -0.547847,
		41.180008, 35.249580, 36.573597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301804, 35.838573, 37.184563>,  <40.715759, 35.606518, 36.957088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301804, 35.838573, 37.184563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.275974, 35.717152, 36.804314>,  <41.260475, 35.644299, 36.576164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.275974, 35.717152, 36.804314>,  <41.301804, 35.838573, 37.184563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.275974, 35.717152, 36.804314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035536, 0.951307, -0.306191,
		0.997280, -0.053554, -0.050645,
		-0.064577, -0.303558, -0.950622,
		41.256599, 35.626083, 36.519127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869957, 36.137684, 36.754951>,  <41.301804, 35.838573, 37.184563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.869957, 36.137684, 36.754951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.855930, 35.908585, 37.082542>,  <41.847515, 35.771126, 37.279099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.855930, 35.908585, 37.082542>,  <41.869957, 36.137684, 36.754951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.855930, 35.908585, 37.082542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686332, -0.609478, -0.396845,
		0.726443, 0.548176, 0.414469,
		-0.035069, -0.572748, 0.818981,
		41.845409, 35.736759, 37.328236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.503635, 36.122856, 37.242119>,  <41.869957, 36.137684, 36.754951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.503635, 36.122856, 37.242119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.318325, 35.768398, 37.246651>,  <42.207138, 35.555725, 37.249371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.318325, 35.768398, 37.246651>,  <42.503635, 36.122856, 37.242119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.318325, 35.768398, 37.246651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826355, -0.436572, -0.355729,
		0.320173, -0.155436, 0.934521,
		-0.463279, -0.886140, 0.011333,
		42.179340, 35.502556, 37.250050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.087322, 35.624409, 37.402046>,  <42.503635, 36.122856, 37.242119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.087322, 35.624409, 37.402046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.783451, 35.493996, 37.176975>,  <42.601128, 35.415749, 37.041935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.783451, 35.493996, 37.176975>,  <43.087322, 35.624409, 37.402046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.783451, 35.493996, 37.176975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624314, -0.607808, -0.490715,
		-0.182010, -0.724069, 0.665279,
		-0.759674, -0.326028, -0.562674,
		42.555550, 35.396187, 37.008175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.827427, 35.027725, 37.784374>,  <43.087322, 35.624409, 37.402046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.827427, 35.027725, 37.784374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766605, 34.659916, 37.639404>,  <42.730114, 34.439228, 37.552422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766605, 34.659916, 37.639404>,  <42.827427, 35.027725, 37.784374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.766605, 34.659916, 37.639404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984493, -0.173365, 0.026810,
		-0.087484, -0.352728, 0.931627,
		-0.152055, -0.919526, -0.362425,
		42.720989, 34.384060, 37.530678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.318317, 34.533993, 38.134613>,  <42.827427, 35.027725, 37.784374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.318317, 34.533993, 38.134613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.217880, 34.388840, 37.775665>,  <43.157619, 34.301750, 37.560295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.217880, 34.388840, 37.775665>,  <43.318317, 34.533993, 38.134613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.217880, 34.388840, 37.775665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954786, -0.245301, -0.167963,
		-0.159175, -0.898969, 0.408067,
		-0.251093, -0.362881, -0.897368,
		43.142551, 34.279976, 37.506454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.650486, 33.771126, 38.055485>,  <43.318317, 34.533993, 38.134613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.650486, 33.771126, 38.055485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.622837, 34.023762, 37.746597>,  <43.606247, 34.175343, 37.561264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.622837, 34.023762, 37.746597>,  <43.650486, 33.771126, 38.055485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.622837, 34.023762, 37.746597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993212, -0.029027, -0.112641,
		-0.093558, -0.774758, -0.625298,
		-0.069120, 0.631592, -0.772214,
		43.602100, 34.213238, 37.514935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.936520, 33.558056, 37.296299>,  <43.650486, 33.771126, 38.055485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.936520, 33.558056, 37.296299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.954304, 33.947853, 37.384289>,  <43.964973, 34.181732, 37.437084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.954304, 33.947853, 37.384289>,  <43.936520, 33.558056, 37.296299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.954304, 33.947853, 37.384289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962666, 0.017059, -0.270155,
		-0.267016, 0.223777, -0.937351,
		0.044464, 0.974491, 0.219977,
		43.967644, 34.240200, 37.450283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.418316, 33.995838, 36.806900>,  <43.936520, 33.558056, 37.296299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.418316, 33.995838, 36.806900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.388290, 34.201012, 37.148956>,  <44.370274, 34.324116, 37.354191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.388290, 34.201012, 37.148956>,  <44.418316, 33.995838, 36.806900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.388290, 34.201012, 37.148956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908279, 0.389120, -0.153674,
		-0.411576, 0.765167, -0.495100,
		-0.075067, 0.512937, 0.855137,
		44.365768, 34.354893, 37.405499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.520187, 34.713104, 36.686592>,  <44.418316, 33.995838, 36.806900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.520187, 34.713104, 36.686592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.619362, 34.592331, 37.054802>,  <44.678867, 34.519867, 37.275726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.619362, 34.592331, 37.054802>,  <44.520187, 34.713104, 36.686592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.619362, 34.592331, 37.054802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931634, 0.334893, -0.141085,
		-0.265678, 0.892570, 0.364326,
		0.247939, -0.301935, 0.920522,
		44.693745, 34.501751, 37.330959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.092525, 35.235664, 37.029964>,  <44.520187, 34.713104, 36.686592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.092525, 35.235664, 37.029964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.104527, 34.866646, 37.183853>,  <45.111729, 34.645233, 37.276184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.104527, 34.866646, 37.183853>,  <45.092525, 35.235664, 37.029964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.104527, 34.866646, 37.183853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994581, -0.010772, -0.103402,
		0.099537, 0.385738, 0.917223,
		0.030005, -0.922545, 0.384720,
		45.113529, 34.589882, 37.299271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.476234, 35.267143, 37.669289>,  <45.092525, 35.235664, 37.029964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.476234, 35.267143, 37.669289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.496845, 34.942833, 37.436054>,  <45.509212, 34.748245, 37.296116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.496845, 34.942833, 37.436054>,  <45.476234, 35.267143, 37.669289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.496845, 34.942833, 37.436054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972288, 0.174042, -0.156091,
		0.228036, -0.558882, 0.797277,
		0.051523, -0.810777, -0.583083,
		45.512302, 34.699600, 37.261127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.012825, 34.887341, 37.824402>,  <45.476234, 35.267143, 37.669289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.012825, 34.887341, 37.824402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.973175, 34.817390, 37.432568>,  <45.949387, 34.775421, 37.197468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.973175, 34.817390, 37.432568>,  <46.012825, 34.887341, 37.824402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.973175, 34.817390, 37.432568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944137, 0.294405, -0.148093,
		0.314294, -0.939545, 0.135923,
		-0.099124, -0.174875, -0.979588,
		45.943439, 34.764927, 37.138691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.607914, 34.483852, 37.568382>,  <46.012825, 34.887341, 37.824402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.607914, 34.483852, 37.568382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.449230, 34.732552, 37.298256>,  <46.354019, 34.881771, 37.136181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.449230, 34.732552, 37.298256>,  <46.607914, 34.483852, 37.568382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.449230, 34.732552, 37.298256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903576, 0.394146, -0.167924,
		0.161768, -0.676818, -0.718156,
		-0.396712, 0.621744, -0.675318,
		46.330215, 34.919075, 37.095661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.221828, 34.492157, 37.010464>,  <46.607914, 34.483852, 37.568382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.221828, 34.492157, 37.010464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.985157, 34.813965, 36.989777>,  <46.843155, 35.007050, 36.977364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.985157, 34.813965, 36.989777>,  <47.221828, 34.492157, 37.010464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.985157, 34.813965, 36.989777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804797, 0.585699, -0.096218,
		-0.047119, -0.098550, -0.994016,
		-0.591677, 0.804515, -0.051715,
		46.807655, 35.055321, 36.974262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.243614, 34.967018, 36.335464>,  <47.221828, 34.492157, 37.010464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.243614, 34.967018, 36.335464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.167397, 35.198071, 36.652962>,  <47.121666, 35.336700, 36.843460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.167397, 35.198071, 36.652962>,  <47.243614, 34.967018, 36.335464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.167397, 35.198071, 36.652962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925292, 0.375765, -0.051330,
		-0.327912, 0.724667, -0.606078,
		-0.190545, 0.577631, 0.793747,
		47.110233, 35.371361, 36.891087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.546188, 35.456947, 36.124722>,  <47.243614, 34.967018, 36.335464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.546188, 35.456947, 36.124722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.522724, 35.507595, 36.520809>,  <47.508644, 35.537983, 36.758461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.522724, 35.507595, 36.520809>,  <47.546188, 35.456947, 36.124722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.522724, 35.507595, 36.520809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699856, 0.712556, -0.049656,
		-0.711871, 0.690095, -0.130414,
		-0.058659, 0.126619, 0.990215,
		47.505127, 35.545582, 36.817875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.493706, 35.283192, 35.472256>,  <47.546188, 35.456947, 36.124722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.493706, 35.283192, 35.472256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.696831, 34.955410, 35.578556>,  <47.818707, 34.758743, 35.642334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.696831, 34.955410, 35.578556>,  <47.493706, 35.283192, 35.472256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.696831, 34.955410, 35.578556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092221, -0.358422, -0.928994,
		0.856515, 0.447251, -0.257583,
		0.507817, -0.819451, 0.265748,
		47.849174, 34.709576, 35.658279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.997288, 35.151516, 34.916870>,  <47.493706, 35.283192, 35.472256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.997288, 35.151516, 34.916870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.889637, 34.830929, 35.130493>,  <47.825047, 34.638577, 35.258667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.889637, 34.830929, 35.130493>,  <47.997288, 35.151516, 34.916870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.889637, 34.830929, 35.130493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218416, -0.489278, -0.844335,
		0.938011, -0.343879, -0.043376,
		-0.269126, -0.801470, 0.534057,
		47.808899, 34.590488, 35.290710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.081829, 38.139629, 29.243118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.123669, 38.407681, 29.537052>,  <34.148773, 38.568512, 29.713413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.123669, 38.407681, 29.537052>,  <34.081829, 38.139629, 29.243118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123669, 38.407681, 29.537052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482561, 0.611879, -0.626689,
		-0.869594, 0.420155, -0.259376,
		0.104600, 0.670130, 0.734836,
		34.155048, 38.608719, 29.757504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793079, 37.605499, 28.708269>,  <34.081829, 38.139629, 29.243118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793079, 37.605499, 28.708269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.633762, 37.302937, 28.500723>,  <33.538174, 37.121399, 28.376196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.633762, 37.302937, 28.500723>,  <33.793079, 37.605499, 28.708269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633762, 37.302937, 28.500723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061298, -0.542455, 0.837846,
		-0.915209, 0.365511, 0.169688,
		-0.398290, -0.756402, -0.518865,
		33.514275, 37.076015, 28.345064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190777, 37.434441, 29.115562>,  <33.793079, 37.605499, 28.708269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190777, 37.434441, 29.115562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.308071, 37.123341, 28.893169>,  <33.378448, 36.936680, 28.759733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.308071, 37.123341, 28.893169>,  <33.190777, 37.434441, 29.115562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308071, 37.123341, 28.893169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147205, -0.611346, 0.777552,
		-0.944638, -0.146165, -0.293759,
		0.293239, -0.777748, -0.555985,
		33.396042, 36.890015, 28.726374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717777, 36.992558, 29.282581>,  <33.190777, 37.434441, 29.115562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717777, 36.992558, 29.282581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.024982, 36.787048, 29.129642>,  <33.209305, 36.663742, 29.037878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.024982, 36.787048, 29.129642>,  <32.717777, 36.992558, 29.282581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024982, 36.787048, 29.129642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081667, -0.670709, 0.737211,
		-0.635203, -0.534964, -0.557073,
		0.768016, -0.513773, -0.382348,
		33.255386, 36.632915, 29.014938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495880, 36.293304, 29.289690>,  <32.717777, 36.992558, 29.282581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495880, 36.293304, 29.289690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.894367, 36.274738, 29.260284>,  <33.133457, 36.263599, 29.242641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.894367, 36.274738, 29.260284>,  <32.495880, 36.293304, 29.289690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894367, 36.274738, 29.260284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037192, -0.536784, 0.842899,
		-0.078582, -0.842442, -0.533026,
		0.996213, -0.046412, -0.073514,
		33.193230, 36.260815, 29.238230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641659, 35.573635, 29.529278>,  <32.495880, 36.293304, 29.289690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641659, 35.573635, 29.529278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.000454, 35.750378, 29.534622>,  <33.215729, 35.856422, 29.537828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.000454, 35.750378, 29.534622>,  <32.641659, 35.573635, 29.529278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000454, 35.750378, 29.534622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264135, -0.559951, 0.785295,
		0.354472, -0.700868, -0.618978,
		0.896985, 0.441859, 0.013363,
		33.269550, 35.882935, 29.538631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197559, 34.982647, 29.597395>,  <32.641659, 35.573635, 29.529278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197559, 34.982647, 29.597395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.356247, 35.328178, 29.721594>,  <33.451458, 35.535500, 29.796114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.356247, 35.328178, 29.721594>,  <33.197559, 34.982647, 29.597395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356247, 35.328178, 29.721594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380591, -0.462599, 0.800720,
		0.835325, -0.199485, -0.512287,
		0.396715, 0.863833, 0.310499,
		33.475262, 35.587330, 29.814743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628994, 34.772202, 30.044949>,  <33.197559, 34.982647, 29.597395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628994, 34.772202, 30.044949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.614933, 35.162971, 30.129221>,  <33.606495, 35.397434, 30.179785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.614933, 35.162971, 30.129221>,  <33.628994, 34.772202, 30.044949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614933, 35.162971, 30.129221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374977, -0.182514, 0.908890,
		0.926367, 0.110954, -0.359907,
		-0.035156, 0.976923, 0.210680,
		33.604385, 35.456047, 30.192425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320091, 35.007908, 30.272448>,  <33.628994, 34.772202, 30.044949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320091, 35.007908, 30.272448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.043396, 35.254593, 30.422735>,  <33.877380, 35.402603, 30.512907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.043396, 35.254593, 30.422735>,  <34.320091, 35.007908, 30.272448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043396, 35.254593, 30.422735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220615, -0.314934, 0.923117,
		0.687626, 0.721443, 0.081795,
		-0.691736, 0.616715, 0.375718,
		33.835876, 35.439606, 30.535450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654274, 35.377174, 30.912077>,  <34.320091, 35.007908, 30.272448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654274, 35.377174, 30.912077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.262100, 35.448116, 30.946232>,  <34.026794, 35.490681, 30.966724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.262100, 35.448116, 30.946232>,  <34.654274, 35.377174, 30.912077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262100, 35.448116, 30.946232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042439, -0.233125, 0.971520,
		0.192212, 0.956136, 0.221037,
		-0.980435, 0.177357, 0.085387,
		33.967968, 35.501324, 30.971848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613323, 35.846096, 31.475508>,  <34.654274, 35.377174, 30.912077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613323, 35.846096, 31.475508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.249718, 35.683830, 31.437304>,  <34.031555, 35.586472, 31.414381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.249718, 35.683830, 31.437304>,  <34.613323, 35.846096, 31.475508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249718, 35.683830, 31.437304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020546, -0.185280, 0.982471,
		-0.416252, 0.895045, 0.160088,
		-0.909017, -0.405666, -0.095513,
		33.977013, 35.562130, 31.408649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102085, 36.179512, 31.959564>,  <34.613323, 35.846096, 31.475508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102085, 36.179512, 31.959564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.984047, 35.806087, 31.878197>,  <33.913223, 35.582031, 31.829376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.984047, 35.806087, 31.878197>,  <34.102085, 36.179512, 31.959564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984047, 35.806087, 31.878197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013531, -0.216963, 0.976086,
		-0.955371, 0.285289, 0.076657,
		-0.295098, -0.933562, -0.203420,
		33.895519, 35.526020, 31.817171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837681, 36.029251, 32.541687>,  <34.102085, 36.179512, 31.959564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837681, 36.029251, 32.541687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.823708, 35.666508, 32.373695>,  <33.815323, 35.448860, 32.272900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.823708, 35.666508, 32.373695>,  <33.837681, 36.029251, 32.541687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823708, 35.666508, 32.373695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114700, -0.413821, 0.903103,
		-0.992786, 0.079721, -0.089561,
		-0.034934, -0.906861, -0.419980,
		33.813229, 35.394451, 32.247700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389835, 35.606846, 32.912975>,  <33.837681, 36.029251, 32.541687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389835, 35.606846, 32.912975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.646111, 35.337353, 32.765678>,  <33.799877, 35.175655, 32.677299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.646111, 35.337353, 32.765678>,  <33.389835, 35.606846, 32.912975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646111, 35.337353, 32.765678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172575, -0.340968, 0.924099,
		-0.748154, -0.655610, -0.102186,
		0.640690, -0.673733, -0.368238,
		33.838318, 35.135231, 32.655209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166557, 35.023529, 33.227085>,  <33.389835, 35.606846, 32.912975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166557, 35.023529, 33.227085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.517784, 34.916939, 33.068096>,  <33.728519, 34.852985, 32.972702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.517784, 34.916939, 33.068096>,  <33.166557, 35.023529, 33.227085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517784, 34.916939, 33.068096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212301, -0.527474, 0.822617,
		-0.428861, -0.806700, -0.406587,
		0.878070, -0.266470, -0.397476,
		33.781204, 34.836998, 32.948853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252914, 34.275646, 33.257748>,  <33.166557, 35.023529, 33.227085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252914, 34.275646, 33.257748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.624142, 34.423977, 33.244019>,  <33.846878, 34.512974, 33.235783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.624142, 34.423977, 33.244019>,  <33.252914, 34.275646, 33.257748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624142, 34.423977, 33.244019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234524, -0.510374, 0.827355,
		0.289287, -0.775891, -0.560629,
		0.928069, 0.370824, -0.034320,
		33.902561, 34.535225, 33.233723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691605, 33.770172, 33.339207>,  <33.252914, 34.275646, 33.257748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691605, 33.770172, 33.339207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.916065, 34.082256, 33.449745>,  <34.050743, 34.269508, 33.516068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.916065, 34.082256, 33.449745>,  <33.691605, 33.770172, 33.339207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916065, 34.082256, 33.449745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335220, -0.519491, 0.785975,
		0.756791, -0.348417, -0.553059,
		0.561156, 0.780215, 0.276350,
		34.084412, 34.316322, 33.532650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375633, 33.475876, 33.514297>,  <33.691605, 33.770172, 33.339207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375633, 33.475876, 33.514297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.388569, 33.828739, 33.702232>,  <34.396328, 34.040459, 33.814995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.388569, 33.828739, 33.702232>,  <34.375633, 33.475876, 33.514297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388569, 33.828739, 33.702232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325237, -0.453787, 0.829638,
		0.945079, 0.125981, -0.301585,
		0.032337, 0.882160, 0.469838,
		34.398270, 34.093388, 33.843185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080364, 33.482052, 33.915813>,  <34.375633, 33.475876, 33.514297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080364, 33.482052, 33.915813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.827038, 33.745098, 34.079010>,  <34.675041, 33.902927, 34.176926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.827038, 33.745098, 34.079010>,  <35.080364, 33.482052, 33.915813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827038, 33.745098, 34.079010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353166, -0.223506, 0.908471,
		0.688611, 0.719436, -0.090697,
		-0.633315, 0.657614, 0.407989,
		34.637043, 33.942383, 34.201408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516731, 33.755501, 34.355221>,  <35.080364, 33.482052, 33.915813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516731, 33.755501, 34.355221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.149464, 33.847626, 34.484161>,  <34.929104, 33.902901, 34.561527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.149464, 33.847626, 34.484161>,  <35.516731, 33.755501, 34.355221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149464, 33.847626, 34.484161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253245, -0.284525, 0.924615,
		0.304672, 0.930591, 0.202917,
		-0.918173, 0.230316, 0.322354,
		34.874012, 33.916721, 34.580868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632103, 34.237236, 34.799667>,  <35.516731, 33.755501, 34.355221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632103, 34.237236, 34.799667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.282860, 34.064575, 34.890320>,  <35.073315, 33.960979, 34.944710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.282860, 34.064575, 34.890320>,  <35.632103, 34.237236, 34.799667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282860, 34.064575, 34.890320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337666, -0.200111, 0.919748,
		-0.351662, 0.879563, 0.320473,
		-0.873107, -0.431653, 0.226627,
		35.020927, 33.935078, 34.958309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388397, 34.469074, 35.509727>,  <35.632103, 34.237236, 34.799667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388397, 34.469074, 35.509727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.278214, 34.106213, 35.382484>,  <35.212105, 33.888496, 35.306141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.278214, 34.106213, 35.382484>,  <35.388397, 34.469074, 35.509727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278214, 34.106213, 35.382484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318317, -0.398311, 0.860246,
		-0.907082, 0.135703, 0.398481,
		-0.275458, -0.907157, -0.318104,
		35.195576, 33.834064, 35.287052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970886, 34.500332, 35.847412>,  <35.388397, 34.469074, 35.509727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970886, 34.500332, 35.847412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.356358, 34.585384, 35.912060>,  <36.587639, 34.636414, 35.950848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.356358, 34.585384, 35.912060>,  <35.970886, 34.500332, 35.847412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356358, 34.585384, 35.912060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092138, 0.303303, -0.948429,
		-0.250681, 0.928869, 0.272695,
		0.963675, 0.212628, 0.161616,
		36.645458, 34.649174, 35.960545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055611, 35.223614, 35.769920>,  <35.970886, 34.500332, 35.847412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055611, 35.223614, 35.769920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.399761, 35.032898, 35.697887>,  <36.606251, 34.918468, 35.654667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.399761, 35.032898, 35.697887>,  <36.055611, 35.223614, 35.769920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399761, 35.032898, 35.697887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089579, 0.489298, -0.867504,
		0.501727, 0.730247, 0.463690,
		0.860375, -0.476787, -0.180079,
		36.657875, 34.889862, 35.643864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447689, 35.766693, 35.514500>,  <36.055611, 35.223614, 35.769920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447689, 35.766693, 35.514500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.622189, 35.419716, 35.418808>,  <36.726887, 35.211529, 35.361393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.622189, 35.419716, 35.418808>,  <36.447689, 35.766693, 35.514500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622189, 35.419716, 35.418808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106407, 0.313722, -0.943533,
		0.893512, 0.386161, 0.229164,
		0.436250, -0.867443, -0.239224,
		36.753063, 35.159481, 35.347042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947456, 36.019405, 35.117306>,  <36.447689, 35.766693, 35.514500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947456, 36.019405, 35.117306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.920673, 35.635956, 35.006626>,  <36.904606, 35.405888, 34.940220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.920673, 35.635956, 35.006626>,  <36.947456, 36.019405, 35.117306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920673, 35.635956, 35.006626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227614, 0.255332, -0.939679,
		0.971447, -0.125895, 0.201101,
		-0.066953, -0.958622, -0.276697,
		36.900589, 35.348370, 34.923618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539948, 35.900002, 34.677254>,  <36.947456, 36.019405, 35.117306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539948, 35.900002, 34.677254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.254150, 35.634499, 34.588772>,  <37.082672, 35.475197, 34.535683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.254150, 35.634499, 34.588772>,  <37.539948, 35.900002, 34.677254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254150, 35.634499, 34.588772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021904, 0.294796, -0.955309,
		0.699302, -0.687405, -0.196090,
		-0.714490, -0.663755, -0.221208,
		37.039803, 35.435371, 34.522408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747967, 35.717342, 33.995930>,  <37.539948, 35.900002, 34.677254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747967, 35.717342, 33.995930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.366764, 35.598568, 34.019978>,  <37.138042, 35.527306, 34.034405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.366764, 35.598568, 34.019978>,  <37.747967, 35.717342, 33.995930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366764, 35.598568, 34.019978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121307, 0.192169, -0.973836,
		0.277613, -0.935361, -0.219158,
		-0.953003, -0.296934, 0.060117,
		37.080864, 35.509487, 34.038013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609970, 35.354580, 33.372829>,  <37.747967, 35.717342, 33.995930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609970, 35.354580, 33.372829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.239292, 35.431267, 33.502121>,  <37.016884, 35.477280, 33.579697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.239292, 35.431267, 33.502121>,  <37.609970, 35.354580, 33.372829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239292, 35.431267, 33.502121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251040, 0.324258, -0.912050,
		-0.279671, -0.926336, -0.252358,
		-0.926695, 0.191722, 0.323233,
		36.961285, 35.488785, 33.599091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123127, 34.996517, 32.823669>,  <37.609970, 35.354580, 33.372829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123127, 34.996517, 32.823669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.932316, 35.288738, 33.019112>,  <36.817829, 35.464069, 33.136375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.932316, 35.288738, 33.019112>,  <37.123127, 34.996517, 32.823669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932316, 35.288738, 33.019112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416376, 0.301736, -0.857663,
		-0.773997, -0.612577, 0.160246,
		-0.477032, 0.730551, 0.488605,
		36.789207, 35.507904, 33.165691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362690, 34.963852, 32.504036>,  <37.123127, 34.996517, 32.823669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362690, 34.963852, 32.504036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.398525, 35.336205, 32.645699>,  <36.420029, 35.559616, 32.730698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.398525, 35.336205, 32.645699>,  <36.362690, 34.963852, 32.504036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398525, 35.336205, 32.645699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565210, 0.340303, -0.751486,
		-0.820068, -0.132846, 0.556633,
		0.089592, 0.930885, 0.354157,
		36.425404, 35.615471, 32.751945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637421, 35.326672, 32.551884>,  <36.362690, 34.963852, 32.504036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637421, 35.326672, 32.551884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.917992, 35.611675, 32.544670>,  <36.086334, 35.782677, 32.540344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.917992, 35.611675, 32.544670>,  <35.637421, 35.326672, 32.551884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917992, 35.611675, 32.544670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568754, 0.544305, -0.616645,
		-0.429553, 0.442787, 0.787035,
		0.701430, 0.712511, -0.018030,
		36.128422, 35.825428, 32.539261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313339, 36.044540, 32.522289>,  <35.637421, 35.326672, 32.551884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313339, 36.044540, 32.522289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.685574, 36.096935, 32.385551>,  <35.908913, 36.128372, 32.303509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.685574, 36.096935, 32.385551>,  <35.313339, 36.044540, 32.522289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685574, 36.096935, 32.385551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360893, 0.484848, -0.796667,
		0.061389, 0.864734, 0.498464,
		0.930584, 0.130986, -0.341841,
		35.964748, 36.136230, 32.283001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252338, 36.635586, 32.118244>,  <35.313339, 36.044540, 32.522289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252338, 36.635586, 32.118244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.617722, 36.513802, 32.010246>,  <35.836952, 36.440731, 31.945446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.617722, 36.513802, 32.010246>,  <35.252338, 36.635586, 32.118244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617722, 36.513802, 32.010246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106713, 0.461051, -0.880934,
		0.392694, 0.833507, 0.388660,
		0.913457, -0.304462, -0.269998,
		35.891758, 36.422462, 31.929247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494080, 37.209572, 31.861521>,  <35.252338, 36.635586, 32.118244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494080, 37.209572, 31.861521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.730583, 36.929214, 31.701939>,  <35.872486, 36.761002, 31.606190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.730583, 36.929214, 31.701939>,  <35.494080, 37.209572, 31.861521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730583, 36.929214, 31.701939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072002, 0.446836, -0.891714,
		0.803264, 0.555956, 0.213728,
		0.591255, -0.700893, -0.398958,
		35.907959, 36.718948, 31.582251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001072, 37.600231, 31.523735>,  <35.494080, 37.209572, 31.861521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001072, 37.600231, 31.523735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.004078, 37.230129, 31.372026>,  <36.005882, 37.008068, 31.281002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.004078, 37.230129, 31.372026>,  <36.001072, 37.600231, 31.523735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004078, 37.230129, 31.372026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196178, 0.373276, -0.906741,
		0.980539, -0.067593, 0.184319,
		0.007512, -0.925255, -0.379272,
		36.006332, 36.952553, 31.258245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519550, 37.676483, 31.035749>,  <36.001072, 37.600231, 31.523735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519550, 37.676483, 31.035749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.333076, 37.337933, 30.932741>,  <36.221191, 37.134800, 30.870935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.333076, 37.337933, 30.932741>,  <36.519550, 37.676483, 31.035749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333076, 37.337933, 30.932741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258142, 0.148283, -0.954660,
		0.846190, -0.511521, 0.149359,
		-0.466181, -0.846379, -0.257521,
		36.193222, 37.084019, 30.855484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929432, 37.306427, 30.532808>,  <36.519550, 37.676483, 31.035749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929432, 37.306427, 30.532808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.552975, 37.177952, 30.490698>,  <36.327099, 37.100868, 30.465431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.552975, 37.177952, 30.490698>,  <36.929432, 37.306427, 30.532808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552975, 37.177952, 30.490698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024488, 0.375443, -0.926522,
		0.337108, -0.869416, -0.361212,
		-0.941147, -0.321183, -0.105275,
		36.270630, 37.081596, 30.459116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946053, 36.859871, 29.940184>,  <36.929432, 37.306427, 30.532808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946053, 36.859871, 29.940184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.566010, 36.960682, 30.013695>,  <36.337982, 37.021168, 30.057800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.566010, 36.960682, 30.013695>,  <36.946053, 36.859871, 29.940184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566010, 36.960682, 30.013695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091953, 0.336693, -0.937114,
		-0.298051, -0.907261, -0.296721,
		-0.950111, 0.252024, 0.183777,
		36.280975, 37.036289, 30.068829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608021, 36.613735, 29.339228>,  <36.946053, 36.859871, 29.940184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608021, 36.613735, 29.339228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.319042, 36.855129, 29.474213>,  <36.145657, 36.999966, 29.555202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.319042, 36.855129, 29.474213>,  <36.608021, 36.613735, 29.339228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319042, 36.855129, 29.474213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167776, 0.320471, -0.932282,
		-0.670766, -0.730138, -0.130271,
		-0.722443, 0.603487, 0.337461,
		36.102310, 37.036175, 29.575451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.108307, 36.599319, 28.823507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.971859, 36.924934, 29.011539>,  <35.889992, 37.120304, 29.124359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.971859, 36.924934, 29.011539>,  <36.108307, 36.599319, 28.823507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971859, 36.924934, 29.011539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016150, 0.505075, -0.862924,
		-0.939882, -0.286767, -0.185437,
		-0.341118, 0.814041, 0.470079,
		35.869522, 37.169147, 29.152563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527679, 36.904034, 28.403162>,  <36.108307, 36.599319, 28.823507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527679, 36.904034, 28.403162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.664921, 37.195820, 28.639856>,  <35.747265, 37.370892, 28.781874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.664921, 37.195820, 28.639856>,  <35.527679, 36.904034, 28.403162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664921, 37.195820, 28.639856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146734, 0.580619, -0.800844,
		-0.927764, 0.361604, 0.092176,
		0.343107, 0.729469, 0.591737,
		35.767853, 37.414661, 28.817377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080776, 37.460331, 28.341415>,  <35.527679, 36.904034, 28.403162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080776, 37.460331, 28.341415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.418919, 37.633179, 28.467043>,  <35.621803, 37.736889, 28.542419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.418919, 37.633179, 28.467043>,  <35.080776, 37.460331, 28.341415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418919, 37.633179, 28.467043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019245, 0.612181, -0.790483,
		-0.533851, 0.662198, 0.525829,
		0.845359, 0.432120, 0.314070,
		35.672527, 37.762814, 28.561264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960243, 38.181831, 28.244852>,  <35.080776, 37.460331, 28.341415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960243, 38.181831, 28.244852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.353687, 38.111401, 28.260370>,  <35.589756, 38.069141, 28.269682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.353687, 38.111401, 28.260370>,  <34.960243, 38.181831, 28.244852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353687, 38.111401, 28.260370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136645, 0.587624, -0.797512,
		0.117626, 0.789743, 0.602054,
		0.983612, -0.176076, 0.038795,
		35.648769, 38.058578, 28.272009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273251, 38.824631, 28.016226>,  <34.960243, 38.181831, 28.244852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273251, 38.824631, 28.016226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.548199, 38.539135, 27.962414>,  <35.713169, 38.367836, 27.930126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.548199, 38.539135, 27.962414>,  <35.273251, 38.824631, 28.016226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548199, 38.539135, 27.962414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048829, 0.230219, -0.971913,
		0.724664, 0.661495, 0.193097,
		0.687370, -0.713739, -0.134531,
		35.754410, 38.325012, 27.922054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832035, 39.157303, 27.555172>,  <35.273251, 38.824631, 28.016226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832035, 39.157303, 27.555172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.877502, 38.762474, 27.509966>,  <35.904781, 38.525578, 27.482841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.877502, 38.762474, 27.509966>,  <35.832035, 39.157303, 27.555172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877502, 38.762474, 27.509966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188092, 0.133076, -0.973094,
		0.975552, 0.089353, 0.200787,
		0.113669, -0.987070, -0.113016,
		35.911602, 38.466354, 27.476061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355503, 39.120945, 27.167023>,  <35.832035, 39.157303, 27.555172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355503, 39.120945, 27.167023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.183701, 38.761509, 27.131088>,  <36.080620, 38.545849, 27.109528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.183701, 38.761509, 27.131088>,  <36.355503, 39.120945, 27.167023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183701, 38.761509, 27.131088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073261, 0.064482, -0.995226,
		0.900089, -0.434035, 0.038136,
		-0.429504, -0.898585, -0.089838,
		36.054848, 38.491932, 27.104137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718105, 38.865215, 26.600433>,  <36.355503, 39.120945, 27.167023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718105, 38.865215, 26.600433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.403893, 38.618500, 26.620483>,  <36.215366, 38.470470, 26.632513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.403893, 38.618500, 26.620483>,  <36.718105, 38.865215, 26.600433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403893, 38.618500, 26.620483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174374, 0.142906, -0.974254,
		0.593745, -0.774048, -0.219809,
		-0.785532, -0.616788, 0.050124,
		36.168232, 38.433464, 26.635521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815319, 38.249924, 26.196405>,  <36.718105, 38.865215, 26.600433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815319, 38.249924, 26.196405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.428974, 38.349861, 26.223797>,  <36.197166, 38.409824, 26.240231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.428974, 38.349861, 26.223797>,  <36.815319, 38.249924, 26.196405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428974, 38.349861, 26.223797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002854, 0.254056, -0.967185,
		-0.259040, -0.934363, -0.244670,
		-0.965862, 0.249841, 0.068478,
		36.139214, 38.424812, 26.244341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761307, 38.178226, 25.605913>,  <36.815319, 38.249924, 26.196405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761307, 38.178226, 25.605913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.401920, 38.324848, 25.702578>,  <36.186291, 38.412823, 25.760576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.401920, 38.324848, 25.702578>,  <36.761307, 38.178226, 25.605913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401920, 38.324848, 25.702578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125918, 0.312173, -0.941644,
		-0.420604, -0.876463, -0.234320,
		-0.898463, 0.366554, 0.241663,
		36.132381, 38.434814, 25.775076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286674, 38.035942, 25.023399>,  <36.761307, 38.178226, 25.605913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286674, 38.035942, 25.023399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.130634, 38.345486, 25.222980>,  <36.037010, 38.531212, 25.342730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.130634, 38.345486, 25.222980>,  <36.286674, 38.035942, 25.023399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130634, 38.345486, 25.222980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111374, 0.498252, -0.859849,
		-0.914010, -0.391001, -0.108182,
		-0.390104, 0.773862, 0.498955,
		36.013603, 38.577644, 25.372667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631367, 38.244003, 24.629049>,  <36.286674, 38.035942, 25.023399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631367, 38.244003, 24.629049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.728127, 38.556625, 24.859062>,  <35.786182, 38.744198, 24.997070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.728127, 38.556625, 24.859062>,  <35.631367, 38.244003, 24.629049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728127, 38.556625, 24.859062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217629, 0.621234, -0.752799,
		-0.945580, 0.056958, 0.320364,
		0.241899, 0.781553, 0.575031,
		35.800697, 38.791092, 25.031572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042973, 38.658302, 24.463711>,  <35.631367, 38.244003, 24.629049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042973, 38.658302, 24.463711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.344700, 38.877724, 24.607985>,  <35.525738, 39.009377, 24.694550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.344700, 38.877724, 24.607985>,  <35.042973, 38.658302, 24.463711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344700, 38.877724, 24.607985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275579, 0.763220, -0.584424,
		-0.595869, 0.341444, 0.726881,
		0.754318, 0.548553, 0.360684,
		35.570995, 39.042290, 24.716190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752979, 39.297832, 24.560394>,  <35.042973, 38.658302, 24.463711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752979, 39.297832, 24.560394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.147549, 39.356182, 24.530203>,  <35.384289, 39.391190, 24.512089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.147549, 39.356182, 24.530203>,  <34.752979, 39.297832, 24.560394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147549, 39.356182, 24.530203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163943, 0.846825, -0.505975,
		-0.009892, 0.511478, 0.859240,
		0.986420, 0.145871, -0.075477,
		35.443474, 39.399944, 24.507561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756668, 39.962933, 24.643404>,  <34.752979, 39.297832, 24.560394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756668, 39.962933, 24.643404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.128757, 39.897205, 24.512140>,  <35.352009, 39.857769, 24.433382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.128757, 39.897205, 24.512140>,  <34.756668, 39.962933, 24.643404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128757, 39.897205, 24.512140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049522, 0.829797, -0.555865,
		0.363643, 0.533328, 0.763757,
		0.930221, -0.164314, -0.328161,
		35.407825, 39.847912, 24.413692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261318, 40.656166, 24.776276>,  <34.756668, 39.962933, 24.643404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261318, 40.656166, 24.776276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.412094, 40.423721, 24.487770>,  <35.502560, 40.284256, 24.314667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.412094, 40.423721, 24.487770>,  <35.261318, 40.656166, 24.776276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412094, 40.423721, 24.487770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132721, 0.804556, -0.578857,
		0.916679, 0.122468, 0.380397,
		0.376942, -0.581112, -0.721265,
		35.525177, 40.249386, 24.271391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941502, 40.991882, 24.549940>,  <35.261318, 40.656166, 24.776276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941502, 40.991882, 24.549940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.813107, 40.750290, 24.258139>,  <35.736069, 40.605335, 24.083057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.813107, 40.750290, 24.258139>,  <35.941502, 40.991882, 24.549940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813107, 40.750290, 24.258139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233281, 0.696110, -0.678977,
		0.917903, -0.388123, -0.082547,
		-0.320988, -0.603979, -0.729504,
		35.716808, 40.569096, 24.039288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513226, 40.928501, 24.027128>,  <35.941502, 40.991882, 24.549940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513226, 40.928501, 24.027128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.159332, 40.855228, 23.855690>,  <35.946999, 40.811264, 23.752827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.159332, 40.855228, 23.855690>,  <36.513226, 40.928501, 24.027128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159332, 40.855228, 23.855690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242900, 0.603605, -0.759382,
		0.397806, -0.775955, -0.489535,
		-0.884732, -0.183179, -0.428597,
		35.893913, 40.800274, 23.727110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578049, 40.911362, 23.269629>,  <36.513226, 40.928501, 24.027128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578049, 40.911362, 23.269629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.183357, 40.965317, 23.305771>,  <35.946541, 40.997688, 23.327456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.183357, 40.965317, 23.305771>,  <36.578049, 40.911362, 23.269629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183357, 40.965317, 23.305771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014394, 0.481662, -0.876239,
		-0.161713, -0.865914, -0.473330,
		-0.986733, 0.134886, 0.090355,
		35.887337, 41.005783, 23.332878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474503, 41.076805, 22.520433>,  <36.578049, 40.911362, 23.269629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474503, 41.076805, 22.520433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.155838, 41.201843, 22.727358>,  <35.964638, 41.276867, 22.851513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.155838, 41.201843, 22.727358>,  <36.474503, 41.076805, 22.520433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155838, 41.201843, 22.727358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101384, 0.774635, -0.624229,
		-0.595860, -0.549746, -0.585431,
		-0.796663, 0.312600, 0.517310,
		35.916840, 41.295624, 22.882551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928459, 41.359150, 22.010296>,  <36.474503, 41.076805, 22.520433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928459, 41.359150, 22.010296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.836742, 41.499981, 22.373276>,  <35.781712, 41.584480, 22.591064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.836742, 41.499981, 22.373276>,  <35.928459, 41.359150, 22.010296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836742, 41.499981, 22.373276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104634, 0.917970, -0.382599,
		-0.967717, -0.182677, -0.173643,
		-0.229291, 0.352079, 0.907450,
		35.767956, 41.605606, 22.645512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275043, 41.724766, 21.897896>,  <35.928459, 41.359150, 22.010296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275043, 41.724766, 21.897896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.447632, 41.873264, 22.226776>,  <35.551186, 41.962364, 22.424105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.447632, 41.873264, 22.226776>,  <35.275043, 41.724766, 21.897896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447632, 41.873264, 22.226776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039736, 0.902695, -0.428442,
		-0.901252, 0.217531, 0.374734,
		0.431470, 0.371244, 0.822199,
		35.577072, 41.984638, 22.473436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893620, 42.251434, 22.136316>,  <35.275043, 41.724766, 21.897896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893620, 42.251434, 22.136316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.267372, 42.325893, 22.257832>,  <35.491623, 42.370567, 22.330740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.267372, 42.325893, 22.257832>,  <34.893620, 42.251434, 22.136316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267372, 42.325893, 22.257832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026867, 0.887047, -0.460897,
		-0.355266, 0.422491, 0.833839,
		0.934379, 0.186143, 0.303786,
		35.547688, 42.381737, 22.348967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418968, 42.509007, 22.681187>,  <34.893620, 42.251434, 22.136316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418968, 42.509007, 22.681187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.172421, 42.823086, 22.705006>,  <34.024490, 43.011536, 22.719297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.172421, 42.823086, 22.705006>,  <34.418968, 42.509007, 22.681187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172421, 42.823086, 22.705006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414360, -0.387711, 0.823399,
		0.669621, 0.482845, 0.564330,
		-0.616371, 0.785201, 0.059548,
		33.987511, 43.058647, 22.722870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515968, 42.912273, 23.268806>,  <34.418968, 42.509007, 22.681187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515968, 42.912273, 23.268806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.129456, 42.985073, 23.195950>,  <33.897549, 43.028755, 23.152235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.129456, 42.985073, 23.195950>,  <34.515968, 42.912273, 23.268806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129456, 42.985073, 23.195950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253911, -0.555958, 0.791479,
		0.042788, 0.811040, 0.583425,
		-0.966281, 0.182004, -0.182143,
		33.839573, 43.039673, 23.141306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201958, 43.052849, 23.925484>,  <34.515968, 42.912273, 23.268806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201958, 43.052849, 23.925484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.876106, 42.980919, 23.704926>,  <33.680595, 42.937763, 23.572590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.876106, 42.980919, 23.704926>,  <34.201958, 43.052849, 23.925484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876106, 42.980919, 23.704926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351394, -0.603328, 0.715904,
		-0.461408, 0.776955, 0.428302,
		-0.814632, -0.179822, -0.551398,
		33.631718, 42.926971, 23.539507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511993, 43.229519, 24.355644>,  <34.201958, 43.052849, 23.925484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511993, 43.229519, 24.355644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.420376, 42.965057, 24.069872>,  <33.365406, 42.806381, 23.898409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.420376, 42.965057, 24.069872>,  <33.511993, 43.229519, 24.355644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420376, 42.965057, 24.069872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375262, -0.617239, 0.691515,
		-0.898175, 0.426485, -0.106734,
		-0.229041, -0.661155, -0.714433,
		33.351665, 42.766712, 23.855541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889191, 42.833649, 24.580515>,  <33.511993, 43.229519, 24.355644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889191, 42.833649, 24.580515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.992455, 42.588470, 24.281811>,  <33.054413, 42.441364, 24.102589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.992455, 42.588470, 24.281811>,  <32.889191, 42.833649, 24.580515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992455, 42.588470, 24.281811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070168, -0.782817, 0.618283,
		-0.963552, -0.107215, -0.245097,
		0.258155, -0.612946, -0.746762,
		33.069901, 42.404587, 24.057783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434513, 42.233261, 24.616610>,  <32.889191, 42.833649, 24.580515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434513, 42.233261, 24.616610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.753960, 42.112549, 24.408327>,  <32.945629, 42.040123, 24.283358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.753960, 42.112549, 24.408327>,  <32.434513, 42.233261, 24.616610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753960, 42.112549, 24.408327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026711, -0.882120, 0.470268,
		-0.601242, -0.361657, -0.712540,
		0.798621, -0.301777, -0.520707,
		32.993546, 42.022015, 24.252115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191898, 41.644543, 24.443220>,  <32.434513, 42.233261, 24.616610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191898, 41.644543, 24.443220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.578781, 41.600510, 24.351665>,  <32.810913, 41.574089, 24.296734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.578781, 41.600510, 24.351665>,  <32.191898, 41.644543, 24.443220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578781, 41.600510, 24.351665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030747, -0.843814, 0.535754,
		-0.252112, -0.525224, -0.812761,
		0.967209, -0.110080, -0.228885,
		32.868942, 41.567486, 24.283001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342609, 40.932285, 24.156719>,  <32.191898, 41.644543, 24.443220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342609, 40.932285, 24.156719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.688030, 41.066418, 24.307360>,  <32.895283, 41.146896, 24.397743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.688030, 41.066418, 24.307360>,  <32.342609, 40.932285, 24.156719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688030, 41.066418, 24.307360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125221, -0.866050, 0.484021,
		0.488464, -0.370819, -0.789870,
		0.863552, 0.335336, 0.376600,
		32.947098, 41.167019, 24.420340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802261, 40.399075, 24.032444>,  <32.342609, 40.932285, 24.156719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802261, 40.399075, 24.032444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.965218, 40.612259, 24.329088>,  <33.062992, 40.740170, 24.507074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.965218, 40.612259, 24.329088>,  <32.802261, 40.399075, 24.032444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965218, 40.612259, 24.329088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215386, -0.845214, 0.489103,
		0.887492, -0.039523, -0.459124,
		0.407389, 0.532964, 0.741609,
		33.087433, 40.772148, 24.551571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446392, 40.177738, 24.093613>,  <32.802261, 40.399075, 24.032444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446392, 40.177738, 24.093613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.374737, 40.353004, 24.445959>,  <33.331745, 40.458164, 24.657366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.374737, 40.353004, 24.445959>,  <33.446392, 40.177738, 24.093613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374737, 40.353004, 24.445959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298573, -0.828909, 0.473038,
		0.937424, 0.347741, 0.017664,
		-0.179137, 0.438163, 0.880865,
		33.320995, 40.484455, 24.710218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979477, 39.944027, 24.535320>,  <33.446392, 40.177738, 24.093613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979477, 39.944027, 24.535320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.691486, 40.093838, 24.769024>,  <33.518692, 40.183723, 24.909246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.691486, 40.093838, 24.769024>,  <33.979477, 39.944027, 24.535320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691486, 40.093838, 24.769024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007952, -0.846273, 0.532690,
		0.693949, 0.378880, 0.612278,
		-0.719980, 0.374529, 0.584257,
		33.475491, 40.206196, 24.944302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216084, 40.057495, 25.181688>,  <33.979477, 39.944027, 24.535320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216084, 40.057495, 25.181688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.823505, 39.987709, 25.213520>,  <33.587959, 39.945835, 25.232620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.823505, 39.987709, 25.213520>,  <34.216084, 40.057495, 25.181688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823505, 39.987709, 25.213520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185431, -0.757711, 0.625691,
		-0.048862, 0.628836, 0.776001,
		-0.981442, -0.174467, 0.079582,
		33.529072, 39.935368, 25.237394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160679, 39.928944, 25.895521>,  <34.216084, 40.057495, 25.181688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160679, 39.928944, 25.895521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.827492, 39.802299, 25.714005>,  <33.627579, 39.726311, 25.605095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.827492, 39.802299, 25.714005>,  <34.160679, 39.928944, 25.895521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827492, 39.802299, 25.714005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016946, -0.805132, 0.592854,
		-0.553067, 0.501516, 0.665281,
		-0.832964, -0.316614, -0.453790,
		33.577602, 39.707314, 25.577868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857754, 39.690502, 26.426718>,  <34.160679, 39.928944, 25.895521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857754, 39.690502, 26.426718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.684059, 39.499977, 26.120890>,  <33.579842, 39.385662, 25.937393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.684059, 39.499977, 26.120890>,  <33.857754, 39.690502, 26.426718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684059, 39.499977, 26.120890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080794, -0.824754, 0.559691,
		-0.897170, 0.304809, 0.319652,
		-0.434233, -0.476312, -0.764571,
		33.553791, 39.357082, 25.891518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287617, 39.403976, 26.674644>,  <33.857754, 39.690502, 26.426718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287617, 39.403976, 26.674644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.361168, 39.189728, 26.344967>,  <33.405300, 39.061176, 26.147160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.361168, 39.189728, 26.344967>,  <33.287617, 39.403976, 26.674644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361168, 39.189728, 26.344967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084430, -0.843999, 0.529658,
		-0.979316, -0.027808, -0.200418,
		0.183881, -0.535623, -0.824194,
		33.416332, 39.029041, 26.097710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939091, 38.833797, 26.857214>,  <33.287617, 39.403976, 26.674644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939091, 38.833797, 26.857214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.118931, 38.698090, 26.526697>,  <33.226833, 38.616665, 26.328386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.118931, 38.698090, 26.526697>,  <32.939091, 38.833797, 26.857214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118931, 38.698090, 26.526697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110934, -0.939107, 0.325226,
		-0.886316, -0.054557, -0.459856,
		0.449597, -0.339267, -0.826293,
		33.253811, 38.596310, 26.278809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550659, 38.281460, 26.639111>,  <32.939091, 38.833797, 26.857214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550659, 38.281460, 26.639111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.918823, 38.223801, 26.493746>,  <33.139721, 38.189205, 26.406527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.918823, 38.223801, 26.493746>,  <32.550659, 38.281460, 26.639111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918823, 38.223801, 26.493746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051388, -0.876870, 0.477972,
		-0.387564, -0.458605, -0.799672,
		0.920409, -0.144152, -0.363410,
		33.194946, 38.180553, 26.384722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577892, 37.558228, 26.353590>,  <32.550659, 38.281460, 26.639111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577892, 37.558228, 26.353590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.944210, 37.696095, 26.436077>,  <33.164001, 37.778812, 26.485569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.944210, 37.696095, 26.436077>,  <32.577892, 37.558228, 26.353590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944210, 37.696095, 26.436077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183717, -0.816035, 0.548028,
		0.357165, -0.463996, -0.810642,
		0.915795, 0.344665, 0.206216,
		33.218948, 37.799496, 26.497942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024101, 36.917267, 26.364731>,  <32.577892, 37.558228, 26.353590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024101, 36.917267, 26.364731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.223526, 37.196774, 26.569929>,  <33.343182, 37.364475, 26.693048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.223526, 37.196774, 26.569929>,  <33.024101, 36.917267, 26.364731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223526, 37.196774, 26.569929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203211, -0.669512, 0.714464,
		0.842698, -0.251959, -0.475790,
		0.498563, 0.698764, 0.512996,
		33.373096, 37.406403, 26.723827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750385, 36.632988, 26.333179>,  <33.024101, 36.917267, 26.364731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750385, 36.632988, 26.333179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.711033, 36.899891, 26.628500>,  <33.687420, 37.060032, 26.805693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.711033, 36.899891, 26.628500>,  <33.750385, 36.632988, 26.333179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711033, 36.899891, 26.628500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068807, -0.735566, 0.673950,
		0.992767, 0.117107, 0.026456,
		-0.098384, 0.667255, 0.738303,
		33.681519, 37.100067, 26.849991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314323, 36.508984, 26.774208>,  <33.750385, 36.632988, 26.333179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314323, 36.508984, 26.774208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.046066, 36.696243, 27.004364>,  <33.885113, 36.808601, 27.142458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.046066, 36.696243, 27.004364>,  <34.314323, 36.508984, 26.774208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046066, 36.696243, 27.004364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171965, -0.656435, 0.734521,
		0.721575, 0.591546, 0.359726,
		-0.670640, 0.468151, 0.575392,
		33.844875, 36.836689, 27.176981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.070492, 36.071907, 31.456905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.709892, 36.168678, 31.600449>,  <36.493534, 36.226742, 31.686575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.709892, 36.168678, 31.600449>,  <37.070492, 36.071907, 31.456905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709892, 36.168678, 31.600449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299612, -0.249497, 0.920860,
		0.312315, 0.937669, 0.152437,
		-0.901495, 0.241926, 0.358858,
		36.439445, 36.241257, 31.708107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106865, 36.628059, 31.950527>,  <37.070492, 36.071907, 31.456905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106865, 36.628059, 31.950527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.759300, 36.460293, 32.055660>,  <36.550762, 36.359631, 32.118740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.759300, 36.460293, 32.055660>,  <37.106865, 36.628059, 31.950527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759300, 36.460293, 32.055660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361571, -0.175211, 0.915733,
		-0.338026, 0.890723, 0.303893,
		-0.868910, -0.419420, 0.262834,
		36.498627, 36.334465, 32.134510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074635, 36.790585, 32.629826>,  <37.106865, 36.628059, 31.950527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074635, 36.790585, 32.629826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.791553, 36.509892, 32.597034>,  <36.621704, 36.341476, 32.577358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.791553, 36.509892, 32.597034>,  <37.074635, 36.790585, 32.629826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791553, 36.509892, 32.597034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149234, -0.261893, 0.953489,
		-0.690567, 0.662556, 0.290066,
		-0.707706, -0.701735, -0.081978,
		36.579243, 36.299370, 32.572441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760101, 36.760258, 33.342468>,  <37.074635, 36.790585, 32.629826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760101, 36.760258, 33.342468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.640099, 36.413132, 33.184029>,  <36.568096, 36.204857, 33.088966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.640099, 36.413132, 33.184029>,  <36.760101, 36.760258, 33.342468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640099, 36.413132, 33.184029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216334, -0.466299, 0.857767,
		-0.929083, 0.171645, 0.327631,
		-0.300006, -0.867815, -0.396098,
		36.550098, 36.152786, 33.065201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135876, 36.483387, 33.702503>,  <36.760101, 36.760258, 33.342468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135876, 36.483387, 33.702503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.347187, 36.183208, 33.543633>,  <36.473976, 36.003101, 33.448311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.347187, 36.183208, 33.543633>,  <36.135876, 36.483387, 33.702503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347187, 36.183208, 33.543633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022130, -0.479784, 0.877107,
		-0.848782, -0.454569, -0.270068,
		0.528280, -0.750450, -0.397173,
		36.505672, 35.958073, 33.424480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823536, 35.904125, 34.020111>,  <36.135876, 36.483387, 33.702503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823536, 35.904125, 34.020111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.176609, 35.764713, 33.893997>,  <36.388451, 35.681068, 33.818329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.176609, 35.764713, 33.893997>,  <35.823536, 35.904125, 34.020111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176609, 35.764713, 33.893997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137881, -0.449294, 0.882680,
		-0.449294, -0.822595, -0.348528,
		-0.882680, 0.348528, 0.315286,
		36.441414, 35.660156, 33.799412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826675, 35.124847, 34.151840>,  <35.823536, 35.904125, 34.020111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826675, 35.124847, 34.151840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.201946, 35.257236, 34.111275>,  <36.427109, 35.336670, 34.086933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.201946, 35.257236, 34.111275>,  <35.826675, 35.124847, 34.151840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201946, 35.257236, 34.111275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269014, -0.512704, 0.815332,
		0.217859, -0.792205, -0.570042,
		0.938173, 0.330977, -0.101417,
		36.483398, 35.356529, 34.080849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202774, 34.469952, 34.217602>,  <35.826675, 35.124847, 34.151840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202774, 34.469952, 34.217602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.445869, 34.773033, 34.312702>,  <36.591728, 34.954884, 34.369762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.445869, 34.773033, 34.312702>,  <36.202774, 34.469952, 34.217602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445869, 34.773033, 34.312702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187646, -0.427928, 0.884119,
		0.771646, -0.492704, -0.402251,
		0.607743, 0.757708, 0.237755,
		36.628193, 35.000347, 34.384029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758682, 34.127350, 34.446125>,  <36.202774, 34.469952, 34.217602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758682, 34.127350, 34.446125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.809261, 34.492981, 34.600250>,  <36.839611, 34.712360, 34.692726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.809261, 34.492981, 34.600250>,  <36.758682, 34.127350, 34.446125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809261, 34.492981, 34.600250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237672, -0.405039, 0.882868,
		0.963079, -0.020062, -0.268469,
		0.126452, 0.914079, 0.385317,
		36.847198, 34.767204, 34.715847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378834, 34.096718, 34.827103>,  <36.758682, 34.127350, 34.446125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378834, 34.096718, 34.827103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.185104, 34.415295, 34.971939>,  <37.068867, 34.606441, 35.058842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.185104, 34.415295, 34.971939>,  <37.378834, 34.096718, 34.827103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185104, 34.415295, 34.971939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124252, -0.347061, 0.929575,
		0.866022, 0.495203, 0.069130,
		-0.484321, 0.796443, 0.362093,
		37.039806, 34.654228, 35.080566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863190, 34.375282, 35.466537>,  <37.378834, 34.096718, 34.827103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863190, 34.375282, 35.466537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.494076, 34.525459, 35.501213>,  <37.272606, 34.615566, 35.522018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.494076, 34.525459, 35.501213>,  <37.863190, 34.375282, 35.466537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494076, 34.525459, 35.501213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032078, -0.149346, 0.988265,
		0.383979, 0.914736, 0.125770,
		-0.922784, 0.375439, 0.086689,
		37.217239, 34.638092, 35.527218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882874, 34.886341, 36.018139>,  <37.863190, 34.375282, 35.466537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882874, 34.886341, 36.018139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.495789, 34.785522, 36.017540>,  <37.263538, 34.725033, 36.017181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.495789, 34.785522, 36.017540>,  <37.882874, 34.886341, 36.018139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495789, 34.785522, 36.017540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012505, 0.042072, 0.999036,
		-0.251741, 0.966800, -0.043866,
		-0.967714, -0.252047, -0.001499,
		37.205475, 34.709908, 36.017090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569752, 35.373665, 36.359219>,  <37.882874, 34.886341, 36.018139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569752, 35.373665, 36.359219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.320698, 35.063583, 36.401894>,  <37.171265, 34.877533, 36.427498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.320698, 35.063583, 36.401894>,  <37.569752, 35.373665, 36.359219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320698, 35.063583, 36.401894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026866, 0.115084, 0.992992,
		-0.782054, 0.621135, -0.050829,
		-0.622632, -0.775208, 0.106689,
		37.133907, 34.831020, 36.433899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596169, 35.377251, 36.989052>,  <37.569752, 35.373665, 36.359219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596169, 35.377251, 36.989052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.347012, 35.072376, 36.918545>,  <37.197517, 34.889450, 36.876240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.347012, 35.072376, 36.918545>,  <37.596169, 35.377251, 36.989052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347012, 35.072376, 36.918545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225022, -0.041238, 0.973481,
		-0.749243, 0.646043, -0.145821,
		-0.622897, -0.762186, -0.176271,
		37.160141, 34.843719, 36.865662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377003, 35.364761, 37.295727>,  <37.596169, 35.377251, 36.989052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377003, 35.364761, 37.295727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.683815, 35.609379, 37.373371>,  <38.867901, 35.756149, 37.419960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.683815, 35.609379, 37.373371>,  <38.377003, 35.364761, 37.295727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683815, 35.609379, 37.373371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385960, 0.681457, -0.621813,
		-0.512548, 0.402026, 0.758729,
		0.767026, 0.611548, 0.194114,
		38.913921, 35.792843, 37.431606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045830, 36.012779, 37.451607>,  <38.377003, 35.364761, 37.295727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045830, 36.012779, 37.451607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.422901, 36.081215, 37.337009>,  <38.649143, 36.122276, 37.268250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.422901, 36.081215, 37.337009>,  <38.045830, 36.012779, 37.451607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422901, 36.081215, 37.337009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320065, 0.706455, -0.631252,
		0.094393, 0.686767, 0.720723,
		0.942681, 0.171092, -0.286494,
		38.705704, 36.132542, 37.251060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079262, 36.717720, 37.543766>,  <38.045830, 36.012779, 37.451607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079262, 36.717720, 37.543766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.358696, 36.599548, 37.283092>,  <38.526356, 36.528645, 37.126686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.358696, 36.599548, 37.283092>,  <38.079262, 36.717720, 37.543766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358696, 36.599548, 37.283092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257851, 0.745644, -0.614433,
		0.667451, 0.597273, 0.444719,
		0.698586, -0.295433, -0.651688,
		38.568272, 36.510918, 37.087585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354191, 37.276066, 37.326405>,  <38.079262, 36.717720, 37.543766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354191, 37.276066, 37.326405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.469887, 37.015877, 37.045483>,  <38.539307, 36.859764, 36.876930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.469887, 37.015877, 37.045483>,  <38.354191, 37.276066, 37.326405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469887, 37.015877, 37.045483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294757, 0.637493, -0.711843,
		0.910745, 0.412904, -0.007340,
		0.289244, -0.650471, -0.702300,
		38.556660, 36.820736, 36.834793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591137, 37.695190, 36.814762>,  <38.354191, 37.276066, 37.326405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591137, 37.695190, 36.814762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.567245, 37.360672, 36.596756>,  <38.552910, 37.159962, 36.465954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.567245, 37.360672, 36.596756>,  <38.591137, 37.695190, 36.814762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567245, 37.360672, 36.596756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172748, 0.546412, -0.819508,
		0.983154, 0.045205, -0.177104,
		-0.059726, -0.836296, -0.545015,
		38.549328, 37.109783, 36.433250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888481, 37.853893, 36.151432>,  <38.591137, 37.695190, 36.814762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888481, 37.853893, 36.151432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.683094, 37.522125, 36.063416>,  <38.559860, 37.323067, 36.010605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.683094, 37.522125, 36.063416>,  <38.888481, 37.853893, 36.151432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683094, 37.522125, 36.063416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246713, 0.388288, -0.887899,
		0.821876, -0.401623, -0.404002,
		-0.513470, -0.829416, -0.220039,
		38.529053, 37.273300, 35.997402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086407, 37.544117, 35.468845>,  <38.888481, 37.853893, 36.151432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086407, 37.544117, 35.468845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.724567, 37.384865, 35.529766>,  <38.507465, 37.289314, 35.566319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.724567, 37.384865, 35.529766>,  <39.086407, 37.544117, 35.468845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724567, 37.384865, 35.529766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282669, 0.292831, -0.913427,
		0.319066, -0.869333, -0.377434,
		-0.904596, -0.398132, 0.152301,
		38.453190, 37.265427, 35.575455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976818, 37.114326, 34.814938>,  <39.086407, 37.544117, 35.468845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976818, 37.114326, 34.814938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.638958, 37.235771, 34.991295>,  <38.436241, 37.308640, 35.097111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.638958, 37.235771, 34.991295>,  <38.976818, 37.114326, 34.814938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638958, 37.235771, 34.991295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348942, 0.312329, -0.883567,
		-0.405965, -0.900150, -0.157866,
		-0.844649, 0.303612, 0.440895,
		38.385563, 37.326855, 35.123562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479561, 36.753441, 34.432903>,  <38.976818, 37.114326, 34.814938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479561, 36.753441, 34.432903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.301071, 37.057182, 34.622330>,  <38.193977, 37.239429, 34.735985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.301071, 37.057182, 34.622330>,  <38.479561, 36.753441, 34.432903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301071, 37.057182, 34.622330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424119, 0.286533, -0.859082,
		-0.788042, -0.584187, 0.194201,
		-0.446219, 0.759358, 0.473565,
		38.167206, 37.284988, 34.764400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815575, 36.776798, 34.156425>,  <38.479561, 36.753441, 34.432903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815575, 36.776798, 34.156425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.847916, 37.131451, 34.338570>,  <37.867321, 37.344242, 34.447857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.847916, 37.131451, 34.338570>,  <37.815575, 36.776798, 34.156425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847916, 37.131451, 34.338570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469118, 0.436940, -0.767471,
		-0.879426, -0.151560, 0.451263,
		0.080857, 0.886630, 0.455356,
		37.872173, 37.397438, 34.475178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093021, 37.088753, 34.060017>,  <37.815575, 36.776798, 34.156425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093021, 37.088753, 34.060017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.342449, 37.390659, 34.141495>,  <37.492107, 37.571804, 34.190380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.342449, 37.390659, 34.141495>,  <37.093021, 37.088753, 34.060017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342449, 37.390659, 34.141495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301113, 0.472335, -0.828390,
		-0.721452, 0.455223, 0.521803,
		0.623568, 0.754766, 0.203693,
		37.529518, 37.617088, 34.202602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636410, 37.627396, 33.943913>,  <37.093021, 37.088753, 34.060017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636410, 37.627396, 33.943913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.010216, 37.769760, 33.942963>,  <37.234501, 37.855179, 33.942390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.010216, 37.769760, 33.942963>,  <36.636410, 37.627396, 33.943913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010216, 37.769760, 33.942963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217200, 0.564990, -0.795997,
		-0.281961, 0.744389, 0.605296,
		0.934517, 0.355910, -0.002376,
		37.290569, 37.876534, 33.942249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600014, 38.249439, 33.804749>,  <36.636410, 37.627396, 33.943913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600014, 38.249439, 33.804749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.972343, 38.166550, 33.684326>,  <37.195740, 38.116817, 33.612072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.972343, 38.166550, 33.684326>,  <36.600014, 38.249439, 33.804749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972343, 38.166550, 33.684326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132772, 0.575717, -0.806797,
		0.340506, 0.790955, 0.508376,
		0.930821, -0.207221, -0.301051,
		37.251591, 38.104382, 33.594009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011047, 38.909714, 33.631699>,  <36.600014, 38.249439, 33.804749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011047, 38.909714, 33.631699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.222782, 38.623199, 33.449829>,  <37.349823, 38.451290, 33.340706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.222782, 38.623199, 33.449829>,  <37.011047, 38.909714, 33.631699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222782, 38.623199, 33.449829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022834, 0.523691, -0.851602,
		0.848103, 0.461169, 0.260854,
		0.529340, -0.716290, -0.454674,
		37.381584, 38.408314, 33.313427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146957, 39.607513, 33.958988>,  <37.011047, 38.909714, 33.631699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146957, 39.607513, 33.958988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.841583, 39.834164, 34.082993>,  <36.658360, 39.970154, 34.157394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.841583, 39.834164, 34.082993>,  <37.146957, 39.607513, 33.958988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841583, 39.834164, 34.082993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121808, -0.597672, 0.792433,
		0.634300, 0.567206, 0.525301,
		-0.763431, 0.566626, 0.310013,
		36.612553, 40.004150, 34.175995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302204, 39.776840, 34.657909>,  <37.146957, 39.607513, 33.958988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302204, 39.776840, 34.657909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.905525, 39.815514, 34.623974>,  <36.667519, 39.838718, 34.603615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.905525, 39.815514, 34.623974>,  <37.302204, 39.776840, 34.657909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905525, 39.815514, 34.623974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124376, -0.552619, 0.824101,
		0.032797, 0.827807, 0.560054,
		-0.991693, 0.096685, -0.084835,
		36.608017, 39.844521, 34.598522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037899, 39.769463, 35.441734>,  <37.302204, 39.776840, 34.657909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037899, 39.769463, 35.441734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.726017, 39.685001, 35.205948>,  <36.538887, 39.634323, 35.064476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.726017, 39.685001, 35.205948>,  <37.037899, 39.769463, 35.441734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726017, 39.685001, 35.205948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372858, -0.599737, 0.708021,
		-0.503027, 0.771835, 0.388888,
		-0.779706, -0.211154, -0.589469,
		36.492104, 39.621655, 35.029106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431370, 39.816017, 35.919922>,  <37.037899, 39.769463, 35.441734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431370, 39.816017, 35.919922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.328793, 39.608223, 35.593887>,  <36.267246, 39.483547, 35.398266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.328793, 39.608223, 35.593887>,  <36.431370, 39.816017, 35.919922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328793, 39.608223, 35.593887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420686, -0.699233, 0.578010,
		-0.870206, 0.491125, -0.039226,
		-0.256447, -0.519489, -0.815086,
		36.251858, 39.452377, 35.349361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772820, 39.548828, 36.090603>,  <36.431370, 39.816017, 35.919922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772820, 39.548828, 36.090603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.852161, 39.319031, 35.772961>,  <35.899765, 39.181152, 35.582375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.852161, 39.319031, 35.772961>,  <35.772820, 39.548828, 36.090603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852161, 39.319031, 35.772961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536979, -0.741490, 0.402301,
		-0.819945, 0.346623, -0.455569,
		0.198353, -0.574496, -0.794110,
		35.911667, 39.146683, 35.534729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174503, 39.233688, 35.896992>,  <35.772820, 39.548828, 36.090603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174503, 39.233688, 35.896992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.450756, 38.989357, 35.742119>,  <35.616508, 38.842758, 35.649197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.450756, 38.989357, 35.742119>,  <35.174503, 39.233688, 35.896992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450756, 38.989357, 35.742119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472447, -0.786409, 0.397939,
		-0.547555, -0.091909, -0.831707,
		0.690636, -0.610831, -0.387180,
		35.657948, 38.806107, 35.625965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878586, 38.730736, 35.355534>,  <35.174503, 39.233688, 35.896992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878586, 38.730736, 35.355534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.224602, 38.584747, 35.493229>,  <35.432213, 38.497154, 35.575848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.224602, 38.584747, 35.493229>,  <34.878586, 38.730736, 35.355534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224602, 38.584747, 35.493229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488416, -0.769469, 0.411541,
		0.114681, -0.524132, -0.843880,
		0.865042, -0.364969, 0.344238,
		35.484116, 38.475258, 35.596500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973686, 38.027294, 35.120945>,  <34.878586, 38.730736, 35.355534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973686, 38.027294, 35.120945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.196823, 38.079254, 35.448833>,  <35.330708, 38.110432, 35.645565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.196823, 38.079254, 35.448833>,  <34.973686, 38.027294, 35.120945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196823, 38.079254, 35.448833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493522, -0.742161, 0.453468,
		0.667267, -0.657513, -0.349902,
		0.557845, 0.129900, 0.819716,
		35.364178, 38.118225, 35.694748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213245, 37.393005, 35.321404>,  <34.973686, 38.027294, 35.120945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213245, 37.393005, 35.321404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.269218, 37.618271, 35.647171>,  <35.302803, 37.753429, 35.842632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.269218, 37.618271, 35.647171>,  <35.213245, 37.393005, 35.321404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269218, 37.618271, 35.647171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471218, -0.685519, 0.554993,
		0.870846, -0.461427, 0.169447,
		0.139929, 0.563160, 0.814414,
		35.311195, 37.787220, 35.891495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193825, 36.881878, 35.860996>,  <35.213245, 37.393005, 35.321404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193825, 36.881878, 35.860996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.161880, 37.229336, 36.056576>,  <35.142715, 37.437813, 36.173923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.161880, 37.229336, 36.056576>,  <35.193825, 36.881878, 35.860996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161880, 37.229336, 36.056576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583066, -0.438557, 0.683887,
		0.808490, -0.230474, 0.541503,
		-0.079862, 0.868648, 0.488950,
		35.137920, 37.489929, 36.203262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397526, 36.780018, 36.478539>,  <35.193825, 36.881878, 35.860996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397526, 36.780018, 36.478539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.152252, 37.093651, 36.516941>,  <35.005089, 37.281830, 36.539982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.152252, 37.093651, 36.516941>,  <35.397526, 36.780018, 36.478539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152252, 37.093651, 36.516941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515751, -0.489437, 0.703173,
		0.598338, 0.381656, 0.704507,
		-0.613182, 0.784085, 0.096009,
		34.968296, 37.328876, 36.545742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154865, 36.780903, 37.222832>,  <35.397526, 36.780018, 36.478539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154865, 36.780903, 37.222832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.878036, 37.031479, 37.079384>,  <34.711937, 37.181824, 36.993317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.878036, 37.031479, 37.079384>,  <35.154865, 36.780903, 37.222832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878036, 37.031479, 37.079384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684278, -0.411224, 0.602212,
		0.229777, 0.662169, 0.713256,
		-0.692074, 0.626440, -0.358618,
		34.670414, 37.219410, 36.971798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.648693, 42.349651, 31.267332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256832, 42.341507, 31.347198>,  <37.021717, 42.336620, 31.395119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256832, 42.341507, 31.347198>,  <37.648693, 42.349651, 31.267332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256832, 42.341507, 31.347198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191012, -0.399939, 0.896417,
		0.061602, 0.916316, 0.395690,
		-0.979653, -0.020361, 0.199664,
		36.962936, 42.335400, 31.407097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593475, 42.441525, 31.999628>,  <37.648693, 42.349651, 31.267332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593475, 42.441525, 31.999628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220787, 42.316669, 31.925369>,  <36.997173, 42.241756, 31.880814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220787, 42.316669, 31.925369>,  <37.593475, 42.441525, 31.999628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220787, 42.316669, 31.925369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071983, -0.342315, 0.936824,
		-0.355968, 0.886222, 0.296474,
		-0.931722, -0.312138, -0.185646,
		36.941269, 42.223026, 31.869675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206585, 42.543877, 32.660530>,  <37.593475, 42.441525, 31.999628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206585, 42.543877, 32.660530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972130, 42.277103, 32.476513>,  <36.831459, 42.117039, 32.366100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972130, 42.277103, 32.476513>,  <37.206585, 42.543877, 32.660530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972130, 42.277103, 32.476513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180173, -0.446297, 0.876560,
		-0.789927, 0.596669, 0.141425,
		-0.586133, -0.666937, -0.460046,
		36.796291, 42.077023, 32.338501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619068, 42.464668, 33.062595>,  <37.206585, 42.543877, 32.660530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619068, 42.464668, 33.062595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647221, 42.136826, 32.835159>,  <36.664112, 41.940121, 32.698696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647221, 42.136826, 32.835159>,  <36.619068, 42.464668, 33.062595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647221, 42.136826, 32.835159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186604, -0.570759, 0.799633,
		-0.979911, 0.049820, -0.193113,
		0.070383, -0.819605, -0.568590,
		36.668335, 41.890945, 32.664581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915977, 42.061119, 33.120922>,  <36.619068, 42.464668, 33.062595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915977, 42.061119, 33.120922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207508, 41.804928, 33.024097>,  <36.382427, 41.651215, 32.966003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207508, 41.804928, 33.024097>,  <35.915977, 42.061119, 33.120922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207508, 41.804928, 33.024097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181644, -0.521733, 0.833546,
		-0.660159, -0.563545, -0.496595,
		0.728831, -0.640477, -0.242062,
		36.426159, 41.612785, 32.951477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616024, 41.331871, 33.037704>,  <35.915977, 42.061119, 33.120922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616024, 41.331871, 33.037704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008972, 41.286674, 33.097282>,  <36.244740, 41.259556, 33.133030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008972, 41.286674, 33.097282>,  <35.616024, 41.331871, 33.037704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008972, 41.286674, 33.097282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185072, -0.700534, 0.689203,
		0.026472, -0.704618, -0.709093,
		0.982369, -0.112989, 0.148950,
		36.303684, 41.252777, 33.141968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678879, 40.598839, 33.271473>,  <35.616024, 41.331871, 33.037704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678879, 40.598839, 33.271473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045410, 40.746052, 33.334591>,  <36.265327, 40.834381, 33.372463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045410, 40.746052, 33.334591>,  <35.678879, 40.598839, 33.271473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045410, 40.746052, 33.334591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156947, -0.692618, 0.704023,
		0.368398, -0.620348, -0.692425,
		0.916325, 0.368034, 0.157798,
		36.320309, 40.856461, 33.381931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234509, 40.134617, 33.064251>,  <35.678879, 40.598839, 33.271473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234509, 40.134617, 33.064251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372219, 40.383560, 33.345432>,  <36.454845, 40.532925, 33.514141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372219, 40.383560, 33.345432>,  <36.234509, 40.134617, 33.064251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372219, 40.383560, 33.345432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117547, -0.771406, 0.625393,
		0.931482, -0.132677, -0.338732,
		0.344275, 0.622359, 0.702954,
		36.475502, 40.570267, 33.556320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861805, 39.873482, 33.254658>,  <36.234509, 40.134617, 33.064251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861805, 39.873482, 33.254658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714779, 40.103477, 33.547035>,  <36.626564, 40.241474, 33.722462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714779, 40.103477, 33.547035>,  <36.861805, 39.873482, 33.254658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714779, 40.103477, 33.547035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163994, -0.733575, 0.659525,
		0.915426, 0.362286, 0.175338,
		-0.367560, 0.574992, 0.730947,
		36.604511, 40.275974, 33.766319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413654, 39.352104, 33.186207>,  <36.861805, 39.873482, 33.254658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413654, 39.352104, 33.186207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428596, 38.977646, 33.046352>,  <37.437561, 38.752972, 32.962440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428596, 38.977646, 33.046352>,  <37.413654, 39.352104, 33.186207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428596, 38.977646, 33.046352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093861, 0.345044, -0.933881,
		0.994884, 0.067702, -0.074978,
		0.037355, -0.936141, -0.349634,
		37.439804, 38.696804, 32.941463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893398, 39.339653, 32.676838>,  <37.413654, 39.352104, 33.186207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893398, 39.339653, 32.676838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696625, 39.007694, 32.571564>,  <37.578560, 38.808517, 32.508400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696625, 39.007694, 32.571564>,  <37.893398, 39.339653, 32.676838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696625, 39.007694, 32.571564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023639, 0.289452, -0.956901,
		0.870314, -0.476949, -0.122772,
		-0.491930, -0.829902, -0.263189,
		37.549046, 38.758724, 32.492607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226822, 39.100819, 32.033089>,  <37.893398, 39.339653, 32.676838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226822, 39.100819, 32.033089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856934, 38.948563, 32.033577>,  <37.635002, 38.857208, 32.033871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856934, 38.948563, 32.033577>,  <38.226822, 39.100819, 32.033089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856934, 38.948563, 32.033577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145931, 0.351559, -0.924722,
		0.351559, -0.855288, -0.380642,
		0.924722, 0.380642, -0.001219,
		37.579517, 38.834370, 32.033943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160458, 38.717545, 31.411572>,  <38.226822, 39.100819, 32.033089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160458, 38.717545, 31.411572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787373, 38.810760, 31.521652>,  <37.563522, 38.866688, 31.587700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787373, 38.810760, 31.521652>,  <38.160458, 38.717545, 31.411572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787373, 38.810760, 31.521652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190667, 0.329067, -0.924857,
		-0.306085, -0.915101, -0.262493,
		-0.932715, 0.233036, 0.275202,
		37.507557, 38.880672, 31.604214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762169, 38.330154, 30.881054>,  <38.160458, 38.717545, 31.411572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762169, 38.330154, 30.881054> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525982, 38.603783, 31.052353>,  <37.384270, 38.767960, 31.155132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525982, 38.603783, 31.052353>,  <37.762169, 38.330154, 30.881054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525982, 38.603783, 31.052353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109742, 0.457641, -0.882338,
		-0.799563, -0.567991, -0.195152,
		-0.590470, 0.684069, 0.428246,
		37.348843, 38.809002, 31.180826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257046, 38.335300, 30.346714>,  <37.762169, 38.330154, 30.881054>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257046, 38.335300, 30.346714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223286, 38.657574, 30.581236>,  <37.203030, 38.850937, 30.721949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223286, 38.657574, 30.581236>,  <37.257046, 38.335300, 30.346714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223286, 38.657574, 30.581236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305743, 0.539081, -0.784801,
		-0.948366, -0.245495, 0.200834,
		-0.084399, 0.805682, 0.586304,
		37.197968, 38.899277, 30.757128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646286, 38.525158, 30.196274>,  <37.257046, 38.335300, 30.346714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646286, 38.525158, 30.196274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793362, 38.861683, 30.354763>,  <36.881607, 39.063599, 30.449856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793362, 38.861683, 30.354763>,  <36.646286, 38.525158, 30.196274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793362, 38.861683, 30.354763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258006, 0.501631, -0.825711,
		-0.893442, 0.201376, 0.401508,
		0.367687, 0.841317, 0.396222,
		36.903667, 39.114079, 30.473629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199665, 39.056183, 30.072954>,  <36.646286, 38.525158, 30.196274>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199665, 39.056183, 30.072954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538555, 39.257893, 30.139786>,  <36.741890, 39.378918, 30.179886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538555, 39.257893, 30.139786>,  <36.199665, 39.056183, 30.072954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538555, 39.257893, 30.139786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117048, 0.483986, -0.867212,
		-0.518176, 0.715169, 0.469070,
		0.847227, 0.504272, 0.167081,
		36.792725, 39.409176, 30.189909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061813, 39.753323, 29.728258>,  <36.199665, 39.056183, 30.072954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061813, 39.753323, 29.728258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452877, 39.732395, 29.809689>,  <36.687515, 39.719837, 29.858547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452877, 39.732395, 29.809689>,  <36.061813, 39.753323, 29.728258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452877, 39.732395, 29.809689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205231, 0.446743, -0.870805,
		-0.045387, 0.893131, 0.447500,
		0.977661, -0.052318, 0.203575,
		36.746174, 39.716702, 29.870762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365414, 40.441708, 29.499874>,  <36.061813, 39.753323, 29.728258>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365414, 40.441708, 29.499874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668697, 40.181339, 29.514942>,  <36.850670, 40.025120, 29.523983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668697, 40.181339, 29.514942>,  <36.365414, 40.441708, 29.499874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668697, 40.181339, 29.514942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442518, 0.471311, -0.762918,
		0.478843, 0.595123, 0.645397,
		0.758213, -0.650918, 0.037668,
		36.896160, 39.986065, 29.526243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006283, 40.816345, 29.403227>,  <36.365414, 40.441708, 29.499874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006283, 40.816345, 29.403227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077286, 40.440037, 29.287680>,  <37.119888, 40.214252, 29.218351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077286, 40.440037, 29.287680>,  <37.006283, 40.816345, 29.403227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077286, 40.440037, 29.287680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403734, 0.337304, -0.850426,
		0.897491, 0.034330, 0.439694,
		0.177505, -0.940770, -0.288867,
		37.130539, 40.157806, 29.201019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698914, 40.846794, 29.303984>,  <37.006283, 40.816345, 29.403227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698914, 40.846794, 29.303984> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530918, 40.560848, 29.080349>,  <37.430119, 40.389282, 28.946169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530918, 40.560848, 29.080349>,  <37.698914, 40.846794, 29.303984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530918, 40.560848, 29.080349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550555, 0.289043, -0.783162,
		0.721454, -0.636729, 0.272177,
		-0.419992, -0.714864, -0.559086,
		37.404919, 40.346390, 28.912622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229305, 40.667107, 28.967258>,  <37.698914, 40.846794, 29.303984>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229305, 40.667107, 28.967258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934597, 40.527397, 28.735680>,  <37.757771, 40.443573, 28.596733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934597, 40.527397, 28.735680>,  <38.229305, 40.667107, 28.967258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934597, 40.527397, 28.735680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545178, 0.199597, -0.814213,
		0.399937, -0.915516, 0.043358,
		-0.736771, -0.349272, -0.578945,
		37.713566, 40.422615, 28.561996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641182, 40.343750, 28.387987>,  <38.229305, 40.667107, 28.967258>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641182, 40.343750, 28.387987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265499, 40.361343, 28.251780>,  <38.040089, 40.371899, 28.170055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265499, 40.361343, 28.251780>,  <38.641182, 40.343750, 28.387987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265499, 40.361343, 28.251780> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338263, 0.288592, -0.895708,
		0.058873, -0.956441, -0.285927,
		-0.939208, 0.043985, -0.340519,
		37.983738, 40.374538, 28.149624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.333387, 38.950756, 27.745100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.659510, 39.114807, 27.908598>,  <30.855183, 39.213238, 28.006697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.659510, 39.114807, 27.908598>,  <30.333387, 38.950756, 27.745100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.659510, 39.114807, 27.908598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122733, -0.812280, 0.570208,
		0.565872, -0.414728, -0.712594,
		0.815307, 0.410123, 0.408746,
		30.904102, 39.237843, 28.031221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767611, 38.367771, 27.794178>,  <30.333387, 38.950756, 27.745100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.767611, 38.367771, 27.794178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.938547, 38.638454, 28.033991>,  <31.041109, 38.800865, 28.177879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.938547, 38.638454, 28.033991>,  <30.767611, 38.367771, 27.794178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938547, 38.638454, 28.033991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356917, -0.735547, 0.575830,
		0.830656, -0.032093, -0.555861,
		0.427342, 0.676713, 0.599532,
		31.066750, 38.841469, 28.213850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412109, 38.250736, 27.792032>,  <30.767611, 38.367771, 27.794178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412109, 38.250736, 27.792032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.322231, 38.428925, 28.138689>,  <31.268305, 38.535839, 28.346684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.322231, 38.428925, 28.138689>,  <31.412109, 38.250736, 27.792032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.322231, 38.428925, 28.138689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164903, -0.859171, 0.484389,
		0.960374, 0.251751, 0.119592,
		-0.224696, 0.445474, 0.866640,
		31.254822, 38.562565, 28.398682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918159, 37.932629, 28.359024>,  <31.412109, 38.250736, 27.792032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918159, 37.932629, 28.359024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.614183, 38.106762, 28.552095>,  <31.431799, 38.211243, 28.667938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.614183, 38.106762, 28.552095>,  <31.918159, 37.932629, 28.359024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614183, 38.106762, 28.552095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010631, -0.734167, 0.678886,
		0.649908, 0.521043, 0.553294,
		-0.759939, 0.435331, 0.482680,
		31.386202, 38.237362, 28.696899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029140, 37.978416, 29.083069>,  <31.918159, 37.932629, 28.359024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029140, 37.978416, 29.083069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.633558, 38.021988, 29.123257>,  <31.396208, 38.048130, 29.147369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.633558, 38.021988, 29.123257>,  <32.029140, 37.978416, 29.083069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633558, 38.021988, 29.123257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032668, -0.501070, 0.864790,
		0.144542, 0.858524, 0.491979,
		-0.988959, 0.108926, 0.100472,
		31.336870, 38.054665, 29.153399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892258, 38.222164, 29.794849>,  <32.029140, 37.978416, 29.083069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892258, 38.222164, 29.794849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.549629, 38.072487, 29.652712>,  <31.344053, 37.982681, 29.567430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.549629, 38.072487, 29.652712>,  <31.892258, 38.222164, 29.794849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549629, 38.072487, 29.652712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081939, -0.581243, 0.809594,
		-0.509483, 0.722591, 0.467214,
		-0.856570, -0.374191, -0.355342,
		31.292658, 37.960228, 29.546108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566307, 38.137863, 30.419924>,  <31.892258, 38.222164, 29.794849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.566307, 38.137863, 30.419924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.391933, 37.906250, 30.144337>,  <31.287310, 37.767281, 29.978985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.391933, 37.906250, 30.144337>,  <31.566307, 38.137863, 30.419924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391933, 37.906250, 30.144337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216369, -0.675657, 0.704750,
		-0.873581, 0.456298, 0.169258,
		-0.435936, -0.579034, -0.688970,
		31.261152, 37.732540, 29.937645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906727, 37.887520, 30.722538>,  <31.566307, 38.137863, 30.419924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906727, 37.887520, 30.722538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.924234, 37.631466, 30.415731>,  <30.934738, 37.477833, 30.231647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.924234, 37.631466, 30.415731>,  <30.906727, 37.887520, 30.722538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924234, 37.631466, 30.415731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097097, -0.766840, 0.634451,
		-0.994312, 0.046707, -0.095717,
		0.043766, -0.640136, -0.767014,
		30.937365, 37.439426, 30.185627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.319605, 37.353394, 30.682522>,  <30.906727, 37.887520, 30.722538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.319605, 37.353394, 30.682522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.641323, 37.183762, 30.516022>,  <30.834354, 37.081982, 30.416122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.641323, 37.183762, 30.516022>,  <30.319605, 37.353394, 30.682522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.641323, 37.183762, 30.516022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074402, -0.623109, 0.778588,
		-0.589552, -0.657185, -0.469612,
		0.804296, -0.424078, -0.416252,
		30.882612, 37.056538, 30.391146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185276, 36.654560, 30.864460>,  <30.319605, 37.353394, 30.682522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185276, 36.654560, 30.864460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.566126, 36.722378, 30.762709>,  <30.794636, 36.763069, 30.701658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.566126, 36.722378, 30.762709>,  <30.185276, 36.654560, 30.864460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566126, 36.722378, 30.762709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287972, -0.776706, 0.560178,
		-0.102602, -0.606615, -0.788347,
		0.952127, 0.169546, -0.254379,
		30.851765, 36.773243, 30.686396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.406473, 35.986027, 30.614004>,  <30.185276, 36.654560, 30.864460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.406473, 35.986027, 30.614004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.732603, 36.193245, 30.717445>,  <30.928280, 36.317577, 30.779510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.732603, 36.193245, 30.717445>,  <30.406473, 35.986027, 30.614004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732603, 36.193245, 30.717445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230174, -0.699818, 0.676221,
		0.531289, -0.491815, -0.689819,
		0.815324, 0.518047, 0.258602,
		30.977200, 36.348660, 30.795027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019297, 35.480484, 30.512959>,  <30.406473, 35.986027, 30.614004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019297, 35.480484, 30.512959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.113520, 35.768589, 30.773951>,  <31.170053, 35.941452, 30.930546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.113520, 35.768589, 30.773951>,  <31.019297, 35.480484, 30.512959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113520, 35.768589, 30.773951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204530, -0.693079, 0.691238,
		0.950095, -0.029374, -0.310576,
		0.235558, 0.720263, 0.652482,
		31.184187, 35.984669, 30.969696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689695, 35.359497, 30.785530>,  <31.019297, 35.480484, 30.512959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.689695, 35.359497, 30.785530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.522211, 35.559116, 31.089012>,  <31.421721, 35.678886, 31.271101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.522211, 35.559116, 31.089012>,  <31.689695, 35.359497, 30.785530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522211, 35.559116, 31.089012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295734, -0.714994, 0.633501,
		0.858616, 0.489630, 0.151792,
		-0.418712, 0.499045, 0.758706,
		31.396597, 35.708828, 31.316624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146824, 35.126751, 31.355644>,  <31.689695, 35.359497, 30.785530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146824, 35.126751, 31.355644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.853588, 35.329273, 31.537296>,  <31.677647, 35.450787, 31.646288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.853588, 35.329273, 31.537296>,  <32.146824, 35.126751, 31.355644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853588, 35.329273, 31.537296> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039248, -0.635103, 0.771430,
		0.678999, 0.583351, 0.445715,
		-0.733090, 0.506306, 0.454129,
		31.633661, 35.481167, 31.673534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640957, 35.635651, 31.058516>,  <32.146824, 35.126751, 31.355644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640957, 35.635651, 31.058516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.040283, 35.612511, 31.057177>,  <33.279881, 35.598629, 31.056374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.040283, 35.612511, 31.057177>,  <32.640957, 35.635651, 31.058516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040283, 35.612511, 31.057177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027473, 0.523391, -0.851650,
		0.051018, 0.850127, 0.524101,
		0.998320, -0.057848, -0.003347,
		33.339779, 35.595158, 31.056173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005497, 36.307957, 31.009649>,  <32.640957, 35.635651, 31.058516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005497, 36.307957, 31.009649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.247513, 36.032883, 30.849142>,  <33.392723, 35.867840, 30.752838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.247513, 36.032883, 30.849142>,  <33.005497, 36.307957, 31.009649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247513, 36.032883, 30.849142> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049360, 0.535410, -0.843149,
		0.794664, 0.490332, 0.357889,
		0.605040, -0.687685, -0.401268,
		33.429024, 35.826576, 30.728762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301292, 36.682125, 30.601013>,  <33.005497, 36.307957, 31.009649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301292, 36.682125, 30.601013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.420845, 36.322662, 30.472584>,  <33.492577, 36.106983, 30.395525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.420845, 36.322662, 30.472584>,  <33.301292, 36.682125, 30.601013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420845, 36.322662, 30.472584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042019, 0.348521, -0.936358,
		0.953365, 0.266367, 0.141926,
		0.298879, -0.898655, -0.321076,
		33.510509, 36.053066, 30.376261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771755, 36.840271, 30.137775>,  <33.301292, 36.682125, 30.601013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771755, 36.840271, 30.137775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.709961, 36.454964, 30.049910>,  <33.672886, 36.223782, 29.997190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.709961, 36.454964, 30.049910>,  <33.771755, 36.840271, 30.137775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709961, 36.454964, 30.049910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109120, 0.237609, -0.965212,
		0.981950, -0.125143, -0.141819,
		-0.154487, -0.963266, -0.219665,
		33.663616, 36.165985, 29.984011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294800, 36.685753, 29.625975>,  <33.771755, 36.840271, 30.137775>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294800, 36.685753, 29.625975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.994492, 36.423096, 29.597223>,  <33.814308, 36.265503, 29.579973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.994492, 36.423096, 29.597223>,  <34.294800, 36.685753, 29.625975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994492, 36.423096, 29.597223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101623, 0.222333, -0.969660,
		0.652700, -0.720687, -0.233651,
		-0.750770, -0.656642, -0.071878,
		33.769260, 36.226105, 29.575661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470734, 36.366219, 29.054018>,  <34.294800, 36.685753, 29.625975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470734, 36.366219, 29.054018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.081585, 36.330734, 29.139490>,  <33.848095, 36.309444, 29.190773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.081585, 36.330734, 29.139490>,  <34.470734, 36.366219, 29.054018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081585, 36.330734, 29.139490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231333, 0.358088, -0.904576,
		0.003730, -0.929464, -0.368894,
		-0.972867, -0.088711, 0.213679,
		33.789726, 36.304119, 29.203594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211975, 35.906170, 28.592964>,  <34.470734, 36.366219, 29.054018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211975, 35.906170, 28.592964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.915867, 36.150555, 28.705196>,  <33.738201, 36.297184, 28.772535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.915867, 36.150555, 28.705196>,  <34.211975, 35.906170, 28.592964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915867, 36.150555, 28.705196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132647, 0.276407, -0.951842,
		-0.659095, -0.741838, -0.123573,
		-0.740269, 0.610963, 0.280581,
		33.693787, 36.333843, 28.789371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761269, 35.891788, 27.975739>,  <34.211975, 35.906170, 28.592964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761269, 35.891788, 27.975739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.645271, 36.199234, 28.203821>,  <33.575672, 36.383701, 28.340672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.645271, 36.199234, 28.203821>,  <33.761269, 35.891788, 27.975739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645271, 36.199234, 28.203821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033972, 0.587168, -0.808752,
		-0.956426, -0.253902, -0.144162,
		-0.289990, 0.768614, 0.570209,
		33.558273, 36.429817, 28.374884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080288, 36.102463, 27.707132>,  <33.761269, 35.891788, 27.975739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080288, 36.102463, 27.707132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.284294, 36.385532, 27.902712>,  <33.406700, 36.555374, 28.020060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.284294, 36.385532, 27.902712>,  <33.080288, 36.102463, 27.707132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284294, 36.385532, 27.902712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005814, 0.565591, -0.824665,
		-0.860143, 0.423438, 0.284348,
		0.510020, 0.707677, 0.488951,
		33.437302, 36.597836, 28.049397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733067, 36.804302, 27.650629>,  <33.080288, 36.102463, 27.707132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733067, 36.804302, 27.650629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.128212, 36.840382, 27.701202>,  <33.365299, 36.862030, 27.731546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.128212, 36.840382, 27.701202>,  <32.733067, 36.804302, 27.650629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128212, 36.840382, 27.701202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009629, 0.776942, -0.629499,
		-0.155008, 0.623078, 0.766646,
		0.987866, 0.090196, 0.126432,
		33.424572, 36.867439, 27.739132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967976, 37.613300, 27.850134>,  <32.733067, 36.804302, 27.650629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967976, 37.613300, 27.850134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.263939, 37.402752, 27.682573>,  <33.441517, 37.276424, 27.582037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.263939, 37.402752, 27.682573>,  <32.967976, 37.613300, 27.850134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263939, 37.402752, 27.682573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142195, 0.731010, -0.667387,
		0.657512, 0.434237, 0.615724,
		0.739904, -0.526368, -0.418902,
		33.485909, 37.244843, 27.556902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547291, 37.967491, 27.807526>,  <32.967976, 37.613300, 27.850134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547291, 37.967491, 27.807526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.563778, 37.701542, 27.509197>,  <33.573669, 37.541973, 27.330200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.563778, 37.701542, 27.509197>,  <33.547291, 37.967491, 27.807526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563778, 37.701542, 27.509197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029248, 0.746940, -0.664248,
		0.998722, 0.005563, 0.050230,
		0.041214, -0.664868, -0.745823,
		33.576141, 37.502083, 27.285450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992760, 38.307198, 27.345798>,  <33.547291, 37.967491, 27.807526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992760, 38.307198, 27.345798> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.813919, 38.013577, 27.141340>,  <33.706615, 37.837406, 27.018665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.813919, 38.013577, 27.141340>,  <33.992760, 38.307198, 27.345798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813919, 38.013577, 27.141340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136671, 0.508671, -0.850044,
		0.883978, -0.449918, -0.127107,
		-0.447105, -0.734048, -0.511145,
		33.679787, 37.793362, 26.987997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443981, 38.139141, 26.806278>,  <33.992760, 38.307198, 27.345798>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443981, 38.139141, 26.806278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.066441, 38.047344, 26.711220>,  <33.839916, 37.992268, 26.654184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.066441, 38.047344, 26.711220>,  <34.443981, 38.139141, 26.806278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066441, 38.047344, 26.711220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042147, 0.629813, -0.775602,
		0.327664, -0.742071, -0.584779,
		-0.943854, -0.229490, -0.237644,
		33.783283, 37.978497, 26.639927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124966, 37.692928, 26.792751>,  <34.443981, 38.139141, 26.806278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124966, 37.692928, 26.792751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.451260, 37.919376, 26.745283>,  <35.647038, 38.055244, 26.716803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.451260, 37.919376, 26.745283>,  <35.124966, 37.692928, 26.792751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451260, 37.919376, 26.745283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312563, -0.258797, 0.913963,
		0.486700, -0.782646, -0.388058,
		0.815737, 0.566118, -0.118670,
		35.695980, 38.089211, 26.709682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725658, 37.262932, 26.826176>,  <35.124966, 37.692928, 26.792751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725658, 37.262932, 26.826176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.813709, 37.640110, 26.926088>,  <35.866539, 37.866417, 26.986036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.813709, 37.640110, 26.926088>,  <35.725658, 37.262932, 26.826176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813709, 37.640110, 26.926088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221064, -0.297624, 0.928736,
		0.950091, -0.149223, -0.273968,
		0.220129, 0.942949, 0.249782,
		35.879749, 37.922997, 27.001022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178783, 37.184895, 27.352383>,  <35.725658, 37.262932, 26.826176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178783, 37.184895, 27.352383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.090118, 37.572376, 27.397074>,  <36.036919, 37.804863, 27.423889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.090118, 37.572376, 27.397074>,  <36.178783, 37.184895, 27.352383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090118, 37.572376, 27.397074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022266, -0.109522, 0.993735,
		0.974869, 0.222762, 0.002708,
		-0.221663, 0.968701, 0.111729,
		36.023621, 37.862988, 27.430592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708374, 37.514610, 27.809139>,  <36.178783, 37.184895, 27.352383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708374, 37.514610, 27.809139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.396709, 37.764103, 27.834028>,  <36.209713, 37.913799, 27.848961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.396709, 37.764103, 27.834028>,  <36.708374, 37.514610, 27.809139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396709, 37.764103, 27.834028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024633, -0.068721, 0.997332,
		0.626344, 0.778611, 0.038180,
		-0.779157, 0.623733, 0.062222,
		36.162964, 37.951221, 27.852695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925247, 37.917618, 28.319014>,  <36.708374, 37.514610, 27.809139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925247, 37.917618, 28.319014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.526596, 37.944672, 28.300409>,  <36.287407, 37.960903, 28.289248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.526596, 37.944672, 28.300409>,  <36.925247, 37.917618, 28.319014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526596, 37.944672, 28.300409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054281, -0.118019, 0.991527,
		0.061571, 0.990706, 0.121292,
		-0.996626, 0.067633, -0.046510,
		36.227608, 37.964962, 28.286457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787106, 38.355686, 28.899229>,  <36.925247, 37.917618, 28.319014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787106, 38.355686, 28.899229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.467400, 38.130886, 28.814074>,  <36.275574, 37.996006, 28.762980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.467400, 38.130886, 28.814074>,  <36.787106, 38.355686, 28.899229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467400, 38.130886, 28.814074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039702, -0.402844, 0.914407,
		-0.599662, 0.722404, 0.344293,
		-0.799268, -0.562004, -0.212889,
		36.227619, 37.962284, 28.750208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371895, 38.402699, 29.440430>,  <36.787106, 38.355686, 28.899229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371895, 38.402699, 29.440430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.196625, 38.096764, 29.251526>,  <36.091461, 37.913204, 29.138184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.196625, 38.096764, 29.251526>,  <36.371895, 38.402699, 29.440430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196625, 38.096764, 29.251526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266510, -0.391220, 0.880863,
		-0.858472, 0.511834, -0.032414,
		-0.438175, -0.764835, -0.472260,
		36.065174, 37.867313, 29.109848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719543, 38.290257, 29.782490>,  <36.371895, 38.402699, 29.440430>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719543, 38.290257, 29.782490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.779697, 37.945278, 29.589172>,  <35.815788, 37.738293, 29.473181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.779697, 37.945278, 29.589172>,  <35.719543, 38.290257, 29.782490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779697, 37.945278, 29.589172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247276, -0.506129, 0.826250,
		-0.957204, -0.004746, -0.289374,
		0.150382, -0.862445, -0.483295,
		35.824814, 37.686546, 29.444183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174278, 37.900154, 29.932838>,  <35.719543, 38.290257, 29.782490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174278, 37.900154, 29.932838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.473064, 37.651604, 29.838234>,  <35.652336, 37.502476, 29.781471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.473064, 37.651604, 29.838234>,  <35.174278, 37.900154, 29.932838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473064, 37.651604, 29.838234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096390, -0.453181, 0.886192,
		-0.657840, -0.639156, -0.398404,
		0.746964, -0.621375, -0.236512,
		35.697155, 37.465191, 29.767281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976524, 37.257202, 30.237661>,  <35.174278, 37.900154, 29.932838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976524, 37.257202, 30.237661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.365387, 37.189720, 30.172604>,  <35.598705, 37.149231, 30.133570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.365387, 37.189720, 30.172604>,  <34.976524, 37.257202, 30.237661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365387, 37.189720, 30.172604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024235, -0.617960, 0.785836,
		-0.233077, -0.767897, -0.596665,
		0.972156, -0.168701, -0.162642,
		35.657032, 37.139111, 30.123812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073715, 36.499039, 30.220871>,  <34.976524, 37.257202, 30.237661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073715, 36.499039, 30.220871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.414078, 36.681461, 30.325157>,  <35.618294, 36.790916, 30.387728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.414078, 36.681461, 30.325157>,  <35.073715, 36.499039, 30.220871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414078, 36.681461, 30.325157> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089938, -0.615442, 0.783034,
		0.517564, -0.642839, -0.564699,
		0.850904, 0.456058, 0.260715,
		35.669350, 36.818279, 30.403372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514275, 36.030567, 30.389935>,  <35.073715, 36.499039, 30.220871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514275, 36.030567, 30.389935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.716396, 36.340263, 30.542368>,  <35.837669, 36.526081, 30.633827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.716396, 36.340263, 30.542368>,  <35.514275, 36.030567, 30.389935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716396, 36.340263, 30.542368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202489, -0.535661, 0.819796,
		0.838849, -0.337080, -0.427446,
		0.505303, 0.774238, 0.381084,
		35.867989, 36.572536, 30.656693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019424, 35.726929, 30.761219>,  <35.514275, 36.030567, 30.389935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019424, 35.726929, 30.761219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.023697, 36.100342, 30.904551>,  <36.026260, 36.324390, 30.990549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.023697, 36.100342, 30.904551>,  <36.019424, 35.726929, 30.761219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023697, 36.100342, 30.904551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279406, -0.346860, 0.895333,
		0.960114, 0.090560, -0.264538,
		0.010677, 0.933535, 0.358328,
		36.026901, 36.380402, 31.012049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588398, 35.702877, 31.058794>,  <36.019424, 35.726929, 30.761219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588398, 35.702877, 31.058794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.375713, 36.004414, 31.213200>,  <36.248104, 36.185333, 31.305843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.375713, 36.004414, 31.213200>,  <36.588398, 35.702877, 31.058794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375713, 36.004414, 31.213200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225886, -0.313045, 0.922485,
		0.816246, 0.577692, -0.003832,
		-0.531713, 0.753840, 0.386015,
		36.216198, 36.230564, 31.329004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.622360, 40.042648, 27.563950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.269745, 40.225456, 27.611317>,  <38.058174, 40.335140, 27.639736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.269745, 40.225456, 27.611317>,  <38.622360, 40.042648, 27.563950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269745, 40.225456, 27.611317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078950, 0.389994, -0.917426,
		-0.465466, -0.799397, -0.379877,
		-0.881537, 0.457022, 0.118417,
		38.005283, 40.362564, 27.646841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283665, 39.939758, 26.839964>,  <38.622360, 40.042648, 27.563950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283665, 39.939758, 26.839964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.119057, 40.257713, 27.018314>,  <38.020294, 40.448486, 27.125324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.119057, 40.257713, 27.018314>,  <38.283665, 39.939758, 26.839964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119057, 40.257713, 27.018314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264965, 0.363745, -0.893019,
		-0.872036, -0.485634, 0.060931,
		-0.411518, 0.794890, 0.445874,
		37.995602, 40.496181, 27.152077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584179, 40.149384, 26.471483>,  <38.283665, 39.939758, 26.839964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584179, 40.149384, 26.471483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.686245, 40.474831, 26.680452>,  <37.747482, 40.670097, 26.805834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.686245, 40.474831, 26.680452>,  <37.584179, 40.149384, 26.471483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686245, 40.474831, 26.680452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150828, 0.567185, -0.809662,
		-0.955062, 0.127800, 0.267441,
		0.255163, 0.813615, 0.522420,
		37.762794, 40.718914, 26.837179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041946, 40.573296, 26.369925>,  <37.584179, 40.149384, 26.471483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041946, 40.573296, 26.369925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.354870, 40.801010, 26.471041>,  <37.542625, 40.937637, 26.531712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.354870, 40.801010, 26.471041>,  <37.041946, 40.573296, 26.369925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354870, 40.801010, 26.471041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288003, 0.690441, -0.663585,
		-0.552306, 0.446325, 0.704096,
		0.782312, 0.569284, 0.252792,
		37.589565, 40.971794, 26.546879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813042, 41.172417, 26.316111>,  <37.041946, 40.573296, 26.369925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813042, 41.172417, 26.316111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.207443, 41.238026, 26.304123>,  <37.444084, 41.277393, 26.296930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.207443, 41.238026, 26.304123>,  <36.813042, 41.172417, 26.316111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207443, 41.238026, 26.304123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144901, 0.753973, -0.640724,
		-0.082499, 0.636097, 0.767186,
		0.986001, 0.164025, -0.029969,
		37.503242, 41.287231, 26.295132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878414, 41.895531, 26.289833>,  <36.813042, 41.172417, 26.316111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878414, 41.895531, 26.289833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.232079, 41.759636, 26.161556>,  <37.444275, 41.678101, 26.084589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.232079, 41.759636, 26.161556>,  <36.878414, 41.895531, 26.289833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232079, 41.759636, 26.161556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077373, 0.570470, -0.817666,
		0.460738, 0.747758, 0.478099,
		0.884157, -0.339737, -0.320693,
		37.497326, 41.657715, 26.065348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273041, 42.454288, 26.129850>,  <36.878414, 41.895531, 26.289833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273041, 42.454288, 26.129850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.456764, 42.166222, 25.921852>,  <37.566998, 41.993382, 25.797054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.456764, 42.166222, 25.921852>,  <37.273041, 42.454288, 26.129850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456764, 42.166222, 25.921852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064278, 0.556915, -0.828079,
		0.885948, 0.413767, 0.209504,
		0.459308, -0.720168, -0.519994,
		37.594555, 41.950172, 25.765854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892441, 42.754913, 25.775053>,  <37.273041, 42.454288, 26.129850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892441, 42.754913, 25.775053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.751118, 42.429585, 25.590149>,  <37.666325, 42.234386, 25.479206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.751118, 42.429585, 25.590149>,  <37.892441, 42.754913, 25.775053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751118, 42.429585, 25.590149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115972, 0.528394, -0.841041,
		0.928290, -0.243540, -0.281009,
		-0.353311, -0.813319, -0.462259,
		37.645123, 42.185589, 25.451471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064743, 42.894913, 25.150597>,  <37.892441, 42.754913, 25.775053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064743, 42.894913, 25.150597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.809895, 42.590939, 25.099096>,  <37.656986, 42.408554, 25.068195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.809895, 42.590939, 25.099096>,  <38.064743, 42.894913, 25.150597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809895, 42.590939, 25.099096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300317, 0.398602, -0.866560,
		0.709846, -0.513440, -0.482180,
		-0.637124, -0.759931, -0.128751,
		37.618755, 42.362961, 25.060471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154083, 42.648941, 24.509634>,  <38.064743, 42.894913, 25.150597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154083, 42.648941, 24.509634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.783985, 42.526581, 24.599390>,  <37.561928, 42.453163, 24.653244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.783985, 42.526581, 24.599390>,  <38.154083, 42.648941, 24.509634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783985, 42.526581, 24.599390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281564, 0.157297, -0.946562,
		0.254257, -0.938980, -0.231668,
		-0.925243, -0.305900, 0.224389,
		37.506413, 42.434811, 24.666706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945965, 42.159031, 23.920565>,  <38.154083, 42.648941, 24.509634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945965, 42.159031, 23.920565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.613163, 42.283451, 24.104313>,  <37.413483, 42.358101, 24.214561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.613163, 42.283451, 24.104313>,  <37.945965, 42.159031, 23.920565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613163, 42.283451, 24.104313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398163, 0.241800, -0.884872,
		-0.386312, -0.919121, -0.077332,
		-0.832003, 0.311046, 0.459370,
		37.363564, 42.376766, 24.242125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444717, 41.814381, 23.607834>,  <37.945965, 42.159031, 23.920565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444717, 41.814381, 23.607834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.267128, 42.136955, 23.764067>,  <37.160576, 42.330498, 23.857807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.267128, 42.136955, 23.764067>,  <37.444717, 41.814381, 23.607834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267128, 42.136955, 23.764067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424819, 0.194355, -0.884169,
		-0.788934, -0.558474, 0.256299,
		-0.443972, 0.806432, 0.390584,
		37.133938, 42.378883, 23.881243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662304, 41.863403, 23.610813>,  <37.444717, 41.814381, 23.607834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662304, 41.863403, 23.610813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.749290, 42.245251, 23.692205>,  <36.801483, 42.474361, 23.741041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.749290, 42.245251, 23.692205>,  <36.662304, 41.863403, 23.610813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749290, 42.245251, 23.692205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697633, 0.297819, -0.651623,
		-0.682653, -0.000247, 0.730742,
		0.217468, 0.954622, 0.203479,
		36.814529, 42.531639, 23.753250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594887, 42.302734, 23.055618>,  <36.662304, 41.863403, 23.610813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594887, 42.302734, 23.055618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.241207, 42.426983, 22.916073>,  <36.028999, 42.501530, 22.832346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.241207, 42.426983, 22.916073>,  <36.594887, 42.302734, 23.055618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241207, 42.426983, 22.916073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432372, -0.826875, 0.359628,
		-0.176758, 0.468822, 0.865426,
		-0.884201, 0.310619, -0.348862,
		35.975948, 42.520168, 22.811415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122112, 42.426891, 23.606089>,  <36.594887, 42.302734, 23.055618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122112, 42.426891, 23.606089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.948841, 42.305943, 23.266459>,  <35.844879, 42.233372, 23.062679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.948841, 42.305943, 23.266459>,  <36.122112, 42.426891, 23.606089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948841, 42.305943, 23.266459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257317, -0.861353, 0.438018,
		-0.863799, 0.408220, 0.295310,
		-0.433174, -0.302371, -0.849077,
		35.818890, 42.215233, 23.011736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398945, 42.173965, 23.739851>,  <36.122112, 42.426891, 23.606089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398945, 42.173965, 23.739851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.520245, 42.000191, 23.400602>,  <35.593025, 41.895927, 23.197054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.520245, 42.000191, 23.400602>,  <35.398945, 42.173965, 23.739851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520245, 42.000191, 23.400602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123461, -0.900440, 0.417092,
		-0.944881, -0.021770, -0.326688,
		0.303244, -0.434436, -0.848121,
		35.611217, 41.869862, 23.146166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848709, 41.670090, 23.523207>,  <35.398945, 42.173965, 23.739851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848709, 41.670090, 23.523207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.200958, 41.577118, 23.358055>,  <35.412308, 41.521336, 23.258965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.200958, 41.577118, 23.358055>,  <34.848709, 41.670090, 23.523207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200958, 41.577118, 23.358055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130416, -0.956655, 0.260389,
		-0.455507, -0.175460, -0.872770,
		0.880628, -0.232432, -0.412881,
		35.465145, 41.507389, 23.234190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663773, 41.055229, 23.202248>,  <34.848709, 41.670090, 23.523207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663773, 41.055229, 23.202248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.059971, 41.025471, 23.248535>,  <35.297688, 41.007618, 23.276308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.059971, 41.025471, 23.248535>,  <34.663773, 41.055229, 23.202248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059971, 41.025471, 23.248535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119118, -0.884587, 0.450907,
		0.068820, -0.460405, -0.885037,
		0.990492, -0.074392, 0.115720,
		35.357117, 41.003155, 23.283251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879402, 40.355927, 23.032507>,  <34.663773, 41.055229, 23.202248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879402, 40.355927, 23.032507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.181293, 40.481125, 23.263128>,  <35.362431, 40.556244, 23.401501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.181293, 40.481125, 23.263128>,  <34.879402, 40.355927, 23.032507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181293, 40.481125, 23.263128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159412, -0.940004, 0.301630,
		0.636370, -0.135741, -0.759347,
		0.754733, 0.312997, 0.576551,
		35.407715, 40.575024, 23.436094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415771, 39.800362, 22.994030>,  <34.879402, 40.355927, 23.032507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415771, 39.800362, 22.994030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.487507, 40.018448, 23.321587>,  <35.530548, 40.149300, 23.518120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.487507, 40.018448, 23.321587>,  <35.415771, 39.800362, 22.994030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487507, 40.018448, 23.321587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306340, -0.821950, 0.480161,
		0.934877, 0.164750, -0.314424,
		0.179334, 0.545211, 0.818892,
		35.541306, 40.182011, 23.567255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004898, 39.424511, 23.377605>,  <35.415771, 39.800362, 22.994030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004898, 39.424511, 23.377605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.879391, 39.688850, 23.650320>,  <35.804089, 39.847454, 23.813950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.879391, 39.688850, 23.650320>,  <36.004898, 39.424511, 23.377605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879391, 39.688850, 23.650320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201454, -0.655368, 0.727949,
		0.927884, 0.365753, 0.072502,
		-0.313765, 0.660846, 0.681788,
		35.785263, 39.887104, 23.854856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592896, 39.533897, 23.815989>,  <36.004898, 39.424511, 23.377605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592896, 39.533897, 23.815989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.241291, 39.624271, 23.983940>,  <36.030331, 39.678497, 24.084711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.241291, 39.624271, 23.983940>,  <36.592896, 39.533897, 23.815989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241291, 39.624271, 23.983940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215203, -0.597821, 0.772203,
		0.425480, 0.769132, 0.476868,
		-0.879007, 0.225933, 0.419881,
		35.977589, 39.692051, 24.109905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726528, 39.434841, 24.536348>,  <36.592896, 39.533897, 23.815989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726528, 39.434841, 24.536348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.328766, 39.472282, 24.555914>,  <36.090107, 39.494747, 24.567654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.328766, 39.472282, 24.555914>,  <36.726528, 39.434841, 24.536348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328766, 39.472282, 24.555914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006959, -0.520208, 0.854011,
		0.105386, 0.848895, 0.517950,
		-0.994407, 0.093605, 0.048915,
		36.030445, 39.500362, 24.570589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514507, 39.831516, 25.164257>,  <36.726528, 39.434841, 24.536348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514507, 39.831516, 25.164257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.232216, 39.579086, 25.035446>,  <36.062843, 39.427628, 24.958160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.232216, 39.579086, 25.035446>,  <36.514507, 39.831516, 25.164257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232216, 39.579086, 25.035446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049866, -0.409156, 0.911101,
		-0.706728, 0.659046, 0.257283,
		-0.705726, -0.631071, -0.322025,
		36.020496, 39.389767, 24.938839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094398, 39.794182, 25.795389>,  <36.514507, 39.831516, 25.164257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094398, 39.794182, 25.795389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.976589, 39.502693, 25.548092>,  <35.905903, 39.327801, 25.399714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.976589, 39.502693, 25.548092>,  <36.094398, 39.794182, 25.795389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976589, 39.502693, 25.548092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063491, -0.630588, 0.773517,
		-0.953533, 0.267071, 0.139455,
		-0.294522, -0.728719, -0.618243,
		35.888233, 39.284077, 25.362619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357224, 39.591526, 25.942923>,  <36.094398, 39.794182, 25.795389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357224, 39.591526, 25.942923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.550671, 39.280304, 25.782553>,  <35.666737, 39.093571, 25.686331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.550671, 39.280304, 25.782553>,  <35.357224, 39.591526, 25.942923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550671, 39.280304, 25.782553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207281, -0.546830, 0.811179,
		-0.850383, -0.309195, -0.425732,
		0.483615, -0.778059, -0.400924,
		35.695755, 39.046886, 25.662275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950764, 38.937099, 25.941685>,  <35.357224, 39.591526, 25.942923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950764, 38.937099, 25.941685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.336079, 38.831020, 25.924994>,  <35.567268, 38.767372, 25.914980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.336079, 38.831020, 25.924994>,  <34.950764, 38.937099, 25.941685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336079, 38.831020, 25.924994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108748, -0.527568, 0.842523,
		-0.245450, -0.807057, -0.537041,
		0.963291, -0.265200, -0.041726,
		35.625065, 38.751461, 25.912476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939041, 38.183834, 26.240480>,  <34.950764, 38.937099, 25.941685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939041, 38.183834, 26.240480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.331707, 38.259804, 26.246880>,  <35.567307, 38.305386, 26.250719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.331707, 38.259804, 26.246880>,  <34.939041, 38.183834, 26.240480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331707, 38.259804, 26.246880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059767, -0.386450, 0.920372,
		0.180985, -0.902543, -0.390717,
		0.981668, 0.189926, 0.015999,
		35.626209, 38.316780, 26.251678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343204, 37.917149, 25.875738>,  <34.939041, 38.183834, 26.240480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343204, 37.917149, 25.875738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.990513, 38.011257, 26.039299>,  <33.778896, 38.067722, 26.137436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.990513, 38.011257, 26.039299>,  <34.343204, 37.917149, 25.875738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990513, 38.011257, 26.039299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119931, 0.726507, -0.676613,
		-0.456257, -0.645630, -0.612366,
		-0.881729, 0.235267, 0.408905,
		33.725994, 38.081837, 26.161970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003231, 38.117958, 25.316725>,  <34.343204, 37.917149, 25.875738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003231, 38.117958, 25.316725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.794117, 38.275051, 25.619368>,  <33.668648, 38.369308, 25.800953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.794117, 38.275051, 25.619368>,  <34.003231, 38.117958, 25.316725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794117, 38.275051, 25.619368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047928, 0.872608, -0.486064,
		-0.851118, -0.290368, -0.437361,
		-0.522782, 0.392736, 0.756609,
		33.637283, 38.392872, 25.846350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426334, 38.321655, 25.030472>,  <34.003231, 38.117958, 25.316725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426334, 38.321655, 25.030472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.440887, 38.553883, 25.355829>,  <33.449619, 38.693218, 25.551044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.440887, 38.553883, 25.355829>,  <33.426334, 38.321655, 25.030472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440887, 38.553883, 25.355829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229814, 0.796980, -0.558577,
		-0.972554, -0.166610, 0.162417,
		0.036378, 0.580573, 0.813395,
		33.451801, 38.728054, 25.599848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953487, 38.880177, 24.801476>,  <33.426334, 38.321655, 25.030472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953487, 38.880177, 24.801476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.101704, 39.003521, 25.151930>,  <33.190636, 39.077526, 25.362202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.101704, 39.003521, 25.151930>,  <32.953487, 38.880177, 24.801476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101704, 39.003521, 25.151930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194920, 0.948093, -0.251249,
		-0.908131, -0.077676, 0.411417,
		0.370545, 0.308361, 0.876133,
		33.212868, 39.096027, 25.414770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400051, 39.225563, 25.147005>,  <32.953487, 38.880177, 24.801476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400051, 39.225563, 25.147005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.757782, 39.363319, 25.261248>,  <32.972420, 39.445972, 25.329792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.757782, 39.363319, 25.261248>,  <32.400051, 39.225563, 25.147005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757782, 39.363319, 25.261248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306944, 0.936715, -0.168375,
		-0.325517, 0.062918, 0.943440,
		0.894329, 0.344392, 0.285605,
		33.026081, 39.466637, 25.346930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285328, 39.895126, 25.449823>,  <32.400051, 39.225563, 25.147005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285328, 39.895126, 25.449823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.680214, 39.899357, 25.386198>,  <32.917145, 39.901894, 25.348022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.680214, 39.899357, 25.386198>,  <32.285328, 39.895126, 25.449823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680214, 39.899357, 25.386198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017927, 0.998833, -0.044846,
		0.158404, 0.047124, 0.986249,
		0.987212, 0.010577, -0.159064,
		32.976376, 39.902531, 25.338478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500904, 40.611256, 25.738758>,  <32.285328, 39.895126, 25.449823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500904, 40.611256, 25.738758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.803596, 40.495647, 25.504211>,  <32.985210, 40.426281, 25.363483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.803596, 40.495647, 25.504211>,  <32.500904, 40.611256, 25.738758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803596, 40.495647, 25.504211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182792, 0.954730, -0.234688,
		0.627653, 0.070412, 0.775302,
		0.756729, -0.289021, -0.586368,
		33.030617, 40.408939, 25.328300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587826, 41.071117, 26.349968>,  <32.500904, 40.611256, 25.738758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587826, 41.071117, 26.349968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.229717, 41.229263, 26.432112>,  <32.014851, 41.324150, 26.481398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.229717, 41.229263, 26.432112>,  <32.587826, 41.071117, 26.349968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229717, 41.229263, 26.432112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196718, -0.764378, 0.614026,
		0.399739, 0.509323, 0.762102,
		-0.895271, 0.395369, 0.205359,
		31.961136, 41.347874, 26.493719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426300, 40.815136, 26.960264>,  <32.587826, 41.071117, 26.349968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426300, 40.815136, 26.960264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.065491, 40.945778, 26.847351>,  <31.849005, 41.024162, 26.779604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.065491, 40.945778, 26.847351>,  <32.426300, 40.815136, 26.960264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065491, 40.945778, 26.847351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431092, -0.647087, 0.628838,
		0.022722, 0.688916, 0.724485,
		-0.902022, 0.326608, -0.282283,
		31.794884, 41.043762, 26.762667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068195, 40.992798, 27.576027>,  <32.426300, 40.815136, 26.960264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.068195, 40.992798, 27.576027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.780659, 40.934620, 27.304113>,  <31.608135, 40.899712, 27.140965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.780659, 40.934620, 27.304113>,  <32.068195, 40.992798, 27.576027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780659, 40.934620, 27.304113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482458, -0.599648, 0.638479,
		-0.500495, 0.786936, 0.360883,
		-0.718845, -0.145445, -0.679785,
		31.565004, 40.890987, 27.100178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506968, 41.041569, 27.897758>,  <32.068195, 40.992798, 27.576027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506968, 41.041569, 27.897758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.401545, 40.821171, 27.581041>,  <31.338291, 40.688931, 27.391010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.401545, 40.821171, 27.581041>,  <31.506968, 41.041569, 27.897758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.401545, 40.821171, 27.581041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366775, -0.701930, 0.610550,
		-0.892196, 0.451325, -0.017094,
		-0.263558, -0.550999, -0.791794,
		31.322477, 40.655872, 27.343504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822369, 40.903446, 28.062290>,  <31.506968, 41.041569, 27.897758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.822369, 40.903446, 28.062290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.931070, 40.625683, 27.795773>,  <30.996292, 40.459026, 27.635862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.931070, 40.625683, 27.795773>,  <30.822369, 40.903446, 28.062290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931070, 40.625683, 27.795773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391636, -0.712224, 0.582545,
		-0.879073, 0.102634, -0.465507,
		0.271757, -0.694408, -0.666292,
		31.012598, 40.417362, 27.595884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280521, 40.348022, 28.047506>,  <30.822369, 40.903446, 28.062290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280521, 40.348022, 28.047506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.608589, 40.172947, 27.900129>,  <30.805429, 40.067902, 27.811703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.608589, 40.172947, 27.900129>,  <30.280521, 40.348022, 28.047506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608589, 40.172947, 27.900129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162955, -0.796035, 0.582901,
		-0.548422, -0.418039, -0.724208,
		0.820170, -0.437689, -0.368441,
		30.854641, 40.041641, 27.789597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.167133, 39.603611, 28.058235>,  <30.280521, 40.348022, 28.047506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.167133, 39.603611, 28.058235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.566011, 39.628315, 28.041340>,  <30.805338, 39.643135, 28.031202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.566011, 39.628315, 28.041340>,  <30.167133, 39.603611, 28.058235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566011, 39.628315, 28.041340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074165, -0.741526, 0.666813,
		0.009861, -0.668076, -0.744027,
		0.997197, 0.061757, -0.042236,
		30.865171, 39.646843, 28.028669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<34.709400, 45.035961, 25.361073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.022484, 44.798000, 25.287907>,  <35.210335, 44.655224, 25.244007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.022484, 44.798000, 25.287907>,  <34.709400, 45.035961, 25.361073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022484, 44.798000, 25.287907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090564, -0.399624, 0.912194,
		-0.615767, -0.697415, -0.366666,
		0.782707, -0.594906, -0.182915,
		35.257298, 44.619530, 25.233032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608940, 44.568733, 25.807114>,  <34.709400, 45.035961, 25.361073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608940, 44.568733, 25.807114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.980221, 44.483734, 25.684946>,  <35.202991, 44.432735, 25.611645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.980221, 44.483734, 25.684946>,  <34.608940, 44.568733, 25.807114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980221, 44.483734, 25.684946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163014, -0.505629, 0.847211,
		-0.334458, -0.836173, -0.434687,
		0.928205, -0.212496, -0.305419,
		35.258682, 44.419987, 25.593321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717312, 43.859894, 25.947977>,  <34.608940, 44.568733, 25.807114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717312, 43.859894, 25.947977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.086369, 44.011398, 25.918941>,  <35.307804, 44.102303, 25.901520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.086369, 44.011398, 25.918941>,  <34.717312, 43.859894, 25.947977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086369, 44.011398, 25.918941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263947, -0.482953, 0.834918,
		0.281177, -0.789491, -0.545566,
		0.922644, 0.378761, -0.072589,
		35.363163, 44.125027, 25.897165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121056, 43.373322, 26.228268>,  <34.717312, 43.859894, 25.947977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121056, 43.373322, 26.228268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.336590, 43.710163, 26.237461>,  <35.465908, 43.912266, 26.242977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.336590, 43.710163, 26.237461>,  <35.121056, 43.373322, 26.228268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336590, 43.710163, 26.237461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291113, -0.211736, 0.932963,
		0.790514, -0.496021, -0.359237,
		0.538833, 0.842099, 0.022982,
		35.498241, 43.962791, 26.244356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883091, 43.274643, 26.301636>,  <35.121056, 43.373322, 26.228268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883091, 43.274643, 26.301636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.808273, 43.636379, 26.455091>,  <35.763382, 43.853420, 26.547165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.808273, 43.636379, 26.455091>,  <35.883091, 43.274643, 26.301636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808273, 43.636379, 26.455091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395676, -0.288097, 0.872032,
		0.899142, 0.314903, -0.303941,
		-0.187041, 0.904343, 0.383640,
		35.752159, 43.907681, 26.570183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396053, 43.375771, 26.694607>,  <35.883091, 43.274643, 26.301636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396053, 43.375771, 26.694607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.171577, 43.681519, 26.821602>,  <36.036892, 43.864967, 26.897799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.171577, 43.681519, 26.821602>,  <36.396053, 43.375771, 26.694607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171577, 43.681519, 26.821602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356848, -0.122656, 0.926075,
		0.746808, 0.633001, -0.203931,
		-0.561193, 0.764372, 0.317485,
		36.003220, 43.910831, 26.916847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811646, 43.678730, 27.171808>,  <36.396053, 43.375771, 26.694607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811646, 43.678730, 27.171808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.434406, 43.781612, 27.256111>,  <36.208065, 43.843342, 27.306692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.434406, 43.781612, 27.256111>,  <36.811646, 43.678730, 27.171808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434406, 43.781612, 27.256111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207884, -0.038633, 0.977390,
		0.259530, 0.965585, -0.017034,
		-0.943095, 0.257204, 0.210756,
		36.151478, 43.858772, 27.319338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942806, 44.065380, 27.684328>,  <36.811646, 43.678730, 27.171808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942806, 44.065380, 27.684328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.549767, 44.006920, 27.730175>,  <36.313942, 43.971844, 27.757683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.549767, 44.006920, 27.730175>,  <36.942806, 44.065380, 27.684328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549767, 44.006920, 27.730175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136268, -0.147952, 0.979562,
		-0.126210, 0.978135, 0.165294,
		-0.982600, -0.146155, 0.114616,
		36.254986, 43.963074, 27.764561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713840, 44.504658, 28.115606>,  <36.942806, 44.065380, 27.684328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713840, 44.504658, 28.115606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.437946, 44.216637, 28.146038>,  <36.272408, 44.043823, 28.164297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.437946, 44.216637, 28.146038>,  <36.713840, 44.504658, 28.115606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437946, 44.216637, 28.146038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139374, -0.028922, 0.989817,
		-0.710517, 0.693319, 0.120305,
		-0.689739, -0.720050, 0.076082,
		36.231026, 44.000622, 28.168863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279449, 44.674820, 28.696611>,  <36.713840, 44.504658, 28.115606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279449, 44.674820, 28.696611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.221958, 44.282619, 28.643003>,  <36.187462, 44.047298, 28.610838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.221958, 44.282619, 28.643003>,  <36.279449, 44.674820, 28.696611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221958, 44.282619, 28.643003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004833, -0.134731, 0.990870,
		-0.989605, 0.143066, 0.014626,
		-0.143730, -0.980500, -0.134022,
		36.178841, 43.988468, 28.602797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762707, 44.383308, 29.303854>,  <36.279449, 44.674820, 28.696611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762707, 44.383308, 29.303854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.908585, 44.036625, 29.167723>,  <35.996109, 43.828617, 29.086044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.908585, 44.036625, 29.167723>,  <35.762707, 44.383308, 29.303854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908585, 44.036625, 29.167723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150880, -0.305667, 0.940108,
		-0.918823, -0.394197, 0.019295,
		0.364690, -0.866704, -0.340330,
		36.017990, 43.776615, 29.065624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284058, 43.856720, 29.524576>,  <35.762707, 44.383308, 29.303854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284058, 43.856720, 29.524576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.653412, 43.710178, 29.478727>,  <35.875027, 43.622253, 29.451218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.653412, 43.710178, 29.478727>,  <35.284058, 43.856720, 29.524576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653412, 43.710178, 29.478727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031835, -0.224479, 0.973959,
		-0.382548, -0.902990, -0.195618,
		0.923387, -0.366359, -0.114621,
		35.930428, 43.600269, 29.444342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788200, 43.650391, 28.967653>,  <35.284058, 43.856720, 29.524576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788200, 43.650391, 28.967653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.542213, 43.861214, 29.202271>,  <34.394623, 43.987705, 29.343040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.542213, 43.861214, 29.202271>,  <34.788200, 43.650391, 28.967653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542213, 43.861214, 29.202271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310427, 0.521949, -0.794483,
		-0.724880, -0.670659, -0.157370,
		-0.614967, 0.527053, 0.586542,
		34.357723, 44.019329, 29.378233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145157, 43.700897, 28.640333>,  <34.788200, 43.650391, 28.967653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145157, 43.700897, 28.640333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.153751, 44.019333, 28.882254>,  <34.158909, 44.210396, 29.027405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.153751, 44.019333, 28.882254>,  <34.145157, 43.700897, 28.640333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153751, 44.019333, 28.882254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501951, 0.531760, -0.682112,
		-0.864629, -0.288921, 0.411025,
		0.021490, 0.796088, 0.604800,
		34.160198, 44.258160, 29.063694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462002, 43.969818, 28.674978>,  <34.145157, 43.700897, 28.640333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462002, 43.969818, 28.674978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.676334, 44.284039, 28.798779>,  <33.804935, 44.472572, 28.873058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.676334, 44.284039, 28.798779>,  <33.462002, 43.969818, 28.674978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676334, 44.284039, 28.798779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543832, 0.601508, -0.585180,
		-0.645856, 0.145242, 0.749516,
		0.535832, 0.785553, 0.309500,
		33.837086, 44.519703, 28.891628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939449, 44.539352, 28.841261>,  <33.462002, 43.969818, 28.674978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939449, 44.539352, 28.841261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.292706, 44.708019, 28.759033>,  <33.504658, 44.809219, 28.709696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.292706, 44.708019, 28.759033>,  <32.939449, 44.539352, 28.841261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292706, 44.708019, 28.759033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466153, 0.739724, -0.485294,
		-0.052565, 0.524410, 0.849842,
		0.883141, 0.421665, -0.205571,
		33.557648, 44.834518, 28.697361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775890, 45.213707, 28.767107>,  <32.939449, 44.539352, 28.841261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775890, 45.213707, 28.767107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.147743, 45.209259, 28.619774>,  <33.370853, 45.206589, 28.531374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.147743, 45.209259, 28.619774>,  <32.775890, 45.213707, 28.767107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147743, 45.209259, 28.619774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313568, 0.501164, -0.806542,
		0.193563, 0.865281, 0.462409,
		0.929628, -0.011119, -0.368331,
		33.426632, 45.205925, 28.509275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924950, 45.882427, 28.600710>,  <32.775890, 45.213707, 28.767107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924950, 45.882427, 28.600710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.173870, 45.655849, 28.384605>,  <33.323223, 45.519901, 28.254944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.173870, 45.655849, 28.384605>,  <32.924950, 45.882427, 28.600710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173870, 45.655849, 28.384605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102118, 0.625536, -0.773483,
		0.776089, 0.536509, 0.331427,
		0.622300, -0.566447, -0.540259,
		33.360561, 45.485916, 28.222528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381210, 46.332027, 28.127672>,  <32.924950, 45.882427, 28.600710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381210, 46.332027, 28.127672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.395264, 45.976231, 27.945431>,  <33.403694, 45.762753, 27.836086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.395264, 45.976231, 27.945431>,  <33.381210, 46.332027, 28.127672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395264, 45.976231, 27.945431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099115, 0.450535, -0.887240,
		0.994456, 0.076326, -0.072335,
		0.035130, -0.889490, -0.455602,
		33.405804, 45.709385, 27.808750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399811, 46.578133, 27.492996>,  <33.381210, 46.332027, 28.127672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399811, 46.578133, 27.492996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.404377, 46.187397, 27.407524>,  <33.407116, 45.952957, 27.356241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.404377, 46.187397, 27.407524>,  <33.399811, 46.578133, 27.492996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404377, 46.187397, 27.407524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263901, 0.203175, -0.942908,
		0.964482, 0.067150, -0.255470,
		0.011411, -0.976837, -0.213680,
		33.407799, 45.894344, 27.343420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854774, 46.410435, 26.873020>,  <33.399811, 46.578133, 27.492996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854774, 46.410435, 26.873020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.587776, 46.115242, 26.912689>,  <33.427578, 45.938126, 26.936491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.587776, 46.115242, 26.912689>,  <33.854774, 46.410435, 26.873020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587776, 46.115242, 26.912689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211228, 0.059950, -0.975597,
		0.714029, -0.672151, -0.195899,
		-0.667492, -0.737983, 0.099171,
		33.387527, 45.893848, 26.942440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003433, 46.022491, 26.313625>,  <33.854774, 46.410435, 26.873020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003433, 46.022491, 26.313625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.630856, 45.923630, 26.420448>,  <33.407307, 45.864311, 26.484543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.630856, 45.923630, 26.420448>,  <34.003433, 46.022491, 26.313625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630856, 45.923630, 26.420448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220817, -0.199409, -0.954713,
		0.289216, -0.948236, 0.131163,
		-0.931447, -0.247155, 0.267059,
		33.351421, 45.849483, 26.500566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810051, 45.557659, 25.896759>,  <34.003433, 46.022491, 26.313625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810051, 45.557659, 25.896759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.437447, 45.611710, 26.031828>,  <33.213882, 45.644138, 26.112869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.437447, 45.611710, 26.031828>,  <33.810051, 45.557659, 25.896759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437447, 45.611710, 26.031828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360012, -0.210640, -0.908858,
		-0.051680, -0.968180, 0.244860,
		-0.931515, 0.135122, 0.337670,
		33.157993, 45.652248, 26.133129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353798, 44.961246, 25.653109>,  <33.810051, 45.557659, 25.896759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353798, 44.961246, 25.653109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.114258, 45.275642, 25.714558>,  <32.970535, 45.464279, 25.751427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.114258, 45.275642, 25.714558>,  <33.353798, 44.961246, 25.653109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114258, 45.275642, 25.714558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277256, -0.023508, -0.960508,
		-0.751338, -0.617793, 0.231998,
		-0.598849, 0.785989, 0.153624,
		32.934605, 45.511440, 25.760645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740067, 44.412445, 26.057943>,  <33.353798, 44.961246, 25.653109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740067, 44.412445, 26.057943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.399570, 44.610634, 26.127111>,  <33.195274, 44.729546, 26.168612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.399570, 44.610634, 26.127111>,  <33.740067, 44.412445, 26.057943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399570, 44.610634, 26.127111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524189, -0.818400, -0.235472,
		0.024849, -0.291085, 0.956374,
		-0.851239, 0.495470, 0.172920,
		33.144199, 44.759274, 26.178988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348389, 44.089577, 26.557608>,  <33.740067, 44.412445, 26.057943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348389, 44.089577, 26.557608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.089657, 44.281357, 26.320379>,  <32.934418, 44.396423, 26.178041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.089657, 44.281357, 26.320379>,  <33.348389, 44.089577, 26.557608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089657, 44.281357, 26.320379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528965, -0.842250, -0.103979,
		-0.549368, 0.246458, 0.798406,
		-0.646831, 0.479452, -0.593072,
		32.895607, 44.425194, 26.142458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695385, 44.115623, 26.918594>,  <33.348389, 44.089577, 26.557608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695385, 44.115623, 26.918594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.708462, 44.088745, 26.519712>,  <32.716309, 44.072617, 26.280384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.708462, 44.088745, 26.519712>,  <32.695385, 44.115623, 26.918594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708462, 44.088745, 26.519712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633057, -0.773469, 0.031368,
		-0.773414, 0.630261, -0.067830,
		0.032694, -0.067200, -0.997204,
		32.718269, 44.068588, 26.220551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979702, 44.084633, 26.696545>,  <32.695385, 44.115623, 26.918594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979702, 44.084633, 26.696545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.218281, 43.938953, 26.410439>,  <32.361427, 43.851543, 26.238775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.218281, 43.938953, 26.410439>,  <31.979702, 44.084633, 26.696545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218281, 43.938953, 26.410439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495366, -0.868200, 0.028997,
		-0.631556, 0.337024, -0.698250,
		0.596448, -0.364203, -0.715267,
		32.397217, 43.829693, 26.195858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476309, 43.855675, 26.206320>,  <31.979702, 44.084633, 26.696545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476309, 43.855675, 26.206320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.825983, 43.666958, 26.160334>,  <32.035786, 43.553726, 26.132742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.825983, 43.666958, 26.160334>,  <31.476309, 43.855675, 26.206320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825983, 43.666958, 26.160334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455884, -0.878906, 0.140338,
		-0.167253, -0.070271, -0.983407,
		0.874184, -0.471791, -0.114964,
		32.088238, 43.525421, 26.125845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344225, 43.247940, 25.734924>,  <31.476309, 43.855675, 26.206320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344225, 43.247940, 25.734924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.684017, 43.130352, 25.910177>,  <31.887894, 43.059799, 26.015329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.684017, 43.130352, 25.910177>,  <31.344225, 43.247940, 25.734924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684017, 43.130352, 25.910177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297516, -0.952678, -0.062366,
		0.435733, -0.077373, -0.896744,
		0.849483, -0.293971, 0.438133,
		31.938862, 43.042160, 26.041616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548830, 42.599827, 25.391329>,  <31.344225, 43.247940, 25.734924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548830, 42.599827, 25.391329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.769268, 42.601269, 25.725103>,  <31.901531, 42.602135, 25.925367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.769268, 42.601269, 25.725103>,  <31.548830, 42.599827, 25.391329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.769268, 42.601269, 25.725103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194395, -0.971921, 0.132587,
		0.811483, -0.235279, -0.534921,
		0.551096, 0.003606, 0.834434,
		31.934597, 42.602352, 25.975433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040752, 42.055733, 25.307989>,  <31.548830, 42.599827, 25.391329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040752, 42.055733, 25.307989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.030666, 42.114216, 25.703562>,  <32.024616, 42.149303, 25.940907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.030666, 42.114216, 25.703562>,  <32.040752, 42.055733, 25.307989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030666, 42.114216, 25.703562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089033, -0.985645, 0.143447,
		0.995709, -0.084431, 0.037867,
		-0.025212, 0.146203, 0.988933,
		32.023102, 42.158077, 26.000242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468826, 41.497990, 25.690735>,  <32.040752, 42.055733, 25.307989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468826, 41.497990, 25.690735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.195065, 41.642307, 25.944164>,  <32.030807, 41.728897, 26.096222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.195065, 41.642307, 25.944164>,  <32.468826, 41.497990, 25.690735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195065, 41.642307, 25.944164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276355, -0.932510, 0.232491,
		0.674695, -0.015973, 0.737924,
		-0.684408, 0.360790, 0.633575,
		31.989742, 41.750546, 26.134237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070877, 41.093830, 25.807867>,  <32.468826, 41.497990, 25.690735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070877, 41.093830, 25.807867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.175446, 40.890823, 25.479456>,  <33.238186, 40.769020, 25.282410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.175446, 40.890823, 25.479456>,  <33.070877, 41.093830, 25.807867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175446, 40.890823, 25.479456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067748, 0.858159, -0.508895,
		0.962844, 0.077413, 0.258725,
		0.261422, -0.507515, -0.821028,
		33.253872, 40.738567, 25.233147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516846, 41.512718, 25.516891>,  <33.070877, 41.093830, 25.807867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516846, 41.512718, 25.516891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.396172, 41.276981, 25.217117>,  <33.323765, 41.135540, 25.037252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.396172, 41.276981, 25.217117>,  <33.516846, 41.512718, 25.516891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396172, 41.276981, 25.217117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072356, 0.797948, -0.598368,
		0.950658, -0.126293, -0.283373,
		-0.301686, -0.589347, -0.749437,
		33.305664, 41.100178, 24.992287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022373, 41.572716, 25.018696>,  <33.516846, 41.512718, 25.516891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022373, 41.572716, 25.018696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.676434, 41.467018, 24.847954>,  <33.468868, 41.403599, 24.745508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.676434, 41.467018, 24.847954>,  <34.022373, 41.572716, 25.018696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676434, 41.467018, 24.847954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124645, 0.710614, -0.692454,
		0.486307, -0.652075, -0.581639,
		-0.864852, -0.264246, -0.426854,
		33.416977, 41.387745, 24.719898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212563, 41.445290, 24.299343>,  <34.022373, 41.572716, 25.018696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212563, 41.445290, 24.299343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.818180, 41.510452, 24.314007>,  <33.581551, 41.549549, 24.322805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.818180, 41.510452, 24.314007>,  <34.212563, 41.445290, 24.299343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818180, 41.510452, 24.314007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077420, 0.640510, -0.764037,
		-0.147948, -0.750472, -0.644130,
		-0.985961, 0.162906, 0.036661,
		33.522392, 41.559322, 24.325005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977448, 41.577976, 23.606579>,  <34.212563, 41.445290, 24.299343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977448, 41.577976, 23.606579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.659813, 41.722324, 23.802208>,  <33.469231, 41.808933, 23.919586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.659813, 41.722324, 23.802208>,  <33.977448, 41.577976, 23.606579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659813, 41.722324, 23.802208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155403, 0.657366, -0.737374,
		-0.587598, -0.661545, -0.465926,
		-0.794090, 0.360873, 0.489073,
		33.421585, 41.830585, 23.948931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379684, 41.596882, 23.100060>,  <33.977448, 41.577976, 23.606579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379684, 41.596882, 23.100060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.301739, 41.858517, 23.392416>,  <33.254971, 42.015495, 23.567829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.301739, 41.858517, 23.392416>,  <33.379684, 41.596882, 23.100060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301739, 41.858517, 23.392416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141398, 0.718658, -0.680836,
		-0.970584, -0.236020, -0.047558,
		-0.194869, 0.654083, 0.730890,
		33.243279, 42.054741, 23.611683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845303, 41.966476, 22.975750>,  <33.379684, 41.596882, 23.100060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845303, 41.966476, 22.975750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.035149, 42.202408, 23.237082>,  <33.149055, 42.343967, 23.393881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.035149, 42.202408, 23.237082>,  <32.845303, 41.966476, 22.975750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035149, 42.202408, 23.237082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046915, 0.724250, -0.687939,
		-0.878943, 0.357156, 0.316067,
		0.474613, 0.589831, 0.653331,
		33.177532, 42.379356, 23.433081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578884, 42.584919, 22.900366>,  <32.845303, 41.966476, 22.975750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578884, 42.584919, 22.900366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.913177, 42.692387, 23.091938>,  <33.113754, 42.756866, 23.206882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.913177, 42.692387, 23.091938>,  <32.578884, 42.584919, 22.900366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913177, 42.692387, 23.091938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080206, 0.803072, -0.590460,
		-0.543253, 0.531878, 0.649601,
		0.835729, 0.268667, 0.478932,
		33.163895, 42.772987, 23.235617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427425, 43.250042, 23.034252>,  <32.578884, 42.584919, 22.900366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427425, 43.250042, 23.034252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.820187, 43.178165, 23.058207>,  <33.055843, 43.135040, 23.072580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.820187, 43.178165, 23.058207>,  <32.427425, 43.250042, 23.034252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820187, 43.178165, 23.058207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183648, 0.825829, -0.533179,
		0.046350, 0.534526, 0.843880,
		0.981899, -0.179690, 0.059888,
		33.114758, 43.124260, 23.076174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.045856, 33.050274, 34.679211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.894329, 32.699780, 34.560074>,  <33.803413, 32.489483, 34.488594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.894329, 32.699780, 34.560074>,  <34.045856, 33.050274, 34.679211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894329, 32.699780, 34.560074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768941, 0.118918, 0.628162,
		-0.514998, 0.466984, -0.718821,
		-0.378823, -0.876233, -0.297840,
		33.780682, 32.436909, 34.470722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720921, 33.579754, 35.207848>,  <34.045856, 33.050274, 34.679211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720921, 33.579754, 35.207848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.111206, 33.651138, 35.157036>,  <34.345379, 33.693970, 35.126549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.111206, 33.651138, 35.157036>,  <33.720921, 33.579754, 35.207848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111206, 33.651138, 35.157036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192094, 0.418361, -0.887735,
		-0.105283, 0.890576, 0.442482,
		0.975713, 0.178462, -0.127028,
		34.403919, 33.704678, 35.118927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742378, 34.221813, 35.028122>,  <33.720921, 33.579754, 35.207848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742378, 34.221813, 35.028122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.106731, 34.134617, 34.887962>,  <34.325344, 34.082298, 34.803867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.106731, 34.134617, 34.887962>,  <33.742378, 34.221813, 35.028122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106731, 34.134617, 34.887962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197461, 0.515354, -0.833918,
		0.362362, 0.828790, 0.426382,
		0.910880, -0.217987, -0.350398,
		34.379997, 34.069221, 34.782845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008286, 34.875103, 34.747158>,  <33.742378, 34.221813, 35.028122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008286, 34.875103, 34.747158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.185688, 34.560856, 34.574596>,  <34.292130, 34.372307, 34.471058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.185688, 34.560856, 34.574596>,  <34.008286, 34.875103, 34.747158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185688, 34.560856, 34.574596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052703, 0.457643, -0.887572,
		0.894722, 0.416377, 0.161562,
		0.443503, -0.785616, -0.431408,
		34.318737, 34.325172, 34.445175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442039, 35.265999, 34.378601>,  <34.008286, 34.875103, 34.747158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442039, 35.265999, 34.378601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.419472, 34.897896, 34.223709>,  <34.405930, 34.677032, 34.130775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.419472, 34.897896, 34.223709>,  <34.442039, 35.265999, 34.378601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419472, 34.897896, 34.223709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058898, 0.390237, -0.918829,
		0.996668, -0.029035, -0.076219,
		-0.056422, -0.920256, -0.387227,
		34.402546, 34.621819, 34.107540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883656, 35.290653, 33.813187>,  <34.442039, 35.265999, 34.378601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883656, 35.290653, 33.813187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.650928, 34.976593, 33.728310>,  <34.511292, 34.788158, 33.677383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.650928, 34.976593, 33.728310>,  <34.883656, 35.290653, 33.813187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650928, 34.976593, 33.728310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125905, 0.344705, -0.930229,
		0.803515, -0.514507, -0.299410,
		-0.581817, -0.785150, -0.212196,
		34.476383, 34.741047, 33.664650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104111, 34.975445, 33.228382>,  <34.883656, 35.290653, 33.813187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104111, 34.975445, 33.228382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.727852, 34.839783, 33.233238>,  <34.502094, 34.758385, 33.236153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.727852, 34.839783, 33.233238>,  <35.104111, 34.975445, 33.228382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727852, 34.839783, 33.233238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085635, 0.202580, -0.975514,
		0.328394, -0.918659, -0.219601,
		-0.940651, -0.339158, 0.012143,
		34.445656, 34.738037, 33.236881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057610, 34.644627, 32.590408>,  <35.104111, 34.975445, 33.228382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057610, 34.644627, 32.590408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.677975, 34.682583, 32.710560>,  <34.450195, 34.705357, 32.782650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.677975, 34.682583, 32.710560>,  <35.057610, 34.644627, 32.590408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677975, 34.682583, 32.710560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278519, 0.192717, -0.940897,
		-0.147169, -0.976656, -0.156477,
		-0.949088, 0.094889, 0.300379,
		34.393250, 34.711048, 32.800674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659519, 34.218292, 32.185402>,  <35.057610, 34.644627, 32.590408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659519, 34.218292, 32.185402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.395885, 34.490967, 32.312466>,  <34.237705, 34.654572, 32.388702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.395885, 34.490967, 32.312466>,  <34.659519, 34.218292, 32.185402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395885, 34.490967, 32.312466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327522, 0.120057, -0.937185,
		-0.677005, -0.721726, 0.144139,
		-0.659086, 0.681687, 0.317660,
		34.198158, 34.695473, 32.407764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032398, 34.215469, 31.759525>,  <34.659519, 34.218292, 32.185402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032398, 34.215469, 31.759525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.944553, 34.577595, 31.904949>,  <33.891846, 34.794872, 31.992203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.944553, 34.577595, 31.904949>,  <34.032398, 34.215469, 31.759525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944553, 34.577595, 31.904949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412602, 0.251498, -0.875505,
		-0.884043, -0.342273, 0.318304,
		-0.219609, 0.905317, 0.363558,
		33.878670, 34.849190, 32.014015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391838, 34.385418, 31.465643>,  <34.032398, 34.215469, 31.759525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391838, 34.385418, 31.465643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.529541, 34.739826, 31.589867>,  <33.612164, 34.952473, 31.664400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.529541, 34.739826, 31.589867>,  <33.391838, 34.385418, 31.465643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529541, 34.739826, 31.589867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252876, 0.406057, -0.878164,
		-0.904179, 0.223783, 0.363843,
		0.344259, 0.886024, 0.310559,
		33.632820, 35.005634, 31.683035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854000, 34.942837, 31.480263>,  <33.391838, 34.385418, 31.465643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854000, 34.942837, 31.480263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.205235, 35.126591, 31.426710>,  <33.415977, 35.236843, 31.394579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.205235, 35.126591, 31.426710>,  <32.854000, 34.942837, 31.480263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205235, 35.126591, 31.426710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378339, 0.495263, -0.782032,
		-0.292946, 0.737347, 0.608688,
		0.878090, 0.459383, -0.133881,
		33.468662, 35.264404, 31.386545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414528, 35.101749, 32.106812>,  <32.854000, 34.942837, 31.480263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414528, 35.101749, 32.106812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.024227, 35.185574, 32.081554>,  <31.790047, 35.235870, 32.066399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.024227, 35.185574, 32.081554>,  <32.414528, 35.101749, 32.106812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024227, 35.185574, 32.081554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173304, -0.563556, 0.807694,
		0.133676, 0.799055, 0.586210,
		-0.975754, 0.209562, -0.063146,
		31.731501, 35.248444, 32.062611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211128, 35.505558, 32.728436>,  <32.414528, 35.101749, 32.106812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211128, 35.505558, 32.728436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.880554, 35.326591, 32.591721>,  <31.682209, 35.219212, 32.509693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.880554, 35.326591, 32.591721>,  <32.211128, 35.505558, 32.728436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880554, 35.326591, 32.591721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091546, -0.492188, 0.865662,
		-0.555534, 0.746706, 0.365804,
		-0.826439, -0.447416, -0.341785,
		31.632622, 35.192368, 32.489185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633299, 35.604855, 33.255585>,  <32.211128, 35.505558, 32.728436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633299, 35.604855, 33.255585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.539608, 35.291210, 33.025692>,  <31.483393, 35.103024, 32.887756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.539608, 35.291210, 33.025692>,  <31.633299, 35.604855, 33.255585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539608, 35.291210, 33.025692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152831, -0.554126, 0.818283,
		-0.960094, 0.279500, 0.009955,
		-0.234227, -0.784107, -0.574729,
		31.469339, 35.055977, 32.853271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131872, 35.407337, 33.569550>,  <31.633299, 35.604855, 33.255585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131872, 35.407337, 33.569550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.240494, 35.084122, 33.360428>,  <31.305668, 34.890190, 33.234955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.240494, 35.084122, 33.360428>,  <31.131872, 35.407337, 33.569550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240494, 35.084122, 33.360428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120495, -0.567490, 0.814516,
		-0.954850, -0.158191, -0.251470,
		0.271555, -0.808041, -0.522807,
		31.321960, 34.841709, 33.203587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618925, 34.925819, 33.637386>,  <31.131872, 35.407337, 33.569550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618925, 34.925819, 33.637386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.946289, 34.720921, 33.533226>,  <31.142708, 34.597980, 33.470730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.946289, 34.720921, 33.533226>,  <30.618925, 34.925819, 33.637386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.946289, 34.720921, 33.533226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176080, -0.654913, 0.734905,
		-0.546991, -0.555603, -0.626184,
		0.818411, -0.512245, -0.260401,
		31.191813, 34.567245, 33.455105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395248, 34.150776, 33.556164>,  <30.618925, 34.925819, 33.637386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.395248, 34.150776, 33.556164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.793329, 34.144604, 33.594810>,  <31.032177, 34.140900, 33.618000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.793329, 34.144604, 33.594810>,  <30.395248, 34.150776, 33.556164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793329, 34.144604, 33.594810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089197, -0.549008, 0.831044,
		0.040218, -0.835675, -0.547750,
		0.995201, -0.015435, 0.096619,
		31.091890, 34.139973, 33.623795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517593, 33.545822, 33.799595>,  <30.395248, 34.150776, 33.556164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.517593, 33.545822, 33.799595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.856743, 33.736179, 33.893089>,  <31.060232, 33.850395, 33.949188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.856743, 33.736179, 33.893089>,  <30.517593, 33.545822, 33.799595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856743, 33.736179, 33.893089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022704, -0.473039, 0.880749,
		0.529712, -0.741457, -0.411882,
		0.847874, 0.475895, 0.233740,
		31.111105, 33.878948, 33.963211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913967, 33.056229, 34.197514>,  <30.517593, 33.545822, 33.799595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913967, 33.056229, 34.197514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.090031, 33.407818, 34.270908>,  <31.195669, 33.618771, 34.314945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.090031, 33.407818, 34.270908>,  <30.913967, 33.056229, 34.197514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090031, 33.407818, 34.270908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086199, -0.244768, 0.965742,
		0.893774, -0.409262, -0.183502,
		0.440157, 0.878973, 0.183489,
		31.222078, 33.671509, 34.325954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383541, 32.908310, 34.715611>,  <30.913967, 33.056229, 34.197514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383541, 32.908310, 34.715611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.331301, 33.303902, 34.743481>,  <31.299955, 33.541256, 34.760201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.331301, 33.303902, 34.743481>,  <31.383541, 32.908310, 34.715611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331301, 33.303902, 34.743481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126590, -0.053063, 0.990535,
		0.983320, 0.138186, -0.118265,
		-0.130602, 0.988984, 0.069671,
		31.292120, 33.600597, 34.764381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870016, 33.177025, 35.036976>,  <31.383541, 32.908310, 34.715611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870016, 33.177025, 35.036976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.608278, 33.472378, 35.102249>,  <31.451237, 33.649590, 35.141411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.608278, 33.472378, 35.102249>,  <31.870016, 33.177025, 35.036976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608278, 33.472378, 35.102249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110088, -0.120474, 0.986593,
		0.748142, 0.663534, -0.002456,
		-0.654342, 0.738382, 0.163179,
		31.411976, 33.693893, 35.151203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196907, 33.700550, 35.449642>,  <31.870016, 33.177025, 35.036976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196907, 33.700550, 35.449642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.807241, 33.777779, 35.496510>,  <31.573442, 33.824116, 35.524628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.807241, 33.777779, 35.496510>,  <32.196907, 33.700550, 35.449642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807241, 33.777779, 35.496510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150531, 0.168354, 0.974165,
		0.168354, 0.966634, -0.193068,
		-0.974165, 0.193068, 0.117165,
		31.514992, 33.835697, 35.531658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190117, 34.128147, 35.971069>,  <32.196907, 33.700550, 35.449642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190117, 34.128147, 35.971069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.802040, 34.032539, 35.987080>,  <31.569195, 33.975174, 35.996685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.802040, 34.032539, 35.987080>,  <32.190117, 34.128147, 35.971069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802040, 34.032539, 35.987080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003333, 0.151997, 0.988375,
		-0.242328, 0.959044, -0.146669,
		-0.970188, -0.239022, 0.040029,
		31.510984, 33.960835, 35.999088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798845, 34.702534, 36.357330>,  <32.190117, 34.128147, 35.971069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798845, 34.702534, 36.357330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.586088, 34.364960, 36.385239>,  <31.458433, 34.162415, 36.401985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.586088, 34.364960, 36.385239>,  <31.798845, 34.702534, 36.357330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586088, 34.364960, 36.385239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171343, 0.187946, 0.967118,
		-0.829296, 0.502448, -0.244569,
		-0.531893, -0.843933, 0.069772,
		31.426521, 34.111778, 36.406170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194065, 35.411041, 36.393387>,  <31.798845, 34.702534, 36.357330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194065, 35.411041, 36.393387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.998333, 35.646385, 36.650879>,  <31.880894, 35.787594, 36.805374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.998333, 35.646385, 36.650879>,  <32.194065, 35.411041, 36.393387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998333, 35.646385, 36.650879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271714, 0.804250, -0.528539,
		-0.828690, -0.083720, -0.553411,
		-0.489330, 0.588364, 0.643726,
		31.851534, 35.822895, 36.843998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921793, 35.941399, 36.032867>,  <32.194065, 35.411041, 36.393387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921793, 35.941399, 36.032867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.985233, 36.100273, 36.394440>,  <32.023296, 36.195599, 36.611382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.985233, 36.100273, 36.394440>,  <31.921793, 35.941399, 36.032867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985233, 36.100273, 36.394440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315102, 0.847281, -0.427580,
		-0.935712, 0.352645, 0.009226,
		0.158601, 0.397184, 0.903930,
		32.032814, 36.219429, 36.665619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510624, 36.569557, 36.142384>,  <31.921793, 35.941399, 36.032867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510624, 36.569557, 36.142384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.833300, 36.609104, 36.375443>,  <32.026905, 36.632832, 36.515278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.833300, 36.609104, 36.375443>,  <31.510624, 36.569557, 36.142384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833300, 36.609104, 36.375443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153433, 0.917061, -0.368047,
		-0.570713, 0.386296, 0.724611,
		0.806688, 0.098870, 0.582649,
		32.075306, 36.638763, 36.550236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.498356, 37.148964, 36.704365>,  <31.510624, 36.569557, 36.142384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.498356, 37.148964, 36.704365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.873583, 37.122532, 36.568329>,  <32.098721, 37.106674, 36.486706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.873583, 37.122532, 36.568329>,  <31.498356, 37.148964, 36.704365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873583, 37.122532, 36.568329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003237, 0.979929, -0.199322,
		0.346437, 0.188078, 0.919026,
		0.938068, -0.066077, -0.340092,
		32.155003, 37.102707, 36.466301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960464, 37.620140, 37.141251>,  <31.498356, 37.148964, 36.704365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960464, 37.620140, 37.141251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.197498, 37.550621, 36.826637>,  <32.339718, 37.508911, 36.637867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.197498, 37.550621, 36.826637>,  <31.960464, 37.620140, 37.141251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197498, 37.550621, 36.826637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174176, 0.980993, -0.085535,
		0.786452, -0.086310, 0.611592,
		0.592584, -0.173794, -0.786536,
		32.375275, 37.498482, 36.590675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597351, 38.019409, 37.220993>,  <31.960464, 37.620140, 37.141251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597351, 38.019409, 37.220993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.536667, 37.942249, 36.833225>,  <32.500256, 37.895954, 36.600563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.536667, 37.942249, 36.833225>,  <32.597351, 38.019409, 37.220993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536667, 37.942249, 36.833225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086395, 0.974429, -0.207422,
		0.984642, -0.115221, -0.131165,
		-0.151711, -0.192904, -0.969418,
		32.491154, 37.884377, 36.542400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190929, 38.366539, 36.877731>,  <32.597351, 38.019409, 37.220993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190929, 38.366539, 36.877731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.901047, 38.307007, 36.608612>,  <32.727119, 38.271286, 36.447140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.901047, 38.307007, 36.608612>,  <33.190929, 38.366539, 36.877731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901047, 38.307007, 36.608612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038279, 0.966191, -0.254971,
		0.687996, -0.210532, -0.694505,
		-0.724704, -0.148834, -0.672795,
		32.683636, 38.262356, 36.406773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375217, 38.745846, 36.286892>,  <33.190929, 38.366539, 36.877731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375217, 38.745846, 36.286892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.979000, 38.699848, 36.256947>,  <32.741272, 38.672249, 36.238979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.979000, 38.699848, 36.256947>,  <33.375217, 38.745846, 36.286892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979000, 38.699848, 36.256947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075387, 0.911939, -0.403340,
		0.114655, -0.393881, -0.911982,
		-0.990541, -0.114997, -0.074865,
		32.681839, 38.665348, 36.234486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351818, 38.997566, 35.670307>,  <33.375217, 38.745846, 36.286892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351818, 38.997566, 35.670307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.973759, 39.027203, 35.797558>,  <32.746922, 39.044983, 35.873909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.973759, 39.027203, 35.797558>,  <33.351818, 38.997566, 35.670307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973759, 39.027203, 35.797558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063955, 0.913113, -0.402659,
		-0.320319, -0.400918, -0.858289,
		-0.945148, 0.074088, 0.318128,
		32.690216, 39.049427, 35.892998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858807, 39.003605, 35.085480>,  <33.351818, 38.997566, 35.670307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858807, 39.003605, 35.085480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.640652, 39.152763, 35.385750>,  <32.509758, 39.242256, 35.565910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.640652, 39.152763, 35.385750>,  <32.858807, 39.003605, 35.085480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640652, 39.152763, 35.385750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329161, 0.728359, -0.600955,
		-0.770851, -0.574842, -0.274491,
		-0.545382, 0.372895, 0.750671,
		32.477036, 39.264633, 35.610950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321754, 39.170441, 34.749409>,  <32.858807, 39.003605, 35.085480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321754, 39.170441, 34.749409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.291782, 39.384056, 35.086262>,  <32.273800, 39.512226, 35.288372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.291782, 39.384056, 35.086262>,  <32.321754, 39.170441, 34.749409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291782, 39.384056, 35.086262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243722, 0.809088, -0.534768,
		-0.966947, -0.245315, 0.069534,
		-0.074928, 0.534039, 0.842133,
		32.269302, 39.544270, 35.338902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642389, 39.386993, 34.717682>,  <32.321754, 39.170441, 34.749409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642389, 39.386993, 34.717682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.852085, 39.648159, 34.936359>,  <31.977903, 39.804859, 35.067566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.852085, 39.648159, 34.936359>,  <31.642389, 39.386993, 34.717682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852085, 39.648159, 34.936359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110383, 0.688665, -0.716628,
		-0.844385, 0.315341, 0.433098,
		0.524242, 0.652917, 0.546690,
		32.009357, 39.844032, 35.100365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372488, 40.050575, 34.624668>,  <31.642389, 39.386993, 34.717682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372488, 40.050575, 34.624668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.733797, 40.120838, 34.781254>,  <31.950583, 40.162994, 34.875206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.733797, 40.120838, 34.781254>,  <31.372488, 40.050575, 34.624668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733797, 40.120838, 34.781254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055879, 0.856430, -0.513230,
		-0.425410, 0.485462, 0.763776,
		0.903274, 0.175654, 0.391461,
		32.004780, 40.173534, 34.898693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345739, 40.777386, 34.668716>,  <31.372488, 40.050575, 34.624668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345739, 40.777386, 34.668716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.730806, 40.669456, 34.677330>,  <31.961847, 40.604698, 34.682499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.730806, 40.669456, 34.677330>,  <31.345739, 40.777386, 34.668716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730806, 40.669456, 34.677330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235419, 0.795336, -0.558586,
		0.133589, 0.542804, 0.829167,
		0.962669, -0.269823, 0.021538,
		32.019608, 40.588509, 34.683792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682493, 41.466488, 34.596600>,  <31.345739, 40.777386, 34.668716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682493, 41.466488, 34.596600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.976048, 41.206120, 34.518917>,  <32.152180, 41.049900, 34.472309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.976048, 41.206120, 34.518917>,  <31.682493, 41.466488, 34.596600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976048, 41.206120, 34.518917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331603, 0.592832, -0.733886,
		0.592832, 0.474190, 0.650918,
		0.733886, -0.650918, -0.194208,
		32.196213, 41.010845, 34.460655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278461, 41.868580, 34.628586>,  <31.682493, 41.466488, 34.596600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278461, 41.868580, 34.628586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.354256, 41.537220, 34.417744>,  <32.399731, 41.338402, 34.291237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.354256, 41.537220, 34.417744>,  <32.278461, 41.868580, 34.628586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354256, 41.537220, 34.417744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371567, 0.557409, -0.742451,
		0.908863, -0.055172, 0.413429,
		0.189486, -0.828403, -0.527108,
		32.411102, 41.288700, 34.259613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040585, 41.888359, 34.433517>,  <32.278461, 41.868580, 34.628586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040585, 41.888359, 34.433517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.832535, 41.660557, 34.178917>,  <32.707706, 41.523876, 34.026157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.832535, 41.660557, 34.178917>,  <33.040585, 41.888359, 34.433517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832535, 41.660557, 34.178917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256485, 0.606694, -0.752421,
		0.814673, -0.554602, -0.169484,
		-0.520119, -0.569507, -0.636504,
		32.676498, 41.489704, 33.987965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499767, 41.712849, 33.863834>,  <33.040585, 41.888359, 34.433517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499767, 41.712849, 33.863834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.151363, 41.645321, 33.679298>,  <32.942322, 41.604805, 33.568577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.151363, 41.645321, 33.679298>,  <33.499767, 41.712849, 33.863834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151363, 41.645321, 33.679298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294099, 0.573027, -0.764948,
		0.393496, -0.801961, -0.449466,
		-0.871015, -0.168816, -0.461340,
		32.890060, 41.594677, 33.540897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681114, 41.503380, 33.151985>,  <33.499767, 41.712849, 33.863834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681114, 41.503380, 33.151985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.295296, 41.598476, 33.106155>,  <33.063805, 41.655533, 33.078655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.295296, 41.598476, 33.106155>,  <33.681114, 41.503380, 33.151985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295296, 41.598476, 33.106155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220171, 0.485523, -0.846045,
		-0.145506, -0.841277, -0.520653,
		-0.964548, 0.237738, -0.114578,
		33.005932, 41.669796, 33.071781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509315, 41.295265, 32.445995>,  <33.681114, 41.503380, 33.151985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509315, 41.295265, 32.445995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.247078, 41.566311, 32.579281>,  <33.089737, 41.728939, 32.659252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.247078, 41.566311, 32.579281>,  <33.509315, 41.295265, 32.445995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247078, 41.566311, 32.579281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086215, 0.505561, -0.858472,
		-0.750177, -0.534079, -0.389863,
		-0.655592, 0.677619, 0.333215,
		33.050400, 41.769596, 32.679245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069080, 41.380341, 31.964205>,  <33.509315, 41.295265, 32.445995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069080, 41.380341, 31.964205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.054077, 41.714199, 32.184010>,  <33.045074, 41.914513, 32.315891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.054077, 41.714199, 32.184010>,  <33.069080, 41.380341, 31.964205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054077, 41.714199, 32.184010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031604, 0.548633, -0.835466,
		-0.998796, -0.048705, 0.005799,
		-0.037510, 0.834643, 0.549512,
		33.042824, 41.964592, 32.348862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822193, 41.719307, 31.456083>,  <33.069080, 41.380341, 31.964205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822193, 41.719307, 31.456083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.920982, 41.988079, 31.735373>,  <32.980255, 42.149342, 31.902946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.920982, 41.988079, 31.735373>,  <32.822193, 41.719307, 31.456083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920982, 41.988079, 31.735373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174221, 0.678014, -0.714104,
		-0.953233, 0.298008, 0.050385,
		0.246971, 0.671929, 0.698224,
		32.995075, 42.189659, 31.944839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387253, 42.349411, 31.403746>,  <32.822193, 41.719307, 31.456083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387253, 42.349411, 31.403746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.732910, 42.447357, 31.579607>,  <32.940304, 42.506126, 31.685123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.732910, 42.447357, 31.579607>,  <32.387253, 42.349411, 31.403746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732910, 42.447357, 31.579607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202191, 0.631090, -0.748896,
		-0.460844, 0.736047, 0.495841,
		0.864142, 0.244869, 0.439656,
		32.992153, 42.520817, 31.711504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460655, 43.133453, 31.319038>,  <32.387253, 42.349411, 31.403746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460655, 43.133453, 31.319038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.829853, 42.992714, 31.381363>,  <33.051373, 42.908268, 31.418758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.829853, 42.992714, 31.381363>,  <32.460655, 43.133453, 31.319038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829853, 42.992714, 31.381363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348437, 0.592341, -0.726446,
		0.163307, 0.724798, 0.669327,
		0.922996, -0.351852, 0.155813,
		33.106750, 42.887157, 31.428106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792526, 43.708900, 31.309137>,  <32.460655, 43.133453, 31.319038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792526, 43.708900, 31.309137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.112404, 43.473530, 31.261404>,  <33.304333, 43.332310, 31.232763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.112404, 43.473530, 31.261404>,  <32.792526, 43.708900, 31.309137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112404, 43.473530, 31.261404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373471, 0.643139, -0.668499,
		0.470111, 0.490029, 0.734076,
		0.799697, -0.588425, -0.119335,
		33.352314, 43.297001, 31.225603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369213, 44.182446, 31.163071>,  <32.792526, 43.708900, 31.309137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369213, 44.182446, 31.163071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.513126, 43.834488, 31.028114>,  <33.599476, 43.625713, 30.947140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.513126, 43.834488, 31.028114>,  <33.369213, 44.182446, 31.163071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513126, 43.834488, 31.028114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565825, 0.490946, -0.662430,
		0.741889, 0.047425, 0.668844,
		0.359782, -0.869898, -0.337393,
		33.621059, 43.573517, 30.926897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164703, 44.233093, 31.194613>,  <33.369213, 44.182446, 31.163071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164703, 44.233093, 31.194613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.045925, 43.966637, 30.920946>,  <33.974659, 43.806763, 30.756746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.045925, 43.966637, 30.920946>,  <34.164703, 44.233093, 31.194613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045925, 43.966637, 30.920946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565346, 0.454769, -0.688164,
		0.769549, -0.591140, 0.241554,
		-0.296950, -0.666137, -0.684165,
		33.956841, 43.766796, 30.715696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812920, 44.063908, 30.897379>,  <34.164703, 44.233093, 31.194613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812920, 44.063908, 30.897379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.507435, 43.955639, 30.662949>,  <34.324142, 43.890678, 30.522291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.507435, 43.955639, 30.662949>,  <34.812920, 44.063908, 30.897379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507435, 43.955639, 30.662949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394356, 0.523164, -0.755502,
		0.511102, -0.808108, -0.292807,
		-0.763713, -0.270668, -0.586073,
		34.278320, 43.874439, 30.487127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133808, 43.901672, 30.239277>,  <34.812920, 44.063908, 30.897379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133808, 43.901672, 30.239277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.755566, 44.005272, 30.160547>,  <34.528618, 44.067432, 30.113310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.755566, 44.005272, 30.160547>,  <35.133808, 43.901672, 30.239277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755566, 44.005272, 30.160547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321497, 0.651810, -0.686865,
		-0.049604, -0.712786, -0.699625,
		-0.945610, 0.258999, -0.196826,
		34.471882, 44.082970, 30.101500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256771, 43.216118, 29.943644>,  <35.133808, 43.901672, 30.239277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256771, 43.216118, 29.943644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.648552, 43.232109, 29.864576>,  <35.883621, 43.241703, 29.817137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.648552, 43.232109, 29.864576>,  <35.256771, 43.216118, 29.943644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648552, 43.232109, 29.864576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196715, -0.405312, 0.892763,
		-0.044424, -0.913304, -0.404849,
		0.979454, 0.039979, -0.197666,
		35.942387, 43.244102, 29.805277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628876, 42.539032, 29.843056>,  <35.256771, 43.216118, 29.943644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628876, 42.539032, 29.843056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.909718, 42.803493, 29.948830>,  <36.078224, 42.962170, 30.012293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.909718, 42.803493, 29.948830>,  <35.628876, 42.539032, 29.843056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909718, 42.803493, 29.948830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262860, -0.585774, 0.766664,
		0.661781, -0.468769, -0.585066,
		0.702104, 0.661154, 0.264434,
		36.120350, 43.001839, 30.028160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096500, 42.171215, 30.061811>,  <35.628876, 42.539032, 29.843056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096500, 42.171215, 30.061811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.216209, 42.515373, 30.226812>,  <36.288036, 42.721867, 30.325813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.216209, 42.515373, 30.226812>,  <36.096500, 42.171215, 30.061811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216209, 42.515373, 30.226812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441193, -0.508106, 0.739714,
		0.846040, -0.039384, -0.531663,
		0.299274, 0.860394, 0.412502,
		36.305992, 42.773491, 30.350563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736950, 41.983513, 30.257204>,  <36.096500, 42.171215, 30.061811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736950, 41.983513, 30.257204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.609539, 42.290436, 30.479836>,  <36.533092, 42.474590, 30.613415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.609539, 42.290436, 30.479836>,  <36.736950, 41.983513, 30.257204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609539, 42.290436, 30.479836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391368, -0.428329, 0.814473,
		0.863350, 0.477257, -0.163866,
		-0.318525, 0.767307, 0.556581,
		36.513981, 42.520626, 30.646811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272835, 41.979576, 30.729681>,  <36.736950, 41.983513, 30.257204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272835, 41.979576, 30.729681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.988815, 42.212238, 30.888432>,  <36.818405, 42.351837, 30.983683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.988815, 42.212238, 30.888432>,  <37.272835, 41.979576, 30.729681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988815, 42.212238, 30.888432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253294, -0.314913, 0.914698,
		0.657021, 0.750004, 0.076273,
		-0.710046, 0.581656, 0.396876,
		36.775803, 42.386734, 31.007494>
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
