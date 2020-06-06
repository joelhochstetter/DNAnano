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
	right 1.6 * <0.724836, 0, 0.688921>
	location <12.1561, 44.2, 77.9145>
	look_at <46.7464, 44.2, 41.5209>
	direction <34.5903, 0, -36.3936>
	angle 67.0682
}


# declare cpy_camera_pos = <12.1561, 44.2, 77.9145>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 70.72
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.0359156, -1, 1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.0359156, 1, -1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<39.607311, 41.027821, 39.351685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927364, 41.097275, 39.581337>,  <40.119396, 41.138947, 39.719128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927364, 41.097275, 39.581337>,  <39.607311, 41.027821, 39.351685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927364, 41.097275, 39.581337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465232, -0.424516, 0.776753,
		0.378603, -0.888615, -0.258889,
		0.800137, 0.173638, 0.574135,
		40.167404, 41.149364, 39.753578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739075, 40.398079, 39.664909>,  <39.607311, 41.027821, 39.351685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739075, 40.398079, 39.664909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919289, 40.665024, 39.902107>,  <40.027416, 40.825191, 40.044426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919289, 40.665024, 39.902107>,  <39.739075, 40.398079, 39.664909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919289, 40.665024, 39.902107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517379, -0.346137, 0.782629,
		0.727558, -0.659402, 0.189335,
		0.450531, 0.667366, 0.592995,
		40.054447, 40.865234, 40.080006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978283, 40.004009, 40.213924>,  <39.739075, 40.398079, 39.664909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978283, 40.004009, 40.213924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.955490, 40.382370, 40.341686>,  <39.941814, 40.609386, 40.418343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.955490, 40.382370, 40.341686>,  <39.978283, 40.004009, 40.213924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955490, 40.382370, 40.341686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467924, -0.307917, 0.828392,
		0.881929, -0.102253, 0.460157,
		-0.056985, 0.945903, 0.319407,
		39.938396, 40.666142, 40.437508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106354, 39.947144, 40.938679>,  <39.978283, 40.004009, 40.213924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106354, 39.947144, 40.938679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.955750, 40.316620, 40.910290>,  <39.865387, 40.538307, 40.893257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.955750, 40.316620, 40.910290>,  <40.106354, 39.947144, 40.938679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955750, 40.316620, 40.910290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418594, -0.101283, 0.902508,
		0.826449, 0.369512, 0.424786,
		-0.376511, 0.923690, -0.070970,
		39.842796, 40.593727, 40.889000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286354, 40.331726, 41.620800>,  <40.106354, 39.947144, 40.938679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286354, 40.331726, 41.620800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.978809, 40.519211, 41.446831>,  <39.794281, 40.631702, 41.342449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.978809, 40.519211, 41.446831>,  <40.286354, 40.331726, 41.620800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978809, 40.519211, 41.446831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470776, 0.045317, 0.881088,
		0.432689, 0.882186, 0.185818,
		-0.768863, 0.468716, -0.434920,
		39.748150, 40.659824, 41.316353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176819, 40.975403, 41.913845>,  <40.286354, 40.331726, 41.620800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176819, 40.975403, 41.913845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.820332, 40.884010, 41.757114>,  <39.606438, 40.829174, 41.663074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.820332, 40.884010, 41.757114>,  <40.176819, 40.975403, 41.913845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820332, 40.884010, 41.757114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427756, 0.136070, 0.893594,
		-0.150850, 0.963993, -0.219001,
		-0.891218, -0.228478, -0.391828,
		39.552967, 40.815468, 41.639565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775394, 41.327999, 42.411476>,  <40.176819, 40.975403, 41.913845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775394, 41.327999, 42.411476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.509850, 41.121330, 42.195202>,  <39.350521, 40.997330, 42.065437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.509850, 41.121330, 42.195202>,  <39.775394, 41.327999, 42.411476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509850, 41.121330, 42.195202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599142, -0.065239, 0.797981,
		-0.447566, 0.853696, -0.266248,
		-0.663863, -0.516670, -0.540684,
		39.310692, 40.966328, 42.032997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025978, 41.607250, 42.558521>,  <39.775394, 41.327999, 42.411476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025978, 41.607250, 42.558521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008579, 41.229713, 42.427513>,  <38.998142, 41.003193, 42.348907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008579, 41.229713, 42.427513>,  <39.025978, 41.607250, 42.558521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008579, 41.229713, 42.427513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776349, -0.174407, 0.605694,
		-0.628801, 0.280617, -0.725164,
		-0.043494, -0.943841, -0.327524,
		38.995533, 40.946560, 42.329254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497940, 41.486446, 42.102039>,  <39.025978, 41.607250, 42.558521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497940, 41.486446, 42.102039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.575073, 41.164177, 42.326077>,  <38.621353, 40.970818, 42.460499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.575073, 41.164177, 42.326077>,  <38.497940, 41.486446, 42.102039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575073, 41.164177, 42.326077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945721, -0.000435, 0.324979,
		-0.261582, -0.592364, -0.762023,
		0.192837, -0.805670, 0.560098,
		38.632923, 40.922478, 42.494106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802517, 41.226898, 42.331398>,  <38.497940, 41.486446, 42.102039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802517, 41.226898, 42.331398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014473, 40.946060, 42.521675>,  <38.141647, 40.777557, 42.635841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014473, 40.946060, 42.521675>,  <37.802517, 41.226898, 42.331398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014473, 40.946060, 42.521675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796736, -0.219939, 0.562885,
		-0.290575, -0.677266, -0.675927,
		0.529886, -0.702095, 0.475693,
		38.173439, 40.735432, 42.664383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358448, 40.784912, 42.471619>,  <37.802517, 41.226898, 42.331398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358448, 40.784912, 42.471619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653614, 40.685974, 42.722794>,  <37.830715, 40.626610, 42.873497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653614, 40.685974, 42.722794>,  <37.358448, 40.784912, 42.471619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653614, 40.685974, 42.722794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673148, -0.336592, 0.658466,
		0.048488, -0.908584, -0.414878,
		0.737916, -0.247346, 0.627933,
		37.874989, 40.611771, 42.911175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166714, 40.143436, 42.709206>,  <37.358448, 40.784912, 42.471619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166714, 40.143436, 42.709206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427170, 40.288643, 42.975811>,  <37.583443, 40.375767, 43.135773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427170, 40.288643, 42.975811>,  <37.166714, 40.143436, 42.709206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427170, 40.288643, 42.975811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583543, -0.322052, 0.745493,
		0.485279, -0.874357, 0.002136,
		0.651139, 0.363018, 0.666510,
		37.622513, 40.397549, 43.175762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117916, 39.599209, 43.112339>,  <37.166714, 40.143436, 42.709206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117916, 39.599209, 43.112339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252007, 39.904877, 43.332764>,  <37.332458, 40.088276, 43.465019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252007, 39.904877, 43.332764>,  <37.117916, 39.599209, 43.112339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252007, 39.904877, 43.332764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689499, -0.199610, 0.696237,
		0.642041, -0.613352, 0.459981,
		0.335222, 0.764170, 0.551064,
		37.352573, 40.134129, 43.498081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248932, 39.286488, 43.731133>,  <37.117916, 39.599209, 43.112339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248932, 39.286488, 43.731133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.184963, 39.679344, 43.770775>,  <37.146580, 39.915058, 43.794559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.184963, 39.679344, 43.770775>,  <37.248932, 39.286488, 43.731133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184963, 39.679344, 43.770775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655064, -0.180700, 0.733648,
		0.738455, 0.052407, 0.672264,
		-0.159926, 0.982141, 0.099109,
		37.136986, 39.973988, 43.800507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180889, 39.280067, 44.483437>,  <37.248932, 39.286488, 43.731133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180889, 39.280067, 44.483437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027542, 39.623085, 44.346241>,  <36.935535, 39.828896, 44.263924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027542, 39.623085, 44.346241>,  <37.180889, 39.280067, 44.483437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027542, 39.623085, 44.346241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778253, -0.099966, 0.619943,
		0.497343, 0.504598, 0.705713,
		-0.383369, 0.857547, -0.342988,
		36.912533, 39.880348, 44.243343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005379, 39.645481, 45.062954>,  <37.180889, 39.280067, 44.483437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005379, 39.645481, 45.062954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793289, 39.833092, 44.780430>,  <36.666035, 39.945656, 44.610916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793289, 39.833092, 44.780430>,  <37.005379, 39.645481, 45.062954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793289, 39.833092, 44.780430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820939, -0.075766, 0.565966,
		0.211937, 0.879930, 0.425213,
		-0.530228, 0.469023, -0.706311,
		36.634220, 39.973797, 44.568535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553196, 40.119854, 45.401829>,  <37.005379, 39.645481, 45.062954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553196, 40.119854, 45.401829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397099, 40.103371, 45.033913>,  <36.303440, 40.093483, 44.813164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397099, 40.103371, 45.033913>,  <36.553196, 40.119854, 45.401829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397099, 40.103371, 45.033913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901884, -0.183890, 0.390883,
		-0.185246, 0.982083, 0.034600,
		-0.390242, -0.041204, -0.919790,
		36.280025, 40.091011, 44.757977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092033, 40.588284, 45.441360>,  <36.553196, 40.119854, 45.401829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092033, 40.588284, 45.441360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985889, 40.335510, 45.150089>,  <35.922203, 40.183846, 44.975327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985889, 40.335510, 45.150089>,  <36.092033, 40.588284, 45.441360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985889, 40.335510, 45.150089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789106, -0.291607, 0.540627,
		-0.553982, 0.718072, -0.421281,
		-0.265360, -0.631933, -0.728180,
		35.906281, 40.145931, 44.931637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350536, 40.702099, 45.335274>,  <36.092033, 40.588284, 45.441360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350536, 40.702099, 45.335274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.423382, 40.332832, 45.199863>,  <35.467091, 40.111271, 45.118618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.423382, 40.332832, 45.199863>,  <35.350536, 40.702099, 45.335274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423382, 40.332832, 45.199863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765733, -0.349129, 0.540149,
		-0.616837, 0.160853, -0.770479,
		0.182112, -0.923166, -0.338527,
		35.478016, 40.055882, 45.098305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692268, 40.546047, 45.016014>,  <35.350536, 40.702099, 45.335274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692268, 40.546047, 45.016014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888931, 40.205475, 45.089043>,  <35.006931, 40.001129, 45.132858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888931, 40.205475, 45.089043>,  <34.692268, 40.546047, 45.016014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888931, 40.205475, 45.089043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804950, -0.364412, 0.468251,
		-0.332153, -0.377183, -0.864528,
		0.491660, -0.851432, 0.182573,
		35.036430, 39.950047, 45.143814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260475, 40.080124, 44.745331>,  <34.692268, 40.546047, 45.016014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260475, 40.080124, 44.745331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.494820, 39.897858, 45.013401>,  <34.635426, 39.788498, 45.174244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.494820, 39.897858, 45.013401>,  <34.260475, 40.080124, 44.745331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494820, 39.897858, 45.013401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797662, -0.470333, 0.377521,
		0.143180, -0.755746, -0.639020,
		0.585863, -0.455669, 0.670172,
		34.670578, 39.761158, 45.214451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977642, 39.446491, 44.859219>,  <34.260475, 40.080124, 44.745331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977642, 39.446491, 44.859219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233883, 39.436623, 45.166210>,  <34.387627, 39.430702, 45.350407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233883, 39.436623, 45.166210>,  <33.977642, 39.446491, 44.859219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233883, 39.436623, 45.166210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677087, -0.489586, 0.549416,
		0.362193, -0.871606, -0.330332,
		0.640600, -0.024669, 0.767478,
		34.426064, 39.429222, 45.396454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773796, 38.802040, 45.155037>,  <33.977642, 39.446491, 44.859219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773796, 38.802040, 45.155037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986404, 38.979057, 45.443935>,  <34.113972, 39.085270, 45.617275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986404, 38.979057, 45.443935>,  <33.773796, 38.802040, 45.155037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986404, 38.979057, 45.443935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565257, -0.449716, 0.691549,
		0.630848, -0.775827, 0.011118,
		0.531522, 0.442547, 0.722244,
		34.145863, 39.111820, 45.660610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755711, 38.273003, 45.713188>,  <33.773796, 38.802040, 45.155037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755711, 38.273003, 45.713188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871452, 38.609924, 45.895088>,  <33.940895, 38.812077, 46.004227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871452, 38.609924, 45.895088>,  <33.755711, 38.273003, 45.713188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871452, 38.609924, 45.895088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463314, -0.292478, 0.836539,
		0.837626, -0.452744, 0.305623,
		0.289350, 0.842306, 0.454749,
		33.958256, 38.862617, 46.031513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961563, 38.062767, 46.343925>,  <33.755711, 38.273003, 45.713188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961563, 38.062767, 46.343925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887894, 38.453331, 46.389023>,  <33.843693, 38.687668, 46.416080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887894, 38.453331, 46.389023>,  <33.961563, 38.062767, 46.343925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887894, 38.453331, 46.389023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478783, -0.189303, 0.857282,
		0.858398, 0.103908, 0.502351,
		-0.184175, 0.976406, 0.112748,
		33.832642, 38.746254, 46.422848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919243, 38.068993, 47.108700>,  <33.961563, 38.062767, 46.343925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919243, 38.068993, 47.108700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755470, 38.415092, 46.992966>,  <33.657207, 38.622753, 46.923527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755470, 38.415092, 46.992966>,  <33.919243, 38.068993, 47.108700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755470, 38.415092, 46.992966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580502, -0.002411, 0.814255,
		0.703835, 0.501340, 0.503265,
		-0.409432, 0.865247, -0.289331,
		33.632641, 38.674667, 46.906166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998287, 38.557587, 47.657433>,  <33.919243, 38.068993, 47.108700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998287, 38.557587, 47.657433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684616, 38.682816, 47.443127>,  <33.496414, 38.757954, 47.314545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684616, 38.682816, 47.443127>,  <33.998287, 38.557587, 47.657433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684616, 38.682816, 47.443127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593833, -0.128094, 0.794326,
		0.180057, 0.941050, 0.286364,
		-0.784182, 0.313077, -0.535762,
		33.449360, 38.776737, 47.282398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631840, 39.135765, 48.034561>,  <33.998287, 38.557587, 47.657433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631840, 39.135765, 48.034561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349960, 39.010689, 47.779808>,  <33.180832, 38.935642, 47.626957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349960, 39.010689, 47.779808>,  <33.631840, 39.135765, 48.034561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349960, 39.010689, 47.779808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675904, 0.022895, 0.736634,
		-0.215759, 0.949578, -0.227486,
		-0.704699, -0.312694, -0.636884,
		33.138550, 38.916882, 47.588741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010277, 39.505123, 48.125786>,  <33.631840, 39.135765, 48.034561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010277, 39.505123, 48.125786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879623, 39.170403, 47.950024>,  <32.801231, 38.969570, 47.844566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879623, 39.170403, 47.950024>,  <33.010277, 39.505123, 48.125786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879623, 39.170403, 47.950024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728297, -0.073480, 0.681311,
		-0.602407, 0.542559, -0.585436,
		-0.326634, -0.836798, -0.439409,
		32.781631, 38.919365, 47.818203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317390, 39.545975, 47.918179>,  <33.010277, 39.505123, 48.125786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317390, 39.545975, 47.918179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372803, 39.152504, 47.964108>,  <32.406048, 38.916420, 47.991665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372803, 39.152504, 47.964108>,  <32.317390, 39.545975, 47.918179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372803, 39.152504, 47.964108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780652, -0.037116, 0.623863,
		-0.609420, -0.176058, -0.773053,
		0.138529, -0.983680, 0.114821,
		32.414360, 38.857399, 47.998554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831568, 39.458927, 48.290337>,  <32.317390, 39.545975, 47.918179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831568, 39.458927, 48.290337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038040, 39.120537, 48.343826>,  <32.161922, 38.917503, 48.375919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038040, 39.120537, 48.343826>,  <31.831568, 39.458927, 48.290337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038040, 39.120537, 48.343826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568645, -0.221748, 0.792130,
		-0.640469, -0.484925, -0.595522,
		0.516180, -0.845976, 0.133728,
		32.192894, 38.866745, 48.383945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281292, 39.014427, 48.456306>,  <31.831568, 39.458927, 48.290337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281292, 39.014427, 48.456306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621153, 38.841980, 48.577782>,  <31.825069, 38.738510, 48.650665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621153, 38.841980, 48.577782>,  <31.281292, 39.014427, 48.456306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621153, 38.841980, 48.577782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424751, -0.218184, 0.878625,
		-0.312532, -0.875518, -0.368499,
		0.849653, -0.431119, 0.303688,
		31.876049, 38.712646, 48.668888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018225, 38.482906, 48.726250>,  <31.281292, 39.014427, 48.456306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018225, 38.482906, 48.726250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385319, 38.532745, 48.877110>,  <31.605576, 38.562649, 48.967625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385319, 38.532745, 48.877110>,  <31.018225, 38.482906, 48.726250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385319, 38.532745, 48.877110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338193, -0.252850, 0.906473,
		0.208307, -0.959449, -0.189910,
		0.917733, 0.124599, 0.377149,
		31.660639, 38.570126, 48.990253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.989281, 37.995602, 49.206345>,  <31.018225, 38.482906, 48.726250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.989281, 37.995602, 49.206345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.292139, 38.222107, 49.336620>,  <31.473854, 38.358009, 49.414787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.292139, 38.222107, 49.336620>,  <30.989281, 37.995602, 49.206345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.292139, 38.222107, 49.336620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222545, -0.245150, 0.943597,
		0.614171, -0.786919, -0.059594,
		0.757144, 0.566268, 0.325689,
		31.519281, 38.391987, 49.434326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.327078, 37.577091, 49.726898>,  <30.989281, 37.995602, 49.206345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.327078, 37.577091, 49.726898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451900, 37.949745, 49.801376>,  <31.526794, 38.173340, 49.846066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451900, 37.949745, 49.801376>,  <31.327078, 37.577091, 49.726898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451900, 37.949745, 49.801376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258883, -0.105185, 0.960165,
		0.914112, -0.347828, 0.208362,
		0.312056, 0.931639, 0.186198,
		31.545517, 38.229237, 49.857235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766695, 37.482376, 50.292767>,  <31.327078, 37.577091, 49.726898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766695, 37.482376, 50.292767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.665674, 37.869019, 50.275360>,  <31.605062, 38.101006, 50.264915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.665674, 37.869019, 50.275360>,  <31.766695, 37.482376, 50.292767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.665674, 37.869019, 50.275360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186634, -0.004533, 0.982419,
		0.949414, 0.256232, 0.181547,
		-0.252550, 0.966605, -0.043518,
		31.589909, 38.159000, 50.262306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960388, 37.739285, 50.850929>,  <31.766695, 37.482376, 50.292767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960388, 37.739285, 50.850929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.686810, 38.008522, 50.738388>,  <31.522661, 38.170063, 50.670864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.686810, 38.008522, 50.738388>,  <31.960388, 37.739285, 50.850929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686810, 38.008522, 50.738388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307677, 0.083549, 0.947815,
		0.661476, 0.734822, 0.149953,
		-0.683947, 0.673094, -0.281353,
		31.481625, 38.210449, 50.653980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063423, 38.322128, 51.260212>,  <31.960388, 37.739285, 50.850929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063423, 38.322128, 51.260212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675983, 38.320274, 51.160782>,  <31.443520, 38.319160, 51.101124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675983, 38.320274, 51.160782>,  <32.063423, 38.322128, 51.260212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675983, 38.320274, 51.160782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242558, -0.201732, 0.948931,
		-0.054546, 0.979430, 0.194273,
		-0.968602, -0.004638, -0.248572,
		31.385403, 38.318882, 51.086208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787586, 38.612106, 51.853172>,  <32.063423, 38.322128, 51.260212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787586, 38.612106, 51.853172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473251, 38.477272, 51.645775>,  <31.284651, 38.396374, 51.521336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473251, 38.477272, 51.645775>,  <31.787586, 38.612106, 51.853172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473251, 38.477272, 51.645775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468565, -0.222646, 0.854913,
		-0.403616, 0.914770, 0.017019,
		-0.785838, -0.337082, -0.518493,
		31.237499, 38.376148, 51.490227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196339, 38.973270, 52.076756>,  <31.787586, 38.612106, 51.853172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.196339, 38.973270, 52.076756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067013, 38.629311, 51.918751>,  <30.989418, 38.422935, 51.823948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067013, 38.629311, 51.918751>,  <31.196339, 38.973270, 52.076756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067013, 38.629311, 51.918751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544492, -0.172355, 0.820867,
		-0.773948, 0.480478, -0.412486,
		-0.323314, -0.859904, -0.395011,
		30.970018, 38.371338, 51.800247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592310, 38.909096, 52.358128>,  <31.196339, 38.973270, 52.076756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.592310, 38.909096, 52.358128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.641073, 38.531181, 52.236462>,  <30.670332, 38.304432, 52.163460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.641073, 38.531181, 52.236462>,  <30.592310, 38.909096, 52.358128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.641073, 38.531181, 52.236462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624998, -0.311137, 0.715941,
		-0.771049, 0.102825, -0.628419,
		0.121908, -0.944786, -0.304167,
		30.677645, 38.247746, 52.145210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930296, 38.579700, 52.348648>,  <30.592310, 38.909096, 52.358128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.930296, 38.579700, 52.348648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196507, 38.288055, 52.412483>,  <30.356232, 38.113068, 52.450787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196507, 38.288055, 52.412483>,  <29.930296, 38.579700, 52.348648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196507, 38.288055, 52.412483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560350, -0.346850, 0.752132,
		-0.493035, -0.589990, -0.639396,
		0.665525, -0.729114, 0.159592,
		30.396164, 38.069321, 52.460361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488634, 38.015171, 52.320152>,  <29.930296, 38.579700, 52.348648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.488634, 38.015171, 52.320152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842131, 37.948166, 52.494942>,  <30.054228, 37.907963, 52.599815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842131, 37.948166, 52.494942>,  <29.488634, 38.015171, 52.320152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842131, 37.948166, 52.494942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467925, -0.330522, 0.819635,
		0.007128, -0.928813, -0.370479,
		0.883739, -0.167514, 0.436971,
		30.107252, 37.897911, 52.626034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.646551, 37.330681, 52.412846>,  <29.488634, 38.015171, 52.320152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.646551, 37.330681, 52.412846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.765169, 37.607468, 52.676132>,  <29.836340, 37.773540, 52.834103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.765169, 37.607468, 52.676132>,  <29.646551, 37.330681, 52.412846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.765169, 37.607468, 52.676132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480681, -0.487404, 0.728960,
		0.825231, -0.532560, 0.188077,
		0.296546, 0.691966, 0.658213,
		29.854134, 37.815056, 52.873596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745100, 37.034019, 53.175732>,  <29.646551, 37.330681, 52.412846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745100, 37.034019, 53.175732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.698587, 37.430870, 53.194340>,  <29.670679, 37.668980, 53.205505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.698587, 37.430870, 53.194340>,  <29.745100, 37.034019, 53.175732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.698587, 37.430870, 53.194340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747149, -0.118236, 0.654055,
		0.654405, 0.041299, 0.755015,
		-0.116282, 0.992126, 0.046518,
		29.663702, 37.728508, 53.208294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.411329, 37.087925, 53.857468>,  <29.745100, 37.034019, 53.175732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.411329, 37.087925, 53.857468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.394300, 37.443443, 53.674938>,  <29.384083, 37.656754, 53.565418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.394300, 37.443443, 53.674938>,  <29.411329, 37.087925, 53.857468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.394300, 37.443443, 53.674938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842284, 0.213725, 0.494853,
		0.537351, 0.405423, 0.739518,
		-0.042572, 0.888794, -0.456326,
		29.381529, 37.710083, 53.538040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.364840, 37.591938, 54.419361>,  <29.411329, 37.087925, 53.857468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.364840, 37.591938, 54.419361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200190, 37.662941, 54.061802>,  <29.101398, 37.705544, 53.847267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200190, 37.662941, 54.061802>,  <29.364840, 37.591938, 54.419361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200190, 37.662941, 54.061802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880386, 0.176064, 0.440366,
		0.235550, 0.968243, 0.083800,
		-0.411627, 0.177505, -0.893899,
		29.076702, 37.716194, 53.793633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915606, 37.092525, 54.407639>,  <29.364840, 37.591938, 54.419361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915606, 37.092525, 54.407639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.015411, 37.467018, 54.506599>,  <30.075294, 37.691715, 54.565975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.015411, 37.467018, 54.506599>,  <29.915606, 37.092525, 54.407639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.015411, 37.467018, 54.506599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829170, -0.074583, -0.553998,
		-0.500219, 0.343372, -0.794907,
		0.249514, 0.936233, 0.247406,
		30.090265, 37.747887, 54.580822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.076933, 37.524666, 53.828964>,  <29.915606, 37.092525, 54.407639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.076933, 37.524666, 53.828964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.280132, 37.662849, 54.144585>,  <30.402052, 37.745758, 54.333958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.280132, 37.662849, 54.144585>,  <30.076933, 37.524666, 53.828964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.280132, 37.662849, 54.144585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859379, -0.141211, -0.491453,
		-0.058356, 0.927748, -0.368616,
		0.507998, 0.345460, 0.789047,
		30.432531, 37.766487, 54.381298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.544098, 38.127548, 53.607277>,  <30.076933, 37.524666, 53.828964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.544098, 38.127548, 53.607277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.718529, 37.900581, 53.886669>,  <30.823187, 37.764400, 54.054306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.718529, 37.900581, 53.886669>,  <30.544098, 38.127548, 53.607277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.718529, 37.900581, 53.886669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865274, 0.051112, -0.498686,
		0.247260, 0.821845, 0.513257,
		0.436077, -0.567414, 0.698483,
		30.849352, 37.730358, 54.096214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130684, 38.484192, 54.057453>,  <30.544098, 38.127548, 53.607277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130684, 38.484192, 54.057453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193758, 38.089867, 54.034428>,  <31.231604, 37.853271, 54.020611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193758, 38.089867, 54.034428>,  <31.130684, 38.484192, 54.057453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193758, 38.089867, 54.034428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850015, 0.165172, -0.500194,
		0.502604, 0.029945, 0.863998,
		0.157686, -0.985810, -0.057563,
		31.241064, 37.794125, 54.017159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733366, 38.263271, 54.491550>,  <31.130684, 38.484192, 54.057453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733366, 38.263271, 54.491550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632956, 38.049309, 54.168846>,  <31.572710, 37.920929, 53.975224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632956, 38.049309, 54.168846>,  <31.733366, 38.263271, 54.491550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632956, 38.049309, 54.168846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857108, 0.264487, -0.442054,
		0.449836, -0.802446, 0.392081,
		-0.251024, -0.534908, -0.806759,
		31.557648, 37.888836, 53.926819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355808, 37.937534, 54.228634>,  <31.733366, 38.263271, 54.491550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355808, 37.937534, 54.228634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092957, 37.958817, 53.927876>,  <31.935246, 37.971588, 53.747421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092957, 37.958817, 53.927876>,  <32.355808, 37.937534, 54.228634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092957, 37.958817, 53.927876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688733, 0.447737, -0.570245,
		0.306309, -0.892581, -0.330868,
		-0.657131, 0.053209, -0.751896,
		31.895817, 37.974777, 53.702309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627876, 37.679409, 53.695568>,  <32.355808, 37.937534, 54.228634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627876, 37.679409, 53.695568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361992, 37.937637, 53.545158>,  <32.202461, 38.092575, 53.454914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361992, 37.937637, 53.545158>,  <32.627876, 37.679409, 53.695568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361992, 37.937637, 53.545158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719136, 0.416482, -0.556225,
		-0.202476, -0.640142, -0.741095,
		-0.664716, 0.645570, -0.376022,
		32.162579, 38.131310, 53.432350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850632, 37.798107, 53.022549>,  <32.627876, 37.679409, 53.695568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850632, 37.798107, 53.022549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605972, 38.108635, 53.083492>,  <32.459179, 38.294952, 53.120056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605972, 38.108635, 53.083492>,  <32.850632, 37.798107, 53.022549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605972, 38.108635, 53.083492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629691, 0.594303, -0.500294,
		-0.478935, -0.210065, -0.852346,
		-0.611646, 0.776323, 0.152356,
		32.422478, 38.341534, 53.129200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906311, 38.096291, 52.387688>,  <32.850632, 37.798107, 53.022549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906311, 38.096291, 52.387688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758801, 38.400627, 52.601276>,  <32.670296, 38.583229, 52.729427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758801, 38.400627, 52.601276>,  <32.906311, 38.096291, 52.387688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758801, 38.400627, 52.601276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523464, 0.644696, -0.557094,
		-0.768108, 0.074071, -0.636022,
		-0.368776, 0.760842, 0.533969,
		32.648167, 38.628880, 52.761467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639065, 38.613216, 51.917290>,  <32.906311, 38.096291, 52.387688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639065, 38.613216, 51.917290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713028, 38.811646, 52.256634>,  <32.757404, 38.930702, 52.460239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713028, 38.811646, 52.256634>,  <32.639065, 38.613216, 51.917290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713028, 38.811646, 52.256634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393143, 0.753825, -0.526485,
		-0.900693, 0.430879, -0.055640,
		0.184908, 0.496076, 0.848362,
		32.768501, 38.960468, 52.511143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398357, 39.340530, 51.758480>,  <32.639065, 38.613216, 51.917290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398357, 39.340530, 51.758480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652512, 39.337830, 52.067348>,  <32.805004, 39.336208, 52.252670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652512, 39.337830, 52.067348>,  <32.398357, 39.340530, 51.758480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652512, 39.337830, 52.067348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500116, 0.765505, -0.404829,
		-0.588365, 0.643395, 0.489765,
		0.635382, -0.006752, 0.772169,
		32.843124, 39.335804, 52.299000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505238, 39.992798, 51.777210>,  <32.398357, 39.340530, 51.758480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505238, 39.992798, 51.777210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806282, 39.864578, 52.007278>,  <32.986908, 39.787647, 52.145321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806282, 39.864578, 52.007278>,  <32.505238, 39.992798, 51.777210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806282, 39.864578, 52.007278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574531, 0.746432, -0.335788,
		-0.321691, 0.583173, 0.745938,
		0.752614, -0.320545, 0.575172,
		33.032066, 39.768414, 52.179829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813801, 40.611958, 52.208981>,  <32.505238, 39.992798, 51.777210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813801, 40.611958, 52.208981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082947, 40.321060, 52.154770>,  <33.244434, 40.146523, 52.122246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082947, 40.321060, 52.154770>,  <32.813801, 40.611958, 52.208981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082947, 40.321060, 52.154770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619325, 0.653973, -0.434461,
		0.404590, 0.208399, 0.890436,
		0.672862, -0.727248, -0.135524,
		33.284805, 40.102886, 52.114113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409790, 40.944874, 52.323925>,  <32.813801, 40.611958, 52.208981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409790, 40.944874, 52.323925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531235, 40.612526, 52.137386>,  <33.604103, 40.413116, 52.025463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531235, 40.612526, 52.137386>,  <33.409790, 40.944874, 52.323925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531235, 40.612526, 52.137386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749493, 0.510468, -0.421523,
		0.588286, -0.221545, 0.777713,
		0.303612, -0.830867, -0.466348,
		33.622318, 40.363266, 51.997482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156517, 40.926991, 52.326939>,  <33.409790, 40.944874, 52.323925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156517, 40.926991, 52.326939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107224, 40.675049, 52.020187>,  <34.077648, 40.523884, 51.836136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107224, 40.675049, 52.020187>,  <34.156517, 40.926991, 52.326939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107224, 40.675049, 52.020187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858121, 0.320504, -0.401130,
		0.498441, -0.707503, 0.500996,
		-0.123229, -0.629855, -0.766875,
		34.070255, 40.486092, 51.790123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923077, 40.739632, 52.131832>,  <34.156517, 40.926991, 52.326939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923077, 40.739632, 52.131832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667442, 40.664055, 51.833607>,  <34.514061, 40.618710, 51.654671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667442, 40.664055, 51.833607>,  <34.923077, 40.739632, 52.131832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667442, 40.664055, 51.833607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740995, 0.108563, -0.662677,
		0.206150, -0.975968, 0.070626,
		-0.639084, -0.188945, -0.745568,
		34.475716, 40.607372, 51.609936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307281, 40.272003, 51.658859>,  <34.923077, 40.739632, 52.131832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307281, 40.272003, 51.658859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000938, 40.446304, 51.469719>,  <34.817131, 40.550884, 51.356236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000938, 40.446304, 51.469719>,  <35.307281, 40.272003, 51.658859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000938, 40.446304, 51.469719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605692, 0.242006, -0.758004,
		-0.215869, -0.866923, -0.449273,
		-0.765858, 0.435750, -0.472846,
		34.771179, 40.577030, 51.327866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439152, 40.010231, 51.082577>,  <35.307281, 40.272003, 51.658859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439152, 40.010231, 51.082577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198456, 40.316605, 50.992012>,  <35.054039, 40.500427, 50.937675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198456, 40.316605, 50.992012>,  <35.439152, 40.010231, 51.082577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198456, 40.316605, 50.992012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485280, 0.125467, -0.865310,
		-0.634361, -0.630562, -0.447189,
		-0.601739, 0.765931, -0.226407,
		35.017933, 40.546383, 50.924091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212540, 39.970757, 50.292038>,  <35.439152, 40.010231, 51.082577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212540, 39.970757, 50.292038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171432, 40.354301, 50.397888>,  <35.146767, 40.584427, 50.461399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171432, 40.354301, 50.397888>,  <35.212540, 39.970757, 50.292038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171432, 40.354301, 50.397888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366554, 0.283820, -0.886050,
		-0.924703, 0.005940, -0.380642,
		-0.102771, 0.958859, 0.264626,
		35.140602, 40.641960, 50.477276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150608, 40.228752, 49.703571>,  <35.212540, 39.970757, 50.292038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150608, 40.228752, 49.703571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233650, 40.563110, 49.906818>,  <35.283474, 40.763725, 50.028767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233650, 40.563110, 49.906818>,  <35.150608, 40.228752, 49.703571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233650, 40.563110, 49.906818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445251, 0.381761, -0.809944,
		-0.871007, 0.394386, -0.292928,
		0.207602, 0.835894, 0.508117,
		35.295933, 40.813877, 50.059254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132248, 40.797691, 49.286369>,  <35.150608, 40.228752, 49.703571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132248, 40.797691, 49.286369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346771, 40.947578, 49.588882>,  <35.475487, 41.037510, 49.770390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346771, 40.947578, 49.588882>,  <35.132248, 40.797691, 49.286369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346771, 40.947578, 49.588882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588589, 0.476164, -0.653323,
		-0.604926, 0.795520, 0.034815,
		0.536309, 0.374720, 0.756278,
		35.507664, 41.059994, 49.815765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177982, 41.515190, 49.104355>,  <35.132248, 40.797691, 49.286369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177982, 41.515190, 49.104355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470619, 41.434891, 49.364960>,  <35.646202, 41.386711, 49.521324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470619, 41.434891, 49.364960>,  <35.177982, 41.515190, 49.104355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470619, 41.434891, 49.364960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675884, 0.338599, -0.654623,
		-0.089186, 0.919266, 0.383401,
		0.731592, -0.200752, 0.651515,
		35.690098, 41.374664, 49.560413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635956, 42.154873, 49.127895>,  <35.177982, 41.515190, 49.104355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635956, 42.154873, 49.127895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863705, 41.846649, 49.242477>,  <36.000355, 41.661716, 49.311226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863705, 41.846649, 49.242477>,  <35.635956, 42.154873, 49.127895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863705, 41.846649, 49.242477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671576, 0.235018, -0.702675,
		0.474128, 0.592462, 0.651299,
		0.569376, -0.770555, 0.286455,
		36.034519, 41.615482, 49.328415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242859, 42.436512, 49.140072>,  <35.635956, 42.154873, 49.127895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242859, 42.436512, 49.140072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316196, 42.045937, 49.094563>,  <36.360199, 41.811592, 49.067257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316196, 42.045937, 49.094563>,  <36.242859, 42.436512, 49.140072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316196, 42.045937, 49.094563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632721, 0.205790, -0.746535,
		0.752361, 0.064890, 0.655547,
		0.183347, -0.976442, -0.113771,
		36.371201, 41.753002, 49.060432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019382, 42.377979, 49.000095>,  <36.242859, 42.436512, 49.140072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019382, 42.377979, 49.000095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844101, 42.040901, 48.874977>,  <36.738934, 41.838654, 48.799908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844101, 42.040901, 48.874977>,  <37.019382, 42.377979, 49.000095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844101, 42.040901, 48.874977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467644, 0.083455, -0.879968,
		0.767652, -0.531879, 0.357513,
		-0.438200, -0.842698, -0.312794,
		36.712643, 41.788094, 48.781139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574455, 41.933479, 48.751980>,  <37.019382, 42.377979, 49.000095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574455, 41.933479, 48.751980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.240841, 41.780487, 48.592934>,  <37.040672, 41.688690, 48.497505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.240841, 41.780487, 48.592934>,  <37.574455, 41.933479, 48.751980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240841, 41.780487, 48.592934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406523, 0.061199, -0.911588,
		0.373001, -0.921934, 0.104446,
		-0.834032, -0.382483, -0.397615,
		36.990631, 41.665741, 48.473648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821285, 41.286018, 48.448509>,  <37.574455, 41.933479, 48.751980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821285, 41.286018, 48.448509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.479324, 41.392036, 48.270119>,  <37.274147, 41.455647, 48.163086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.479324, 41.392036, 48.270119>,  <37.821285, 41.286018, 48.448509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479324, 41.392036, 48.270119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407884, -0.187814, -0.893508,
		-0.320577, -0.945768, 0.052457,
		-0.854904, 0.265042, -0.445973,
		37.222855, 41.471550, 48.136326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620926, 40.684715, 48.080288>,  <37.821285, 41.286018, 48.448509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620926, 40.684715, 48.080288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460754, 41.027344, 47.950096>,  <37.364651, 41.232922, 47.871983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460754, 41.027344, 47.950096>,  <37.620926, 40.684715, 48.080288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460754, 41.027344, 47.950096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540897, -0.065758, -0.838514,
		-0.739652, -0.511819, -0.436986,
		-0.400432, 0.856573, -0.325480,
		37.340626, 41.284317, 47.852451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492199, 40.575569, 47.325443>,  <37.620926, 40.684715, 48.080288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492199, 40.575569, 47.325443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430428, 40.966957, 47.380207>,  <37.393364, 41.201790, 47.413067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430428, 40.966957, 47.380207>,  <37.492199, 40.575569, 47.325443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430428, 40.966957, 47.380207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492531, 0.196369, -0.847852,
		-0.856484, -0.063504, -0.512253,
		-0.154432, 0.978472, 0.136909,
		37.384098, 41.260498, 47.421280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262287, 40.751530, 46.629677>,  <37.492199, 40.575569, 47.325443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262287, 40.751530, 46.629677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418732, 41.076340, 46.802952>,  <37.512600, 41.271225, 46.906918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418732, 41.076340, 46.802952>,  <37.262287, 40.751530, 46.629677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418732, 41.076340, 46.802952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457000, 0.237198, -0.857256,
		-0.798863, 0.533248, -0.278324,
		0.391113, 0.812024, 0.433183,
		37.536064, 41.319946, 46.932907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171658, 41.296947, 46.210312>,  <37.262287, 40.751530, 46.629677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171658, 41.296947, 46.210312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.483650, 41.416107, 46.430450>,  <37.670845, 41.487602, 46.562534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.483650, 41.416107, 46.430450>,  <37.171658, 41.296947, 46.210312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483650, 41.416107, 46.430450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477522, 0.285075, -0.831087,
		-0.404471, 0.911036, 0.080100,
		0.779985, 0.297901, 0.550344,
		37.717644, 41.505478, 46.595554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403606, 41.883446, 45.955173>,  <37.171658, 41.296947, 46.210312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403606, 41.883446, 45.955173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723907, 41.796532, 46.178452>,  <37.916088, 41.744381, 46.312420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723907, 41.796532, 46.178452>,  <37.403606, 41.883446, 45.955173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723907, 41.796532, 46.178452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597310, 0.219713, -0.771328,
		0.044957, 0.951058, 0.305724,
		0.800749, -0.217288, 0.558199,
		37.964130, 41.731346, 46.345913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900475, 42.463600, 45.832939>,  <37.403606, 41.883446, 45.955173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900475, 42.463600, 45.832939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130848, 42.171860, 45.980644>,  <38.269070, 41.996815, 46.069267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130848, 42.171860, 45.980644>,  <37.900475, 42.463600, 45.832939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130848, 42.171860, 45.980644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722439, 0.242680, -0.647448,
		0.382604, 0.639653, 0.666677,
		0.575931, -0.729350, 0.369260,
		38.303627, 41.953056, 46.091423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473549, 42.858490, 45.999672>,  <37.900475, 42.463600, 45.832939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473549, 42.858490, 45.999672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566887, 42.470604, 45.970798>,  <38.622890, 42.237873, 45.953476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566887, 42.470604, 45.970798>,  <38.473549, 42.858490, 45.999672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566887, 42.470604, 45.970798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807442, 0.234586, -0.541301,
		0.541838, 0.068027, 0.837725,
		0.233341, -0.969712, -0.072180,
		38.636890, 42.179691, 45.949146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186409, 42.837421, 46.025642>,  <38.473549, 42.858490, 45.999672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186409, 42.837421, 46.025642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085358, 42.489441, 45.856239>,  <39.024727, 42.280651, 45.754597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085358, 42.489441, 45.856239>,  <39.186409, 42.837421, 46.025642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085358, 42.489441, 45.856239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727825, 0.117541, -0.675614,
		0.637534, -0.478917, 0.603481,
		-0.252629, -0.869956, -0.423504,
		39.009567, 42.228455, 45.729187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797325, 42.564442, 45.823078>,  <39.186409, 42.837421, 46.025642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797325, 42.564442, 45.823078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.552635, 42.348061, 45.592197>,  <39.405819, 42.218231, 45.453671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.552635, 42.348061, 45.592197>,  <39.797325, 42.564442, 45.823078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552635, 42.348061, 45.592197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699057, -0.028125, -0.714513,
		0.370284, -0.840583, 0.395362,
		-0.611727, -0.540953, -0.577201,
		39.369118, 42.185776, 45.419037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255928, 41.924923, 45.531532>,  <39.797325, 42.564442, 45.823078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255928, 41.924923, 45.531532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932236, 41.959534, 45.299095>,  <39.738022, 41.980301, 45.159634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932236, 41.959534, 45.299095>,  <40.255928, 41.924923, 45.531532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932236, 41.959534, 45.299095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580265, -0.036987, -0.813587,
		-0.091894, -0.995562, -0.020280,
		-0.809227, 0.086531, -0.581089,
		39.689468, 41.985493, 45.124767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416481, 41.450108, 45.043747>,  <40.255928, 41.924923, 45.531532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416481, 41.450108, 45.043747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154686, 41.708336, 44.886330>,  <39.997608, 41.863274, 44.791878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154686, 41.708336, 44.886330>,  <40.416481, 41.450108, 45.043747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154686, 41.708336, 44.886330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549746, 0.048993, -0.833894,
		-0.519059, -0.762124, -0.386967,
		-0.654489, 0.645574, -0.393545,
		39.958340, 41.902008, 44.768265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083439, 41.195709, 44.468666>,  <40.416481, 41.450108, 45.043747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083439, 41.195709, 44.468666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030922, 41.587822, 44.409592>,  <39.999413, 41.823090, 44.374146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030922, 41.587822, 44.409592>,  <40.083439, 41.195709, 44.468666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030922, 41.587822, 44.409592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564125, -0.048626, -0.824256,
		-0.815185, -0.191528, -0.546618,
		-0.131288, 0.980282, -0.147685,
		39.991535, 41.881908, 44.365288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896553, 41.247635, 43.791599>,  <40.083439, 41.195709, 44.468666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896553, 41.247635, 43.791599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991524, 41.627495, 43.873379>,  <40.048508, 41.855412, 43.922447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991524, 41.627495, 43.873379>,  <39.896553, 41.247635, 43.791599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991524, 41.627495, 43.873379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355293, 0.110992, -0.928142,
		-0.904099, 0.293009, -0.311050,
		0.237430, 0.949646, 0.204452,
		40.062752, 41.912388, 43.934715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801952, 41.542862, 43.143124>,  <39.896553, 41.247635, 43.791599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801952, 41.542862, 43.143124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.034332, 41.784637, 43.361168>,  <40.173759, 41.929703, 43.491993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.034332, 41.784637, 43.361168>,  <39.801952, 41.542862, 43.143124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034332, 41.784637, 43.361168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575686, 0.168299, -0.800163,
		-0.575393, 0.778669, -0.250195,
		0.580954, 0.604442, 0.545107,
		40.208618, 41.965969, 43.524700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892117, 42.142223, 42.726292>,  <39.801952, 41.542862, 43.143124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892117, 42.142223, 42.726292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181519, 42.140114, 43.002411>,  <40.355160, 42.138847, 43.168083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181519, 42.140114, 43.002411>,  <39.892117, 42.142223, 42.726292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181519, 42.140114, 43.002411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662165, 0.287947, -0.691826,
		-0.195123, 0.957632, 0.211821,
		0.723508, -0.005269, 0.690296,
		40.398571, 42.138535, 43.209499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253757, 42.898834, 42.761799>,  <39.892117, 42.142223, 42.726292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253757, 42.898834, 42.761799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.496326, 42.607277, 42.888897>,  <40.641869, 42.432343, 42.965157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.496326, 42.607277, 42.888897>,  <40.253757, 42.898834, 42.761799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496326, 42.607277, 42.888897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704765, 0.307677, -0.639251,
		0.368182, 0.611595, 0.700281,
		0.606423, -0.728894, 0.317749,
		40.678253, 42.388607, 42.984222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875629, 43.225388, 43.020462>,  <40.253757, 42.898834, 42.761799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875629, 43.225388, 43.020462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.969849, 42.847015, 42.931263>,  <41.026382, 42.619991, 42.877743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.969849, 42.847015, 42.931263>,  <40.875629, 43.225388, 43.020462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969849, 42.847015, 42.931263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726735, 0.323787, -0.605820,
		0.645269, -0.019359, 0.763710,
		0.235552, -0.945932, -0.222998,
		41.040516, 42.563236, 42.864365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552994, 43.234322, 43.047031>,  <40.875629, 43.225388, 43.020462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.552994, 43.234322, 43.047031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510406, 42.905846, 42.822781>,  <41.484856, 42.708759, 42.688229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510406, 42.905846, 42.822781>,  <41.552994, 43.234322, 43.047031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.510406, 42.905846, 42.822781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796676, 0.266922, -0.542274,
		0.594956, -0.504375, 0.625806,
		-0.106468, -0.821194, -0.560630,
		41.478466, 42.659489, 42.654591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.558414, 43.279480, 43.825226>,  <41.552994, 43.234322, 43.047031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.558414, 43.279480, 43.825226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644989, 43.668549, 43.791618>,  <41.696934, 43.901989, 43.771454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644989, 43.668549, 43.791618>,  <41.558414, 43.279480, 43.825226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.644989, 43.668549, 43.791618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448988, 0.175592, 0.876115,
		0.866927, -0.151902, 0.474724,
		0.216441, 0.972673, -0.084023,
		41.709923, 43.960350, 43.766411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.883869, 43.480961, 44.451305>,  <41.558414, 43.279480, 43.825226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.883869, 43.480961, 44.451305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.742577, 43.820518, 44.294025>,  <41.657799, 44.024254, 44.199657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.742577, 43.820518, 44.294025>,  <41.883869, 43.480961, 44.451305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.742577, 43.820518, 44.294025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547337, 0.153339, 0.822745,
		0.758714, 0.505838, 0.410465,
		-0.353236, 0.848891, -0.393205,
		41.636604, 44.075184, 44.176064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026218, 44.025784, 45.013149>,  <41.883869, 43.480961, 44.451305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.026218, 44.025784, 45.013149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.753674, 44.201797, 44.779186>,  <41.590149, 44.307407, 44.638809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.753674, 44.201797, 44.779186>,  <42.026218, 44.025784, 45.013149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.753674, 44.201797, 44.779186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513315, 0.282390, 0.810409,
		0.521784, 0.852421, 0.033470,
		-0.681358, 0.440040, -0.584908,
		41.549267, 44.333809, 44.603714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.964268, 44.684059, 45.286438>,  <42.026218, 44.025784, 45.013149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.964268, 44.684059, 45.286438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.621902, 44.619797, 45.089825>,  <41.416485, 44.581242, 44.971855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.621902, 44.619797, 45.089825>,  <41.964268, 44.684059, 45.286438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.621902, 44.619797, 45.089825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516959, 0.241794, 0.821151,
		-0.013070, 0.956936, -0.290005,
		-0.855910, -0.160653, -0.491537,
		41.365128, 44.571602, 44.942364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.600143, 45.300121, 45.242439>,  <41.964268, 44.684059, 45.286438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.600143, 45.300121, 45.242439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.310940, 45.026344, 45.204899>,  <41.137417, 44.862080, 45.182373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.310940, 45.026344, 45.204899>,  <41.600143, 45.300121, 45.242439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310940, 45.026344, 45.204899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439128, 0.350436, 0.827261,
		-0.533321, 0.639327, -0.553923,
		-0.723005, -0.684438, -0.093851,
		41.094040, 44.821014, 45.176743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995670, 45.579544, 45.613377>,  <41.600143, 45.300121, 45.242439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.995670, 45.579544, 45.613377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.904892, 45.192970, 45.565224>,  <40.850426, 44.961025, 45.536331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.904892, 45.192970, 45.565224>,  <40.995670, 45.579544, 45.613377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904892, 45.192970, 45.565224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589151, 0.037810, 0.807137,
		-0.775497, 0.254102, -0.577959,
		-0.226948, -0.966438, -0.120382,
		40.836807, 44.903038, 45.529110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265182, 45.572674, 45.781223>,  <40.995670, 45.579544, 45.613377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265182, 45.572674, 45.781223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.371407, 45.187256, 45.794289>,  <40.435143, 44.956005, 45.802128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.371407, 45.187256, 45.794289>,  <40.265182, 45.572674, 45.781223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371407, 45.187256, 45.794289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649794, -0.153860, 0.744375,
		-0.712210, -0.218899, -0.666963,
		0.265562, -0.963540, 0.032659,
		40.451077, 44.898193, 45.804085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677372, 45.196247, 45.587864>,  <40.265182, 45.572674, 45.781223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677372, 45.196247, 45.587864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903252, 44.951530, 45.809433>,  <40.038780, 44.804703, 45.942375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903252, 44.951530, 45.809433>,  <39.677372, 45.196247, 45.587864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903252, 44.951530, 45.809433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666863, 0.057179, 0.742984,
		-0.486221, -0.788953, -0.375690,
		0.564697, -0.611788, 0.553925,
		40.072662, 44.767994, 45.975609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276821, 44.592770, 45.893394>,  <39.677372, 45.196247, 45.587864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276821, 44.592770, 45.893394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584236, 44.618935, 46.147972>,  <39.768684, 44.634632, 46.300720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584236, 44.618935, 46.147972>,  <39.276821, 44.592770, 45.893394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584236, 44.618935, 46.147972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631215, -0.084908, 0.770947,
		0.104468, -0.994240, -0.023967,
		0.768540, 0.065411, 0.636449,
		39.814796, 44.638557, 46.338905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188507, 43.958416, 46.436470>,  <39.276821, 44.592770, 45.893394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188507, 43.958416, 46.436470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437225, 44.216064, 46.614677>,  <39.586456, 44.370651, 46.721603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437225, 44.216064, 46.614677>,  <39.188507, 43.958416, 46.436470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437225, 44.216064, 46.614677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386306, -0.242598, 0.889895,
		0.681280, -0.725436, 0.097982,
		0.621792, 0.644118, 0.445518,
		39.623764, 44.409302, 46.748333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295502, 43.653988, 47.003548>,  <39.188507, 43.958416, 46.436470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295502, 43.653988, 47.003548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401756, 44.029556, 47.091057>,  <39.465508, 44.254898, 47.143562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401756, 44.029556, 47.091057>,  <39.295502, 43.653988, 47.003548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401756, 44.029556, 47.091057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498342, -0.060527, 0.864865,
		0.825284, -0.338761, 0.451827,
		0.265634, 0.938923, 0.218770,
		39.481445, 44.311234, 47.156689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676239, 43.686455, 47.728165>,  <39.295502, 43.653988, 47.003548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676239, 43.686455, 47.728165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535645, 44.055870, 47.666805>,  <39.451290, 44.277519, 47.629990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535645, 44.055870, 47.666805>,  <39.676239, 43.686455, 47.728165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535645, 44.055870, 47.666805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371445, 0.012839, 0.928366,
		0.859353, 0.383287, 0.338531,
		-0.351485, 0.923540, -0.153403,
		39.430199, 44.332932, 47.620785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736095, 43.940868, 48.354919>,  <39.676239, 43.686455, 47.728165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736095, 43.940868, 48.354919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474022, 44.212303, 48.222099>,  <39.316776, 44.375164, 48.142406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474022, 44.212303, 48.222099>,  <39.736095, 43.940868, 48.354919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474022, 44.212303, 48.222099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412009, 0.047461, 0.909943,
		0.633232, 0.732988, 0.248487,
		-0.655184, 0.678584, -0.332052,
		39.277466, 44.415878, 48.122482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606022, 44.247711, 48.956573>,  <39.736095, 43.940868, 48.354919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606022, 44.247711, 48.956573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310196, 44.343697, 48.705029>,  <39.132702, 44.401287, 48.554100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310196, 44.343697, 48.705029>,  <39.606022, 44.247711, 48.956573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310196, 44.343697, 48.705029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657365, -0.056726, 0.751434,
		0.144644, 0.969123, 0.199696,
		-0.739560, 0.239964, -0.628863,
		39.088329, 44.415688, 48.516369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237518, 44.843094, 49.317619>,  <39.606022, 44.247711, 48.956573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237518, 44.843094, 49.317619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973824, 44.672180, 49.070126>,  <38.815605, 44.569633, 48.921631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973824, 44.672180, 49.070126>,  <39.237518, 44.843094, 49.317619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973824, 44.672180, 49.070126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660373, -0.064517, 0.748161,
		-0.359596, 0.901812, -0.239635,
		-0.659241, -0.427285, -0.618732,
		38.776051, 44.543995, 48.884506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593517, 45.274815, 49.415390>,  <39.237518, 44.843094, 49.317619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593517, 45.274815, 49.415390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507240, 44.926796, 49.238075>,  <38.455475, 44.717983, 49.131687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507240, 44.926796, 49.238075>,  <38.593517, 45.274815, 49.415390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507240, 44.926796, 49.238075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875861, -0.028309, 0.481732,
		-0.431678, 0.492159, -0.755932,
		-0.215689, -0.870045, -0.443283,
		38.442535, 44.665783, 49.105091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859703, 45.354603, 49.173447>,  <38.593517, 45.274815, 49.415390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859703, 45.354603, 49.173447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976524, 44.973145, 49.202454>,  <38.046616, 44.744270, 49.219856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976524, 44.973145, 49.202454>,  <37.859703, 45.354603, 49.173447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976524, 44.973145, 49.202454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878947, -0.237740, 0.413440,
		-0.377037, -0.184483, -0.907639,
		0.292054, -0.953649, 0.072514,
		38.064140, 44.687050, 49.224209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259296, 44.902447, 48.937344>,  <37.859703, 45.354603, 49.173447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259296, 44.902447, 48.937344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497929, 44.660522, 49.148361>,  <37.641106, 44.515369, 49.274971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497929, 44.660522, 49.148361>,  <37.259296, 44.902447, 48.937344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497929, 44.660522, 49.148361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767007, -0.236208, 0.596578,
		-0.236208, -0.760533, -0.604810,
		-0.596578, 0.604810, -0.527540,
		37.676903, 44.479080, 49.306622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825596, 44.299175, 49.100487>,  <37.259296, 44.902447, 48.937344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825596, 44.299175, 49.100487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115181, 44.294525, 49.376385>,  <37.288933, 44.291737, 49.541924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115181, 44.294525, 49.376385>,  <36.825596, 44.299175, 49.100487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115181, 44.294525, 49.376385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663556, -0.285117, 0.691666,
		0.188618, -0.958422, -0.214127,
		0.723959, -0.011624, 0.689745,
		37.332367, 44.291039, 49.583309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762897, 43.594170, 49.342232>,  <36.825596, 44.299175, 49.100487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762897, 43.594170, 49.342232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981857, 43.783012, 49.618629>,  <37.113232, 43.896317, 49.784466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981857, 43.783012, 49.618629>,  <36.762897, 43.594170, 49.342232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981857, 43.783012, 49.618629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529282, -0.444267, 0.722833,
		0.648239, -0.761408, 0.006686,
		0.547400, 0.472107, 0.690991,
		37.146076, 43.924644, 49.825928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928043, 43.122055, 49.874565>,  <36.762897, 43.594170, 49.342232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928043, 43.122055, 49.874565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936012, 43.478844, 50.055225>,  <36.940792, 43.692917, 50.163620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936012, 43.478844, 50.055225>,  <36.928043, 43.122055, 49.874565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936012, 43.478844, 50.055225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593688, -0.352919, 0.723176,
		0.804449, -0.282542, 0.522524,
		0.019918, 0.891974, 0.451647,
		36.941986, 43.746437, 50.190720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024654, 42.985584, 50.524380>,  <36.928043, 43.122055, 49.874565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024654, 42.985584, 50.524380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.855621, 43.346733, 50.492775>,  <36.754200, 43.563423, 50.473812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.855621, 43.346733, 50.492775>,  <37.024654, 42.985584, 50.524380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855621, 43.346733, 50.492775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686988, -0.262232, 0.677704,
		0.591160, 0.340668, 0.731078,
		-0.422584, 0.902873, -0.079014,
		36.728848, 43.617596, 50.469070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776348, 43.108810, 51.131119>,  <37.024654, 42.985584, 50.524380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776348, 43.108810, 51.131119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575798, 43.393562, 50.934402>,  <36.455467, 43.564411, 50.816372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575798, 43.393562, 50.934402>,  <36.776348, 43.108810, 51.131119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575798, 43.393562, 50.934402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761212, -0.092718, 0.641840,
		0.411314, 0.696157, 0.588376,
		-0.501375, 0.711877, -0.491787,
		36.425385, 43.607124, 50.786865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530216, 43.498573, 51.626709>,  <36.776348, 43.108810, 51.131119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530216, 43.498573, 51.626709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294163, 43.598022, 51.319481>,  <36.152531, 43.657692, 51.135143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294163, 43.598022, 51.319481>,  <36.530216, 43.498573, 51.626709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294163, 43.598022, 51.319481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807282, -0.174444, 0.563795,
		0.006187, 0.952762, 0.303654,
		-0.590133, 0.248623, -0.768069,
		36.117123, 43.672607, 51.089062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960690, 43.861820, 51.886497>,  <36.530216, 43.498573, 51.626709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960690, 43.861820, 51.886497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821598, 43.768250, 51.523319>,  <35.738144, 43.712109, 51.305412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821598, 43.768250, 51.523319>,  <35.960690, 43.861820, 51.886497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821598, 43.768250, 51.523319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904054, -0.173047, 0.390821,
		-0.248540, 0.956730, -0.151310,
		-0.347727, -0.233927, -0.907945,
		35.717281, 43.698071, 51.250935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275402, 44.313763, 51.720654>,  <35.960690, 43.861820, 51.886497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275402, 44.313763, 51.720654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286919, 43.973412, 51.510826>,  <35.293827, 43.769199, 51.384930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286919, 43.973412, 51.510826>,  <35.275402, 44.313763, 51.720654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286919, 43.973412, 51.510826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862133, -0.286719, 0.417755,
		-0.505864, 0.440219, -0.741828,
		0.028792, -0.850882, -0.524568,
		35.295555, 43.718147, 51.353455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647144, 44.180267, 51.421181>,  <35.275402, 44.313763, 51.720654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647144, 44.180267, 51.421181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800037, 43.811020, 51.404465>,  <34.891773, 43.589470, 51.394436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800037, 43.811020, 51.404465>,  <34.647144, 44.180267, 51.421181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800037, 43.811020, 51.404465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857319, -0.371131, 0.356743,
		-0.344823, -0.100538, -0.933268,
		0.382231, -0.923122, -0.041781,
		34.914707, 43.534084, 51.391930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042389, 43.771851, 51.328247>,  <34.647144, 44.180267, 51.421181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042389, 43.771851, 51.328247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281895, 43.476013, 51.451202>,  <34.425598, 43.298512, 51.524975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281895, 43.476013, 51.451202>,  <34.042389, 43.771851, 51.328247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281895, 43.476013, 51.451202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799851, -0.532282, 0.277333,
		-0.041495, -0.411923, -0.910273,
		0.598763, -0.739591, 0.307390,
		34.461525, 43.254135, 51.543419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697918, 43.177601, 51.061905>,  <34.042389, 43.771851, 51.328247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697918, 43.177601, 51.061905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927979, 43.070671, 51.371159>,  <34.066017, 43.006516, 51.556709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927979, 43.070671, 51.371159>,  <33.697918, 43.177601, 51.061905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927979, 43.070671, 51.371159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791494, -0.420679, 0.443358,
		0.206724, -0.866931, -0.453537,
		0.575155, -0.267319, 0.773135,
		34.100525, 42.990475, 51.603100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540684, 42.434425, 51.273182>,  <33.697918, 43.177601, 51.061905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540684, 42.434425, 51.273182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702332, 42.598381, 51.600273>,  <33.799320, 42.696754, 51.796528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702332, 42.598381, 51.600273>,  <33.540684, 42.434425, 51.273182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702332, 42.598381, 51.600273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798654, -0.277698, 0.533888,
		0.445916, -0.868836, 0.215136,
		0.404118, 0.409888, 0.817729,
		33.823566, 42.721348, 51.845592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517567, 41.988914, 51.774853>,  <33.540684, 42.434425, 51.273182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517567, 41.988914, 51.774853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563808, 42.313515, 52.003975>,  <33.591553, 42.508274, 52.141449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563808, 42.313515, 52.003975>,  <33.517567, 41.988914, 51.774853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563808, 42.313515, 52.003975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676451, -0.357957, 0.643646,
		0.727357, -0.461885, 0.507556,
		0.115607, 0.811498, 0.572805,
		33.598492, 42.556965, 52.175816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644218, 41.719719, 52.419090>,  <33.517567, 41.988914, 51.774853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644218, 41.719719, 52.419090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551765, 42.101532, 52.494400>,  <33.496292, 42.330620, 52.539585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551765, 42.101532, 52.494400>,  <33.644218, 41.719719, 52.419090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551765, 42.101532, 52.494400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690261, -0.297260, 0.659679,
		0.685651, 0.022514, 0.727582,
		-0.231133, 0.954531, 0.188276,
		33.482426, 42.387890, 52.550884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684628, 41.716747, 53.069603>,  <33.644218, 41.719719, 52.419090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684628, 41.716747, 53.069603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454010, 42.029297, 52.974060>,  <33.315639, 42.216827, 52.916737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454010, 42.029297, 52.974060>,  <33.684628, 41.716747, 53.069603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454010, 42.029297, 52.974060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604271, -0.211001, 0.768333,
		0.549955, 0.587313, 0.593812,
		-0.576547, 0.781372, -0.238855,
		33.281048, 42.263710, 52.902405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516720, 41.980343, 53.720901>,  <33.684628, 41.716747, 53.069603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516720, 41.980343, 53.720901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235451, 42.105850, 53.465687>,  <33.066689, 42.181156, 53.312557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235451, 42.105850, 53.465687>,  <33.516720, 41.980343, 53.720901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235451, 42.105850, 53.465687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702479, -0.167933, 0.691608,
		0.109859, 0.934530, 0.338504,
		-0.703175, 0.313772, -0.638038,
		33.024498, 42.199982, 53.274277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042912, 42.263931, 54.114201>,  <33.516720, 41.980343, 53.720901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042912, 42.263931, 54.114201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825016, 42.247108, 53.779179>,  <32.694279, 42.237015, 53.578167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825016, 42.247108, 53.779179>,  <33.042912, 42.263931, 54.114201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825016, 42.247108, 53.779179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837765, -0.017417, 0.545752,
		-0.037541, 0.998963, -0.025747,
		-0.544738, -0.042058, -0.837551,
		32.661594, 42.234489, 53.527912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478771, 42.635998, 54.221355>,  <33.042912, 42.263931, 54.114201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478771, 42.635998, 54.221355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383568, 42.390343, 53.920372>,  <32.326447, 42.242950, 53.739784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383568, 42.390343, 53.920372>,  <32.478771, 42.635998, 54.221355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383568, 42.390343, 53.920372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918755, -0.108924, 0.379506,
		-0.315029, 0.781647, -0.538316,
		-0.238004, -0.614136, -0.752457,
		32.312168, 42.206100, 53.694633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820229, 42.843391, 54.086479>,  <32.478771, 42.635998, 54.221355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820229, 42.843391, 54.086479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847197, 42.471046, 53.942841>,  <31.863379, 42.247639, 53.856659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847197, 42.471046, 53.942841>,  <31.820229, 42.843391, 54.086479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847197, 42.471046, 53.942841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865731, -0.233487, 0.442712,
		-0.495948, 0.281031, -0.821619,
		0.067421, -0.930863, -0.359094,
		31.867422, 42.191788, 53.835114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.144178, 42.676346, 53.813259>,  <31.820229, 42.843391, 54.086479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.144178, 42.676346, 53.813259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.332306, 42.335327, 53.904446>,  <31.445183, 42.130718, 53.959160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.332306, 42.335327, 53.904446>,  <31.144178, 42.676346, 53.813259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.332306, 42.335327, 53.904446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693150, -0.196984, 0.693354,
		-0.546209, -0.484113, -0.683586,
		0.470317, -0.852544, 0.227968,
		31.473400, 42.079563, 53.972836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.821846, 43.346848, 53.863850>,  <31.144178, 42.676346, 53.813259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.821846, 43.346848, 53.863850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.712141, 43.729927, 53.829010>,  <30.646318, 43.959774, 53.808105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.712141, 43.729927, 53.829010>,  <30.821846, 43.346848, 53.863850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.712141, 43.729927, 53.829010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803270, 0.178351, -0.568286,
		-0.528714, -0.225825, -0.818208,
		-0.274261, 0.957703, -0.087102,
		30.629862, 44.017239, 53.802879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028034, 43.587898, 53.238243>,  <30.821846, 43.346848, 53.863850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028034, 43.587898, 53.238243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971079, 43.941368, 53.416611>,  <30.936905, 44.153450, 53.523632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971079, 43.941368, 53.416611>,  <31.028034, 43.587898, 53.238243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971079, 43.941368, 53.416611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679920, 0.414724, -0.604741,
		-0.719328, 0.217081, -0.659881,
		-0.142390, 0.883674, 0.445921,
		30.928362, 44.206470, 53.550388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015512, 44.092796, 52.707844>,  <31.028034, 43.587898, 53.238243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015512, 44.092796, 52.707844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.064928, 44.295334, 53.049217>,  <31.094578, 44.416855, 53.254044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.064928, 44.295334, 53.049217>,  <31.015512, 44.092796, 52.707844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.064928, 44.295334, 53.049217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618095, 0.633559, -0.465361,
		-0.776335, 0.584996, -0.234698,
		0.123540, 0.506342, 0.853438,
		31.101990, 44.447235, 53.305248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847660, 44.889557, 52.682678>,  <31.015512, 44.092796, 52.707844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847660, 44.889557, 52.682678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.117432, 44.820374, 52.969795>,  <31.279295, 44.778866, 53.142067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.117432, 44.820374, 52.969795>,  <30.847660, 44.889557, 52.682678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117432, 44.820374, 52.969795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620968, 0.658801, -0.424711,
		-0.399428, 0.732166, 0.551716,
		0.674430, -0.172956, 0.717795,
		31.319761, 44.768486, 53.185135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164972, 45.574520, 52.723083>,  <30.847660, 44.889557, 52.682678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164972, 45.574520, 52.723083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399065, 45.318489, 52.922203>,  <31.539520, 45.164871, 53.041676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399065, 45.318489, 52.922203>,  <31.164972, 45.574520, 52.723083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399065, 45.318489, 52.922203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810808, 0.469253, -0.349846,
		-0.009667, 0.608362, 0.793600,
		0.585233, -0.640076, 0.497801,
		31.574635, 45.126465, 53.071545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666483, 46.034508, 53.016273>,  <31.164972, 45.574520, 52.723083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666483, 46.034508, 53.016273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805155, 45.659317, 53.017414>,  <31.888359, 45.434200, 53.018101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805155, 45.659317, 53.017414>,  <31.666483, 46.034508, 53.016273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805155, 45.659317, 53.017414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822740, 0.302623, -0.481162,
		0.450456, 0.169159, 0.876627,
		0.346681, -0.937979, 0.002856,
		31.909159, 45.377922, 53.018272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343800, 46.125389, 53.160896>,  <31.666483, 46.034508, 53.016273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343800, 46.125389, 53.160896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370026, 45.748512, 53.029457>,  <32.385761, 45.522385, 52.950592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370026, 45.748512, 53.029457>,  <32.343800, 46.125389, 53.160896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370026, 45.748512, 53.029457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775711, 0.255273, -0.577156,
		0.627673, -0.217054, 0.747605,
		0.065569, -0.942191, -0.328599,
		32.389698, 45.465855, 52.930878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069241, 45.850754, 53.196037>,  <32.343800, 46.125389, 53.160896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069241, 45.850754, 53.196037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898239, 45.633751, 52.906784>,  <32.795639, 45.503548, 52.733231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898239, 45.633751, 52.906784>,  <33.069241, 45.850754, 53.196037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898239, 45.633751, 52.906784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799128, 0.147198, -0.582861,
		0.422653, -0.827051, 0.370608,
		-0.427503, -0.542511, -0.723133,
		32.769989, 45.470997, 52.689842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657204, 45.455006, 52.986012>,  <33.069241, 45.850754, 53.196037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657204, 45.455006, 52.986012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389378, 45.448181, 52.688992>,  <33.228680, 45.444084, 52.510780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389378, 45.448181, 52.688992>,  <33.657204, 45.455006, 52.986012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389378, 45.448181, 52.688992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742523, -0.040138, -0.668617,
		-0.018395, -0.999049, 0.039545,
		-0.669568, -0.017064, -0.742554,
		33.188507, 45.443062, 52.466225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938183, 45.073158, 52.407883>,  <33.657204, 45.455006, 52.986012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938183, 45.073158, 52.407883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639641, 45.265381, 52.223698>,  <33.460518, 45.380714, 52.113186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639641, 45.265381, 52.223698>,  <33.938183, 45.073158, 52.407883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639641, 45.265381, 52.223698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551331, 0.058859, -0.832208,
		-0.372816, -0.874989, -0.308873,
		-0.746353, 0.480552, -0.460465,
		33.415733, 45.409546, 52.085560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916748, 44.800922, 51.731552>,  <33.938183, 45.073158, 52.407883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916748, 44.800922, 51.731552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738243, 45.158844, 51.726219>,  <33.631138, 45.373596, 51.723019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738243, 45.158844, 51.726219>,  <33.916748, 44.800922, 51.731552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738243, 45.158844, 51.726219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501649, 0.237791, -0.831748,
		-0.741078, -0.377870, -0.554994,
		-0.446265, 0.894801, -0.013336,
		33.604362, 45.427284, 51.722218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707935, 44.968113, 51.008121>,  <33.916748, 44.800922, 51.731552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707935, 44.968113, 51.008121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664726, 45.347374, 51.127678>,  <33.638802, 45.574932, 51.199413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664726, 45.347374, 51.127678>,  <33.707935, 44.968113, 51.008121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664726, 45.347374, 51.127678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623508, 0.298789, -0.722470,
		-0.774318, 0.108319, -0.623457,
		-0.108025, 0.948152, 0.298895,
		33.632320, 45.631821, 51.217346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624992, 45.339588, 50.348171>,  <33.707935, 44.968113, 51.008121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624992, 45.339588, 50.348171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767281, 45.583717, 50.631287>,  <33.852654, 45.730194, 50.801155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767281, 45.583717, 50.631287>,  <33.624992, 45.339588, 50.348171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767281, 45.583717, 50.631287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615383, 0.417023, -0.668877,
		-0.703396, 0.673496, -0.227238,
		0.355722, 0.610324, 0.707790,
		33.873997, 45.766815, 50.843624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581345, 45.938541, 50.042454>,  <33.624992, 45.339588, 50.348171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581345, 45.938541, 50.042454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835457, 46.002853, 50.344597>,  <33.987923, 46.041439, 50.525883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835457, 46.002853, 50.344597>,  <33.581345, 45.938541, 50.042454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835457, 46.002853, 50.344597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627741, 0.462221, -0.626333,
		-0.449843, 0.872068, 0.192714,
		0.635281, 0.160777, 0.755360,
		34.026043, 46.051086, 50.571205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942284, 46.650665, 49.972092>,  <33.581345, 45.938541, 50.042454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942284, 46.650665, 49.972092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180862, 46.454414, 50.226189>,  <34.324009, 46.336662, 50.378647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180862, 46.454414, 50.226189>,  <33.942284, 46.650665, 49.972092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180862, 46.454414, 50.226189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782446, 0.178957, -0.596450,
		0.178957, 0.852793, 0.490631,
		0.596450, -0.490631, 0.635239,
		34.359798, 46.307224, 50.416759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525589, 47.058475, 49.988377>,  <33.942284, 46.650665, 49.972092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525589, 47.058475, 49.988377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649467, 46.704124, 50.126541>,  <34.723797, 46.491516, 50.209442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649467, 46.704124, 50.126541>,  <34.525589, 47.058475, 49.988377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649467, 46.704124, 50.126541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777479, 0.026809, -0.628337,
		0.547369, 0.463148, 0.697052,
		0.309700, -0.885876, 0.345414,
		34.742378, 46.438362, 50.230164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138805, 47.265259, 50.244965>,  <34.525589, 47.058475, 49.988377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138805, 47.265259, 50.244965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146065, 46.873222, 50.165886>,  <35.150421, 46.638000, 50.118439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146065, 46.873222, 50.165886>,  <35.138805, 47.265259, 50.244965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146065, 46.873222, 50.165886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891280, 0.105458, -0.441021,
		0.453091, -0.168200, 0.875453,
		0.018144, -0.980096, -0.197695,
		35.151508, 46.579193, 50.106579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829170, 47.032269, 50.356037>,  <35.138805, 47.265259, 50.244965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829170, 47.032269, 50.356037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657749, 46.751175, 50.128880>,  <35.554897, 46.582520, 49.992584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657749, 46.751175, 50.128880>,  <35.829170, 47.032269, 50.356037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657749, 46.751175, 50.128880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854959, -0.112123, -0.506432,
		0.292213, -0.702560, 0.648861,
		-0.428551, -0.702736, -0.567897,
		35.529182, 46.540356, 49.958511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256134, 46.384544, 50.371090>,  <35.829170, 47.032269, 50.356037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256134, 46.384544, 50.371090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045837, 46.382759, 50.030838>,  <35.919659, 46.381687, 49.826687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045837, 46.382759, 50.030838>,  <36.256134, 46.384544, 50.371090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045837, 46.382759, 50.030838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828726, -0.228234, -0.511002,
		-0.191860, -0.973596, 0.123695,
		-0.525741, -0.004468, -0.850633,
		35.888115, 46.381420, 49.775646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672077, 45.923820, 49.956841>,  <36.256134, 46.384544, 50.371090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672077, 45.923820, 49.956841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.440834, 46.104118, 49.684776>,  <36.302090, 46.212299, 49.521538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.440834, 46.104118, 49.684776>,  <36.672077, 45.923820, 49.956841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440834, 46.104118, 49.684776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757592, -0.013094, -0.652596,
		-0.303063, -0.892555, -0.333914,
		-0.578106, 0.450748, -0.680161,
		36.267403, 46.239342, 49.480728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669834, 45.543621, 49.332603>,  <36.672077, 45.923820, 49.956841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669834, 45.543621, 49.332603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552177, 45.915039, 49.242020>,  <36.481583, 46.137890, 49.187668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552177, 45.915039, 49.242020>,  <36.669834, 45.543621, 49.332603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552177, 45.915039, 49.242020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618289, 0.004178, -0.785940,
		-0.728836, -0.371192, -0.575339,
		-0.294138, 0.928547, -0.226459,
		36.463936, 46.193604, 49.174084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624287, 45.554729, 48.636070>,  <36.669834, 45.543621, 49.332603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624287, 45.554729, 48.636070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655128, 45.942253, 48.730270>,  <36.673634, 46.174767, 48.786789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655128, 45.942253, 48.730270>,  <36.624287, 45.554729, 48.636070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655128, 45.942253, 48.730270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651246, 0.129914, -0.747664,
		-0.754940, 0.211012, -0.620919,
		0.077100, 0.968812, 0.235498,
		36.678257, 46.232895, 48.800919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654423, 45.848042, 48.007511>,  <36.624287, 45.554729, 48.636070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654423, 45.848042, 48.007511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796432, 46.136131, 48.245918>,  <36.881638, 46.308987, 48.388962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796432, 46.136131, 48.245918>,  <36.654423, 45.848042, 48.007511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796432, 46.136131, 48.245918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663750, 0.254765, -0.703229,
		-0.658328, 0.645265, -0.387604,
		0.355021, 0.720228, 0.596014,
		36.902939, 46.352200, 48.424721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595852, 46.445332, 47.607613>,  <36.654423, 45.848042, 48.007511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595852, 46.445332, 47.607613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860138, 46.503487, 47.902184>,  <37.018707, 46.538380, 48.078926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860138, 46.503487, 47.902184>,  <36.595852, 46.445332, 47.607613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860138, 46.503487, 47.902184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696466, 0.247204, -0.673665,
		-0.279987, 0.957995, 0.062076,
		0.660713, 0.145384, 0.736425,
		37.058353, 46.547100, 48.123112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991463, 47.019085, 47.435062>,  <36.595852, 46.445332, 47.607613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991463, 47.019085, 47.435062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205635, 46.846802, 47.725662>,  <37.334137, 46.743431, 47.900021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205635, 46.846802, 47.725662>,  <36.991463, 47.019085, 47.435062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205635, 46.846802, 47.725662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844557, 0.279424, -0.456778,
		-0.006262, 0.858143, 0.513373,
		0.535429, -0.430712, 0.726500,
		37.366264, 46.717587, 47.943611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443016, 47.555836, 47.681427>,  <36.991463, 47.019085, 47.435062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443016, 47.555836, 47.681427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570454, 47.179710, 47.729286>,  <37.646915, 46.954037, 47.758003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570454, 47.179710, 47.729286>,  <37.443016, 47.555836, 47.681427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570454, 47.179710, 47.729286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785818, 0.191421, -0.588089,
		0.530082, 0.281383, 0.799898,
		0.318596, -0.940309, 0.119647,
		37.666031, 46.897617, 47.765179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994331, 47.674187, 48.004215>,  <37.443016, 47.555836, 47.681427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994331, 47.674187, 48.004215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058823, 47.309708, 47.852570>,  <38.097519, 47.091022, 47.761581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058823, 47.309708, 47.852570>,  <37.994331, 47.674187, 48.004215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058823, 47.309708, 47.852570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775444, 0.354583, -0.522452,
		0.610484, -0.209749, 0.763750,
		0.161229, -0.911195, -0.379116,
		38.107193, 47.036350, 47.738834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656754, 47.646637, 47.869003>,  <37.994331, 47.674187, 48.004215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656754, 47.646637, 47.869003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548538, 47.326797, 47.654545>,  <38.483608, 47.134895, 47.525871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548538, 47.326797, 47.654545>,  <38.656754, 47.646637, 47.869003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548538, 47.326797, 47.654545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702346, 0.216957, -0.677967,
		0.658421, -0.559976, 0.502899,
		-0.270538, -0.799597, -0.536147,
		38.467377, 47.086918, 47.493702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240543, 47.222153, 47.771988>,  <38.656754, 47.646637, 47.869003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240543, 47.222153, 47.771988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987511, 47.135826, 47.474461>,  <38.835693, 47.084030, 47.295944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987511, 47.135826, 47.474461>,  <39.240543, 47.222153, 47.771988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987511, 47.135826, 47.474461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675854, 0.315212, -0.666231,
		0.378243, -0.924157, -0.053537,
		-0.632577, -0.215814, -0.743822,
		38.797737, 47.071083, 47.251312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659119, 46.808983, 47.239616>,  <39.240543, 47.222153, 47.771988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659119, 46.808983, 47.239616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336830, 46.913773, 47.027134>,  <39.143456, 46.976646, 46.899643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336830, 46.913773, 47.027134>,  <39.659119, 46.808983, 47.239616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336830, 46.913773, 47.027134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583219, 0.194540, -0.788676,
		-0.103271, -0.945264, -0.309533,
		-0.805724, 0.261973, -0.531205,
		39.095112, 46.992363, 46.867771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642487, 46.466339, 46.555733>,  <39.659119, 46.808983, 47.239616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642487, 46.466339, 46.555733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427780, 46.801315, 46.514614>,  <39.298954, 47.002300, 46.489941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427780, 46.801315, 46.514614>,  <39.642487, 46.466339, 46.555733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427780, 46.801315, 46.514614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533212, 0.242269, -0.810550,
		-0.653885, -0.489891, -0.576577,
		-0.536768, 0.837444, -0.102800,
		39.266750, 47.052547, 46.483772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504646, 46.525097, 45.918594>,  <39.642487, 46.466339, 46.555733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504646, 46.525097, 45.918594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376377, 46.898323, 45.983772>,  <39.299416, 47.122261, 46.022877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376377, 46.898323, 45.983772>,  <39.504646, 46.525097, 45.918594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376377, 46.898323, 45.983772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193838, 0.233032, -0.952955,
		-0.927144, -0.274003, -0.255591,
		-0.320674, 0.933069, 0.162942,
		39.280174, 47.178246, 46.032654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012466, 46.719666, 45.287712>,  <39.504646, 46.525097, 45.918594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012466, 46.719666, 45.287712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148628, 47.053741, 45.460487>,  <39.230328, 47.254189, 45.564152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148628, 47.053741, 45.460487>,  <39.012466, 46.719666, 45.287712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148628, 47.053741, 45.460487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201677, 0.383833, -0.901110,
		-0.918395, 0.393857, -0.037780,
		0.340407, 0.835194, 0.431942,
		39.250751, 47.304298, 45.590069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841305, 47.160652, 44.759212>,  <39.012466, 46.719666, 45.287712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841305, 47.160652, 44.759212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128120, 47.338531, 44.973911>,  <39.300209, 47.445259, 45.102730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128120, 47.338531, 44.973911>,  <38.841305, 47.160652, 44.759212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128120, 47.338531, 44.973911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443242, 0.303398, -0.843497,
		-0.537952, 0.842728, 0.020437,
		0.717039, 0.444702, 0.536745,
		39.343231, 47.471943, 45.134933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928509, 47.743332, 44.393421>,  <38.841305, 47.160652, 44.759212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928509, 47.743332, 44.393421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260246, 47.722321, 44.615925>,  <39.459290, 47.709713, 44.749428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260246, 47.722321, 44.615925>,  <38.928509, 47.743332, 44.393421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260246, 47.722321, 44.615925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530775, 0.385046, -0.754995,
		-0.174526, 0.921401, 0.347218,
		0.829348, -0.052528, 0.556257,
		39.509052, 47.706562, 44.782803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276237, 48.360207, 44.364323>,  <38.928509, 47.743332, 44.393421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276237, 48.360207, 44.364323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.588539, 48.139900, 44.482361>,  <39.775921, 48.007717, 44.553185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.588539, 48.139900, 44.482361>,  <39.276237, 48.360207, 44.364323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588539, 48.139900, 44.482361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506697, 0.281721, -0.814795,
		0.365625, 0.785679, 0.499025,
		0.780753, -0.550765, 0.295097,
		39.822765, 47.974670, 44.570889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879730, 48.780930, 44.259270>,  <39.276237, 48.360207, 44.364323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879730, 48.780930, 44.259270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.045418, 48.417503, 44.280945>,  <40.144829, 48.199448, 44.293949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.045418, 48.417503, 44.280945>,  <39.879730, 48.780930, 44.259270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045418, 48.417503, 44.280945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667017, 0.262511, -0.697264,
		0.619283, 0.324963, 0.714764,
		0.414218, -0.908563, 0.054187,
		40.169682, 48.144936, 44.297199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518810, 48.912094, 44.300533>,  <39.879730, 48.780930, 44.259270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518810, 48.912094, 44.300533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499950, 48.527908, 44.190784>,  <40.488632, 48.297398, 44.124935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499950, 48.527908, 44.190784>,  <40.518810, 48.912094, 44.300533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499950, 48.527908, 44.190784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712933, 0.160030, -0.682727,
		0.699644, -0.227803, 0.677203,
		-0.047154, -0.960467, -0.274373,
		40.485806, 48.239769, 44.108471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.167744, 48.670364, 44.298985>,  <40.518810, 48.912094, 44.300533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.167744, 48.670364, 44.298985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961029, 48.441574, 44.044186>,  <40.836998, 48.304298, 43.891308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961029, 48.441574, 44.044186>,  <41.167744, 48.670364, 44.298985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961029, 48.441574, 44.044186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571259, 0.323794, -0.754202,
		0.637645, -0.753655, 0.159416,
		-0.516790, -0.571981, -0.636998,
		40.805992, 48.269981, 43.853085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718563, 48.219376, 43.881268>,  <41.167744, 48.670364, 44.298985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.718563, 48.219376, 43.881268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391006, 48.218536, 43.651691>,  <41.194473, 48.218033, 43.513947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391006, 48.218536, 43.651691>,  <41.718563, 48.219376, 43.881268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.391006, 48.218536, 43.651691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560399, 0.213029, -0.800357,
		0.123943, -0.977044, -0.173274,
		-0.818896, -0.002096, -0.573938,
		41.145336, 48.217907, 43.479511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.025803, 42.890827, 46.064407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.058887, 42.499405, 45.988949>,  <33.078739, 42.264553, 45.943676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.058887, 42.499405, 45.988949>,  <33.025803, 42.890827, 46.064407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058887, 42.499405, 45.988949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789223, 0.179904, -0.587164,
		0.608511, -0.100316, 0.787179,
		0.082715, -0.978556, -0.188645,
		33.083702, 42.205837, 45.932354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734066, 42.737583, 46.104984>,  <33.025803, 42.890827, 46.064407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734066, 42.737583, 46.104984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.564026, 42.437546, 45.902340>,  <33.462002, 42.257523, 45.780754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.564026, 42.437546, 45.902340>,  <33.734066, 42.737583, 46.104984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564026, 42.437546, 45.902340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821119, -0.084065, -0.564533,
		0.380861, -0.655972, 0.651649,
		-0.425099, -0.750090, -0.506613,
		33.436497, 42.212521, 45.750355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322189, 42.223003, 46.069988>,  <33.734066, 42.737583, 46.104984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322189, 42.223003, 46.069988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.054661, 42.141876, 45.783897>,  <33.894146, 42.093201, 45.612244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.054661, 42.141876, 45.783897>,  <34.322189, 42.223003, 46.069988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054661, 42.141876, 45.783897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741060, -0.105197, -0.663147,
		0.059260, -0.973549, 0.220659,
		-0.668819, -0.202820, -0.715224,
		33.854015, 42.081032, 45.569328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651554, 41.774055, 45.716618>,  <34.322189, 42.223003, 46.069988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651554, 41.774055, 45.716618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.374493, 41.927414, 45.472244>,  <34.208256, 42.019428, 45.325619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.374493, 41.927414, 45.472244>,  <34.651554, 41.774055, 45.716618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374493, 41.927414, 45.472244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679266, 0.061904, -0.731277,
		-0.242553, -0.921505, -0.303308,
		-0.692652, 0.383400, -0.610932,
		34.166698, 42.042435, 45.288963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664211, 41.345428, 45.099560>,  <34.651554, 41.774055, 45.716618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664211, 41.345428, 45.099560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.458942, 41.665512, 44.975414>,  <34.335781, 41.857563, 44.900925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.458942, 41.665512, 44.975414>,  <34.664211, 41.345428, 45.099560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458942, 41.665512, 44.975414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644893, 0.120872, -0.754655,
		-0.566364, -0.587420, -0.578074,
		-0.513172, 0.800205, -0.310365,
		34.304993, 41.905575, 44.882305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537483, 41.273628, 44.379887>,  <34.664211, 41.345428, 45.099560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537483, 41.273628, 44.379887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.514229, 41.667999, 44.442581>,  <34.500275, 41.904621, 44.480198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.514229, 41.667999, 44.442581>,  <34.537483, 41.273628, 44.379887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514229, 41.667999, 44.442581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716530, 0.150530, -0.681121,
		-0.695130, 0.072708, -0.715198,
		-0.058136, 0.985928, 0.156735,
		34.496788, 41.963779, 44.489601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517647, 41.539150, 43.690132>,  <34.537483, 41.273628, 44.379887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517647, 41.539150, 43.690132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.630833, 41.843819, 43.923302>,  <34.698742, 42.026619, 44.063202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.630833, 41.843819, 43.923302>,  <34.517647, 41.539150, 43.690132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630833, 41.843819, 43.923302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733963, 0.219291, -0.642814,
		-0.617439, 0.609734, -0.496985,
		0.282961, 0.761667, 0.582921,
		34.715721, 42.072319, 44.098179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726410, 42.052643, 43.195316>,  <34.517647, 41.539150, 43.690132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726410, 42.052643, 43.195316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.884525, 42.187988, 43.536903>,  <34.979393, 42.269196, 43.741856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.884525, 42.187988, 43.536903>,  <34.726410, 42.052643, 43.195316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884525, 42.187988, 43.536903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668543, 0.531569, -0.520082,
		-0.629919, 0.776494, -0.016089,
		0.395288, 0.338366, 0.853965,
		35.003113, 42.289497, 43.793095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833447, 42.799412, 43.098301>,  <34.726410, 42.052643, 43.195316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833447, 42.799412, 43.098301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.069557, 42.659958, 43.389515>,  <35.211224, 42.576286, 43.564243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.069557, 42.659958, 43.389515>,  <34.833447, 42.799412, 43.098301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069557, 42.659958, 43.389515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794204, 0.412056, -0.446599,
		-0.144288, 0.841821, 0.520114,
		0.590273, -0.348638, 0.728032,
		35.246639, 42.555367, 43.607925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375805, 43.258980, 43.105190>,  <34.833447, 42.799412, 43.098301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375805, 43.258980, 43.105190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.555561, 42.956047, 43.294716>,  <35.663414, 42.774288, 43.408432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.555561, 42.956047, 43.294716>,  <35.375805, 43.258980, 43.105190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555561, 42.956047, 43.294716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881810, 0.460983, -0.099530,
		-0.143045, 0.462545, 0.874980,
		0.449388, -0.757329, 0.473818,
		35.690376, 42.728848, 43.436863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789486, 43.546169, 43.703995>,  <35.375805, 43.258980, 43.105190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789486, 43.546169, 43.703995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.962433, 43.195175, 43.620972>,  <36.066200, 42.984581, 43.571156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.962433, 43.195175, 43.620972>,  <35.789486, 43.546169, 43.703995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962433, 43.195175, 43.620972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875432, 0.463656, -0.136538,
		0.216047, -0.122671, 0.968646,
		0.432369, -0.877482, -0.207562,
		36.092144, 42.931931, 43.558704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433933, 43.446892, 44.058914>,  <35.789486, 43.546169, 43.703995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433933, 43.446892, 44.058914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.469559, 43.206985, 43.740833>,  <36.490932, 43.063042, 43.549984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.469559, 43.206985, 43.740833>,  <36.433933, 43.446892, 44.058914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469559, 43.206985, 43.740833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910992, 0.371834, -0.178421,
		0.402694, -0.708531, 0.579501,
		0.089061, -0.599769, -0.795201,
		36.496277, 43.027054, 43.502274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124977, 43.263981, 44.047611>,  <36.433933, 43.446892, 44.058914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124977, 43.263981, 44.047611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.018974, 43.147758, 43.679840>,  <36.955372, 43.078026, 43.459179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.018974, 43.147758, 43.679840>,  <37.124977, 43.263981, 44.047611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018974, 43.147758, 43.679840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933199, 0.162733, -0.320401,
		0.242715, -0.942919, 0.228020,
		-0.265006, -0.290554, -0.919429,
		36.939472, 43.060593, 43.404011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704662, 42.827423, 43.679745>,  <37.124977, 43.263981, 44.047611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704662, 42.827423, 43.679745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.474548, 43.010460, 43.408554>,  <37.336479, 43.120281, 43.245838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.474548, 43.010460, 43.408554>,  <37.704662, 42.827423, 43.679745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474548, 43.010460, 43.408554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817955, 0.321916, -0.476781,
		0.000080, -0.828841, -0.559484,
		-0.575282, 0.457594, -0.677981,
		37.301964, 43.147739, 43.205158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973400, 42.699337, 43.009594>,  <37.704662, 42.827423, 43.679745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973400, 42.699337, 43.009594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.740883, 43.017265, 42.939888>,  <37.601372, 43.208023, 42.898064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.740883, 43.017265, 42.939888>,  <37.973400, 42.699337, 43.009594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740883, 43.017265, 42.939888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753830, 0.445406, -0.483066,
		-0.306332, -0.412166, -0.858068,
		-0.581292, 0.794816, -0.174261,
		37.566494, 43.255711, 42.887611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276932, 42.916729, 42.464436>,  <37.973400, 42.699337, 43.009594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276932, 42.916729, 42.464436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.049778, 43.236839, 42.541458>,  <37.913486, 43.428905, 42.587669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.049778, 43.236839, 42.541458>,  <38.276932, 42.916729, 42.464436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049778, 43.236839, 42.541458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662849, 0.583316, -0.469440,
		-0.487998, -0.138953, -0.861713,
		-0.567881, 0.800271, 0.192553,
		37.879414, 43.476921, 42.599224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170097, 43.339588, 41.796394>,  <38.276932, 42.916729, 42.464436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170097, 43.339588, 41.796394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.134644, 43.570549, 42.121048>,  <38.113373, 43.709126, 42.315842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.134644, 43.570549, 42.121048>,  <38.170097, 43.339588, 41.796394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134644, 43.570549, 42.121048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699311, 0.616324, -0.362090,
		-0.709301, 0.535492, -0.458410,
		-0.088633, 0.577402, 0.811635,
		38.108055, 43.743771, 42.364540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110985, 43.973396, 41.548615>,  <38.170097, 43.339588, 41.796394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110985, 43.973396, 41.548615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.232979, 44.001846, 41.928493>,  <38.306175, 44.018917, 42.156422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.232979, 44.001846, 41.928493>,  <38.110985, 43.973396, 41.548615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232979, 44.001846, 41.928493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719230, 0.636450, -0.278639,
		-0.624254, 0.768031, 0.142951,
		0.304985, 0.071127, 0.949697,
		38.324474, 44.023186, 42.213402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245262, 44.676464, 41.468723>,  <38.110985, 43.973396, 41.548615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245262, 44.676464, 41.468723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.390289, 44.583298, 41.829678>,  <38.477306, 44.527397, 42.046249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.390289, 44.583298, 41.829678>,  <38.245262, 44.676464, 41.468723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390289, 44.583298, 41.829678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734097, 0.667892, -0.122564,
		-0.574147, 0.706873, 0.413141,
		0.362570, -0.232916, 0.902382,
		38.499062, 44.513424, 42.100391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431065, 45.360405, 41.727551>,  <38.245262, 44.676464, 41.468723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431065, 45.360405, 41.727551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.623249, 45.081665, 41.940548>,  <38.738560, 44.914421, 42.068348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.623249, 45.081665, 41.940548>,  <38.431065, 45.360405, 41.727551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623249, 45.081665, 41.940548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763188, 0.631354, 0.137610,
		-0.432086, 0.340277, 0.835173,
		0.480464, -0.696853, 0.532494,
		38.767387, 44.872608, 42.100296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683979, 45.571316, 42.451721>,  <38.431065, 45.360405, 41.727551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683979, 45.571316, 42.451721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.920563, 45.286713, 42.299969>,  <39.062515, 45.115952, 42.208916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.920563, 45.286713, 42.299969>,  <38.683979, 45.571316, 42.451721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920563, 45.286713, 42.299969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763646, 0.645333, -0.019750,
		0.258880, -0.278033, 0.925029,
		0.591461, -0.711508, -0.379382,
		39.098000, 45.073261, 42.186153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312897, 45.680786, 42.732330>,  <38.683979, 45.571316, 42.451721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312897, 45.680786, 42.732330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.388165, 45.447281, 42.416405>,  <39.433327, 45.307178, 42.226849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.388165, 45.447281, 42.416405>,  <39.312897, 45.680786, 42.732330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388165, 45.447281, 42.416405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843125, 0.508464, -0.174942,
		0.503718, -0.632994, 0.587867,
		0.188172, -0.583766, -0.789815,
		39.444614, 45.272152, 42.179459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413284, 46.282604, 42.301502>,  <39.312897, 45.680786, 42.732330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413284, 46.282604, 42.301502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.270046, 46.635887, 42.180370>,  <39.184101, 46.847858, 42.107693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.270046, 46.635887, 42.180370>,  <39.413284, 46.282604, 42.301502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270046, 46.635887, 42.180370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921653, -0.282480, 0.266009,
		0.149399, 0.374359, 0.915169,
		-0.358099, 0.883210, -0.302827,
		39.162617, 46.900848, 42.089523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929668, 46.326668, 42.744011>,  <39.413284, 46.282604, 42.301502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929668, 46.326668, 42.744011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.820122, 46.609329, 42.483047>,  <38.754395, 46.778927, 42.326469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.820122, 46.609329, 42.483047>,  <38.929668, 46.326668, 42.744011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820122, 46.609329, 42.483047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946198, -0.076409, 0.314438,
		0.172349, 0.703421, 0.689561,
		-0.273871, 0.706654, -0.652406,
		38.737961, 46.821327, 42.287327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589375, 46.832539, 43.109219>,  <38.929668, 46.326668, 42.744011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589375, 46.832539, 43.109219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.474869, 46.852974, 42.726505>,  <38.406166, 46.865234, 42.496876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.474869, 46.852974, 42.726505>,  <38.589375, 46.832539, 43.109219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474869, 46.852974, 42.726505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937764, -0.219834, 0.268836,
		-0.196599, 0.974198, 0.110842,
		-0.286266, 0.051091, -0.956787,
		38.388988, 46.868301, 42.439468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012470, 47.212929, 43.086056>,  <38.589375, 46.832539, 43.109219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012470, 47.212929, 43.086056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.988941, 46.997887, 42.749599>,  <37.974823, 46.868862, 42.547726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.988941, 46.997887, 42.749599>,  <38.012470, 47.212929, 43.086056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988941, 46.997887, 42.749599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964243, -0.187518, 0.187277,
		-0.258410, 0.822083, -0.507349,
		-0.058820, -0.537602, -0.841145,
		37.971294, 46.836605, 42.497257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363766, 47.356724, 42.868614>,  <38.012470, 47.212929, 43.086056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363766, 47.356724, 42.868614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.476521, 47.021408, 42.681931>,  <37.544174, 46.820221, 42.569920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.476521, 47.021408, 42.681931>,  <37.363766, 47.356724, 42.868614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476521, 47.021408, 42.681931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946610, -0.322302, 0.007160,
		-0.156423, 0.439772, -0.884383,
		0.281890, -0.838285, -0.466708,
		37.561089, 46.769924, 42.541920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908573, 47.199024, 42.347431>,  <37.363766, 47.356724, 42.868614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908573, 47.199024, 42.347431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.088242, 46.846260, 42.404675>,  <37.196045, 46.634602, 42.439018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.088242, 46.846260, 42.404675>,  <36.908573, 47.199024, 42.347431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088242, 46.846260, 42.404675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884876, -0.461253, -0.065114,
		0.123432, -0.097383, -0.987563,
		0.449175, -0.881908, 0.143106,
		37.222996, 46.581688, 42.447605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475914, 46.758030, 41.977879>,  <36.908573, 47.199024, 42.347431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475914, 46.758030, 41.977879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.682655, 46.528450, 42.231949>,  <36.806698, 46.390701, 42.384392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.682655, 46.528450, 42.231949>,  <36.475914, 46.758030, 41.977879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682655, 46.528450, 42.231949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847263, -0.449142, 0.283578,
		0.122522, -0.684726, -0.718428,
		0.516849, -0.573953, 0.635173,
		36.837711, 46.356262, 42.422501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138775, 46.097713, 41.908604>,  <36.475914, 46.758030, 41.977879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138775, 46.097713, 41.908604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.335693, 46.070969, 42.255745>,  <36.453846, 46.054924, 42.464031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.335693, 46.070969, 42.255745>,  <36.138775, 46.097713, 41.908604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335693, 46.070969, 42.255745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742281, -0.552975, 0.378467,
		0.454599, -0.830511, -0.321857,
		0.492300, -0.066857, 0.867854,
		36.483383, 46.050911, 42.516102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186337, 45.361076, 42.067158>,  <36.138775, 46.097713, 41.908604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186337, 45.361076, 42.067158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.215275, 45.556885, 42.414753>,  <36.232635, 45.674370, 42.623310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.215275, 45.556885, 42.414753>,  <36.186337, 45.361076, 42.067158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215275, 45.556885, 42.414753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697226, -0.598194, 0.395019,
		0.713192, -0.634456, 0.298032,
		0.072341, 0.489520, 0.868986,
		36.236977, 45.703739, 42.675449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055378, 44.846939, 42.629021>,  <36.186337, 45.361076, 42.067158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055378, 44.846939, 42.629021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.013840, 45.199631, 42.813095>,  <35.988918, 45.411247, 42.923538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.013840, 45.199631, 42.813095>,  <36.055378, 44.846939, 42.629021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013840, 45.199631, 42.813095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660570, -0.407044, 0.630843,
		0.743548, -0.238476, 0.624713,
		-0.103845, 0.881728, 0.460187,
		35.982685, 45.464149, 42.951153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007282, 44.702896, 43.414337>,  <36.055378, 44.846939, 42.629021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007282, 44.702896, 43.414337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.842659, 45.058090, 43.332253>,  <35.743885, 45.271206, 43.283001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.842659, 45.058090, 43.332253>,  <36.007282, 44.702896, 43.414337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842659, 45.058090, 43.332253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719015, -0.177986, 0.671817,
		0.560036, 0.424040, 0.711722,
		-0.411554, 0.887981, -0.205213,
		35.719193, 45.324486, 43.270687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029453, 45.040718, 44.058029>,  <36.007282, 44.702896, 43.414337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029453, 45.040718, 44.058029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.754551, 45.214958, 43.825500>,  <35.589611, 45.319504, 43.685986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.754551, 45.214958, 43.825500>,  <36.029453, 45.040718, 44.058029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754551, 45.214958, 43.825500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651444, -0.015512, 0.758538,
		0.321405, 0.900005, 0.294432,
		-0.687255, 0.435604, -0.581317,
		35.548374, 45.345638, 43.651104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703522, 45.479317, 44.505081>,  <36.029453, 45.040718, 44.058029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703522, 45.479317, 44.505081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.420120, 45.462425, 44.223305>,  <35.250080, 45.452290, 44.054237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.420120, 45.462425, 44.223305>,  <35.703522, 45.479317, 44.505081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420120, 45.462425, 44.223305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705592, 0.024216, 0.708204,
		-0.012848, 0.998815, -0.046953,
		-0.708501, -0.042229, -0.704445,
		35.207569, 45.449757, 44.011971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242805, 45.968739, 44.705463>,  <35.703522, 45.479317, 44.505081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242805, 45.968739, 44.705463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.050877, 45.711899, 44.466305>,  <34.935719, 45.557796, 44.322811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.050877, 45.711899, 44.466305>,  <35.242805, 45.968739, 44.705463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050877, 45.711899, 44.466305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770162, -0.018176, 0.637589,
		-0.420261, 0.766409, -0.485796,
		-0.479824, -0.642096, -0.597898,
		34.906929, 45.519272, 44.286934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571651, 46.251896, 44.600910>,  <35.242805, 45.968739, 44.705463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571651, 46.251896, 44.600910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.520744, 45.872818, 44.483826>,  <34.490200, 45.645370, 44.413574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.520744, 45.872818, 44.483826>,  <34.571651, 46.251896, 44.600910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520744, 45.872818, 44.483826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763150, -0.094947, 0.639208,
		-0.633565, 0.304737, -0.711147,
		-0.127269, -0.947692, -0.292715,
		34.482563, 45.588509, 44.396011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879818, 46.082634, 44.651077>,  <34.571651, 46.251896, 44.600910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879818, 46.082634, 44.651077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.987839, 45.697495, 44.650982>,  <34.052650, 45.466412, 44.650925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.987839, 45.697495, 44.650982>,  <33.879818, 46.082634, 44.651077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987839, 45.697495, 44.650982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782115, -0.219505, 0.583193,
		-0.561577, -0.157306, -0.812334,
		0.270051, -0.962846, -0.000237,
		34.068855, 45.408642, 44.650909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257530, 45.837814, 44.716660>,  <33.879818, 46.082634, 44.651077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257530, 45.837814, 44.716660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.504646, 45.540878, 44.820396>,  <33.652916, 45.362717, 44.882637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.504646, 45.540878, 44.820396>,  <33.257530, 45.837814, 44.716660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504646, 45.540878, 44.820396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644701, -0.289347, 0.707559,
		-0.450213, -0.604321, -0.657347,
		0.617794, -0.742344, 0.259339,
		33.689983, 45.318176, 44.898197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886131, 45.254395, 44.654484>,  <33.257530, 45.837814, 44.716660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886131, 45.254395, 44.654484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.167076, 45.159309, 44.922867>,  <33.335644, 45.102261, 45.083897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.167076, 45.159309, 44.922867>,  <32.886131, 45.254395, 44.654484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167076, 45.159309, 44.922867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707067, -0.341705, 0.619107,
		0.082100, -0.909248, -0.408079,
		0.702364, -0.237710, 0.670953,
		33.377785, 45.087997, 45.124153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<32.621380, 44.473389, 44.915886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.870968, 44.658699, 45.167610>,  <33.020721, 44.769886, 45.318645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.870968, 44.658699, 45.167610>,  <32.621380, 44.473389, 44.915886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870968, 44.658699, 45.167610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342043, -0.562158, 0.752984,
		0.702613, -0.685093, -0.192310,
		0.623973, 0.463278, 0.629311,
		33.058159, 44.797684, 45.356403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945343, 43.989017, 45.323948>,  <32.621380, 44.473389, 44.915886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945343, 43.989017, 45.323948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.981949, 44.321419, 45.543423>,  <33.003910, 44.520859, 45.675106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.981949, 44.321419, 45.543423>,  <32.945343, 43.989017, 45.323948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981949, 44.321419, 45.543423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215516, -0.521412, 0.825641,
		0.972203, -0.193805, 0.131380,
		0.091511, 0.831005, 0.548686,
		33.009403, 44.570721, 45.708027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246918, 43.806110, 45.944584>,  <32.945343, 43.989017, 45.323948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246918, 43.806110, 45.944584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.103050, 44.159470, 46.064743>,  <33.016727, 44.371487, 46.136837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.103050, 44.159470, 46.064743>,  <33.246918, 43.806110, 45.944584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103050, 44.159470, 46.064743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098222, -0.356001, 0.929309,
		0.927894, 0.304741, 0.214813,
		-0.359673, 0.883400, 0.300399,
		32.995148, 44.424488, 46.154861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535728, 43.994919, 46.581215>,  <33.246918, 43.806110, 45.944584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535728, 43.994919, 46.581215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.202171, 44.215637, 46.586098>,  <33.002037, 44.348068, 46.589027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.202171, 44.215637, 46.586098>,  <33.535728, 43.994919, 46.581215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202171, 44.215637, 46.586098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233411, -0.372610, 0.898154,
		0.500148, 0.746112, 0.439511,
		-0.833889, 0.551797, 0.012209,
		32.952003, 44.381176, 46.589760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471336, 44.160107, 47.203716>,  <33.535728, 43.994919, 46.581215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471336, 44.160107, 47.203716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.092518, 44.204338, 47.083138>,  <32.865227, 44.230877, 47.010788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.092518, 44.204338, 47.083138>,  <33.471336, 44.160107, 47.203716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092518, 44.204338, 47.083138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319509, -0.231509, 0.918868,
		0.031815, 0.966529, 0.254579,
		-0.947049, 0.110574, -0.301449,
		32.808403, 44.237511, 46.992702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139294, 44.556110, 47.735283>,  <33.471336, 44.160107, 47.203716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139294, 44.556110, 47.735283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.816429, 44.423965, 47.539589>,  <32.622711, 44.344681, 47.422173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.816429, 44.423965, 47.539589>,  <33.139294, 44.556110, 47.735283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816429, 44.423965, 47.539589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357739, -0.385509, 0.850532,
		-0.469587, 0.861536, 0.192986,
		-0.807162, -0.330361, -0.489236,
		32.574280, 44.324856, 47.392818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545692, 44.798450, 48.136730>,  <33.139294, 44.556110, 47.735283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545692, 44.798450, 48.136730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.401634, 44.496979, 47.916817>,  <32.315197, 44.316097, 47.784866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.401634, 44.496979, 47.916817>,  <32.545692, 44.798450, 48.136730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401634, 44.496979, 47.916817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583302, -0.278001, 0.763200,
		-0.728047, 0.595558, -0.339498,
		-0.360149, -0.753675, -0.549788,
		32.293591, 44.270878, 47.751881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816744, 44.772289, 48.093365>,  <32.545692, 44.798450, 48.136730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816744, 44.772289, 48.093365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.871750, 44.394089, 47.975304>,  <31.904753, 44.167168, 47.904469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.871750, 44.394089, 47.975304>,  <31.816744, 44.772289, 48.093365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871750, 44.394089, 47.975304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631539, -0.313251, 0.709248,
		-0.763052, 0.088866, -0.640199,
		0.137515, -0.945504, -0.295149,
		31.913004, 44.110439, 47.886761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177967, 44.536865, 47.749863>,  <31.816744, 44.772289, 48.093365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177967, 44.536865, 47.749863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.372959, 44.218018, 47.892387>,  <31.489954, 44.026707, 47.977901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.372959, 44.218018, 47.892387>,  <31.177967, 44.536865, 47.749863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.372959, 44.218018, 47.892387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800847, -0.245613, 0.546186,
		-0.347862, -0.551606, -0.758104,
		0.487480, -0.797123, 0.356313,
		31.519203, 43.978882, 47.999283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710020, 44.070553, 47.809830>,  <31.177967, 44.536865, 47.749863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710020, 44.070553, 47.809830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.981163, 43.898239, 48.048134>,  <31.143848, 43.794849, 48.191116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.981163, 43.898239, 48.048134>,  <30.710020, 44.070553, 47.809830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.981163, 43.898239, 48.048134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734658, -0.366036, 0.571223,
		-0.028006, -0.824888, -0.564602,
		0.677860, -0.430787, 0.595759,
		31.184521, 43.769005, 48.226860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.443501, 43.434452, 47.903244>,  <30.710020, 44.070553, 47.809830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.443501, 43.434452, 47.903244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.710960, 43.505585, 48.192043>,  <30.871437, 43.548264, 48.365322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.710960, 43.505585, 48.192043>,  <30.443501, 43.434452, 47.903244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710960, 43.505585, 48.192043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624388, -0.392999, 0.675049,
		0.403790, -0.902180, -0.151743,
		0.668650, 0.177831, 0.721999,
		30.911556, 43.558933, 48.408642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421745, 42.848289, 48.332321>,  <30.443501, 43.434452, 47.903244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421745, 42.848289, 48.332321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.600925, 43.139160, 48.540382>,  <30.708435, 43.313683, 48.665218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.600925, 43.139160, 48.540382>,  <30.421745, 42.848289, 48.332321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.600925, 43.139160, 48.540382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566790, -0.218965, 0.794231,
		0.691439, -0.650595, 0.314068,
		0.447952, 0.727173, 0.520151,
		30.735312, 43.357311, 48.696426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.595346, 42.505138, 48.924419>,  <30.421745, 42.848289, 48.332321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.595346, 42.505138, 48.924419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.576088, 42.885902, 49.045441>,  <30.564533, 43.114361, 49.118053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.576088, 42.885902, 49.045441>,  <30.595346, 42.505138, 48.924419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576088, 42.885902, 49.045441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564778, -0.275782, 0.777798,
		0.823838, -0.133429, 0.550898,
		-0.048147, 0.951914, 0.302558,
		30.561644, 43.171478, 49.136208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.721012, 42.496693, 49.613964>,  <30.595346, 42.505138, 48.924419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.721012, 42.496693, 49.613964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.526541, 42.845131, 49.586178>,  <30.409859, 43.054195, 49.569504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.526541, 42.845131, 49.586178>,  <30.721012, 42.496693, 49.613964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526541, 42.845131, 49.586178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499056, -0.211515, 0.840360,
		0.717339, 0.443233, 0.537559,
		-0.486177, 0.871095, -0.069470,
		30.380688, 43.106461, 49.565338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697823, 42.888737, 50.345654>,  <30.721012, 42.496693, 49.613964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697823, 42.888737, 50.345654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.405468, 43.047668, 50.123688>,  <30.230055, 43.143028, 49.990509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.405468, 43.047668, 50.123688>,  <30.697823, 42.888737, 50.345654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405468, 43.047668, 50.123688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597977, 0.019112, 0.801286,
		0.328979, 0.917477, 0.223624,
		-0.730888, 0.397329, -0.554918,
		30.186201, 43.166866, 49.957214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.452475, 43.514957, 50.776463>,  <30.697823, 42.888737, 50.345654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.452475, 43.514957, 50.776463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.155464, 43.437019, 50.520123>,  <29.977257, 43.390255, 50.366318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.155464, 43.437019, 50.520123>,  <30.452475, 43.514957, 50.776463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.155464, 43.437019, 50.520123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649479, -0.024525, 0.759984,
		-0.163798, 0.980527, -0.108339,
		-0.742528, -0.194848, -0.640848,
		29.932705, 43.378567, 50.327869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007368, 44.061897, 50.788975>,  <30.452475, 43.514957, 50.776463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007368, 44.061897, 50.788975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.811430, 43.734177, 50.669773>,  <29.693867, 43.537544, 50.598251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.811430, 43.734177, 50.669773>,  <30.007368, 44.061897, 50.788975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.811430, 43.734177, 50.669773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667280, 0.132362, 0.732951,
		-0.561062, 0.557881, -0.611538,
		-0.489844, -0.819298, -0.298000,
		29.664476, 43.488388, 50.580372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.266712, 44.292145, 50.820583>,  <30.007368, 44.061897, 50.788975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.266712, 44.292145, 50.820583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.291733, 43.893021, 50.829220>,  <29.306746, 43.653545, 50.834400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.291733, 43.893021, 50.829220>,  <29.266712, 44.292145, 50.820583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291733, 43.893021, 50.829220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694503, -0.027985, 0.718946,
		-0.716766, -0.059964, -0.694731,
		0.062553, -0.997808, 0.021587,
		29.310499, 43.593678, 50.835697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595495, 44.077118, 50.703465>,  <29.266712, 44.292145, 50.820583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.595495, 44.077118, 50.703465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.788355, 43.789391, 50.903511>,  <28.904070, 43.616753, 51.023537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.788355, 43.789391, 50.903511>,  <28.595495, 44.077118, 50.703465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.788355, 43.789391, 50.903511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737843, -0.025622, 0.674485,
		-0.472356, -0.694208, -0.543098,
		0.482148, -0.719319, 0.500114,
		28.932999, 43.573597, 51.053547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.144505, 43.693176, 51.075340>,  <28.595495, 44.077118, 50.703465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.144505, 43.693176, 51.075340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.441628, 43.518631, 51.278446>,  <28.619902, 43.413902, 51.400311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.441628, 43.518631, 51.278446>,  <28.144505, 43.693176, 51.075340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.441628, 43.518631, 51.278446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612939, -0.138137, 0.777961,
		-0.269333, -0.889103, -0.370074,
		0.742809, -0.436364, 0.507762,
		28.664471, 43.387722, 51.430775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.724344, 43.277431, 51.566513>,  <28.144505, 43.693176, 51.075340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.724344, 43.277431, 51.566513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.097500, 43.244789, 51.706833>,  <28.321392, 43.225204, 51.791023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.097500, 43.244789, 51.706833>,  <27.724344, 43.277431, 51.566513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.097500, 43.244789, 51.706833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354577, -0.037189, 0.934287,
		-0.063222, -0.995969, -0.063638,
		0.932887, -0.081632, 0.350797,
		28.377367, 43.220306, 51.812073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.655495, 42.783363, 52.192112>,  <27.724344, 43.277431, 51.566513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.655495, 42.783363, 52.192112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.990776, 42.993156, 52.251881>,  <28.191946, 43.119034, 52.287743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.990776, 42.993156, 52.251881>,  <27.655495, 42.783363, 52.192112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.990776, 42.993156, 52.251881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279617, 0.178089, 0.943450,
		0.468218, -0.832584, 0.295931,
		0.838204, 0.524488, 0.149420,
		28.242237, 43.150501, 52.296707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.531042, 42.077576, 52.173584>,  <27.655495, 42.783363, 52.192112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.531042, 42.077576, 52.173584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.463825, 41.731369, 51.984840>,  <27.423496, 41.523647, 51.871593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.463825, 41.731369, 51.984840>,  <27.531042, 42.077576, 52.173584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.463825, 41.731369, 51.984840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787975, -0.405553, 0.463272,
		-0.592332, -0.293965, 0.750152,
		-0.168041, -0.865512, -0.471859,
		27.413414, 41.471714, 51.843281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.747921, 41.317814, 52.332649>,  <27.531042, 42.077576, 52.173584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.747921, 41.317814, 52.332649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.877880, 40.939529, 52.336071>,  <27.955854, 40.712559, 52.338123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.877880, 40.939529, 52.336071>,  <27.747921, 41.317814, 52.332649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.877880, 40.939529, 52.336071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869362, 0.295081, -0.396404,
		0.372359, 0.136230, 0.918036,
		0.324897, -0.945711, 0.008557,
		27.975349, 40.655815, 52.338638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.464701, 41.305935, 52.377853>,  <27.747921, 41.317814, 52.332649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.464701, 41.305935, 52.377853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.425308, 40.933365, 52.237713>,  <28.401672, 40.709824, 52.153629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.425308, 40.933365, 52.237713>,  <28.464701, 41.305935, 52.377853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.425308, 40.933365, 52.237713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903101, 0.064222, -0.424600,
		0.417984, -0.358216, 0.834848,
		-0.098483, -0.931427, -0.350349,
		28.395763, 40.653938, 52.132607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.175249, 40.974327, 52.512684>,  <28.464701, 41.305935, 52.377853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.175249, 40.974327, 52.512684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.016174, 40.748901, 52.223064>,  <28.920729, 40.613647, 52.049294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.016174, 40.748901, 52.223064>,  <29.175249, 40.974327, 52.512684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.016174, 40.748901, 52.223064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874421, 0.006226, -0.485128,
		0.277908, -0.826050, 0.490315,
		-0.397688, -0.563562, -0.724046,
		28.896868, 40.579834, 52.005852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.784904, 40.638916, 52.148876>,  <29.175249, 40.974327, 52.512684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.784904, 40.638916, 52.148876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.473803, 40.539818, 51.917801>,  <29.287142, 40.480358, 51.779156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.473803, 40.539818, 51.917801>,  <29.784904, 40.638916, 52.148876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.473803, 40.539818, 51.917801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620572, -0.156513, -0.768371,
		0.099946, -0.956099, 0.275474,
		-0.777754, -0.247746, -0.577686,
		29.240477, 40.465492, 51.744495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907917, 39.988094, 51.865120>,  <29.784904, 40.638916, 52.148876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907917, 39.988094, 51.865120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.674938, 40.195564, 51.614765>,  <29.535151, 40.320045, 51.464550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.674938, 40.195564, 51.614765>,  <29.907917, 39.988094, 51.865120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.674938, 40.195564, 51.614765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715360, -0.038597, -0.697690,
		-0.386029, -0.854102, -0.348556,
		-0.582445, 0.518672, -0.625890,
		29.500204, 40.351166, 51.426998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944128, 39.550255, 51.258839>,  <29.907917, 39.988094, 51.865120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.944128, 39.550255, 51.258839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.838289, 39.915596, 51.135044>,  <29.774786, 40.134800, 51.060768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.838289, 39.915596, 51.135044>,  <29.944128, 39.550255, 51.258839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.838289, 39.915596, 51.135044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666893, -0.058513, -0.742852,
		-0.696592, -0.402951, -0.593624,
		-0.264599, 0.913349, -0.309485,
		29.758909, 40.189602, 51.042198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.939587, 39.542171, 50.441967>,  <29.944128, 39.550255, 51.258839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.939587, 39.542171, 50.441967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.961252, 39.926834, 50.549503>,  <29.974251, 40.157631, 50.614025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.961252, 39.926834, 50.549503>,  <29.939587, 39.542171, 50.441967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.961252, 39.926834, 50.549503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675609, 0.162960, -0.719025,
		-0.735268, 0.220576, -0.640880,
		0.054162, 0.961660, 0.268843,
		29.977501, 40.215332, 50.630157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849422, 39.769329, 49.843483>,  <29.939587, 39.542171, 50.441967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849422, 39.769329, 49.843483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.019327, 40.062210, 50.056446>,  <30.121271, 40.237938, 50.184223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.019327, 40.062210, 50.056446>,  <29.849422, 39.769329, 49.843483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.019327, 40.062210, 50.056446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527906, 0.277431, -0.802713,
		-0.735453, 0.622025, -0.268690,
		0.424764, 0.732200, 0.532408,
		30.146757, 40.281872, 50.216167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.724955, 40.388401, 49.466927>,  <29.849422, 39.769329, 49.843483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.724955, 40.388401, 49.466927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.051250, 40.408119, 49.697453>,  <30.247028, 40.419952, 49.835770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.051250, 40.408119, 49.697453>,  <29.724955, 40.388401, 49.466927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.051250, 40.408119, 49.697453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539204, 0.295809, -0.788515,
		-0.209350, 0.953974, 0.214722,
		0.815740, 0.049297, 0.576315,
		30.295973, 40.422909, 49.870346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.048607, 40.939327, 49.166439>,  <29.724955, 40.388401, 49.466927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.048607, 40.939327, 49.166439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.319492, 40.779442, 49.413536>,  <30.482023, 40.683510, 49.561794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.319492, 40.779442, 49.413536>,  <30.048607, 40.939327, 49.166439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.319492, 40.779442, 49.413536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735777, 0.364194, -0.570959,
		0.003240, 0.841186, 0.540737,
		0.677216, -0.399712, 0.617745,
		30.522657, 40.659527, 49.598858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494162, 41.486866, 49.282433>,  <30.048607, 40.939327, 49.166439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494162, 41.486866, 49.282433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.668346, 41.130035, 49.330727>,  <30.772858, 40.915939, 49.359703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.668346, 41.130035, 49.330727>,  <30.494162, 41.486866, 49.282433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.668346, 41.130035, 49.330727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743470, 0.280774, -0.606975,
		0.507566, 0.354079, 0.785496,
		0.435464, -0.892073, 0.120736,
		30.798986, 40.862415, 49.366947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180077, 41.628288, 49.453766>,  <30.494162, 41.486866, 49.282433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180077, 41.628288, 49.453766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.187084, 41.250031, 49.323868>,  <31.191290, 41.023075, 49.245930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.187084, 41.250031, 49.323868>,  <31.180077, 41.628288, 49.453766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.187084, 41.250031, 49.323868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757914, 0.224397, -0.612546,
		0.652120, -0.235394, 0.720645,
		0.017521, -0.945640, -0.324742,
		31.192341, 40.966339, 49.226444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970304, 41.469521, 49.336193>,  <31.180077, 41.628288, 49.453766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970304, 41.469521, 49.336193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.753677, 41.209068, 49.123505>,  <31.623701, 41.052795, 48.995892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.753677, 41.209068, 49.123505>,  <31.970304, 41.469521, 49.336193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753677, 41.209068, 49.123505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569768, 0.180769, -0.801678,
		0.618119, -0.737120, 0.273097,
		-0.541566, -0.651135, -0.531724,
		31.591208, 41.013729, 48.963989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484699, 41.079994, 49.041611>,  <31.970304, 41.469521, 49.336193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484699, 41.079994, 49.041611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.158504, 41.006287, 48.822147>,  <31.962788, 40.962063, 48.690468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.158504, 41.006287, 48.822147>,  <32.484699, 41.079994, 49.041611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158504, 41.006287, 48.822147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516448, 0.196263, -0.833524,
		0.261276, -0.963081, -0.064883,
		-0.815485, -0.184271, -0.548661,
		31.913858, 40.951008, 48.657551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826134, 40.902485, 48.435078>,  <32.484699, 41.079994, 49.041611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826134, 40.902485, 48.435078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.443123, 40.958183, 48.334084>,  <32.213318, 40.991604, 48.273487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.443123, 40.958183, 48.334084>,  <32.826134, 40.902485, 48.435078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443123, 40.958183, 48.334084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282304, 0.274525, -0.919206,
		-0.058687, -0.951444, -0.302176,
		-0.957528, 0.139251, -0.252485,
		32.155865, 40.999958, 48.258339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691505, 40.557693, 47.845360>,  <32.826134, 40.902485, 48.435078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691505, 40.557693, 47.845360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.403221, 40.834816, 47.855148>,  <32.230251, 41.001091, 47.861023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.403221, 40.834816, 47.855148>,  <32.691505, 40.557693, 47.845360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403221, 40.834816, 47.855148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317708, 0.361470, -0.876585,
		-0.616150, -0.623987, -0.480624,
		-0.720709, 0.692806, 0.024474,
		32.187008, 41.042656, 47.862492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432858, 40.564724, 47.155823>,  <32.691505, 40.557693, 47.845360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432858, 40.564724, 47.155823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.316513, 40.912872, 47.314743>,  <32.246704, 41.121761, 47.410095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.316513, 40.912872, 47.314743>,  <32.432858, 40.564724, 47.155823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316513, 40.912872, 47.314743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194511, 0.460378, -0.866151,
		-0.936784, -0.174652, -0.303204,
		-0.290863, 0.870373, 0.397303,
		32.229256, 41.173985, 47.433933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930849, 40.791275, 46.683613>,  <32.432858, 40.564724, 47.155823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930849, 40.791275, 46.683613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.059860, 41.112495, 46.884048>,  <32.137268, 41.305225, 47.004311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.059860, 41.112495, 46.884048>,  <31.930849, 40.791275, 46.683613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059860, 41.112495, 46.884048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299481, 0.415609, -0.858824,
		-0.897934, 0.427063, -0.106451,
		0.322530, 0.803048, 0.501087,
		32.156620, 41.353409, 47.034374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663582, 41.410267, 46.273552>,  <31.930849, 40.791275, 46.683613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663582, 41.410267, 46.273552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.972773, 41.506584, 46.508339>,  <32.158287, 41.564373, 46.649212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.972773, 41.506584, 46.508339>,  <31.663582, 41.410267, 46.273552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972773, 41.506584, 46.508339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438349, 0.466129, -0.768488,
		-0.458649, 0.851317, 0.254755,
		0.772976, 0.240795, 0.586964,
		32.204666, 41.578823, 46.684429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718742, 42.142868, 46.083542>,  <31.663582, 41.410267, 46.273552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718742, 42.142868, 46.083542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.046127, 41.967171, 46.231697>,  <32.242558, 41.861752, 46.320591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.046127, 41.967171, 46.231697>,  <31.718742, 42.142868, 46.083542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046127, 41.967171, 46.231697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530266, 0.329266, -0.781282,
		0.221213, 0.835855, 0.502406,
		0.818464, -0.439239, 0.370387,
		32.291668, 41.835400, 46.342812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238129, 42.661465, 45.951385>,  <31.718742, 42.142868, 46.083542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238129, 42.661465, 45.951385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.455357, 42.334755, 46.029316>,  <32.585693, 42.138729, 46.076073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.455357, 42.334755, 46.029316>,  <32.238129, 42.661465, 45.951385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455357, 42.334755, 46.029316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707651, 0.320287, -0.629798,
		0.452004, 0.479890, 0.751930,
		0.543067, -0.816775, 0.194824,
		32.618279, 42.089722, 46.087765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<34.679588, 45.996784, 42.964783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.939911, 45.786789, 43.184177>,  <35.096104, 45.660793, 43.315815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.939911, 45.786789, 43.184177>,  <34.679588, 45.996784, 42.964783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939911, 45.786789, 43.184177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757670, 0.402624, -0.513643,
		0.048820, 0.749857, 0.659796,
		0.650809, -0.524984, 0.548488,
		35.135155, 45.629295, 43.348724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139881, 46.466129, 43.164707>,  <34.679588, 45.996784, 42.964783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139881, 46.466129, 43.164707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.326233, 46.113091, 43.189934>,  <35.438042, 45.901268, 43.205070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.326233, 46.113091, 43.189934>,  <35.139881, 46.466129, 43.164707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326233, 46.113091, 43.189934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846658, 0.423920, -0.321655,
		0.257157, 0.203247, 0.944754,
		0.465876, -0.882600, 0.063067,
		35.465996, 45.848312, 43.208855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776218, 46.567402, 43.629959>,  <35.139881, 46.466129, 43.164707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776218, 46.567402, 43.629959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.821251, 46.242508, 43.401016>,  <35.848270, 46.047569, 43.263649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.821251, 46.242508, 43.401016>,  <35.776218, 46.567402, 43.629959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821251, 46.242508, 43.401016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941993, 0.270538, -0.198641,
		0.316189, -0.516797, 0.795579,
		0.112577, -0.812238, -0.572360,
		35.855022, 45.998837, 43.229309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381496, 46.440193, 43.770374>,  <35.776218, 46.567402, 43.629959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381496, 46.440193, 43.770374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.325089, 46.239418, 43.429043>,  <36.291245, 46.118954, 43.224243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.325089, 46.239418, 43.429043>,  <36.381496, 46.440193, 43.770374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325089, 46.239418, 43.429043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937253, 0.209921, -0.278370,
		0.318857, -0.839039, 0.440844,
		-0.141021, -0.501943, -0.853327,
		36.282784, 46.088837, 43.173046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936626, 46.003197, 43.686268>,  <36.381496, 46.440193, 43.770374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936626, 46.003197, 43.686268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.808022, 46.028946, 43.308380>,  <36.730858, 46.044395, 43.081650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.808022, 46.028946, 43.308380>,  <36.936626, 46.003197, 43.686268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808022, 46.028946, 43.308380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935710, 0.174570, -0.306549,
		0.145184, -0.982538, -0.116365,
		-0.321510, 0.064378, -0.944716,
		36.711567, 46.048260, 43.024967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359428, 45.480881, 43.247295>,  <36.936626, 46.003197, 43.686268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359428, 45.480881, 43.247295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.197678, 45.738991, 42.988037>,  <37.100628, 45.893856, 42.832481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.197678, 45.738991, 42.988037>,  <37.359428, 45.480881, 43.247295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197678, 45.738991, 42.988037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889125, 0.111296, -0.443926,
		-0.214319, -0.755798, -0.618738,
		-0.404381, 0.645277, -0.648146,
		37.076363, 45.932575, 42.793594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705898, 45.394543, 42.568150>,  <37.359428, 45.480881, 43.247295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705898, 45.394543, 42.568150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.542568, 45.755936, 42.516022>,  <37.444569, 45.972771, 42.484745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.542568, 45.755936, 42.516022>,  <37.705898, 45.394543, 42.568150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542568, 45.755936, 42.516022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751320, 0.251554, -0.610114,
		-0.518447, -0.347038, -0.781523,
		-0.408328, 0.903485, -0.130319,
		37.420071, 46.026981, 42.476925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764805, 45.620152, 41.854221>,  <37.705898, 45.394543, 42.568150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764805, 45.620152, 41.854221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.715904, 45.961388, 42.057117>,  <37.686562, 46.166130, 42.178856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.715904, 45.961388, 42.057117>,  <37.764805, 45.620152, 41.854221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715904, 45.961388, 42.057117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821583, 0.373718, -0.430507,
		-0.556826, 0.364109, -0.746572,
		-0.122256, 0.853088, 0.507241,
		37.679226, 46.217316, 42.209290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932003, 46.124660, 41.396397>,  <37.764805, 45.620152, 41.854221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932003, 46.124660, 41.396397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.953087, 46.327911, 41.740265>,  <37.965736, 46.449860, 41.946587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.953087, 46.327911, 41.740265>,  <37.932003, 46.124660, 41.396397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953087, 46.327911, 41.740265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859130, 0.415746, -0.298413,
		-0.509035, 0.754298, -0.414629,
		0.052712, 0.508123, 0.859670,
		37.968899, 46.480347, 41.998165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081322, 46.877335, 41.140911>,  <37.932003, 46.124660, 41.396397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081322, 46.877335, 41.140911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.174744, 46.867798, 41.529732>,  <38.230797, 46.862076, 41.763023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.174744, 46.867798, 41.529732>,  <38.081322, 46.877335, 41.140911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174744, 46.867798, 41.529732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897583, 0.389701, -0.206104,
		-0.373894, 0.920633, 0.112421,
		0.233556, -0.023846, 0.972051,
		38.244812, 46.860645, 41.821346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263828, 47.642090, 41.436707>,  <38.081322, 46.877335, 41.140911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263828, 47.642090, 41.436707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.435875, 47.362915, 41.665752>,  <38.539101, 47.195408, 41.803181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.435875, 47.362915, 41.665752>,  <38.263828, 47.642090, 41.436707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435875, 47.362915, 41.665752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899794, 0.382924, -0.209140,
		-0.073300, 0.605186, 0.792702,
		0.430113, -0.697939, 0.572611,
		38.564907, 47.153534, 41.837536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741768, 48.071083, 41.737385>,  <38.263828, 47.642090, 41.436707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741768, 48.071083, 41.737385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.857819, 47.699707, 41.830181>,  <38.927448, 47.476879, 41.885860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.857819, 47.699707, 41.830181>,  <38.741768, 48.071083, 41.737385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857819, 47.699707, 41.830181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956789, 0.286357, -0.050542,
		-0.019507, 0.236632, 0.971403,
		0.290128, -0.928442, 0.231993,
		38.944859, 47.421173, 41.899780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381817, 48.061680, 42.167667>,  <38.741768, 48.071083, 41.737385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381817, 48.061680, 42.167667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.374100, 47.707535, 41.981865>,  <39.369469, 47.495049, 41.870384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.374100, 47.707535, 41.981865>,  <39.381817, 48.061680, 42.167667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374100, 47.707535, 41.981865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975351, 0.085474, -0.203431,
		0.219813, -0.456981, 0.861888,
		-0.019295, -0.885360, -0.464505,
		39.368313, 47.441925, 41.842514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088169, 48.042282, 41.963062>,  <39.381817, 48.061680, 42.167667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.088169, 48.042282, 41.963062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.937183, 47.708359, 41.802761>,  <39.846592, 47.508003, 41.706581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.937183, 47.708359, 41.802761>,  <40.088169, 48.042282, 41.963062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937183, 47.708359, 41.802761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886023, -0.199770, -0.418395,
		0.269222, -0.513010, 0.815070,
		-0.377468, -0.834813, -0.400756,
		39.823944, 47.457916, 41.682533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104496, 48.136868, 42.707485>,  <40.088169, 48.042282, 41.963062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104496, 48.136868, 42.707485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.400742, 48.183075, 42.972256>,  <40.578487, 48.210800, 43.131119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.400742, 48.183075, 42.972256>,  <40.104496, 48.136868, 42.707485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400742, 48.183075, 42.972256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425332, -0.682027, 0.594921,
		0.520177, -0.722145, -0.455984,
		0.740613, 0.115519, 0.661927,
		40.622925, 48.217731, 43.170834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081978, 47.519382, 43.067642>,  <40.104496, 48.136868, 42.707485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081978, 47.519382, 43.067642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.322918, 47.736313, 43.301926>,  <40.467484, 47.866470, 43.442497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.322918, 47.736313, 43.301926>,  <40.081978, 47.519382, 43.067642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322918, 47.736313, 43.301926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392500, -0.437695, 0.808930,
		0.695067, -0.717149, -0.050782,
		0.602350, 0.542328, 0.585708,
		40.503624, 47.899010, 43.477638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363857, 47.057461, 43.569168>,  <40.081978, 47.519382, 43.067642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363857, 47.057461, 43.569168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.400887, 47.417984, 43.738434>,  <40.423103, 47.634300, 43.839993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.400887, 47.417984, 43.738434>,  <40.363857, 47.057461, 43.569168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400887, 47.417984, 43.738434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491150, -0.328353, 0.806819,
		0.866142, -0.282528, 0.412282,
		0.092575, 0.901312, 0.423163,
		40.428658, 47.688377, 43.865383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564354, 46.898041, 44.255356>,  <40.363857, 47.057461, 43.569168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564354, 46.898041, 44.255356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.440815, 47.277710, 44.279625>,  <40.366692, 47.505512, 44.294186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.440815, 47.277710, 44.279625>,  <40.564354, 46.898041, 44.255356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440815, 47.277710, 44.279625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403214, -0.188444, 0.895493,
		0.861411, 0.252110, 0.440921,
		-0.308852, 0.949173, 0.060674,
		40.348160, 47.562462, 44.297829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785496, 47.183163, 44.901375>,  <40.564354, 46.898041, 44.255356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785496, 47.183163, 44.901375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.471466, 47.405190, 44.791428>,  <40.283047, 47.538406, 44.725460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.471466, 47.405190, 44.791428>,  <40.785496, 47.183163, 44.901375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471466, 47.405190, 44.791428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340812, -0.016560, 0.939986,
		0.517204, 0.831641, 0.202175,
		-0.785078, 0.555067, -0.274869,
		40.235943, 47.571709, 44.708965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672791, 47.589542, 45.516102>,  <40.785496, 47.183163, 44.901375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.672791, 47.589542, 45.516102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.339691, 47.606735, 45.295311>,  <40.139832, 47.617050, 45.162838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.339691, 47.606735, 45.295311>,  <40.672791, 47.589542, 45.516102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339691, 47.606735, 45.295311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553257, -0.101926, 0.826752,
		-0.020728, 0.993863, 0.108657,
		-0.832753, 0.042978, -0.551974,
		40.089867, 47.619629, 45.129719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315792, 48.042747, 45.840519>,  <40.672791, 47.589542, 45.516102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315792, 48.042747, 45.840519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.017311, 47.868286, 45.639343>,  <39.838223, 47.763607, 45.518639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.017311, 47.868286, 45.639343>,  <40.315792, 48.042747, 45.840519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017311, 47.868286, 45.639343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471707, -0.186686, 0.861766,
		-0.469756, 0.880293, -0.066432,
		-0.746205, -0.436156, -0.502938,
		39.793449, 47.737438, 45.488461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731518, 48.308350, 46.215408>,  <40.315792, 48.042747, 45.840519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731518, 48.308350, 46.215408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.590981, 47.991760, 46.015358>,  <39.506657, 47.801807, 45.895329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.590981, 47.991760, 46.015358>,  <39.731518, 48.308350, 46.215408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590981, 47.991760, 46.015358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513342, -0.283873, 0.809874,
		-0.782966, 0.541282, -0.306558,
		-0.351347, -0.791473, -0.500126,
		39.485577, 47.754318, 45.865318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022930, 48.382683, 46.233780>,  <39.731518, 48.308350, 46.215408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022930, 48.382683, 46.233780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.120926, 48.000031, 46.170746>,  <39.179726, 47.770439, 46.132927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.120926, 48.000031, 46.170746>,  <39.022930, 48.382683, 46.233780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120926, 48.000031, 46.170746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738360, -0.289436, 0.609139,
		-0.628333, -0.032880, -0.777249,
		0.244992, -0.956633, -0.157585,
		39.194424, 47.713039, 46.123470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413658, 47.981304, 46.419979>,  <39.022930, 48.382683, 46.233780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413658, 47.981304, 46.419979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.683083, 47.685730, 46.413059>,  <38.844738, 47.508385, 46.408905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.683083, 47.685730, 46.413059>,  <38.413658, 47.981304, 46.419979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683083, 47.685730, 46.413059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563100, -0.528167, 0.635577,
		-0.478782, -0.418359, -0.771844,
		0.673562, -0.738929, -0.017299,
		38.885151, 47.464050, 46.407867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053951, 47.344982, 46.138851>,  <38.413658, 47.981304, 46.419979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053951, 47.344982, 46.138851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.361465, 47.239288, 46.371796>,  <38.545975, 47.175873, 46.511562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.361465, 47.239288, 46.371796>,  <38.053951, 47.344982, 46.138851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361465, 47.239288, 46.371796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626865, -0.491544, 0.604504,
		0.126528, -0.829798, -0.543531,
		0.768786, -0.264234, 0.582366,
		38.592102, 47.160019, 46.546505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169960, 46.676834, 46.196850>,  <38.053951, 47.344982, 46.138851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169960, 46.676834, 46.196850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.350624, 46.796448, 46.533085>,  <38.459023, 46.868217, 46.734825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.350624, 46.796448, 46.533085>,  <38.169960, 46.676834, 46.196850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350624, 46.796448, 46.533085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651019, -0.533767, 0.539691,
		0.610063, -0.790993, -0.046403,
		0.451660, 0.299037, 0.840583,
		38.486122, 46.886158, 46.785259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998341, 46.144974, 46.695698>,  <38.169960, 46.676834, 46.196850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998341, 46.144974, 46.695698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.168831, 46.419319, 46.931637>,  <38.271126, 46.583927, 47.073200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.168831, 46.419319, 46.931637>,  <37.998341, 46.144974, 46.695698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168831, 46.419319, 46.931637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521121, -0.346821, 0.779839,
		0.739434, -0.639771, 0.209593,
		0.426227, 0.685863, 0.589850,
		38.296700, 46.625076, 47.108593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381416, 45.842777, 47.283291>,  <37.998341, 46.144974, 46.695698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381416, 45.842777, 47.283291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.274372, 46.205025, 47.414890>,  <38.210144, 46.422375, 47.493851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.274372, 46.205025, 47.414890>,  <38.381416, 45.842777, 47.283291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274372, 46.205025, 47.414890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495006, -0.422165, 0.759438,
		0.826653, 0.040378, 0.561262,
		-0.267610, 0.905620, 0.328996,
		38.194088, 46.476711, 47.513588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057896, 45.608158, 47.547848>,  <38.381416, 45.842777, 47.283291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057896, 45.608158, 47.547848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.131584, 45.215012, 47.550457>,  <39.175797, 44.979126, 47.552025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.131584, 45.215012, 47.550457>,  <39.057896, 45.608158, 47.547848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131584, 45.215012, 47.550457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630564, 0.113091, -0.767854,
		0.753957, 0.145570, 0.640592,
		0.184222, -0.982863, 0.006526,
		39.186852, 44.920155, 47.552414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803268, 45.558067, 47.316624>,  <39.057896, 45.608158, 47.547848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803268, 45.558067, 47.316624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.693237, 45.175003, 47.282658>,  <39.627220, 44.945164, 47.262280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.693237, 45.175003, 47.282658>,  <39.803268, 45.558067, 47.316624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693237, 45.175003, 47.282658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592788, -0.099408, -0.799200,
		0.756925, -0.270176, 0.595037,
		-0.275076, -0.957665, -0.084913,
		39.610714, 44.887703, 47.257183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489265, 45.230267, 47.333988>,  <39.803268, 45.558067, 47.316624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489265, 45.230267, 47.333988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.209179, 45.002899, 47.161201>,  <40.041126, 44.866478, 47.057529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.209179, 45.002899, 47.161201>,  <40.489265, 45.230267, 47.333988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209179, 45.002899, 47.161201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510460, 0.024396, -0.859555,
		0.499127, -0.822376, 0.273074,
		-0.700216, -0.568421, -0.431967,
		39.999115, 44.832375, 47.031612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911736, 44.694790, 47.002087>,  <40.489265, 45.230267, 47.333988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911736, 44.694790, 47.002087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.561417, 44.693214, 46.809021>,  <40.351227, 44.692268, 46.693180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.561417, 44.693214, 46.809021>,  <40.911736, 44.694790, 47.002087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.561417, 44.693214, 46.809021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468517, -0.247417, -0.848102,
		-0.116085, -0.968901, 0.218529,
		-0.875794, -0.003933, -0.482668,
		40.298679, 44.692036, 46.664219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895500, 43.962158, 46.693039>,  <40.911736, 44.694790, 47.002087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.895500, 43.962158, 46.693039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.663322, 44.218323, 46.491859>,  <40.524017, 44.372021, 46.371151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.663322, 44.218323, 46.491859>,  <40.895500, 43.962158, 46.693039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663322, 44.218323, 46.491859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503436, -0.203242, -0.839789,
		-0.640028, -0.740656, -0.204434,
		-0.580445, 0.640407, -0.502953,
		40.489189, 44.410446, 46.340973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825985, 43.663296, 46.045563>,  <40.895500, 43.962158, 46.693039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.825985, 43.663296, 46.045563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.715469, 44.042427, 45.981949>,  <40.649162, 44.269905, 45.943779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.715469, 44.042427, 45.981949>,  <40.825985, 43.663296, 46.045563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.715469, 44.042427, 45.981949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355751, -0.052861, -0.933085,
		-0.892809, -0.314374, -0.322585,
		-0.276285, 0.947826, -0.159033,
		40.632584, 44.326775, 45.934238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524601, 43.636829, 45.466988>,  <40.825985, 43.663296, 46.045563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524601, 43.636829, 45.466988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.653133, 44.014771, 45.492290>,  <40.730251, 44.241535, 45.507473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.653133, 44.014771, 45.492290>,  <40.524601, 43.636829, 45.466988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653133, 44.014771, 45.492290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191305, 0.000652, -0.981530,
		-0.927443, 0.327494, -0.180546,
		0.321328, 0.944853, 0.063256,
		40.749531, 44.298225, 45.511269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192760, 43.950493, 44.916767>,  <40.524601, 43.636829, 45.466988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192760, 43.950493, 44.916767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.459412, 44.239723, 44.989166>,  <40.619404, 44.413261, 45.032604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.459412, 44.239723, 44.989166>,  <40.192760, 43.950493, 44.916767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459412, 44.239723, 44.989166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315530, -0.053752, -0.947392,
		-0.675310, 0.688671, -0.263986,
		0.666631, 0.723079, 0.180997,
		40.659401, 44.456646, 45.043465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226868, 44.389778, 44.321041>,  <40.192760, 43.950493, 44.916767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226868, 44.389778, 44.321041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.576107, 44.444008, 44.508369>,  <40.785648, 44.476547, 44.620766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.576107, 44.444008, 44.508369>,  <40.226868, 44.389778, 44.321041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576107, 44.444008, 44.508369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477549, -0.044252, -0.877490,
		-0.098243, 0.989778, -0.103381,
		0.873095, 0.135577, 0.468320,
		40.838036, 44.484680, 44.648865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557556, 44.761063, 43.887089>,  <40.226868, 44.389778, 44.321041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557556, 44.761063, 43.887089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.863960, 44.632492, 44.109764>,  <41.047802, 44.555351, 44.243370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.863960, 44.632492, 44.109764>,  <40.557556, 44.761063, 43.887089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863960, 44.632492, 44.109764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557030, -0.100333, -0.824409,
		0.320843, 0.941604, 0.102189,
		0.766014, -0.321428, 0.556693,
		41.093765, 44.536064, 44.276772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164097, 45.221893, 43.729004>,  <40.557556, 44.761063, 43.887089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.164097, 45.221893, 43.729004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.296589, 44.866798, 43.856884>,  <41.376083, 44.653740, 43.933613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.296589, 44.866798, 43.856884>,  <41.164097, 45.221893, 43.729004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296589, 44.866798, 43.856884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567354, -0.083346, -0.819245,
		0.753921, 0.452742, 0.476055,
		0.331230, -0.887737, 0.319702,
		41.395958, 44.600475, 43.952793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.875244, 45.222435, 43.550255>,  <41.164097, 45.221893, 43.729004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.875244, 45.222435, 43.550255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.802155, 44.834953, 43.617462>,  <41.758301, 44.602467, 43.657787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.802155, 44.834953, 43.617462>,  <41.875244, 45.222435, 43.550255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.802155, 44.834953, 43.617462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574914, -0.243905, -0.781015,
		0.797551, -0.046111, 0.601487,
		-0.182719, -0.968702, 0.168017,
		41.747337, 44.544342, 43.667866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.111874, 44.898159, 50.767944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105400, 44.529709, 50.612373>,  <37.101517, 44.308640, 50.519032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105400, 44.529709, 50.612373>,  <37.111874, 44.898159, 50.767944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105400, 44.529709, 50.612373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611123, 0.298752, -0.732991,
		0.791370, -0.249549, 0.558085,
		-0.016188, -0.921126, -0.388928,
		37.100544, 44.253372, 50.495693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821823, 44.643681, 50.747211>,  <37.111874, 44.898159, 50.767944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821823, 44.643681, 50.747211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609268, 44.445099, 50.472649>,  <37.481735, 44.325951, 50.307911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609268, 44.445099, 50.472649>,  <37.821823, 44.643681, 50.747211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609268, 44.445099, 50.472649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676977, 0.238221, -0.696385,
		0.509241, -0.834735, 0.209502,
		-0.531390, -0.496456, -0.686408,
		37.449852, 44.296162, 50.266727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267834, 44.043282, 50.449192>,  <37.821823, 44.643681, 50.747211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267834, 44.043282, 50.449192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987679, 44.137497, 50.179680>,  <37.819584, 44.194027, 50.017975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987679, 44.137497, 50.179680>,  <38.267834, 44.043282, 50.449192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987679, 44.137497, 50.179680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697233, 0.023819, -0.716448,
		-0.152702, -0.971573, -0.180909,
		-0.700391, 0.235539, -0.673776,
		37.777561, 44.208157, 49.977547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408489, 43.594433, 49.952255>,  <38.267834, 44.043282, 50.449192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408489, 43.594433, 49.952255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184093, 43.875267, 49.776821>,  <38.049454, 44.043770, 49.671562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184093, 43.875267, 49.776821>,  <38.408489, 43.594433, 49.952255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184093, 43.875267, 49.776821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648089, 0.042861, -0.760357,
		-0.515040, -0.710798, -0.479061,
		-0.560994, 0.702089, -0.438585,
		38.015797, 44.085896, 49.645245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409008, 43.382839, 49.283695>,  <38.408489, 43.594433, 49.952255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409008, 43.382839, 49.283695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284786, 43.762825, 49.270279>,  <38.210255, 43.990818, 49.262230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284786, 43.762825, 49.270279>,  <38.409008, 43.382839, 49.283695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284786, 43.762825, 49.270279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675810, 0.195840, -0.710583,
		-0.668460, -0.243340, -0.702814,
		-0.310553, 0.949964, -0.033540,
		38.191620, 44.047813, 49.260216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226444, 43.511517, 48.630531>,  <38.409008, 43.382839, 49.283695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226444, 43.511517, 48.630531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262463, 43.885925, 48.766621>,  <38.284073, 44.110573, 48.848274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262463, 43.885925, 48.766621>,  <38.226444, 43.511517, 48.630531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262463, 43.885925, 48.766621> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410453, 0.276374, -0.868991,
		-0.907425, 0.217891, -0.359309,
		0.090041, 0.936024, 0.340223,
		38.289474, 44.166733, 48.868687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005325, 43.919788, 48.092461>,  <38.226444, 43.511517, 48.630531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005325, 43.919788, 48.092461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246407, 44.131760, 48.331097>,  <38.391056, 44.258942, 48.474277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246407, 44.131760, 48.331097>,  <38.005325, 43.919788, 48.092461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246407, 44.131760, 48.331097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530385, 0.292552, -0.795679,
		-0.596190, 0.795981, -0.104746,
		0.602701, 0.529932, 0.596593,
		38.427216, 44.290741, 48.510075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066608, 44.553291, 47.751667>,  <38.005325, 43.919788, 48.092461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066608, 44.553291, 47.751667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379387, 44.529541, 47.999870>,  <38.567055, 44.515289, 48.148792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379387, 44.529541, 47.999870>,  <38.066608, 44.553291, 47.751667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379387, 44.529541, 47.999870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592711, 0.379034, -0.710652,
		-0.192999, 0.923476, 0.331578,
		0.781949, -0.059375, 0.620508,
		38.613972, 44.511730, 48.186024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347553, 45.146080, 47.614803>,  <38.066608, 44.553291, 47.751667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347553, 45.146080, 47.614803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640900, 44.920090, 47.766052>,  <38.816906, 44.784496, 47.856800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640900, 44.920090, 47.766052>,  <38.347553, 45.146080, 47.614803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640900, 44.920090, 47.766052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559823, 0.186312, -0.807395,
		0.385708, 0.803799, 0.452920,
		0.733368, -0.564973, 0.378123,
		38.860909, 44.750599, 47.879490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144615, 45.692085, 47.939880>,  <38.347553, 45.146080, 47.614803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144615, 45.692085, 47.939880> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024899, 46.073380, 47.923107>,  <37.953068, 46.302158, 47.913044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024899, 46.073380, 47.923107>,  <38.144615, 45.692085, 47.939880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024899, 46.073380, 47.923107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671122, -0.179068, 0.719395,
		0.678247, 0.243453, 0.693334,
		-0.299293, 0.953239, -0.041935,
		37.935112, 46.359352, 47.910526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142986, 46.029606, 48.668911>,  <38.144615, 45.692085, 47.939880>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142986, 46.029606, 48.668911> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899399, 46.254234, 48.444839>,  <37.753246, 46.389011, 48.310398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899399, 46.254234, 48.444839>,  <38.142986, 46.029606, 48.668911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899399, 46.254234, 48.444839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658418, 0.035944, 0.751794,
		0.442318, 0.826651, 0.347856,
		-0.608967, 0.561566, -0.560180,
		37.716709, 46.422703, 48.276787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825974, 46.578362, 49.168507>,  <38.142986, 46.029606, 48.668911>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825974, 46.578362, 49.168507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601028, 46.610924, 48.839355>,  <37.466061, 46.630463, 48.641865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601028, 46.610924, 48.839355>,  <37.825974, 46.578362, 49.168507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601028, 46.610924, 48.839355> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824073, -0.137300, 0.549593,
		-0.068240, 0.987179, 0.144298,
		-0.562358, 0.081408, -0.822877,
		37.432320, 46.635345, 48.592491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369247, 47.173824, 49.224621>,  <37.825974, 46.578362, 49.168507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369247, 47.173824, 49.224621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195549, 46.921204, 48.967693>,  <37.091331, 46.769630, 48.813538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195549, 46.921204, 48.967693>,  <37.369247, 47.173824, 49.224621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195549, 46.921204, 48.967693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869438, 0.107345, 0.482239,
		-0.235607, 0.767869, -0.595706,
		-0.434243, -0.631549, -0.642323,
		37.065277, 46.731739, 48.774998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711666, 47.493443, 49.058796>,  <37.369247, 47.173824, 49.224621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711666, 47.493443, 49.058796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698105, 47.104393, 48.966835>,  <36.689968, 46.870964, 48.911659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698105, 47.104393, 48.966835>,  <36.711666, 47.493443, 49.058796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698105, 47.104393, 48.966835> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912583, -0.063661, 0.403905,
		-0.407483, 0.223503, -0.885440,
		-0.033906, -0.972622, -0.229905,
		36.687935, 46.812607, 48.897865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050323, 47.383347, 48.970688>,  <36.711666, 47.493443, 49.058796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050323, 47.383347, 48.970688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179478, 47.006615, 49.008011>,  <36.256969, 46.780575, 49.030403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179478, 47.006615, 49.008011>,  <36.050323, 47.383347, 48.970688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179478, 47.006615, 49.008011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888325, -0.267570, 0.373209,
		-0.326533, -0.203390, -0.923043,
		0.322885, -0.941828, 0.093306,
		36.276344, 46.724068, 49.036003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608028, 46.941441, 48.627045>,  <36.050323, 47.383347, 48.970688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608028, 46.941441, 48.627045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807854, 46.719154, 48.892860>,  <35.927750, 46.585781, 49.052349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807854, 46.719154, 48.892860>,  <35.608028, 46.941441, 48.627045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807854, 46.719154, 48.892860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856577, -0.202417, 0.474661,
		-0.129261, -0.806355, -0.577133,
		0.499567, -0.555714, 0.664541,
		35.957726, 46.552441, 49.092220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322384, 46.198669, 48.639904>,  <35.608028, 46.941441, 48.627045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322384, 46.198669, 48.639904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487129, 46.274345, 48.996460>,  <35.585976, 46.319752, 49.210392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487129, 46.274345, 48.996460>,  <35.322384, 46.198669, 48.639904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487129, 46.274345, 48.996460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861984, -0.236385, 0.448449,
		0.295555, -0.953062, 0.065725,
		0.411864, 0.189195, 0.891389,
		35.610687, 46.331104, 49.263878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101883, 45.704342, 49.048439>,  <35.322384, 46.198669, 48.639904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101883, 45.704342, 49.048439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215271, 45.960922, 49.333588>,  <35.283302, 46.114872, 49.504677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215271, 45.960922, 49.333588>,  <35.101883, 45.704342, 49.048439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215271, 45.960922, 49.333588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835697, -0.199380, 0.511721,
		0.470378, -0.740798, 0.479544,
		0.283471, 0.641456, 0.712867,
		35.300312, 46.153358, 49.547447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017204, 45.301281, 49.766117>,  <35.101883, 45.704342, 49.048439>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017204, 45.301281, 49.766117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068108, 45.679672, 49.885403>,  <35.098652, 45.906708, 49.956974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068108, 45.679672, 49.885403>,  <35.017204, 45.301281, 49.766117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068108, 45.679672, 49.885403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601757, -0.165369, 0.781372,
		0.788475, -0.278890, 0.548204,
		0.127260, 0.945978, 0.298213,
		35.106285, 45.963467, 49.974865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275639, 45.342716, 50.504356>,  <35.017204, 45.301281, 49.766117>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275639, 45.342716, 50.504356> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081253, 45.680214, 50.413200>,  <34.964622, 45.882713, 50.358509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081253, 45.680214, 50.413200>,  <35.275639, 45.342716, 50.504356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081253, 45.680214, 50.413200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518581, -0.068487, 0.852281,
		0.703503, 0.532352, 0.470834,
		-0.485960, 0.843748, -0.227887,
		34.935467, 45.933338, 50.344833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202335, 45.748146, 51.226124>,  <35.275639, 45.342716, 50.504356>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202335, 45.748146, 51.226124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938587, 45.919022, 50.978661>,  <34.780338, 46.021545, 50.830181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938587, 45.919022, 50.978661>,  <35.202335, 45.748146, 51.226124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938587, 45.919022, 50.978661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652232, 0.084237, 0.753324,
		0.373923, 0.900231, 0.223081,
		-0.659374, 0.427186, -0.618658,
		34.740776, 46.047176, 50.793064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808876, 46.131752, 51.671131>,  <35.202335, 45.748146, 51.226124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808876, 46.131752, 51.671131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589756, 46.125961, 51.336540>,  <34.458282, 46.122486, 51.135784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589756, 46.125961, 51.336540>,  <34.808876, 46.131752, 51.671131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589756, 46.125961, 51.336540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835711, -0.036782, 0.547937,
		-0.038701, 0.999218, 0.008050,
		-0.547805, -0.014479, -0.836481,
		34.425415, 46.121616, 51.085594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322544, 46.660656, 51.674019>,  <34.808876, 46.131752, 51.671131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322544, 46.660656, 51.674019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182457, 46.391212, 51.413681>,  <34.098404, 46.229546, 51.257481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182457, 46.391212, 51.413681>,  <34.322544, 46.660656, 51.674019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182457, 46.391212, 51.413681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853103, -0.057497, 0.518564,
		-0.386732, 0.736847, -0.554522,
		-0.350219, -0.673610, -0.650843,
		34.077393, 46.189129, 51.218430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.233475, 38.483612, 46.768101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.514160, 38.621689, 47.017399>,  <32.682571, 38.704536, 47.166977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.514160, 38.621689, 47.017399>,  <32.233475, 38.483612, 46.768101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514160, 38.621689, 47.017399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510612, 0.366398, -0.777835,
		-0.496858, 0.864057, 0.080849,
		0.701717, 0.345191, 0.623246,
		32.724674, 38.725246, 47.204372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498077, 39.093803, 46.428349>,  <32.233475, 38.483612, 46.768101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498077, 39.093803, 46.428349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.791119, 39.021172, 46.690742>,  <32.966946, 38.977592, 46.848179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.791119, 39.021172, 46.690742>,  <32.498077, 39.093803, 46.428349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791119, 39.021172, 46.690742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679313, 0.255509, -0.687931,
		-0.042696, 0.949602, 0.310537,
		0.732605, -0.181580, 0.655986,
		33.010899, 38.966698, 46.887539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993828, 39.662235, 46.398178>,  <32.498077, 39.093803, 46.428349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993828, 39.662235, 46.398178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.210400, 39.369102, 46.563011>,  <33.340343, 39.193222, 46.661911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.210400, 39.369102, 46.563011>,  <32.993828, 39.662235, 46.398178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210400, 39.369102, 46.563011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731810, 0.169495, -0.660095,
		0.413895, 0.658957, 0.628065,
		0.541429, -0.732835, 0.412078,
		33.372829, 39.149254, 46.686634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551151, 39.995922, 46.536739>,  <32.993828, 39.662235, 46.398178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551151, 39.995922, 46.536739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.653877, 39.610367, 46.508568>,  <33.715511, 39.379032, 46.491665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.653877, 39.610367, 46.508568>,  <33.551151, 39.995922, 46.536739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653877, 39.610367, 46.508568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726728, 0.240636, -0.643397,
		0.637114, 0.114046, 0.762286,
		0.256811, -0.963892, -0.070432,
		33.730919, 39.321198, 46.487438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221424, 40.036469, 46.603161>,  <33.551151, 39.995922, 46.536739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221424, 40.036469, 46.603161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.154427, 39.683456, 46.427391>,  <34.114227, 39.471649, 46.321930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.154427, 39.683456, 46.427391>,  <34.221424, 40.036469, 46.603161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154427, 39.683456, 46.427391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592714, 0.266030, -0.760209,
		0.787805, -0.387782, 0.478528,
		-0.167492, -0.882527, -0.439424,
		34.104179, 39.418697, 46.295563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872261, 39.841492, 46.533512>,  <34.221424, 40.036469, 46.603161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872261, 39.841492, 46.533512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.656090, 39.605927, 46.293140>,  <34.526386, 39.464588, 46.148918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.656090, 39.605927, 46.293140>,  <34.872261, 39.841492, 46.533512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656090, 39.605927, 46.293140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689249, 0.099768, -0.717623,
		0.482571, -0.802015, 0.351991,
		-0.540427, -0.588913, -0.600933,
		34.493961, 39.429253, 46.112862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234512, 39.308895, 46.389442>,  <34.872261, 39.841492, 46.533512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234512, 39.308895, 46.389442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.975979, 39.338516, 46.085659>,  <34.820858, 39.356289, 45.903389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.975979, 39.338516, 46.085659>,  <35.234512, 39.308895, 46.389442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975979, 39.338516, 46.085659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762333, 0.019352, -0.646896,
		-0.033205, -0.997067, -0.068957,
		-0.646332, 0.074048, -0.759454,
		34.782078, 39.360729, 45.857822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611965, 39.000675, 45.885155>,  <35.234512, 39.308895, 46.389442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611965, 39.000675, 45.885155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.319569, 39.196411, 45.694916>,  <35.144131, 39.313854, 45.580772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.319569, 39.196411, 45.694916>,  <35.611965, 39.000675, 45.885155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319569, 39.196411, 45.694916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618857, 0.181733, -0.764192,
		-0.287520, -0.852946, -0.435678,
		-0.730991, 0.489343, -0.475600,
		35.100269, 39.343212, 45.552235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569481, 38.746216, 45.250450>,  <35.611965, 39.000675, 45.885155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569481, 38.746216, 45.250450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.411789, 39.112823, 45.223373>,  <35.317173, 39.332787, 45.207127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.411789, 39.112823, 45.223373>,  <35.569481, 38.746216, 45.250450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411789, 39.112823, 45.223373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616482, 0.209107, -0.759095,
		-0.681566, -0.340992, -0.647451,
		-0.394231, 0.916515, -0.067695,
		35.293518, 39.387779, 45.203064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464462, 38.904678, 44.569565>,  <35.569481, 38.746216, 45.250450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464462, 38.904678, 44.569565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.479828, 39.269569, 44.732716>,  <35.489048, 39.488503, 44.830608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.479828, 39.269569, 44.732716>,  <35.464462, 38.904678, 44.569565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479828, 39.269569, 44.732716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703883, 0.265026, -0.659023,
		-0.709277, 0.312415, -0.631920,
		0.038413, 0.912227, 0.407880,
		35.491352, 39.543236, 44.855080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584225, 39.269157, 44.041931>,  <35.464462, 38.904678, 44.569565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584225, 39.269157, 44.041931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.711205, 39.525925, 44.321121>,  <35.787392, 39.679985, 44.488636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.711205, 39.525925, 44.321121>,  <35.584225, 39.269157, 44.041931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711205, 39.525925, 44.321121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689471, 0.349091, -0.634637,
		-0.651041, 0.682699, -0.331764,
		0.317450, 0.641917, 0.697974,
		35.806438, 39.718498, 44.530514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731548, 39.890621, 43.614910>,  <35.584225, 39.269157, 44.041931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731548, 39.890621, 43.614910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.881256, 39.974350, 43.976265>,  <35.971081, 40.024586, 44.193077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.881256, 39.974350, 43.976265>,  <35.731548, 39.890621, 43.614910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881256, 39.974350, 43.976265> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826829, 0.365744, -0.427299,
		-0.419851, 0.906871, -0.036187,
		0.374270, 0.209322, 0.903386,
		35.993538, 40.037148, 44.247280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883541, 40.554295, 43.661480>,  <35.731548, 39.890621, 43.614910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883541, 40.554295, 43.661480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.125324, 40.366890, 43.919201>,  <36.270393, 40.254448, 44.073833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.125324, 40.366890, 43.919201>,  <35.883541, 40.554295, 43.661480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125324, 40.366890, 43.919201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796638, 0.353868, -0.490047,
		0.001594, 0.809490, 0.587131,
		0.604455, -0.468512, 0.644307,
		36.306660, 40.226337, 44.112492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372086, 41.020660, 43.883575>,  <35.883541, 40.554295, 43.661480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372086, 41.020660, 43.883575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.526947, 40.660263, 43.961872>,  <36.619865, 40.444023, 44.008850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.526947, 40.660263, 43.961872>,  <36.372086, 41.020660, 43.883575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526947, 40.660263, 43.961872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850025, 0.266555, -0.454318,
		0.357163, 0.342279, 0.869068,
		0.387158, -0.900996, 0.195742,
		36.643093, 40.389965, 44.020596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303955, 41.829460, 44.098335>,  <36.372086, 41.020660, 43.883575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303955, 41.829460, 44.098335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.105446, 42.097160, 43.877129>,  <35.986340, 42.257778, 43.744404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.105446, 42.097160, 43.877129>,  <36.303955, 41.829460, 44.098335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105446, 42.097160, 43.877129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835734, -0.195781, 0.513048,
		0.235086, 0.716783, 0.656473,
		-0.496269, 0.669247, -0.553015,
		35.956566, 42.297935, 43.711224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009506, 42.276772, 44.636982>,  <36.303955, 41.829460, 44.098335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009506, 42.276772, 44.636982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.774178, 42.344048, 44.320606>,  <35.632980, 42.384411, 44.130779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.774178, 42.344048, 44.320606>,  <36.009506, 42.276772, 44.636982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774178, 42.344048, 44.320606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805202, -0.031943, 0.592140,
		0.074324, 0.985238, 0.154216,
		-0.588325, 0.168185, -0.790941,
		35.597679, 42.394505, 44.083324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572903, 42.701347, 44.873890>,  <36.009506, 42.276772, 44.636982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572903, 42.701347, 44.873890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.386818, 42.553291, 44.552254>,  <35.275166, 42.464458, 44.359272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.386818, 42.553291, 44.552254>,  <35.572903, 42.701347, 44.873890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386818, 42.553291, 44.552254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871493, 0.032296, 0.489344,
		-0.155158, 0.928414, -0.337600,
		-0.465217, -0.370142, -0.804095,
		35.247253, 42.442249, 44.311024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028187, 43.115009, 44.813282>,  <35.572903, 42.701347, 44.873890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028187, 43.115009, 44.813282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.953583, 42.782166, 44.604359>,  <34.908821, 42.582458, 44.479004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.953583, 42.782166, 44.604359>,  <35.028187, 43.115009, 44.813282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953583, 42.782166, 44.604359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914097, -0.047863, 0.402661,
		-0.360058, 0.552538, -0.751704,
		-0.186507, -0.832112, -0.522307,
		34.897633, 42.532532, 44.447666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320236, 43.224178, 44.391830>,  <35.028187, 43.115009, 44.813282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320236, 43.224178, 44.391830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.400352, 42.840645, 44.472355>,  <34.448421, 42.610527, 44.520668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.400352, 42.840645, 44.472355>,  <34.320236, 43.224178, 44.391830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400352, 42.840645, 44.472355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850854, -0.068364, 0.520936,
		-0.485728, -0.275624, -0.829518,
		0.200291, -0.958831, 0.201310,
		34.460442, 42.552994, 44.532749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694031, 43.030960, 44.469238>,  <34.320236, 43.224178, 44.391830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694031, 43.030960, 44.469238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.884270, 42.693840, 44.570034>,  <33.998413, 42.491570, 44.630512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.884270, 42.693840, 44.570034>,  <33.694031, 43.030960, 44.469238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884270, 42.693840, 44.570034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811360, -0.309602, 0.495824,
		-0.339863, -0.440268, -0.831058,
		0.475593, -0.842799, 0.251993,
		34.026947, 42.441002, 44.645630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257053, 42.455425, 44.450787>,  <33.694031, 43.030960, 44.469238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257053, 42.455425, 44.450787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.526016, 42.333344, 44.720516>,  <33.687393, 42.260094, 44.882355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.526016, 42.333344, 44.720516>,  <33.257053, 42.455425, 44.450787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526016, 42.333344, 44.720516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738294, -0.341526, 0.581620,
		0.052787, -0.888938, -0.454976,
		0.672411, -0.305203, 0.674326,
		33.727737, 42.241783, 44.922813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065044, 41.766663, 44.637383>,  <33.257053, 42.455425, 44.450787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065044, 41.766663, 44.637383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.300659, 41.871071, 44.943298>,  <33.442028, 41.933716, 45.126846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.300659, 41.871071, 44.943298>,  <33.065044, 41.766663, 44.637383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300659, 41.871071, 44.943298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659804, -0.391078, 0.641652,
		0.466575, -0.882569, -0.058141,
		0.589039, 0.261017, 0.764789,
		33.477371, 41.949375, 45.172733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098866, 41.106544, 45.149853>,  <33.065044, 41.766663, 44.637383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098866, 41.106544, 45.149853> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.194244, 41.444382, 45.341606>,  <33.251472, 41.647083, 45.456657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.194244, 41.444382, 45.341606>,  <33.098866, 41.106544, 45.149853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194244, 41.444382, 45.341606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638293, -0.235732, 0.732811,
		0.731931, -0.480726, 0.482886,
		0.238449, 0.844590, 0.479384,
		33.265778, 41.697758, 45.485420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153038, 40.910175, 45.773460>,  <33.098866, 41.106544, 45.149853>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153038, 40.910175, 45.773460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.132408, 41.305489, 45.830917>,  <33.120029, 41.542679, 45.865391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.132408, 41.305489, 45.830917>,  <33.153038, 40.910175, 45.773460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132408, 41.305489, 45.830917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658474, -0.141787, 0.739127,
		0.750834, -0.056464, 0.658073,
		-0.051573, 0.988286, 0.143639,
		33.116936, 41.601974, 45.874008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293648, 40.998032, 46.520252>,  <33.153038, 40.910175, 45.773460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293648, 40.998032, 46.520252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.110619, 41.338730, 46.418148>,  <33.000801, 41.543148, 46.356884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.110619, 41.338730, 46.418148>,  <33.293648, 40.998032, 46.520252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110619, 41.338730, 46.418148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352341, 0.089897, 0.931544,
		0.816386, 0.516187, 0.258971,
		-0.457570, 0.851745, -0.255265,
		32.973347, 41.594254, 46.341568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490528, 41.468529, 46.901344>,  <33.293648, 40.998032, 46.520252>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490528, 41.468529, 46.901344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.137138, 41.608246, 46.776466>,  <32.925106, 41.692078, 46.701538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.137138, 41.608246, 46.776466>,  <33.490528, 41.468529, 46.901344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137138, 41.608246, 46.776466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292767, 0.108600, 0.949997,
		0.365733, 0.930698, 0.006317,
		-0.883474, 0.349295, -0.312196,
		32.872097, 41.713036, 46.682808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295765, 42.017773, 47.291634>,  <33.490528, 41.468529, 46.901344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295765, 42.017773, 47.291634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.949585, 41.908630, 47.123562>,  <32.741879, 41.843143, 47.022720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.949585, 41.908630, 47.123562>,  <33.295765, 42.017773, 47.291634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949585, 41.908630, 47.123562> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386690, -0.169449, 0.906509,
		-0.318548, 0.947014, 0.041137,
		-0.865447, -0.272859, -0.420178,
		32.689953, 41.826771, 46.997509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665916, 42.352261, 47.591614>,  <33.295765, 42.017773, 47.291634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665916, 42.352261, 47.591614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.524986, 42.019592, 47.419945>,  <32.440430, 41.819992, 47.316944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.524986, 42.019592, 47.419945>,  <32.665916, 42.352261, 47.591614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524986, 42.019592, 47.419945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580656, -0.165382, 0.797174,
		-0.733967, 0.530062, -0.424649,
		-0.352322, -0.831675, -0.429168,
		32.419289, 41.770088, 47.291195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111706, 42.871311, 47.571091>,  <32.665916, 42.352261, 47.591614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111706, 42.871311, 47.571091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.049145, 43.253128, 47.672596>,  <32.011608, 43.482216, 47.733498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.049145, 43.253128, 47.672596>,  <32.111706, 42.871311, 47.571091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049145, 43.253128, 47.672596> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476042, 0.297962, -0.827407,
		-0.865403, -0.008607, -0.501002,
		-0.156401, 0.954539, 0.253760,
		32.002224, 43.539490, 47.748726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060310, 43.184464, 47.002850>,  <32.111706, 42.871311, 47.571091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060310, 43.184464, 47.002850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.111900, 43.509895, 47.229637>,  <32.142853, 43.705154, 47.365707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.111900, 43.509895, 47.229637>,  <32.060310, 43.184464, 47.002850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111900, 43.509895, 47.229637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279381, 0.518769, -0.807976,
		-0.951479, 0.262606, -0.160393,
		0.128972, 0.813583, 0.566965,
		32.150593, 43.753971, 47.399727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653233, 43.749554, 46.702354>,  <32.060310, 43.184464, 47.002850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653233, 43.749554, 46.702354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.932848, 43.921463, 46.930965>,  <32.100616, 44.024609, 47.068130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.932848, 43.921463, 46.930965>,  <31.653233, 43.749554, 46.702354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932848, 43.921463, 46.930965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332200, 0.512589, -0.791767,
		-0.633239, 0.743335, 0.215548,
		0.699036, 0.429773, 0.571527,
		32.142559, 44.050396, 47.102425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620874, 44.421982, 46.565224>,  <31.653233, 43.749554, 46.702354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620874, 44.421982, 46.565224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.988890, 44.373222, 46.714180>,  <32.209698, 44.343967, 46.803555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.988890, 44.373222, 46.714180>,  <31.620874, 44.421982, 46.565224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988890, 44.373222, 46.714180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370173, 0.581995, -0.724054,
		-0.128466, 0.804004, 0.580581,
		0.920037, -0.121899, 0.372387,
		32.264900, 44.336651, 46.825897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889917, 45.145611, 46.681889>,  <31.620874, 44.421982, 46.565224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889917, 45.145611, 46.681889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.199398, 44.895355, 46.641975>,  <32.385086, 44.745201, 46.618027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.199398, 44.895355, 46.641975>,  <31.889917, 45.145611, 46.681889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199398, 44.895355, 46.641975> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401666, 0.606201, -0.686429,
		0.489946, 0.491014, 0.720318,
		0.773704, -0.625640, -0.099782,
		32.431511, 44.707664, 46.612041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518730, 45.590466, 46.393951>,  <31.889917, 45.145611, 46.681889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518730, 45.590466, 46.393951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.692234, 45.232628, 46.350956>,  <32.796337, 45.017925, 46.325157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.692234, 45.232628, 46.350956>,  <32.518730, 45.590466, 46.393951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692234, 45.232628, 46.350956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409650, 0.302059, -0.860783,
		0.802519, 0.329341, 0.497491,
		0.433763, -0.894592, -0.107493,
		32.822365, 44.964249, 46.318707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273659, 45.591553, 46.461708>,  <32.518730, 45.590466, 46.393951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273659, 45.591553, 46.461708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.179207, 45.280510, 46.228619>,  <33.122536, 45.093884, 46.088764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.179207, 45.280510, 46.228619>,  <33.273659, 45.591553, 46.461708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179207, 45.280510, 46.228619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591644, 0.360662, -0.721027,
		0.770844, -0.515018, 0.374907,
		-0.236127, -0.777611, -0.582722,
		33.108368, 45.047226, 46.053802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847565, 45.369461, 46.234722>,  <33.273659, 45.591553, 46.461708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847565, 45.369461, 46.234722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.604816, 45.206734, 45.961601>,  <33.459167, 45.109097, 45.797729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.604816, 45.206734, 45.961601>,  <33.847565, 45.369461, 46.234722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604816, 45.206734, 45.961601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693983, 0.147539, -0.704712,
		0.387429, -0.901516, 0.192788,
		-0.606866, -0.406818, -0.682798,
		33.422756, 45.084690, 45.756763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295563, 44.822636, 45.945465>,  <33.847565, 45.369461, 46.234722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295563, 44.822636, 45.945465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.994915, 44.922432, 45.701229>,  <33.814526, 44.982311, 45.554688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.994915, 44.922432, 45.701229>,  <34.295563, 44.822636, 45.945465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994915, 44.922432, 45.701229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640306, 0.053748, -0.766237,
		-0.158353, -0.966884, -0.200150,
		-0.751620, 0.249493, -0.610591,
		33.769428, 44.997280, 45.518051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603848, 44.501270, 45.315456>,  <34.295563, 44.822636, 45.945465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603848, 44.501270, 45.315456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.321697, 44.753494, 45.185936>,  <34.152409, 44.904827, 45.108223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.321697, 44.753494, 45.185936>,  <34.603848, 44.501270, 45.315456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321697, 44.753494, 45.185936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480282, 0.089197, -0.872567,
		-0.521321, -0.771001, -0.365762,
		-0.705375, 0.630557, -0.323797,
		34.110085, 44.942661, 45.088799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331638, 44.181011, 44.785652>,  <34.603848, 44.501270, 45.315456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331638, 44.181011, 44.785652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.277882, 44.571609, 44.718250>,  <34.245628, 44.805969, 44.677811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.277882, 44.571609, 44.718250>,  <34.331638, 44.181011, 44.785652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277882, 44.571609, 44.718250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556090, -0.066427, -0.828464,
		-0.820185, -0.205041, -0.534092,
		-0.134391, 0.976497, -0.168504,
		34.237564, 44.864559, 44.667698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397823, 44.362774, 44.038788>,  <34.331638, 44.181011, 44.785652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397823, 44.362774, 44.038788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.409992, 44.740608, 44.169533>,  <34.417294, 44.967308, 44.247978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.409992, 44.740608, 44.169533>,  <34.397823, 44.362774, 44.038788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409992, 44.740608, 44.169533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519913, 0.264337, -0.812291,
		-0.853677, 0.194655, -0.483058,
		0.030427, 0.944582, 0.326863,
		34.419121, 45.023983, 44.267593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194065, 44.767681, 43.449894>,  <34.397823, 44.362774, 44.038788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194065, 44.767681, 43.449894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.422142, 44.979820, 43.700848>,  <34.558990, 45.107105, 43.851418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.422142, 44.979820, 43.700848>,  <34.194065, 44.767681, 43.449894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422142, 44.979820, 43.700848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545403, 0.326714, -0.771876,
		-0.614339, 0.782296, -0.102964,
		0.570196, 0.530350, 0.627380,
		34.593201, 45.138924, 43.889061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272068, 45.383709, 43.105415>,  <34.194065, 44.767681, 43.449894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272068, 45.383709, 43.105415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.570374, 45.365768, 43.371296>,  <34.749355, 45.355003, 43.530823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.570374, 45.365768, 43.371296>,  <34.272068, 45.383709, 43.105415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570374, 45.365768, 43.371296> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640636, 0.322089, -0.697026,
		-0.182832, 0.945647, 0.268933,
		0.745760, -0.044850, 0.664703,
		34.794102, 45.352314, 43.570705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.636063, 46.820866, 51.797626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.629990, 46.469467, 51.606625>,  <33.626347, 46.258629, 51.492023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.629990, 46.469467, 51.606625>,  <33.636063, 46.820866, 51.797626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629990, 46.469467, 51.606625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682390, -0.339950, 0.647130,
		-0.730830, 0.335667, -0.594319,
		-0.015181, -0.878500, -0.477502,
		33.625435, 46.205917, 51.463375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021420, 46.644161, 51.668808>,  <33.636063, 46.820866, 51.797626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021420, 46.644161, 51.668808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.195694, 46.285980, 51.705338>,  <33.300259, 46.071072, 51.727257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.195694, 46.285980, 51.705338>,  <33.021420, 46.644161, 51.668808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195694, 46.285980, 51.705338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762924, -0.313546, 0.565364,
		-0.477623, -0.315994, -0.819770,
		0.435687, -0.895453, 0.091323,
		33.326401, 46.017345, 51.732735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430431, 46.157017, 51.686028>,  <33.021420, 46.644161, 51.668808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430431, 46.157017, 51.686028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.739319, 45.948647, 51.831528>,  <32.924652, 45.823624, 51.918827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.739319, 45.948647, 51.831528>,  <32.430431, 46.157017, 51.686028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739319, 45.948647, 51.831528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615579, -0.471686, 0.631328,
		-0.157301, -0.711439, -0.684917,
		0.772217, -0.520929, 0.363750,
		32.970985, 45.792366, 51.940651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216221, 45.388630, 51.624416>,  <32.430431, 46.157017, 51.686028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216221, 45.388630, 51.624416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.532021, 45.378334, 51.869705>,  <32.721500, 45.372154, 52.016876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.532021, 45.378334, 51.869705>,  <32.216221, 45.388630, 51.624416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532021, 45.378334, 51.869705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521110, -0.555966, 0.647569,
		0.324257, -0.830806, -0.452348,
		0.789495, -0.025744, 0.613218,
		32.768867, 45.370609, 52.053669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249626, 44.704887, 51.766407>,  <32.216221, 45.388630, 51.624416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249626, 44.704887, 51.766407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.399727, 44.941650, 52.051735>,  <32.489788, 45.083710, 52.222931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.399727, 44.941650, 52.051735>,  <32.249626, 44.704887, 51.766407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399727, 44.941650, 52.051735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589608, -0.441375, 0.676424,
		0.715225, -0.674410, 0.183368,
		0.375253, 0.591911, 0.713321,
		32.512302, 45.119225, 52.265732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185150, 44.283501, 52.350487>,  <32.249626, 44.704887, 51.766407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185150, 44.283501, 52.350487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.286034, 44.626213, 52.530403>,  <32.346565, 44.831841, 52.638351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.286034, 44.626213, 52.530403>,  <32.185150, 44.283501, 52.350487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286034, 44.626213, 52.530403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529118, -0.267069, 0.805424,
		0.810199, -0.441129, 0.385982,
		0.252212, 0.856784, 0.449789,
		32.361698, 44.883247, 52.665340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418488, 44.171970, 53.075554>,  <32.185150, 44.283501, 52.350487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418488, 44.171970, 53.075554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.247169, 44.531403, 53.037346>,  <32.144379, 44.747063, 53.014420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.247169, 44.531403, 53.037346>,  <32.418488, 44.171970, 53.075554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.247169, 44.531403, 53.037346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570628, -0.186977, 0.799640,
		0.700677, 0.396989, 0.592834,
		-0.428294, 0.898576, -0.095523,
		32.118683, 44.800976, 53.008690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415844, 44.342968, 53.690247>,  <32.418488, 44.171970, 53.075554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415844, 44.342968, 53.690247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.144360, 44.557487, 53.489552>,  <31.981470, 44.686199, 53.369133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.144360, 44.557487, 53.489552>,  <32.415844, 44.342968, 53.690247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144360, 44.557487, 53.489552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665640, -0.160562, 0.728795,
		0.310291, 0.828616, 0.465956,
		-0.678707, 0.536297, -0.501740,
		31.940748, 44.718376, 53.339031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054642, 44.672451, 54.231293>,  <32.415844, 44.342968, 53.690247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054642, 44.672451, 54.231293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.820183, 44.712059, 53.909641>,  <31.679506, 44.735825, 53.716652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.820183, 44.712059, 53.909641>,  <32.054642, 44.672451, 54.231293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820183, 44.712059, 53.909641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799889, -0.228576, 0.554914,
		-0.128855, 0.968476, 0.213189,
		-0.586152, 0.099024, -0.804127,
		31.644337, 44.741768, 53.668404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394287, 45.004452, 54.466324>,  <32.054642, 44.672451, 54.231293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394287, 45.004452, 54.466324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.317408, 44.852242, 54.104492>,  <31.271280, 44.760914, 53.887394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.317408, 44.852242, 54.104492>,  <31.394287, 45.004452, 54.466324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317408, 44.852242, 54.104492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946503, -0.171596, 0.273290,
		-0.259217, 0.908709, -0.327192,
		-0.192196, -0.380530, -0.904576,
		31.259748, 44.738083, 53.833118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629116, 45.153873, 54.415962>,  <31.394287, 45.004452, 54.466324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629116, 45.153873, 54.415962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.720253, 44.910187, 54.112137>,  <30.774935, 44.763973, 53.929840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.720253, 44.910187, 54.112137>,  <30.629116, 45.153873, 54.415962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720253, 44.910187, 54.112137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955582, -0.289682, -0.054295,
		-0.186955, 0.738199, -0.648159,
		0.227840, -0.609218, -0.759566,
		30.788605, 44.727421, 53.884266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156101, 45.190659, 53.840046>,  <30.629116, 45.153873, 54.415962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156101, 45.190659, 53.840046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.315807, 44.824020, 53.831680>,  <30.411631, 44.604038, 53.826660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.315807, 44.824020, 53.831680>,  <30.156101, 45.190659, 53.840046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315807, 44.824020, 53.831680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907456, -0.391823, -0.151654,
		0.130810, 0.079531, -0.988212,
		0.399265, -0.916597, -0.020916,
		30.435587, 44.549042, 53.825405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.780897, 44.928047, 53.270741>,  <30.156101, 45.190659, 53.840046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.780897, 44.928047, 53.270741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.919971, 44.641327, 53.512505>,  <30.003416, 44.469296, 53.657562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.919971, 44.641327, 53.512505>,  <29.780897, 44.928047, 53.270741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.919971, 44.641327, 53.512505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804586, -0.559074, -0.200193,
		0.481409, -0.416696, -0.771110,
		0.347688, -0.716798, 0.604411,
		30.024279, 44.426289, 53.693829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.880186, 44.228352, 52.922432>,  <29.780897, 44.928047, 53.270741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.880186, 44.228352, 52.922432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.804665, 44.225029, 53.315224>,  <29.759352, 44.223034, 53.550900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.804665, 44.225029, 53.315224>,  <29.880186, 44.228352, 52.922432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804665, 44.225029, 53.315224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839532, -0.517398, -0.165790,
		0.509452, -0.855705, 0.090711,
		-0.188801, -0.008307, 0.981980,
		29.748024, 44.222538, 53.609818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237204, 43.970837, 52.477650>,  <29.880186, 44.228352, 52.922432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237204, 43.970837, 52.477650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.942574, 43.707657, 52.414955>,  <28.765797, 43.549751, 52.377338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.942574, 43.707657, 52.414955>,  <29.237204, 43.970837, 52.477650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.942574, 43.707657, 52.414955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404605, -0.242930, -0.881635,
		0.541991, -0.712807, 0.445144,
		-0.736574, -0.657945, -0.156739,
		28.721601, 43.510273, 52.367935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.563471, 43.236580, 52.399879>,  <29.237204, 43.970837, 52.477650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.563471, 43.236580, 52.399879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.205244, 43.231407, 52.221985>,  <28.990309, 43.228302, 52.115246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.205244, 43.231407, 52.221985>,  <29.563471, 43.236580, 52.399879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.205244, 43.231407, 52.221985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435414, -0.231076, -0.870068,
		-0.091517, -0.972850, 0.212575,
		-0.895567, -0.012932, -0.444740,
		28.936575, 43.227528, 52.088562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.520273, 42.625820, 52.072834>,  <29.563471, 43.236580, 52.399879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.520273, 42.625820, 52.072834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.268936, 42.861366, 51.869495>,  <29.118134, 43.002693, 51.747494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.268936, 42.861366, 51.869495>,  <29.520273, 42.625820, 52.072834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268936, 42.861366, 51.869495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442122, -0.267348, -0.856185,
		-0.640087, -0.762730, -0.092366,
		-0.628344, 0.588870, -0.508346,
		29.080433, 43.038029, 51.716991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.377100, 42.394188, 51.359688>,  <29.520273, 42.625820, 52.072834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.377100, 42.394188, 51.359688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.261055, 42.762444, 51.255180>,  <29.191427, 42.983398, 51.192478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.261055, 42.762444, 51.255180>,  <29.377100, 42.394188, 51.359688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.261055, 42.762444, 51.255180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377845, -0.140634, -0.915126,
		-0.879242, -0.364209, -0.307059,
		-0.290114, 0.920638, -0.261266,
		29.174021, 43.038635, 51.176800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.203043, 42.243862, 50.661549>,  <29.377100, 42.394188, 51.359688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.203043, 42.243862, 50.661549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.224522, 42.639664, 50.715202>,  <29.237410, 42.877144, 50.747395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.224522, 42.639664, 50.715202>,  <29.203043, 42.243862, 50.661549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.224522, 42.639664, 50.715202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455659, 0.095250, -0.885044,
		-0.888533, 0.108647, -0.445763,
		0.053698, 0.989507, 0.134139,
		29.240631, 42.936516, 50.755444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.937620, 42.601070, 50.064323>,  <29.203043, 42.243862, 50.661549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.937620, 42.601070, 50.064323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.165327, 42.884407, 50.231270>,  <29.301950, 43.054409, 50.331436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.165327, 42.884407, 50.231270>,  <28.937620, 42.601070, 50.064323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.165327, 42.884407, 50.231270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425889, 0.180160, -0.886657,
		-0.703247, 0.682493, -0.199115,
		0.569265, 0.708340, 0.417363,
		29.336107, 43.096909, 50.356480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033396, 43.056332, 49.472782>,  <28.937620, 42.601070, 50.064323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033396, 43.056332, 49.472782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.309053, 43.178589, 49.735588>,  <29.474447, 43.251942, 49.893272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.309053, 43.178589, 49.735588>,  <29.033396, 43.056332, 49.472782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.309053, 43.178589, 49.735588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659720, 0.110429, -0.743354,
		-0.299754, 0.945721, -0.125538,
		0.689142, 0.305643, 0.657013,
		29.515797, 43.270283, 49.932693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231831, 43.728722, 49.302238>,  <29.033396, 43.056332, 49.472782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.231831, 43.728722, 49.302238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.539045, 43.583710, 49.513401>,  <29.723373, 43.496700, 49.640099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.539045, 43.583710, 49.513401>,  <29.231831, 43.728722, 49.302238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.539045, 43.583710, 49.513401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622895, 0.231449, -0.747284,
		0.148730, 0.902775, 0.403581,
		0.768038, -0.362532, 0.527910,
		29.769457, 43.474949, 49.671776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.813545, 44.242382, 49.254589>,  <29.231831, 43.728722, 49.302238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.813545, 44.242382, 49.254589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.005621, 43.919868, 49.392761>,  <30.120867, 43.726360, 49.475662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.005621, 43.919868, 49.392761>,  <29.813545, 44.242382, 49.254589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.005621, 43.919868, 49.392761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795307, 0.234083, -0.559188,
		0.370008, 0.543236, 0.753650,
		0.480188, -0.806288, 0.345426,
		30.149677, 43.677982, 49.496387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493963, 44.467949, 49.294071>,  <29.813545, 44.242382, 49.254589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493963, 44.467949, 49.294071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.524815, 44.070030, 49.267426>,  <30.543325, 43.831280, 49.251438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.524815, 44.070030, 49.267426>,  <30.493963, 44.467949, 49.294071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524815, 44.070030, 49.267426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875707, 0.099534, -0.472472,
		0.476642, -0.021893, 0.878825,
		0.077129, -0.994793, -0.066614,
		30.547953, 43.771591, 49.247440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218056, 44.216412, 49.497768>,  <30.493963, 44.467949, 49.294071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218056, 44.216412, 49.497768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.061813, 43.948357, 49.245312>,  <30.968067, 43.787525, 49.093838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.061813, 43.948357, 49.245312>,  <31.218056, 44.216412, 49.497768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061813, 43.948357, 49.245312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875505, -0.058573, -0.479645,
		0.284459, -0.739924, 0.609587,
		-0.390607, -0.670136, -0.631145,
		30.944632, 43.747314, 49.055969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679312, 43.625546, 49.464043>,  <31.218056, 44.216412, 49.497768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679312, 43.625546, 49.464043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.460205, 43.593414, 49.130936>,  <31.328741, 43.574135, 48.931072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.460205, 43.593414, 49.130936>,  <31.679312, 43.625546, 49.464043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460205, 43.593414, 49.130936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829594, 0.076678, -0.553078,
		0.108281, -0.993815, 0.024636,
		-0.547768, -0.080326, -0.832765,
		31.295876, 43.569317, 48.881107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945435, 43.088634, 49.016441>,  <31.679312, 43.625546, 49.464043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945435, 43.088634, 49.016441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.723921, 43.317383, 48.774353>,  <31.591013, 43.454632, 48.629101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.723921, 43.317383, 48.774353>,  <31.945435, 43.088634, 49.016441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723921, 43.317383, 48.774353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760625, 0.051698, -0.647130,
		-0.338783, -0.818716, -0.463606,
		-0.553783, 0.571867, -0.605221,
		31.557785, 43.488941, 48.592785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019848, 42.820568, 48.307903>,  <31.945435, 43.088634, 49.016441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019848, 42.820568, 48.307903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.883368, 43.188820, 48.231976>,  <31.801479, 43.409771, 48.186420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.883368, 43.188820, 48.231976>,  <32.019848, 42.820568, 48.307903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883368, 43.188820, 48.231976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595917, 0.055681, -0.801113,
		-0.726956, -0.386456, -0.567615,
		-0.341201, 0.920625, -0.189819,
		31.781008, 43.465008, 48.175030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837187, 42.298939, 47.889423>,  <32.019848, 42.820568, 48.307903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837187, 42.298939, 47.889423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.954000, 41.948975, 47.734894>,  <32.024090, 41.738995, 47.642178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.954000, 41.948975, 47.734894>,  <31.837187, 42.298939, 47.889423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954000, 41.948975, 47.734894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558019, -0.483918, 0.674120,
		-0.776744, 0.018709, -0.629538,
		0.292033, -0.874914, -0.386320,
		32.041611, 41.686501, 47.618999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252584, 41.916981, 47.875446>,  <31.837187, 42.298939, 47.889423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252584, 41.916981, 47.875446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.535051, 41.634422, 47.856106>,  <31.704531, 41.464890, 47.844501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.535051, 41.634422, 47.856106>,  <31.252584, 41.916981, 47.875446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535051, 41.634422, 47.856106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496239, -0.542477, 0.677839,
		-0.505049, -0.454675, -0.733619,
		0.706167, -0.706392, -0.048350,
		31.746901, 41.422504, 47.841602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927666, 41.209530, 47.766804>,  <31.252584, 41.916981, 47.875446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927666, 41.209530, 47.766804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.281742, 41.133492, 47.936653>,  <31.494188, 41.087868, 48.038563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.281742, 41.133492, 47.936653>,  <30.927666, 41.209530, 47.766804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281742, 41.133492, 47.936653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439763, -0.639724, 0.630366,
		0.151812, -0.744726, -0.649874,
		0.885190, -0.190094, 0.424621,
		31.547298, 41.076462, 48.064041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921041, 40.570419, 47.875782>,  <30.927666, 41.209530, 47.766804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921041, 40.570419, 47.875782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.207296, 40.700508, 48.123039>,  <31.379049, 40.778561, 48.271393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.207296, 40.700508, 48.123039>,  <30.921041, 40.570419, 47.875782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207296, 40.700508, 48.123039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421053, -0.505243, 0.753288,
		0.557296, -0.799350, -0.224635,
		0.715636, 0.325222, 0.618139,
		31.421988, 40.798073, 48.308479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.984167, 40.042397, 48.375175>,  <30.921041, 40.570419, 47.875782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.984167, 40.042397, 48.375175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.176565, 40.340065, 48.560589>,  <31.292004, 40.518665, 48.671837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.176565, 40.340065, 48.560589>,  <30.984167, 40.042397, 48.375175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176565, 40.340065, 48.560589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385191, -0.295569, 0.874223,
		0.787573, -0.599045, 0.144479,
		0.480995, 0.744167, 0.463529,
		31.320864, 40.563316, 48.699646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261648, 39.745865, 48.852398>,  <30.984167, 40.042397, 48.375175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261648, 39.745865, 48.852398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.260197, 40.125565, 48.978203>,  <31.259325, 40.353382, 49.053688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.260197, 40.125565, 48.978203>,  <31.261648, 39.745865, 48.852398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260197, 40.125565, 48.978203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427902, -0.285742, 0.857468,
		0.903818, -0.131468, 0.407221,
		-0.003631, 0.949246, 0.314514,
		31.259108, 40.410339, 49.072556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520107, 39.818596, 49.578156>,  <31.261648, 39.745865, 48.852398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520107, 39.818596, 49.578156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.292158, 40.140701, 49.512669>,  <31.155390, 40.333965, 49.473377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.292158, 40.140701, 49.512669>,  <31.520107, 39.818596, 49.578156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.292158, 40.140701, 49.512669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547468, -0.223484, 0.806433,
		0.612801, 0.549191, 0.568211,
		-0.569872, 0.805260, -0.163713,
		31.121197, 40.382278, 49.463554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.891796, 39.484154, 50.051769>,  <31.520107, 39.818596, 49.578156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.891796, 39.484154, 50.051769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.787342, 39.101608, 49.999344>,  <31.724670, 38.872082, 49.967888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.787342, 39.101608, 49.999344>,  <31.891796, 39.484154, 50.051769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787342, 39.101608, 49.999344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461781, -0.004533, -0.886983,
		0.847684, -0.292143, 0.442815,
		-0.261133, -0.956364, -0.131063,
		31.709002, 38.814697, 49.960026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492748, 39.159969, 49.852245>,  <31.891796, 39.484154, 50.051769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492748, 39.159969, 49.852245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.194092, 38.938126, 49.705311>,  <32.014896, 38.805019, 49.617149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.194092, 38.938126, 49.705311>,  <32.492748, 39.159969, 49.852245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194092, 38.938126, 49.705311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467765, -0.045077, -0.882703,
		0.472993, -0.830892, 0.293082,
		-0.746642, -0.554606, -0.367341,
		31.970098, 38.771744, 49.595108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804668, 38.669262, 49.584610>,  <32.492748, 39.159969, 49.852245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804668, 38.669262, 49.584610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.449154, 38.632439, 49.405022>,  <32.235844, 38.610344, 49.297268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.449154, 38.632439, 49.405022>,  <32.804668, 38.669262, 49.584610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449154, 38.632439, 49.405022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457734, -0.129025, -0.879677,
		0.023056, -0.987358, 0.156816,
		-0.888790, -0.092062, -0.448973,
		32.182518, 38.604820, 49.270329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960865, 38.195030, 49.130920>,  <32.804668, 38.669262, 49.584610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960865, 38.195030, 49.130920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.616188, 38.341057, 48.989944>,  <32.409382, 38.428673, 48.905357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.616188, 38.341057, 48.989944>,  <32.960865, 38.195030, 49.130920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616188, 38.341057, 48.989944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379086, 0.001429, -0.925360,
		-0.337316, -0.930980, -0.139624,
		-0.861691, 0.365068, -0.352440,
		32.357681, 38.450577, 48.884212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797836, 37.756458, 48.549786>,  <32.960865, 38.195030, 49.130920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797836, 37.756458, 48.549786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.616581, 38.110176, 48.504730>,  <32.507828, 38.322407, 48.477695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.616581, 38.110176, 48.504730>,  <32.797836, 37.756458, 48.549786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616581, 38.110176, 48.504730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295538, 0.029816, -0.954866,
		-0.841023, -0.465978, -0.274853,
		-0.453141, 0.884294, -0.112638,
		32.480640, 38.375465, 48.470940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563187, 37.593666, 47.856960>,  <32.797836, 37.756458, 48.549786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563187, 37.593666, 47.856960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.503334, 37.986786, 47.900257>,  <32.467422, 38.222656, 47.926235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.503334, 37.986786, 47.900257>,  <32.563187, 37.593666, 47.856960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503334, 37.986786, 47.900257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503235, 0.169936, -0.847276,
		-0.851096, -0.072309, -0.520007,
		-0.149633, 0.982799, 0.108243,
		32.458443, 38.281624, 47.932732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421589, 37.873344, 47.136532>,  <32.563187, 37.593666, 47.856960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421589, 37.873344, 47.136532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.524826, 38.190475, 47.357372>,  <32.586769, 38.380753, 47.489876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.524826, 38.190475, 47.357372>,  <32.421589, 37.873344, 47.136532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524826, 38.190475, 47.357372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559504, 0.343220, -0.754424,
		-0.787618, 0.503615, -0.355006,
		0.258094, 0.792826, 0.552101,
		32.602253, 38.428322, 47.523003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.024426, 40.907063, 54.220455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.873745, 41.272018, 54.156403>,  <31.783337, 41.490993, 54.117970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.873745, 41.272018, 54.156403>,  <32.024426, 40.907063, 54.220455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873745, 41.272018, 54.156403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639000, 0.130785, -0.758007,
		-0.670655, -0.387866, -0.632283,
		-0.376699, 0.912390, -0.160135,
		31.760735, 41.545734, 54.108364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983046, 40.980671, 53.378403>,  <32.024426, 40.907063, 54.220455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983046, 40.980671, 53.378403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.940128, 41.347061, 53.533054>,  <31.914377, 41.566895, 53.625847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.940128, 41.347061, 53.533054>,  <31.983046, 40.980671, 53.378403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940128, 41.347061, 53.533054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553590, 0.378056, -0.742032,
		-0.825849, 0.134421, -0.547635,
		-0.107293, 0.915972, 0.386631,
		31.907940, 41.621853, 53.649044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780863, 41.390533, 52.812393>,  <31.983046, 40.980671, 53.378403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780863, 41.390533, 52.812393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.965925, 41.653107, 53.050735>,  <32.076962, 41.810650, 53.193741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.965925, 41.653107, 53.050735>,  <31.780863, 41.390533, 52.812393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.965925, 41.653107, 53.050735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466284, 0.391463, -0.793307,
		-0.754008, 0.644868, -0.124970,
		0.462657, 0.656432, 0.595857,
		32.104721, 41.850037, 53.229492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010384, 42.029263, 52.426270>,  <31.780863, 41.390533, 52.812393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010384, 42.029263, 52.426270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.209335, 42.095490, 52.766907>,  <32.328705, 42.135223, 52.971287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.209335, 42.095490, 52.766907>,  <32.010384, 42.029263, 52.426270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209335, 42.095490, 52.766907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753521, 0.403998, -0.518644,
		-0.429909, 0.899652, 0.076182,
		0.497377, 0.165565, 0.851589,
		32.358547, 42.145161, 53.022385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126701, 42.794701, 52.454914>,  <32.010384, 42.029263, 52.426270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126701, 42.794701, 52.454914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.406300, 42.612022, 52.675037>,  <32.574059, 42.502415, 52.807110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.406300, 42.612022, 52.675037>,  <32.126701, 42.794701, 52.454914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406300, 42.612022, 52.675037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709601, 0.538418, -0.454502,
		-0.088724, 0.708191, 0.700424,
		0.698995, -0.456696, 0.550304,
		32.615997, 42.475014, 52.840130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574749, 43.276474, 52.601620>,  <32.126701, 42.794701, 52.454914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574749, 43.276474, 52.601620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.804222, 42.973343, 52.725929>,  <32.941906, 42.791466, 52.800514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.804222, 42.973343, 52.725929>,  <32.574749, 43.276474, 52.601620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804222, 42.973343, 52.725929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803503, 0.447067, -0.393082,
		0.158951, 0.475215, 0.865393,
		0.573687, -0.757827, 0.310774,
		32.976330, 42.745995, 52.819160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166367, 43.585041, 52.905037>,  <32.574749, 43.276474, 52.601620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166367, 43.585041, 52.905037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.257004, 43.216545, 52.778568>,  <33.311386, 42.995445, 52.702686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.257004, 43.216545, 52.778568>,  <33.166367, 43.585041, 52.905037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257004, 43.216545, 52.778568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816215, 0.356733, -0.454462,
		0.531459, -0.155086, 0.832766,
		0.226594, -0.921244, -0.316172,
		33.324982, 42.940170, 52.683716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794338, 43.566830, 52.938503>,  <33.166367, 43.585041, 52.905037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794338, 43.566830, 52.938503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.725952, 43.260849, 52.690109>,  <33.684921, 43.077259, 52.541073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.725952, 43.260849, 52.690109>,  <33.794338, 43.566830, 52.938503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725952, 43.260849, 52.690109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858958, 0.193035, -0.474267,
		0.482664, -0.614478, 0.624061,
		-0.170961, -0.764954, -0.620982,
		33.674664, 43.031364, 52.503815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474323, 43.132545, 52.907566>,  <33.794338, 43.566830, 52.938503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474323, 43.132545, 52.907566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.285149, 42.985344, 52.587341>,  <34.171642, 42.897022, 52.395206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.285149, 42.985344, 52.587341>,  <34.474323, 43.132545, 52.907566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285149, 42.985344, 52.587341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840318, 0.084827, -0.535416,
		0.264943, -0.925948, 0.269119,
		-0.472939, -0.368001, -0.800565,
		34.143269, 42.874943, 52.347172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891556, 42.667873, 52.633545>,  <34.474323, 43.132545, 52.907566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891556, 42.667873, 52.633545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.649590, 42.782257, 52.336273>,  <34.504410, 42.850887, 52.157909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.649590, 42.782257, 52.336273>,  <34.891556, 42.667873, 52.633545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649590, 42.782257, 52.336273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795654, 0.179687, -0.578487,
		-0.031885, -0.941244, -0.336219,
		-0.604912, 0.285959, -0.743175,
		34.468117, 42.868046, 52.113319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324974, 42.430122, 52.031456>,  <34.891556, 42.667873, 52.633545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324974, 42.430122, 52.031456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.049530, 42.670486, 51.869114>,  <34.884262, 42.814705, 51.771709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.049530, 42.670486, 51.869114>,  <35.324974, 42.430122, 52.031456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049530, 42.670486, 51.869114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669716, 0.312448, -0.673689,
		-0.278020, -0.735718, -0.617596,
		-0.688611, 0.600913, -0.405855,
		34.842945, 42.850761, 51.747356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146881, 42.285057, 51.375389>,  <35.324974, 42.430122, 52.031456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146881, 42.285057, 51.375389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.089863, 42.680862, 51.384628>,  <35.055653, 42.918346, 51.390171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.089863, 42.680862, 51.384628>,  <35.146881, 42.285057, 51.375389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089863, 42.680862, 51.384628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750732, 0.123302, -0.648998,
		-0.645043, -0.075172, -0.760440,
		-0.142550, 0.989518, 0.023102,
		35.047096, 42.977718, 51.391560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852173, 41.850346, 50.851574>,  <35.146881, 42.285057, 51.375389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852173, 41.850346, 50.851574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.939724, 41.478477, 50.733051>,  <34.992252, 41.255356, 50.661938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.939724, 41.478477, 50.733051>,  <34.852173, 41.850346, 50.851574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939724, 41.478477, 50.733051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780017, -0.349151, 0.519294,
		-0.586231, 0.117465, -0.801583,
		0.218874, -0.929675, -0.296308,
		35.005386, 41.199574, 50.644157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264637, 41.571972, 50.618172>,  <34.852173, 41.850346, 50.851574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264637, 41.571972, 50.618172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.498405, 41.259743, 50.706860>,  <34.638668, 41.072407, 50.760071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.498405, 41.259743, 50.706860>,  <34.264637, 41.571972, 50.618172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498405, 41.259743, 50.706860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731991, -0.389210, 0.559201,
		-0.350197, -0.489111, -0.798832,
		0.584425, -0.780568, 0.221724,
		34.673733, 41.025570, 50.773376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795387, 41.054104, 50.640244>,  <34.264637, 41.571972, 50.618172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795387, 41.054104, 50.640244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.118073, 40.897751, 50.817520>,  <34.311684, 40.803940, 50.923885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.118073, 40.897751, 50.817520>,  <33.795387, 41.054104, 50.640244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118073, 40.897751, 50.817520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590911, -0.525966, 0.611705,
		-0.006003, -0.755359, -0.655284,
		0.806714, -0.390886, 0.443193,
		34.360088, 40.780483, 50.950478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774380, 40.351017, 50.524693>,  <33.795387, 41.054104, 50.640244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774380, 40.351017, 50.524693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.986740, 40.410881, 50.858337>,  <34.114155, 40.446800, 51.058525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.986740, 40.410881, 50.858337>,  <33.774380, 40.351017, 50.524693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986740, 40.410881, 50.858337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574532, -0.659974, 0.484095,
		0.622943, -0.736232, -0.264396,
		0.530900, 0.149660, 0.834115,
		34.146011, 40.455780, 51.108570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775387, 39.718586, 50.792255>,  <33.774380, 40.351017, 50.524693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775387, 39.718586, 50.792255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.875565, 39.944504, 51.106781>,  <33.935669, 40.080055, 51.295498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.875565, 39.944504, 51.106781>,  <33.775387, 39.718586, 50.792255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875565, 39.944504, 51.106781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591214, -0.553942, 0.586186,
		0.766645, -0.611685, 0.195183,
		0.250441, 0.564792, 0.786314,
		33.950695, 40.113941, 51.342674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035080, 39.233547, 51.423225>,  <33.775387, 39.718586, 50.792255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035080, 39.233547, 51.423225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.917664, 39.562477, 51.618210>,  <33.847214, 39.759834, 51.735203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.917664, 39.562477, 51.618210>,  <34.035080, 39.233547, 51.423225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917664, 39.562477, 51.618210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437037, -0.568957, 0.696625,
		0.850197, -0.008554, 0.526396,
		-0.293538, 0.822323, 0.487464,
		33.829601, 39.809174, 51.764450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161621, 39.121559, 52.137634>,  <34.035080, 39.233547, 51.423225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161621, 39.121559, 52.137634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.881065, 39.406281, 52.122780>,  <33.712730, 39.577114, 52.113869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.881065, 39.406281, 52.122780>,  <34.161621, 39.121559, 52.137634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881065, 39.406281, 52.122780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541183, -0.497915, 0.677644,
		0.463863, 0.495390, 0.734452,
		-0.701393, 0.711807, -0.037133,
		33.670647, 39.619823, 52.111641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030685, 39.260609, 52.850838>,  <34.161621, 39.121559, 52.137634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030685, 39.260609, 52.850838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.730331, 39.399559, 52.626160>,  <33.550117, 39.482929, 52.491352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.730331, 39.399559, 52.626160>,  <34.030685, 39.260609, 52.850838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730331, 39.399559, 52.626160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660002, -0.364058, 0.657160,
		0.023793, 0.864171, 0.502635,
		-0.750887, 0.347376, -0.561693,
		33.505066, 39.503773, 52.457653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533115, 39.590569, 53.359032>,  <34.030685, 39.260609, 52.850838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533115, 39.590569, 53.359032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.333660, 39.494499, 53.025883>,  <33.213989, 39.436859, 52.825993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.333660, 39.494499, 53.025883>,  <33.533115, 39.590569, 53.359032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333660, 39.494499, 53.025883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601511, -0.595973, 0.531978,
		-0.624138, 0.766246, 0.152705,
		-0.498634, -0.240173, -0.832875,
		33.184071, 39.422447, 52.776020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880199, 39.589191, 53.609798>,  <33.533115, 39.590569, 53.359032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880199, 39.589191, 53.609798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.826973, 39.409821, 53.256252>,  <32.795036, 39.302200, 53.044125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.826973, 39.409821, 53.256252>,  <32.880199, 39.589191, 53.609798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826973, 39.409821, 53.256252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720880, -0.568219, 0.396811,
		-0.680166, 0.689959, -0.247650,
		-0.133064, -0.448424, -0.883861,
		32.787052, 39.275295, 52.991093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153652, 39.697140, 53.325428>,  <32.880199, 39.589191, 53.609798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153652, 39.697140, 53.325428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.319511, 39.357040, 53.195717>,  <32.419025, 39.152981, 53.117889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.319511, 39.357040, 53.195717>,  <32.153652, 39.697140, 53.325428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319511, 39.357040, 53.195717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738745, -0.522597, 0.425615,
		-0.531341, 0.063076, -0.844807,
		0.414647, -0.850243, -0.324274,
		32.443905, 39.101967, 53.098434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622669, 39.365402, 53.005795>,  <32.153652, 39.697140, 53.325428>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622669, 39.365402, 53.005795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.879984, 39.063843, 53.059200>,  <32.034374, 38.882908, 53.091244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.879984, 39.063843, 53.059200>,  <31.622669, 39.365402, 53.005795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879984, 39.063843, 53.059200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736173, -0.561160, 0.378351,
		-0.210313, -0.341678, -0.915983,
		0.643287, -0.753894, 0.133515,
		32.072971, 38.837673, 53.099255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165852, 38.717907, 52.891769>,  <31.622669, 39.365402, 53.005795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165852, 38.717907, 52.891769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.492392, 38.525047, 53.018959>,  <31.688316, 38.409332, 53.095272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.492392, 38.525047, 53.018959>,  <31.165852, 38.717907, 52.891769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492392, 38.525047, 53.018959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576779, -0.651998, 0.492163,
		-0.029980, -0.585175, -0.810352,
		0.816349, -0.482150, 0.317970,
		31.737297, 38.380402, 53.114349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.091698, 37.909786, 52.702343>,  <31.165852, 38.717907, 52.891769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.091698, 37.909786, 52.702343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.337387, 37.958984, 53.014137>,  <31.484800, 37.988503, 53.201214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.337387, 37.958984, 53.014137>,  <31.091698, 37.909786, 52.702343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337387, 37.958984, 53.014137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654227, -0.472978, 0.590151,
		0.441270, -0.872446, -0.210044,
		0.614221, 0.123000, 0.779489,
		31.521654, 37.995884, 53.247986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206360, 37.109032, 52.628365>,  <31.091698, 37.909786, 52.702343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206360, 37.109032, 52.628365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.923920, 37.386490, 52.571415>,  <30.754456, 37.552967, 52.537247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.923920, 37.386490, 52.571415>,  <31.206360, 37.109032, 52.628365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923920, 37.386490, 52.571415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367898, 0.187569, -0.910752,
		-0.605038, -0.695462, -0.387636,
		-0.706102, 0.693650, -0.142373,
		30.712090, 37.594585, 52.528702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.930197, 37.002552, 51.889809>,  <31.206360, 37.109032, 52.628365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.930197, 37.002552, 51.889809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.871092, 37.386566, 51.984886>,  <30.835629, 37.616974, 52.041931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.871092, 37.386566, 51.984886>,  <30.930197, 37.002552, 51.889809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871092, 37.386566, 51.984886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212535, 0.265536, -0.940383,
		-0.965917, -0.088434, -0.243277,
		-0.147761, 0.960036, 0.237691,
		30.826763, 37.674576, 52.056194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635731, 37.210613, 51.247116>,  <30.930197, 37.002552, 51.889809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635731, 37.210613, 51.247116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.729338, 37.558815, 51.420303>,  <30.785501, 37.767735, 51.524216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.729338, 37.558815, 51.420303>,  <30.635731, 37.210613, 51.247116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.729338, 37.558815, 51.420303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019700, 0.440993, -0.897294,
		-0.972033, 0.218511, 0.086051,
		0.234017, 0.870504, 0.432965,
		30.799543, 37.819965, 51.550194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308540, 37.745735, 50.894283>,  <30.635731, 37.210613, 51.247116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308540, 37.745735, 50.894283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.613821, 37.933762, 51.071625>,  <30.796989, 38.046577, 51.178032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.613821, 37.933762, 51.071625>,  <30.308540, 37.745735, 50.894283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613821, 37.933762, 51.071625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194830, 0.486799, -0.851509,
		-0.616091, 0.736251, 0.279941,
		0.763199, 0.470066, 0.443356,
		30.842781, 38.074783, 51.204632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210903, 38.421127, 50.644321>,  <30.308540, 37.745735, 50.894283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210903, 38.421127, 50.644321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.583958, 38.405075, 50.787750>,  <30.807791, 38.395443, 50.873810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.583958, 38.405075, 50.787750>,  <30.210903, 38.421127, 50.644321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.583958, 38.405075, 50.787750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351557, 0.324709, -0.878050,
		-0.081200, 0.944963, 0.316942,
		0.932638, -0.040126, 0.358575,
		30.863749, 38.393036, 50.895321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462744, 39.017754, 50.471329>,  <30.210903, 38.421127, 50.644321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462744, 39.017754, 50.471329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.786261, 38.788849, 50.525555>,  <30.980370, 38.651505, 50.558090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.786261, 38.788849, 50.525555>,  <30.462744, 39.017754, 50.471329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.786261, 38.788849, 50.525555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391202, 0.351405, -0.850574,
		0.439113, 0.740967, 0.508082,
		0.808790, -0.572260, 0.135561,
		31.028898, 38.617172, 50.566223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192326, 39.384377, 50.332138>,  <30.462744, 39.017754, 50.471329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192326, 39.384377, 50.332138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.287430, 39.000519, 50.272057>,  <31.344492, 38.770206, 50.236008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.287430, 39.000519, 50.272057>,  <31.192326, 39.384377, 50.332138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287430, 39.000519, 50.272057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492488, 0.252385, -0.832921,
		0.837214, 0.124062, 0.532618,
		0.237759, -0.959641, -0.150201,
		31.358757, 38.712627, 50.226997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466740, 40.144321, 50.329128>,  <31.192326, 39.384377, 50.332138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466740, 40.144321, 50.329128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.182482, 40.312302, 50.103340>,  <31.011927, 40.413090, 49.967869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.182482, 40.312302, 50.103340>,  <31.466740, 40.144321, 50.329128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182482, 40.312302, 50.103340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540195, 0.188323, 0.820197,
		0.450746, 0.887791, 0.093026,
		-0.710645, 0.419953, -0.564467,
		30.969288, 40.438286, 49.934002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271898, 40.755302, 50.632759>,  <31.466740, 40.144321, 50.329128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271898, 40.755302, 50.632759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.954285, 40.643471, 50.416855>,  <30.763716, 40.576374, 50.287312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.954285, 40.643471, 50.416855>,  <31.271898, 40.755302, 50.632759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954285, 40.643471, 50.416855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600366, 0.221576, 0.768417,
		-0.095232, 0.934206, -0.343787,
		-0.794035, -0.279576, -0.539765,
		30.716074, 40.559597, 50.254925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.755117, 41.232738, 50.826004>,  <31.271898, 40.755302, 50.632759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.755117, 41.232738, 50.826004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.556297, 40.944122, 50.633209>,  <30.437004, 40.770950, 50.517532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.556297, 40.944122, 50.633209>,  <30.755117, 41.232738, 50.826004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.556297, 40.944122, 50.633209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739350, 0.061416, 0.670514,
		-0.454203, 0.689640, -0.564000,
		-0.497052, -0.721543, -0.481990,
		30.407181, 40.727661, 50.488613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114599, 41.466110, 50.888172>,  <30.755117, 41.232738, 50.826004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.114599, 41.466110, 50.888172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.064941, 41.081688, 50.789413>,  <30.035147, 40.851036, 50.730156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.064941, 41.081688, 50.789413>,  <30.114599, 41.466110, 50.888172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.064941, 41.081688, 50.789413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729749, -0.080173, 0.678998,
		-0.672350, 0.264468, -0.691377,
		-0.124143, -0.961056, -0.246900,
		30.027699, 40.793369, 50.715343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392639, 41.403316, 50.751598>,  <30.114599, 41.466110, 50.888172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392639, 41.403316, 50.751598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.510448, 41.026314, 50.814762>,  <29.581135, 40.800114, 50.852661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.510448, 41.026314, 50.814762>,  <29.392639, 41.403316, 50.751598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.510448, 41.026314, 50.814762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836402, -0.174300, 0.519665,
		-0.462265, -0.285129, -0.839651,
		0.294522, -0.942508, 0.157909,
		29.598804, 40.743561, 50.862133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.819487, 40.985012, 50.502197>,  <29.392639, 41.403316, 50.751598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.819487, 40.985012, 50.502197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.018539, 40.798340, 50.794655>,  <29.137972, 40.686337, 50.970131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.018539, 40.798340, 50.794655>,  <28.819487, 40.985012, 50.502197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.018539, 40.798340, 50.794655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852348, -0.106810, 0.511951,
		-0.160824, -0.877952, -0.450927,
		0.497632, -0.466681, 0.731143,
		29.167830, 40.658337, 51.014000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.345169, 40.405285, 50.785797>,  <28.819487, 40.985012, 50.502197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.345169, 40.405285, 50.785797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.617355, 40.426376, 51.078148>,  <28.780668, 40.439034, 51.253559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.617355, 40.426376, 51.078148>,  <28.345169, 40.405285, 50.785797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.617355, 40.426376, 51.078148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710842, -0.194717, 0.675862,
		0.177955, -0.979441, -0.095013,
		0.680468, 0.052734, 0.730878,
		28.821495, 40.442196, 51.297413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.273802, 39.842236, 51.119957>,  <28.345169, 40.405285, 50.785797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.273802, 39.842236, 51.119957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.470516, 40.044678, 51.403366>,  <28.588545, 40.166142, 51.573410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.470516, 40.044678, 51.403366>,  <28.273802, 39.842236, 51.119957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.470516, 40.044678, 51.403366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705979, -0.244520, 0.664683,
		0.509648, -0.827083, 0.237050,
		0.491784, 0.506107, 0.708523,
		28.618052, 40.196510, 51.615921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.341604, 39.437542, 51.740189>,  <28.273802, 39.842236, 51.119957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.341604, 39.437542, 51.740189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.347225, 39.817574, 51.864864>,  <28.350597, 40.045593, 51.939671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.347225, 39.817574, 51.864864>,  <28.341604, 39.437542, 51.740189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.347225, 39.817574, 51.864864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800354, -0.176163, 0.573062,
		0.599363, -0.257514, 0.757925,
		0.014053, 0.950081, 0.311689,
		28.351440, 40.102596, 51.958370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.849873, 44.296013, 41.338905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.750519, 44.598381, 41.581192>,  <39.690907, 44.779800, 41.726566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.750519, 44.598381, 41.581192>,  <39.849873, 44.296013, 41.338905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750519, 44.598381, 41.581192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574181, -0.618512, 0.536431,
		0.780142, -0.214554, 0.587660,
		-0.248382, 0.755916, 0.605720,
		39.676003, 44.825157, 41.762909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886909, 44.081402, 42.012794>,  <39.849873, 44.296013, 41.338905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886909, 44.081402, 42.012794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.635597, 44.391144, 42.042850>,  <39.484810, 44.576988, 42.060886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.635597, 44.391144, 42.042850>,  <39.886909, 44.081402, 42.012794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635597, 44.391144, 42.042850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636943, -0.567432, 0.521847,
		0.446731, 0.280004, 0.849723,
		-0.628279, 0.774350, 0.075143,
		39.447113, 44.623447, 42.065392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502281, 43.957790, 42.613922>,  <39.886909, 44.081402, 42.012794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502281, 43.957790, 42.613922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.275669, 44.260551, 42.483601>,  <39.139702, 44.442207, 42.405407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.275669, 44.260551, 42.483601>,  <39.502281, 43.957790, 42.613922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275669, 44.260551, 42.483601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798939, -0.407664, 0.442162,
		0.201853, 0.510796, 0.835669,
		-0.566526, 0.756901, -0.325806,
		39.105713, 44.487621, 42.385860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060699, 44.148899, 43.224461>,  <39.502281, 43.957790, 42.613922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060699, 44.148899, 43.224461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.876991, 44.253372, 42.884850>,  <38.766766, 44.316055, 42.681084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.876991, 44.253372, 42.884850>,  <39.060699, 44.148899, 43.224461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876991, 44.253372, 42.884850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797563, -0.542068, 0.264679,
		-0.391101, 0.798714, 0.457270,
		-0.459274, 0.261185, -0.849029,
		38.739208, 44.331726, 42.630142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419544, 44.421295, 43.458504>,  <39.060699, 44.148899, 43.224461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419544, 44.421295, 43.458504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.390633, 44.305519, 43.076717>,  <38.373283, 44.236053, 42.847645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.390633, 44.305519, 43.076717>,  <38.419544, 44.421295, 43.458504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390633, 44.305519, 43.076717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802672, -0.551154, 0.227921,
		-0.592025, 0.782596, -0.192484,
		-0.072282, -0.289436, -0.954464,
		38.368950, 44.218689, 42.790379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708408, 44.491394, 43.344082>,  <38.419544, 44.421295, 43.458504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708408, 44.491394, 43.344082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.832932, 44.281067, 43.027447>,  <37.907646, 44.154869, 42.837467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.832932, 44.281067, 43.027447>,  <37.708408, 44.491394, 43.344082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832932, 44.281067, 43.027447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834539, -0.549708, 0.036952,
		-0.454570, 0.649105, -0.609941,
		0.311304, -0.525817, -0.791585,
		37.926323, 44.123322, 42.789970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158539, 44.487587, 42.849609>,  <37.708408, 44.491394, 43.344082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158539, 44.487587, 42.849609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.396774, 44.170837, 42.795628>,  <37.539715, 43.980789, 42.763237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.396774, 44.170837, 42.795628>,  <37.158539, 44.487587, 42.849609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396774, 44.170837, 42.795628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786385, -0.609054, 0.103209,
		-0.163925, 0.044658, -0.985461,
		0.595590, -0.791870, -0.134957,
		37.575451, 43.933277, 42.755142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759655, 44.109867, 42.449451>,  <37.158539, 44.487587, 42.849609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759655, 44.109867, 42.449451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.015114, 43.834282, 42.586544>,  <37.168388, 43.668930, 42.668800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.015114, 43.834282, 42.586544>,  <36.759655, 44.109867, 42.449451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015114, 43.834282, 42.586544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769487, -0.574360, 0.279284,
		0.004434, -0.442090, -0.896960,
		0.638647, -0.688961, 0.342729,
		37.206707, 43.627594, 42.689362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366722, 43.377525, 42.356148>,  <36.759655, 44.109867, 42.449451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366722, 43.377525, 42.356148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.679985, 43.287109, 42.587864>,  <36.867943, 43.232861, 42.726894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.679985, 43.287109, 42.587864>,  <36.366722, 43.377525, 42.356148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679985, 43.287109, 42.587864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547305, -0.692777, 0.469593,
		0.295168, -0.684810, -0.666266,
		0.783156, -0.226042, 0.579286,
		36.914932, 43.219296, 42.761650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463741, 42.641327, 42.268250>,  <36.366722, 43.377525, 42.356148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463741, 42.641327, 42.268250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.628403, 42.769638, 42.609459>,  <36.727200, 42.846626, 42.814182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.628403, 42.769638, 42.609459>,  <36.463741, 42.641327, 42.268250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628403, 42.769638, 42.609459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628580, -0.577789, 0.520622,
		0.659869, -0.750507, -0.036216,
		0.411656, 0.320778, 0.853019,
		36.751900, 42.865871, 42.865364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648960, 41.977074, 42.670254>,  <36.463741, 42.641327, 42.268250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648960, 41.977074, 42.670254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.632851, 42.288002, 42.921379>,  <36.623184, 42.474560, 43.072056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.632851, 42.288002, 42.921379>,  <36.648960, 41.977074, 42.670254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632851, 42.288002, 42.921379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669232, -0.487557, 0.560729,
		0.741962, -0.397569, 0.539845,
		-0.040277, 0.777321, 0.627814,
		36.620770, 42.521198, 43.109722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752682, 41.804249, 43.440384>,  <36.648960, 41.977074, 42.670254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752682, 41.804249, 43.440384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.531281, 42.136765, 43.460712>,  <36.398438, 42.336273, 43.472908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.531281, 42.136765, 43.460712>,  <36.752682, 41.804249, 43.440384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531281, 42.136765, 43.460712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651255, -0.470050, 0.595751,
		0.519133, 0.296653, 0.801560,
		-0.553505, 0.831294, 0.050821,
		36.365231, 42.386154, 43.475960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041683, 41.251244, 44.014709>,  <36.752682, 41.804249, 43.440384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041683, 41.251244, 44.014709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.070808, 40.857056, 43.953331>,  <37.088284, 40.620544, 43.916504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.070808, 40.857056, 43.953331>,  <37.041683, 41.251244, 44.014709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070808, 40.857056, 43.953331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861013, 0.139758, -0.489003,
		0.503344, -0.096514, 0.858679,
		0.072811, -0.985471, -0.153446,
		37.092651, 40.561413, 43.907299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761978, 41.096920, 44.252850>,  <37.041683, 41.251244, 44.014709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761978, 41.096920, 44.252850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.638405, 40.798561, 44.016815>,  <37.564259, 40.619545, 43.875195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.638405, 40.798561, 44.016815>,  <37.761978, 41.096920, 44.252850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638405, 40.798561, 44.016815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856499, 0.051542, -0.513569,
		0.413483, -0.664066, 0.622935,
		-0.308936, -0.745895, -0.590084,
		37.545723, 40.574791, 43.839790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344879, 40.566444, 44.193920>,  <37.761978, 41.096920, 44.252850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344879, 40.566444, 44.193920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.116615, 40.538162, 43.866665>,  <37.979656, 40.521191, 43.670311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.116615, 40.538162, 43.866665>,  <38.344879, 40.566444, 44.193920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116615, 40.538162, 43.866665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815015, -0.170710, -0.553723,
		-0.100511, -0.982781, 0.155046,
		-0.570657, -0.070709, -0.818139,
		37.945419, 40.516949, 43.621223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865162, 40.449928, 43.685108>,  <38.344879, 40.566444, 44.193920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865162, 40.449928, 43.685108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.536999, 40.465553, 43.456932>,  <38.340099, 40.474926, 43.320026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.536999, 40.465553, 43.456932>,  <38.865162, 40.449928, 43.685108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536999, 40.465553, 43.456932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558938, -0.155404, -0.814517,
		-0.120460, -0.987079, 0.105666,
		-0.820413, 0.039056, -0.570436,
		38.290874, 40.477272, 43.285801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877098, 39.836098, 43.232693>,  <38.865162, 40.449928, 43.685108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877098, 39.836098, 43.232693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.659603, 40.120163, 43.053795>,  <38.529106, 40.290600, 42.946457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.659603, 40.120163, 43.053795>,  <38.877098, 39.836098, 43.232693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659603, 40.120163, 43.053795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645829, 0.013733, -0.763359,
		-0.535965, -0.703906, -0.466108,
		-0.543734, 0.710160, -0.447243,
		38.496483, 40.333210, 42.919621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961178, 39.724335, 42.590519>,  <38.877098, 39.836098, 43.232693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961178, 39.724335, 42.590519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.840065, 40.105492, 42.597729>,  <38.767399, 40.334187, 42.602055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.840065, 40.105492, 42.597729>,  <38.961178, 39.724335, 42.590519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840065, 40.105492, 42.597729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587065, 0.201375, -0.784094,
		-0.750785, -0.226824, -0.620381,
		-0.302780, 0.952890, 0.018029,
		38.749229, 40.391357, 42.603138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698727, 39.820957, 41.860504>,  <38.961178, 39.724335, 42.590519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698727, 39.820957, 41.860504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.798058, 40.161980, 42.044449>,  <38.857655, 40.366592, 42.154816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.798058, 40.161980, 42.044449>,  <38.698727, 39.820957, 41.860504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798058, 40.161980, 42.044449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468321, 0.309900, -0.827428,
		-0.847944, 0.420836, -0.322316,
		0.248326, 0.852560, 0.459864,
		38.872555, 40.417747, 42.182407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364498, 40.258011, 41.501743>,  <38.698727, 39.820957, 41.860504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364498, 40.258011, 41.501743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.676140, 40.455948, 41.655693>,  <38.863125, 40.574711, 41.748062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.676140, 40.455948, 41.655693>,  <38.364498, 40.258011, 41.501743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676140, 40.455948, 41.655693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259550, 0.304233, -0.916556,
		-0.570642, 0.813987, 0.108593,
		0.779103, 0.494840, 0.384879,
		38.909870, 40.604401, 41.771156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380211, 40.854950, 41.166786>,  <38.364498, 40.258011, 41.501743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380211, 40.854950, 41.166786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.752357, 40.811974, 41.307003>,  <38.975643, 40.786190, 41.391132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.752357, 40.811974, 41.307003>,  <38.380211, 40.854950, 41.166786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752357, 40.811974, 41.307003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365298, 0.189880, -0.911319,
		0.031350, 0.975911, 0.215904,
		0.930363, -0.107439, 0.350546,
		39.031467, 40.779743, 41.412167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722836, 41.276787, 40.755253>,  <38.380211, 40.854950, 41.166786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722836, 41.276787, 40.755253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.031891, 41.090752, 40.928097>,  <39.217323, 40.979130, 41.031803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.031891, 41.090752, 40.928097>,  <38.722836, 41.276787, 40.755253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031891, 41.090752, 40.928097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516203, 0.064059, -0.854068,
		0.369538, 0.882942, 0.289575,
		0.772642, -0.465090, 0.432105,
		39.263683, 40.951225, 41.057728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241692, 41.789276, 40.794128>,  <38.722836, 41.276787, 40.755253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241692, 41.789276, 40.794128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.425602, 41.435036, 40.820389>,  <39.535950, 41.222492, 40.836147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.425602, 41.435036, 40.820389>,  <39.241692, 41.789276, 40.794128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425602, 41.435036, 40.820389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521540, 0.209451, -0.827119,
		0.718747, 0.414535, 0.558178,
		0.459780, -0.885602, 0.065654,
		39.563538, 41.169353, 40.840084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896465, 41.909828, 40.809544>,  <39.241692, 41.789276, 40.794128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896465, 41.909828, 40.809544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.909378, 41.523499, 40.706676>,  <39.917126, 41.291698, 40.644955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.909378, 41.523499, 40.706676>,  <39.896465, 41.909828, 40.809544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909378, 41.523499, 40.706676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574439, 0.228490, -0.786011,
		0.817911, -0.122359, 0.562183,
		0.032278, -0.965826, -0.257172,
		39.919060, 41.233749, 40.629524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622272, 41.753994, 40.827251>,  <39.896465, 41.909828, 40.809544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622272, 41.753994, 40.827251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.469727, 41.468803, 40.591888>,  <40.378197, 41.297691, 40.450668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.469727, 41.468803, 40.591888>,  <40.622272, 41.753994, 40.827251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469727, 41.468803, 40.591888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705058, 0.187331, -0.683959,
		0.597872, -0.675703, 0.431246,
		-0.381368, -0.712974, -0.588410,
		40.355316, 41.254910, 40.415367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147148, 41.273220, 40.616711>,  <40.622272, 41.753994, 40.827251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147148, 41.273220, 40.616711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.858990, 41.247520, 40.340477>,  <40.686096, 41.232101, 40.174736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.858990, 41.247520, 40.340477>,  <41.147148, 41.273220, 40.616711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858990, 41.247520, 40.340477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649953, 0.284985, -0.704517,
		0.242070, -0.956376, -0.163542,
		-0.720391, -0.064248, -0.690586,
		40.642872, 41.228245, 40.133301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.380058, 41.619354, 41.311531>,  <41.147148, 41.273220, 40.616711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.380058, 41.619354, 41.311531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.407173, 41.221207, 41.338776>,  <41.423443, 40.982319, 41.355125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.407173, 41.221207, 41.338776>,  <41.380058, 41.619354, 41.311531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407173, 41.221207, 41.338776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823772, 0.017323, -0.566657,
		0.562854, 0.094525, 0.821134,
		0.067788, -0.995372, 0.068116,
		41.427509, 40.922596, 41.359211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059505, 42.186340, 41.661739>,  <41.380058, 41.619354, 41.311531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059505, 42.186340, 41.661739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.357468, 42.254387, 41.919788>,  <41.536243, 42.295216, 42.074619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.357468, 42.254387, 41.919788>,  <41.059505, 42.186340, 41.661739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.357468, 42.254387, 41.919788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638411, -0.099106, 0.763288,
		0.193782, -0.980428, 0.034778,
		0.744902, 0.170114, 0.645121,
		41.580940, 42.305420, 42.113323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.347847, 41.507164, 42.110741>,  <41.059505, 42.186340, 41.661739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.347847, 41.507164, 42.110741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.414238, 41.857086, 42.292805>,  <41.454071, 42.067039, 42.402042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.414238, 41.857086, 42.292805>,  <41.347847, 41.507164, 42.110741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.414238, 41.857086, 42.292805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553314, -0.299439, 0.777290,
		0.816269, -0.380857, 0.434341,
		0.165978, 0.874805, 0.455156,
		41.464031, 42.119526, 42.429352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585873, 41.383236, 42.822773>,  <41.347847, 41.507164, 42.110741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585873, 41.383236, 42.822773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.407787, 41.741280, 42.813194>,  <41.300938, 41.956104, 42.807449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.407787, 41.741280, 42.813194>,  <41.585873, 41.383236, 42.822773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407787, 41.741280, 42.813194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589200, -0.272711, 0.760573,
		0.674264, 0.352723, 0.648811,
		-0.445210, 0.895106, -0.023945,
		41.274223, 42.009811, 42.806011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.500122, 41.468117, 43.524399>,  <41.585873, 41.383236, 42.822773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.500122, 41.468117, 43.524399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.252682, 41.743050, 43.372128>,  <41.104218, 41.908009, 43.280766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.252682, 41.743050, 43.372128>,  <41.500122, 41.468117, 43.524399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.252682, 41.743050, 43.372128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529831, -0.007145, 0.848073,
		0.580186, 0.726310, 0.368589,
		-0.618598, 0.687330, -0.380676,
		41.067104, 41.949249, 43.257923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362450, 42.020023, 44.025291>,  <41.500122, 41.468117, 43.524399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362450, 42.020023, 44.025291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.057793, 42.041946, 43.767021>,  <40.874996, 42.055099, 43.612061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.057793, 42.041946, 43.767021>,  <41.362450, 42.020023, 44.025291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057793, 42.041946, 43.767021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639900, 0.093393, 0.762762,
		0.102109, 0.994120, -0.036059,
		-0.761644, 0.054810, -0.645673,
		40.829300, 42.058388, 43.573318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998291, 42.748211, 44.105518>,  <41.362450, 42.020023, 44.025291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998291, 42.748211, 44.105518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.760948, 42.465294, 43.951805>,  <40.618542, 42.295544, 43.859577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.760948, 42.465294, 43.951805>,  <40.998291, 42.748211, 44.105518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.760948, 42.465294, 43.951805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681045, 0.186638, 0.708057,
		-0.429079, 0.681842, -0.592438,
		-0.593354, -0.707289, -0.384282,
		40.582943, 42.253109, 43.836521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396172, 43.149246, 44.163574>,  <40.998291, 42.748211, 44.105518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396172, 43.149246, 44.163574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.292046, 42.769318, 44.094196>,  <40.229572, 42.541363, 44.052570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.292046, 42.769318, 44.094196>,  <40.396172, 43.149246, 44.163574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292046, 42.769318, 44.094196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779772, 0.100876, 0.617883,
		-0.569380, 0.296091, -0.766901,
		-0.260312, -0.949818, -0.173447,
		40.213951, 42.484371, 44.042164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696011, 43.120575, 44.130371>,  <40.396172, 43.149246, 44.163574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696011, 43.120575, 44.130371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.778316, 42.733353, 44.187691>,  <39.827702, 42.501019, 44.222084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.778316, 42.733353, 44.187691>,  <39.696011, 43.120575, 44.130371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778316, 42.733353, 44.187691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646875, -0.024669, 0.762197,
		-0.734312, -0.249531, -0.631285,
		0.205765, -0.968052, 0.143301,
		39.840046, 42.442936, 44.230682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975819, 42.735363, 44.247662>,  <39.696011, 43.120575, 44.130371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975819, 42.735363, 44.247662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.261948, 42.485359, 44.372681>,  <39.433624, 42.335358, 44.447693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.261948, 42.485359, 44.372681>,  <38.975819, 42.735363, 44.247662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261948, 42.485359, 44.372681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602687, -0.325424, 0.728606,
		-0.353671, -0.709556, -0.609465,
		0.715322, -0.625004, 0.312547,
		39.476543, 42.297859, 44.466446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703857, 42.068077, 44.269669>,  <38.975819, 42.735363, 44.247662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703857, 42.068077, 44.269669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.001667, 42.036133, 44.534790>,  <39.180351, 42.016968, 44.693863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.001667, 42.036133, 44.534790>,  <38.703857, 42.068077, 44.269669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001667, 42.036133, 44.534790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645043, -0.341931, 0.683376,
		0.172058, -0.936326, -0.306089,
		0.744524, -0.079860, 0.662803,
		39.225025, 42.012173, 44.733631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597740, 41.433228, 44.668709>,  <38.703857, 42.068077, 44.269669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597740, 41.433228, 44.668709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.819611, 41.687904, 44.882984>,  <38.952732, 41.840710, 45.011547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.819611, 41.687904, 44.882984>,  <38.597740, 41.433228, 44.668709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819611, 41.687904, 44.882984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501493, -0.257919, 0.825822,
		0.663957, -0.726707, 0.176234,
		0.554677, 0.636691, 0.535685,
		38.986015, 41.878910, 45.043690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754963, 41.046284, 45.247860>,  <38.597740, 41.433228, 44.668709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754963, 41.046284, 45.247860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.847065, 41.415062, 45.372444>,  <38.902325, 41.636330, 45.447193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.847065, 41.415062, 45.372444>,  <38.754963, 41.046284, 45.247860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847065, 41.415062, 45.372444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361213, -0.216220, 0.907069,
		0.903608, -0.321359, 0.283232,
		0.230254, 0.921942, 0.311458,
		38.916142, 41.691643, 45.465881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079685, 40.921169, 45.926147>,  <38.754963, 41.046284, 45.247860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079685, 40.921169, 45.926147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.943878, 41.297394, 45.929333>,  <38.862392, 41.523129, 45.931244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.943878, 41.297394, 45.929333>,  <39.079685, 40.921169, 45.926147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943878, 41.297394, 45.929333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462613, -0.174347, 0.869248,
		0.818973, 0.291445, 0.494312,
		-0.339520, 0.940565, 0.007959,
		38.842022, 41.579563, 45.931721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110268, 41.062431, 46.586571>,  <39.079685, 40.921169, 45.926147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110268, 41.062431, 46.586571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.869324, 41.342278, 46.432846>,  <38.724758, 41.510185, 46.340611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.869324, 41.342278, 46.432846>,  <39.110268, 41.062431, 46.586571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869324, 41.342278, 46.432846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617922, -0.103917, 0.779341,
		0.505301, 0.706925, 0.494903,
		-0.602364, 0.699613, -0.384315,
		38.688614, 41.552162, 46.317551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012005, 41.499554, 47.060005>,  <39.110268, 41.062431, 46.586571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012005, 41.499554, 47.060005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.691910, 41.553375, 46.826244>,  <38.499855, 41.585667, 46.685989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.691910, 41.553375, 46.826244>,  <39.012005, 41.499554, 47.060005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691910, 41.553375, 46.826244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592057, -0.022306, 0.805587,
		0.095357, 0.990656, 0.097512,
		-0.800235, 0.134552, -0.584398,
		38.451839, 41.593742, 46.650925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618916, 42.055214, 47.357441>,  <39.012005, 41.499554, 47.060005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618916, 42.055214, 47.357441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.350613, 41.845528, 47.147572>,  <38.189632, 41.719715, 47.021648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.350613, 41.845528, 47.147572>,  <38.618916, 42.055214, 47.357441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350613, 41.845528, 47.147572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666877, 0.116674, 0.735977,
		-0.324592, 0.843558, -0.427844,
		-0.670758, -0.524211, -0.524678,
		38.149384, 41.688263, 46.990170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001514, 42.406208, 47.484867>,  <38.618916, 42.055214, 47.357441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001514, 42.406208, 47.484867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.855339, 42.067909, 47.329346>,  <37.767635, 41.864929, 47.236034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.855339, 42.067909, 47.329346>,  <38.001514, 42.406208, 47.484867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855339, 42.067909, 47.329346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772060, 0.042070, 0.634155,
		-0.519978, 0.531923, -0.668342,
		-0.365438, -0.845747, -0.388801,
		37.745708, 41.814186, 47.212704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352234, 42.546524, 47.514393>,  <38.001514, 42.406208, 47.484867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352234, 42.546524, 47.514393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.354019, 42.149132, 47.468819>,  <37.355091, 41.910698, 47.441475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.354019, 42.149132, 47.468819>,  <37.352234, 42.546524, 47.514393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354019, 42.149132, 47.468819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647848, -0.089668, 0.756474,
		-0.761757, 0.070439, -0.644023,
		0.004463, -0.993478, -0.113939,
		37.355358, 41.851089, 47.434635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631607, 42.401649, 47.402645>,  <37.352234, 42.546524, 47.514393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631607, 42.401649, 47.402645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.844475, 42.084305, 47.520874>,  <36.972195, 41.893898, 47.591812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.844475, 42.084305, 47.520874>,  <36.631607, 42.401649, 47.402645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844475, 42.084305, 47.520874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623537, -0.131114, 0.770721,
		-0.572710, -0.594456, -0.564469,
		0.532170, -0.793367, 0.295575,
		37.004128, 41.846294, 47.609547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104988, 41.924252, 47.622139>,  <36.631607, 42.401649, 47.402645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104988, 41.924252, 47.622139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.431389, 41.769981, 47.794369>,  <36.627228, 41.677418, 47.897705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.431389, 41.769981, 47.794369>,  <36.104988, 41.924252, 47.622139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431389, 41.769981, 47.794369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544619, -0.263316, 0.796275,
		-0.193725, -0.884263, -0.424912,
		0.816003, -0.385674, 0.430576,
		36.676189, 41.654278, 47.923542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878216, 41.263645, 47.977455>,  <36.104988, 41.924252, 47.622139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878216, 41.263645, 47.977455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.225845, 41.385674, 48.133224>,  <36.434422, 41.458893, 48.226685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.225845, 41.385674, 48.133224>,  <35.878216, 41.263645, 47.977455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225845, 41.385674, 48.133224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300123, -0.300622, 0.905291,
		0.393249, -0.903635, -0.169702,
		0.869069, 0.305074, 0.389421,
		36.486565, 41.477196, 48.250050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130360, 40.718178, 48.380692>,  <35.878216, 41.263645, 47.977455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130360, 40.718178, 48.380692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.329300, 41.039238, 48.512390>,  <36.448662, 41.231873, 48.591408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.329300, 41.039238, 48.512390>,  <36.130360, 40.718178, 48.380692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329300, 41.039238, 48.512390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218342, -0.251485, 0.942911,
		0.839626, -0.540843, 0.050176,
		0.497349, 0.802648, 0.329242,
		36.478504, 41.280033, 48.611164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631012, 40.501358, 48.921291>,  <36.130360, 40.718178, 48.380692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631012, 40.501358, 48.921291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.549690, 40.890030, 48.969479>,  <36.500896, 41.123234, 48.998390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.549690, 40.890030, 48.969479>,  <36.631012, 40.501358, 48.921291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549690, 40.890030, 48.969479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277485, -0.175171, 0.944625,
		0.938972, 0.158622, 0.305239,
		-0.203307, 0.971676, 0.120466,
		36.488697, 41.181534, 49.005619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792576, 40.682709, 49.724586>,  <36.631012, 40.501358, 48.921291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792576, 40.682709, 49.724586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.562378, 40.989105, 49.610001>,  <36.424259, 41.172943, 49.541248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.562378, 40.989105, 49.610001>,  <36.792576, 40.682709, 49.724586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562378, 40.989105, 49.610001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556516, -0.110141, 0.823504,
		0.599246, 0.633344, 0.489672,
		-0.575494, 0.765992, -0.286465,
		36.389729, 41.218903, 49.524063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672749, 41.100933, 50.377590>,  <36.792576, 40.682709, 49.724586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672749, 41.100933, 50.377590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.377136, 41.216087, 50.133968>,  <36.199768, 41.285179, 49.987793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.377136, 41.216087, 50.133968>,  <36.672749, 41.100933, 50.377590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377136, 41.216087, 50.133968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663073, -0.151149, 0.733135,
		0.118998, 0.945663, 0.302591,
		-0.739035, 0.287881, -0.609058,
		36.155426, 41.302452, 49.951252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242130, 41.660271, 50.730648>,  <36.672749, 41.100933, 50.377590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242130, 41.660271, 50.730648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.037338, 41.445236, 50.462654>,  <35.914463, 41.316216, 50.301857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.037338, 41.445236, 50.462654>,  <36.242130, 41.660271, 50.730648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037338, 41.445236, 50.462654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809947, 0.042319, 0.584974,
		-0.286118, 0.842149, -0.457079,
		-0.511979, -0.537582, -0.669988,
		35.883743, 41.283962, 50.261658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586090, 41.916595, 50.719799>,  <36.242130, 41.660271, 50.730648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586090, 41.916595, 50.719799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.499222, 41.562164, 50.555992>,  <35.447102, 41.349506, 50.457706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.499222, 41.562164, 50.555992>,  <35.586090, 41.916595, 50.719799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499222, 41.562164, 50.555992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770614, -0.101882, 0.629106,
		-0.599158, 0.452207, -0.660696,
		-0.217174, -0.886075, -0.409520,
		35.434071, 41.296341, 50.433136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281857, 42.602730, 50.678448>,  <35.586090, 41.916595, 50.719799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281857, 42.602730, 50.678448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.285206, 42.936829, 50.898373>,  <35.287216, 43.137287, 51.030327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.285206, 42.936829, 50.898373>,  <35.281857, 42.602730, 50.678448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285206, 42.936829, 50.898373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650017, 0.413269, -0.637720,
		-0.759873, 0.362726, -0.539464,
		0.008374, 0.835247, 0.549811,
		35.287720, 43.187405, 51.063316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293968, 43.153072, 50.117062>,  <35.281857, 42.602730, 50.678448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293968, 43.153072, 50.117062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.419121, 43.316269, 50.460140>,  <35.494213, 43.414188, 50.665989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.419121, 43.316269, 50.460140>,  <35.293968, 43.153072, 50.117062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419121, 43.316269, 50.460140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748724, 0.449677, -0.487035,
		-0.584393, 0.794566, -0.164775,
		0.312886, 0.407990, 0.857698,
		35.512985, 43.438667, 50.717449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472469, 43.885872, 50.006630>,  <35.293968, 43.153072, 50.117062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472469, 43.885872, 50.006630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.679256, 43.813881, 50.341377>,  <35.803329, 43.770687, 50.542225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.679256, 43.813881, 50.341377>,  <35.472469, 43.885872, 50.006630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679256, 43.813881, 50.341377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723465, 0.614423, -0.314774,
		-0.457541, 0.768175, 0.447843,
		0.516966, -0.179977, 0.836872,
		35.834347, 43.759888, 50.592438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832733, 44.557781, 50.147877>,  <35.472469, 43.885872, 50.006630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832733, 44.557781, 50.147877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.019279, 44.270363, 50.354252>,  <36.131207, 44.097912, 50.478077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.019279, 44.270363, 50.354252>,  <35.832733, 44.557781, 50.147877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019279, 44.270363, 50.354252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884343, 0.392507, -0.252737,
		-0.020905, 0.574134, 0.818494,
		0.466370, -0.718546, 0.515937,
		36.159191, 44.054798, 50.509033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356907, 44.888409, 50.464146>,  <35.832733, 44.557781, 50.147877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356907, 44.888409, 50.464146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.503109, 44.518089, 50.502739>,  <36.590832, 44.295898, 50.525894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.503109, 44.518089, 50.502739>,  <36.356907, 44.888409, 50.464146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503109, 44.518089, 50.502739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906528, 0.330532, -0.262593,
		0.211216, 0.183445, 0.960071,
		0.365505, -0.925795, 0.096485,
		36.612759, 44.240349, 50.531685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 0.000000, 88.400002>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 88.400002, 0.000000>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
