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
	<42.755638, 32.595711, 22.597683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.565678, 32.761490, 22.908218>,  <42.451702, 32.860958, 23.094540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.565678, 32.761490, 22.908218>,  <42.755638, 32.595711, 22.597683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.565678, 32.761490, 22.908218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793477, 0.179869, -0.581413,
		-0.380605, -0.892120, 0.243436,
		-0.474903, 0.414449, 0.776336,
		42.423206, 32.885826, 23.141119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.104683, 32.278008, 22.830971>,  <42.755638, 32.595711, 22.597683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.104683, 32.278008, 22.830971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.091236, 32.673645, 22.888329>,  <42.083168, 32.911026, 22.922743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.091236, 32.673645, 22.888329>,  <42.104683, 32.278008, 22.830971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.091236, 32.673645, 22.888329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771182, 0.065588, -0.633227,
		-0.635727, -0.131872, 0.760567,
		-0.033621, 0.989094, 0.143393,
		42.081150, 32.970375, 22.931347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358105, 32.419655, 23.032158>,  <42.104683, 32.278008, 22.830971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.358105, 32.419655, 23.032158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.562683, 32.728756, 22.881813>,  <41.685429, 32.914219, 22.791607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.562683, 32.728756, 22.881813>,  <41.358105, 32.419655, 23.032158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.562683, 32.728756, 22.881813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775543, 0.226716, -0.589180,
		-0.370079, 0.592830, 0.715258,
		0.511444, 0.772757, -0.375862,
		41.716118, 32.960583, 22.769054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705074, 32.731701, 22.991385>,  <41.358105, 32.419655, 23.032158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705074, 32.731701, 22.991385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654873, 32.817787, 23.378773>,  <40.624752, 32.869438, 23.611206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654873, 32.817787, 23.378773>,  <40.705074, 32.731701, 22.991385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654873, 32.817787, 23.378773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881915, -0.422906, 0.208269,
		0.454393, 0.880247, -0.136721,
		-0.125508, 0.215212, 0.968469,
		40.617222, 32.882351, 23.669313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165199, 32.419308, 23.457151>,  <40.705074, 32.731701, 22.991385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165199, 32.419308, 23.457151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785625, 32.393181, 23.333694>,  <39.557880, 32.377506, 23.259621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785625, 32.393181, 23.333694>,  <40.165199, 32.419308, 23.457151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785625, 32.393181, 23.333694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148071, -0.771670, 0.618547,
		-0.278571, 0.632660, 0.722592,
		-0.948933, -0.065314, -0.308643,
		39.500946, 32.373585, 23.241102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790333, 32.130623, 24.043476>,  <40.165199, 32.419308, 23.457151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790333, 32.130623, 24.043476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.559593, 32.071575, 23.722115>,  <39.421150, 32.036148, 23.529297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.559593, 32.071575, 23.722115>,  <39.790333, 32.130623, 24.043476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559593, 32.071575, 23.722115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369509, -0.829999, 0.417809,
		-0.728501, 0.537876, 0.424236,
		-0.576845, -0.147615, -0.803405,
		39.386539, 32.027290, 23.481092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091103, 32.274200, 24.275961>,  <39.790333, 32.130623, 24.043476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091103, 32.274200, 24.275961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154545, 32.009819, 23.982571>,  <39.192612, 31.851191, 23.806536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154545, 32.009819, 23.982571>,  <39.091103, 32.274200, 24.275961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154545, 32.009819, 23.982571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368972, -0.728737, 0.576891,
		-0.915807, 0.179132, -0.359457,
		0.158610, -0.660950, -0.733477,
		39.202129, 31.811535, 23.762527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542210, 31.795540, 24.320658>,  <39.091103, 32.274200, 24.275961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542210, 31.795540, 24.320658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828175, 31.602844, 24.117943>,  <38.999752, 31.487226, 23.996313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828175, 31.602844, 24.117943>,  <38.542210, 31.795540, 24.320658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828175, 31.602844, 24.117943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293493, -0.864598, 0.407839,
		-0.634639, -0.142830, -0.759496,
		0.714909, -0.481737, -0.506788,
		39.042648, 31.458323, 23.965906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230045, 31.170380, 24.019537>,  <38.542210, 31.795540, 24.320658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230045, 31.170380, 24.019537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621822, 31.092255, 24.039742>,  <38.856888, 31.045380, 24.051865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621822, 31.092255, 24.039742>,  <38.230045, 31.170380, 24.019537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621822, 31.092255, 24.039742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200421, -0.913495, 0.354059,
		-0.023008, -0.356903, -0.933858,
		0.979440, -0.195312, 0.050513,
		38.915653, 31.033661, 24.054895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249802, 30.437948, 23.960243>,  <38.230045, 31.170380, 24.019537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249802, 30.437948, 23.960243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600677, 30.518799, 24.134453>,  <38.811203, 30.567310, 24.238979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600677, 30.518799, 24.134453>,  <38.249802, 30.437948, 23.960243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600677, 30.518799, 24.134453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107095, -0.801856, 0.587841,
		0.468048, -0.562291, -0.681733,
		0.877190, 0.202128, 0.435525,
		38.863834, 30.579437, 24.265110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646866, 29.773445, 23.953974>,  <38.249802, 30.437948, 23.960243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646866, 29.773445, 23.953974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.815418, 29.999802, 24.237438>,  <38.916550, 30.135616, 24.407516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.815418, 29.999802, 24.237438>,  <38.646866, 29.773445, 23.953974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815418, 29.999802, 24.237438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199116, -0.820090, 0.536474,
		0.884753, -0.084956, -0.458251,
		0.421384, 0.565892, 0.708662,
		38.941833, 30.169569, 24.450037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180950, 29.389269, 24.142599>,  <38.646866, 29.773445, 23.953974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180950, 29.389269, 24.142599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.167156, 29.648552, 24.446873>,  <39.158878, 29.804121, 24.629436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.167156, 29.648552, 24.446873>,  <39.180950, 29.389269, 24.142599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167156, 29.648552, 24.446873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305652, -0.717825, 0.625543,
		0.951519, 0.254076, -0.173371,
		-0.034485, 0.648207, 0.760683,
		39.156811, 29.843014, 24.675077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818054, 29.268827, 24.512548>,  <39.180950, 29.389269, 24.142599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818054, 29.268827, 24.512548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587448, 29.446838, 24.786652>,  <39.449085, 29.553644, 24.951113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587448, 29.446838, 24.786652>,  <39.818054, 29.268827, 24.512548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587448, 29.446838, 24.786652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205870, -0.732491, 0.648903,
		0.790723, 0.515179, 0.330677,
		-0.576519, 0.445026, 0.685257,
		39.414494, 29.580347, 24.992229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145031, 29.132471, 25.118397>,  <39.818054, 29.268827, 24.512548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145031, 29.132471, 25.118397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779266, 29.242973, 25.236744>,  <39.559807, 29.309275, 25.307753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779266, 29.242973, 25.236744>,  <40.145031, 29.132471, 25.118397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779266, 29.242973, 25.236744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037932, -0.669218, 0.742097,
		0.403009, 0.689804, 0.601461,
		-0.914410, 0.276257, 0.295866,
		39.504944, 29.325851, 25.325504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173710, 29.196470, 25.857567>,  <40.145031, 29.132471, 25.118397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173710, 29.196470, 25.857567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798584, 29.116814, 25.743832>,  <39.573509, 29.069019, 25.675591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798584, 29.116814, 25.743832>,  <40.173710, 29.196470, 25.857567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798584, 29.116814, 25.743832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041928, -0.748113, 0.662245,
		-0.344598, 0.632984, 0.693241,
		-0.937813, -0.199143, -0.284338,
		39.517239, 29.057072, 25.658529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766560, 29.152718, 26.450399>,  <40.173710, 29.196470, 25.857567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766560, 29.152718, 26.450399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555733, 28.943878, 26.182186>,  <39.429237, 28.818575, 26.021259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555733, 28.943878, 26.182186>,  <39.766560, 29.152718, 26.450399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555733, 28.943878, 26.182186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001159, -0.788582, 0.614928,
		-0.849823, 0.324885, 0.415030,
		-0.527067, -0.522099, -0.670532,
		39.397614, 28.787249, 25.981026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347511, 28.795689, 26.785946>,  <39.766560, 29.152718, 26.450399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347511, 28.795689, 26.785946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318253, 28.598057, 26.439411>,  <39.300697, 28.479477, 26.231491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318253, 28.598057, 26.439411>,  <39.347511, 28.795689, 26.785946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318253, 28.598057, 26.439411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186497, -0.846563, 0.498549,
		-0.979729, 0.198034, -0.030225,
		-0.073143, -0.494079, -0.866335,
		39.296310, 28.449833, 26.179510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656593, 28.534782, 26.824728>,  <39.347511, 28.795689, 26.785946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656593, 28.534782, 26.824728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858574, 28.318508, 26.555599>,  <38.979763, 28.188744, 26.394121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858574, 28.318508, 26.555599>,  <38.656593, 28.534782, 26.824728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858574, 28.318508, 26.555599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299292, -0.840812, 0.451066,
		-0.809602, -0.026393, -0.586386,
		0.504945, -0.540684, -0.672823,
		39.010059, 28.156303, 26.353752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135902, 27.995005, 26.630106>,  <38.656593, 28.534782, 26.824728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135902, 27.995005, 26.630106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507736, 27.877949, 26.540455>,  <38.730835, 27.807714, 26.486664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507736, 27.877949, 26.540455>,  <38.135902, 27.995005, 26.630106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507736, 27.877949, 26.540455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196047, -0.907421, 0.371690,
		-0.312148, -0.301579, -0.900896,
		0.929585, -0.292640, -0.224126,
		38.786613, 27.790157, 26.473217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082699, 27.363697, 26.326094>,  <38.135902, 27.995005, 26.630106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082699, 27.363697, 26.326094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457558, 27.363094, 26.465668>,  <38.682472, 27.362732, 26.549412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457558, 27.363094, 26.465668>,  <38.082699, 27.363697, 26.326094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457558, 27.363094, 26.465668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177612, -0.862816, 0.473289,
		0.300354, -0.505515, -0.808852,
		0.937145, -0.001507, 0.348936,
		38.738701, 27.362642, 26.570349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333000, 26.688620, 26.289412>,  <38.082699, 27.363697, 26.326094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333000, 26.688620, 26.289412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641010, 26.821186, 26.507484>,  <38.825817, 26.900726, 26.638329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641010, 26.821186, 26.507484>,  <38.333000, 26.688620, 26.289412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641010, 26.821186, 26.507484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012242, -0.862017, 0.506731,
		0.637894, -0.383522, -0.667833,
		0.770026, 0.331417, 0.545181,
		38.872017, 26.920610, 26.671040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974472, 26.185423, 26.248417>,  <38.333000, 26.688620, 26.289412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974472, 26.185423, 26.248417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962574, 26.392502, 26.590435>,  <38.955437, 26.516748, 26.795647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962574, 26.392502, 26.590435>,  <38.974472, 26.185423, 26.248417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962574, 26.392502, 26.590435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064778, -0.854625, 0.515189,
		0.997456, -0.040065, 0.058954,
		-0.029743, 0.517698, 0.855046,
		38.953651, 26.547812, 26.846949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385891, 25.781874, 26.612785>,  <38.974472, 26.185423, 26.248417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385891, 25.781874, 26.612785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.170944, 25.999588, 26.870464>,  <39.041977, 26.130217, 27.025072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.170944, 25.999588, 26.870464>,  <39.385891, 25.781874, 26.612785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170944, 25.999588, 26.870464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126401, -0.807208, 0.576575,
		0.833821, 0.228407, 0.502567,
		-0.537370, 0.544285, 0.644196,
		39.009735, 26.162874, 27.063723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474911, 25.545372, 27.319578>,  <39.385891, 25.781874, 26.612785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474911, 25.545372, 27.319578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149200, 25.767937, 27.385731>,  <38.953773, 25.901476, 27.425423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149200, 25.767937, 27.385731>,  <39.474911, 25.545372, 27.319578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149200, 25.767937, 27.385731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273443, -0.619003, 0.736250,
		0.512033, 0.554291, 0.656189,
		-0.814280, 0.556414, 0.165383,
		38.904915, 25.934860, 27.435347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470493, 25.548876, 28.039101>,  <39.474911, 25.545372, 27.319578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470493, 25.548876, 28.039101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093769, 25.661140, 27.965103>,  <38.867733, 25.728498, 27.920704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093769, 25.661140, 27.965103>,  <39.470493, 25.548876, 28.039101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093769, 25.661140, 27.965103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299857, -0.452743, 0.839708,
		0.151918, 0.846318, 0.510556,
		-0.941810, 0.280660, -0.184995,
		38.811226, 25.745338, 27.909605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217304, 25.779547, 28.719917>,  <39.470493, 25.548876, 28.039101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217304, 25.779547, 28.719917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919769, 25.712067, 28.461227>,  <38.741249, 25.671577, 28.306013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919769, 25.712067, 28.461227>,  <39.217304, 25.779547, 28.719917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919769, 25.712067, 28.461227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505514, -0.490987, 0.709498,
		-0.437227, 0.854676, 0.279932,
		-0.743834, -0.168702, -0.646724,
		38.696621, 25.661457, 28.267210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602158, 25.699265, 29.143177>,  <39.217304, 25.779547, 28.719917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602158, 25.699265, 29.143177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576202, 25.511780, 28.790791>,  <38.560631, 25.399290, 28.579359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576202, 25.511780, 28.790791>,  <38.602158, 25.699265, 29.143177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576202, 25.511780, 28.790791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404240, -0.794800, 0.452640,
		-0.912348, 0.385492, -0.137899,
		-0.064887, -0.468710, -0.880966,
		38.556736, 25.371166, 28.526501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991394, 25.257269, 29.049244>,  <38.602158, 25.699265, 29.143177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991394, 25.257269, 29.049244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295120, 25.116615, 28.830231>,  <38.477356, 25.032223, 28.698822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295120, 25.116615, 28.830231>,  <37.991394, 25.257269, 29.049244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295120, 25.116615, 28.830231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004899, -0.838312, 0.545169,
		-0.650703, -0.416638, -0.634821,
		0.759316, -0.351633, -0.547534,
		38.522915, 25.011126, 28.665970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821045, 24.630314, 28.749039>,  <37.991394, 25.257269, 29.049244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821045, 24.630314, 28.749039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217937, 24.621487, 28.798000>,  <38.456074, 24.616190, 28.827377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217937, 24.621487, 28.798000>,  <37.821045, 24.630314, 28.749039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217937, 24.621487, 28.798000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079082, -0.871517, 0.483946,
		0.095999, -0.489869, -0.866495,
		0.992235, -0.022066, 0.122405,
		38.515610, 24.614866, 28.834723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131138, 24.017260, 28.640688>,  <37.821045, 24.630314, 28.749039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131138, 24.017260, 28.640688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419189, 24.163277, 28.876709>,  <38.592022, 24.250887, 29.018322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419189, 24.163277, 28.876709>,  <38.131138, 24.017260, 28.640688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419189, 24.163277, 28.876709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108083, -0.781012, 0.615092,
		0.685371, -0.506719, -0.522974,
		0.720128, 0.365042, 0.590051,
		38.635227, 24.272789, 29.053724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168892, 23.191210, 28.443151>,  <38.131138, 24.017260, 28.640688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168892, 23.191210, 28.443151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.400566, 23.292484, 28.753105>,  <38.539570, 23.353249, 28.939077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.400566, 23.292484, 28.753105>,  <38.168892, 23.191210, 28.443151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400566, 23.292484, 28.753105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804209, 0.332999, 0.492300,
		-0.133391, -0.908300, 0.396483,
		0.579184, 0.253187, 0.774882,
		38.574322, 23.368441, 28.985569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719170, 22.702927, 28.247671>,  <38.168892, 23.191210, 28.443151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719170, 22.702927, 28.247671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349777, 22.631908, 28.111641>,  <37.128139, 22.589298, 28.030024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349777, 22.631908, 28.111641>,  <37.719170, 22.702927, 28.247671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349777, 22.631908, 28.111641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317305, 0.144733, -0.937214,
		0.215623, -0.973411, -0.077321,
		-0.923485, -0.177550, -0.340076,
		37.072731, 22.578644, 28.009619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831757, 22.317614, 27.617458>,  <37.719170, 22.702927, 28.247671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831757, 22.317614, 27.617458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506313, 22.547726, 27.583752>,  <37.311047, 22.685793, 27.563528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506313, 22.547726, 27.583752>,  <37.831757, 22.317614, 27.617458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506313, 22.547726, 27.583752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272369, 0.249065, -0.929398,
		-0.513677, -0.779114, -0.359329,
		-0.813604, 0.575281, -0.084267,
		37.262234, 22.720310, 27.558472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762684, 22.383692, 26.918055>,  <37.831757, 22.317614, 27.617458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762684, 22.383692, 26.918055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508430, 22.667198, 27.040443>,  <37.355877, 22.837301, 27.113876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508430, 22.667198, 27.040443>,  <37.762684, 22.383692, 26.918055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508430, 22.667198, 27.040443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058315, 0.439291, -0.896450,
		-0.769783, -0.551973, -0.320561,
		-0.635636, 0.708766, 0.305971,
		37.317741, 22.879827, 27.132235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428116, 22.627146, 26.283367>,  <37.762684, 22.383692, 26.918055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428116, 22.627146, 26.283367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343960, 22.924149, 26.537743>,  <37.293465, 23.102350, 26.690369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343960, 22.924149, 26.537743>,  <37.428116, 22.627146, 26.283367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343960, 22.924149, 26.537743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131148, 0.623182, -0.771002,
		-0.968780, -0.245616, -0.033735,
		-0.210394, 0.742507, 0.635938,
		37.280842, 23.146900, 26.728523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893253, 22.989594, 26.097031>,  <37.428116, 22.627146, 26.283367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893253, 22.989594, 26.097031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103912, 23.234222, 26.333206>,  <37.230309, 23.381001, 26.474911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103912, 23.234222, 26.333206>,  <36.893253, 22.989594, 26.097031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103912, 23.234222, 26.333206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026580, 0.682381, -0.730513,
		-0.849665, 0.400420, 0.343122,
		0.526652, 0.611571, 0.590439,
		37.261909, 23.417694, 26.510338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540928, 23.569233, 25.976727>,  <36.893253, 22.989594, 26.097031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540928, 23.569233, 25.976727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.921062, 23.606331, 26.095562>,  <37.149143, 23.628590, 26.166862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.921062, 23.606331, 26.095562>,  <36.540928, 23.569233, 25.976727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921062, 23.606331, 26.095562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112121, 0.788452, -0.604791,
		-0.290329, 0.608065, 0.738895,
		0.950336, 0.092743, 0.297088,
		37.206161, 23.634153, 26.184689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652718, 24.198980, 26.344257>,  <36.540928, 23.569233, 25.976727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652718, 24.198980, 26.344257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004379, 24.078415, 26.196617>,  <37.215378, 24.006077, 26.108034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004379, 24.078415, 26.196617>,  <36.652718, 24.198980, 26.344257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004379, 24.078415, 26.196617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116190, 0.886759, -0.447390,
		0.462151, 0.350440, 0.814621,
		0.879156, -0.301412, -0.369099,
		37.268127, 23.987991, 26.085888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104118, 24.730324, 26.568403>,  <36.652718, 24.198980, 26.344257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104118, 24.730324, 26.568403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291195, 24.551895, 26.263172>,  <37.403442, 24.444838, 26.080034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291195, 24.551895, 26.263172>,  <37.104118, 24.730324, 26.568403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291195, 24.551895, 26.263172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192029, 0.893972, -0.404894,
		0.862780, 0.042833, 0.503762,
		0.467692, -0.446071, -0.763076,
		37.431503, 24.418074, 26.034250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589954, 25.196890, 26.218004>,  <37.104118, 24.730324, 26.568403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589954, 25.196890, 26.218004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615910, 24.927269, 25.923672>,  <37.631481, 24.765497, 25.747072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615910, 24.927269, 25.923672>,  <37.589954, 25.196890, 26.218004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615910, 24.927269, 25.923672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037328, 0.738506, -0.673212,
		0.997194, 0.016214, 0.073078,
		0.064884, -0.674052, -0.735829,
		37.635376, 24.725054, 25.702923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157715, 25.372240, 25.874357>,  <37.589954, 25.196890, 26.218004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157715, 25.372240, 25.874357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959572, 25.140850, 25.615131>,  <37.840687, 25.002016, 25.459597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959572, 25.140850, 25.615131>,  <38.157715, 25.372240, 25.874357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959572, 25.140850, 25.615131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197888, 0.651267, -0.732592,
		0.845848, -0.491140, -0.208139,
		-0.495359, -0.578474, -0.648064,
		37.810963, 24.967308, 25.420712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552616, 25.412575, 25.193335>,  <38.157715, 25.372240, 25.874357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552616, 25.412575, 25.193335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170738, 25.298988, 25.157730>,  <37.941612, 25.230837, 25.136368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170738, 25.298988, 25.157730>,  <38.552616, 25.412575, 25.193335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170738, 25.298988, 25.157730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114259, 0.625952, -0.771446,
		0.274779, -0.726325, -0.630039,
		-0.954694, -0.283965, -0.089009,
		37.884331, 25.213799, 25.131027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444271, 25.512636, 24.498186>,  <38.552616, 25.412575, 25.193335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444271, 25.512636, 24.498186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069725, 25.463150, 24.629585>,  <37.844997, 25.433458, 24.708426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069725, 25.463150, 24.629585>,  <38.444271, 25.512636, 24.498186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069725, 25.463150, 24.629585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316610, 0.701768, -0.638185,
		-0.151575, -0.701581, -0.696283,
		-0.936367, -0.123717, 0.328498,
		37.788815, 25.426035, 24.728134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955555, 25.605936, 23.935753>,  <38.444271, 25.512636, 24.498186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955555, 25.605936, 23.935753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742371, 25.676716, 24.266724>,  <37.614460, 25.719183, 24.465307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742371, 25.676716, 24.266724>,  <37.955555, 25.605936, 23.935753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742371, 25.676716, 24.266724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405147, 0.805134, -0.433145,
		-0.742836, -0.566081, -0.357418,
		-0.532964, 0.176949, 0.827429,
		37.582481, 25.729801, 24.514952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279205, 25.752985, 23.681082>,  <37.955555, 25.605936, 23.935753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279205, 25.752985, 23.681082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293663, 25.899654, 24.052940>,  <37.302338, 25.987656, 24.276056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293663, 25.899654, 24.052940>,  <37.279205, 25.752985, 23.681082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293663, 25.899654, 24.052940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427893, 0.846348, -0.317180,
		-0.903106, -0.386326, 0.187488,
		0.036145, 0.366672, 0.929648,
		37.304508, 26.009657, 24.331835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605267, 26.055021, 23.809690>,  <37.279205, 25.752985, 23.681082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605267, 26.055021, 23.809690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.861473, 26.219646, 24.069027>,  <37.015198, 26.318422, 24.224628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.861473, 26.219646, 24.069027>,  <36.605267, 26.055021, 23.809690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861473, 26.219646, 24.069027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283011, 0.911346, -0.298919,
		-0.713889, 0.007976, 0.700213,
		0.640521, 0.411564, 0.648343,
		37.053631, 26.343115, 24.263531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229591, 26.699686, 24.101515>,  <36.605267, 26.055021, 23.809690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229591, 26.699686, 24.101515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618450, 26.773720, 24.159031>,  <36.851765, 26.818140, 24.193541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618450, 26.773720, 24.159031>,  <36.229591, 26.699686, 24.101515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618450, 26.773720, 24.159031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165276, 0.976356, -0.139333,
		-0.166178, 0.111686, 0.979751,
		0.972147, 0.185084, 0.143790,
		36.910095, 26.829245, 24.202168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219925, 27.299992, 24.447252>,  <36.229591, 26.699686, 24.101515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219925, 27.299992, 24.447252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592369, 27.277168, 24.303150>,  <36.815834, 27.263475, 24.216690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592369, 27.277168, 24.303150>,  <36.219925, 27.299992, 24.447252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592369, 27.277168, 24.303150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001790, 0.986962, -0.160942,
		0.364740, 0.150499, 0.918866,
		0.931108, -0.057057, -0.360254,
		36.871700, 27.260052, 24.195074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447906, 27.870533, 24.656921>,  <36.219925, 27.299992, 24.447252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447906, 27.870533, 24.656921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720123, 27.783459, 24.377071>,  <36.883453, 27.731215, 24.209162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720123, 27.783459, 24.377071>,  <36.447906, 27.870533, 24.656921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720123, 27.783459, 24.377071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137319, 0.975821, -0.170046,
		0.719727, 0.019651, 0.693979,
		0.680542, -0.217684, -0.699626,
		36.924286, 27.718153, 24.167183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026108, 28.351112, 24.790165>,  <36.447906, 27.870533, 24.656921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026108, 28.351112, 24.790165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.071922, 28.201450, 24.422058>,  <37.099411, 28.111652, 24.201195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.071922, 28.201450, 24.422058>,  <37.026108, 28.351112, 24.790165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071922, 28.201450, 24.422058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168033, 0.920310, -0.353262,
		0.979105, -0.114175, 0.168276,
		0.114533, -0.374156, -0.920266,
		37.106281, 28.089203, 24.145979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596771, 28.780392, 24.426392>,  <37.026108, 28.351112, 24.790165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596771, 28.780392, 24.426392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423016, 28.598354, 24.115471>,  <37.318764, 28.489132, 23.928919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423016, 28.598354, 24.115471>,  <37.596771, 28.780392, 24.426392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423016, 28.598354, 24.115471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030599, 0.855019, -0.517693,
		0.900207, -0.248663, -0.357483,
		-0.434386, -0.455092, -0.777303,
		37.292698, 28.461826, 23.882280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011688, 28.913702, 23.877785>,  <37.596771, 28.780392, 24.426392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011688, 28.913702, 23.877785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640541, 28.852825, 23.741608>,  <37.417854, 28.816299, 23.659901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640541, 28.852825, 23.741608>,  <38.011688, 28.913702, 23.877785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640541, 28.852825, 23.741608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035440, 0.872811, -0.486769,
		0.371223, -0.463723, -0.804459,
		-0.927867, -0.152190, -0.340442,
		37.362183, 28.807169, 23.639475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109276, 28.929079, 23.168734>,  <38.011688, 28.913702, 23.877785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109276, 28.929079, 23.168734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725239, 29.009830, 23.246166>,  <37.494816, 29.058281, 23.292625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725239, 29.009830, 23.246166>,  <38.109276, 28.929079, 23.168734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725239, 29.009830, 23.246166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065219, 0.834629, -0.546937,
		-0.271986, -0.512483, -0.814484,
		-0.960088, 0.201879, 0.193584,
		37.437214, 29.070395, 23.304241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870937, 29.003500, 22.544842>,  <38.109276, 28.929079, 23.168734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870937, 29.003500, 22.544842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604061, 29.206646, 22.762806>,  <37.443935, 29.328533, 22.893585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604061, 29.206646, 22.762806>,  <37.870937, 29.003500, 22.544842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604061, 29.206646, 22.762806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047741, 0.700875, -0.711684,
		-0.743354, -0.500844, -0.443372,
		-0.667192, 0.507867, 0.544910,
		37.403904, 29.359007, 22.926279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355328, 29.292089, 22.112888>,  <37.870937, 29.003500, 22.544842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355328, 29.292089, 22.112888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269741, 29.540829, 22.414227>,  <37.218391, 29.690071, 22.595030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269741, 29.540829, 22.414227>,  <37.355328, 29.292089, 22.112888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269741, 29.540829, 22.414227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158877, 0.738782, -0.654950,
		-0.963835, -0.259824, -0.059274,
		-0.213962, 0.621846, 0.753344,
		37.205551, 29.727383, 22.640230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947754, 29.697214, 21.785213>,  <37.355328, 29.292089, 22.112888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947754, 29.697214, 21.785213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.071568, 29.894245, 22.110558>,  <37.145855, 30.012465, 22.305763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.071568, 29.894245, 22.110558>,  <36.947754, 29.697214, 21.785213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071568, 29.894245, 22.110558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014277, 0.857680, -0.513985,
		-0.950780, 0.147486, 0.272517,
		0.309537, 0.492577, 0.813360,
		37.164429, 30.042019, 22.354565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468147, 30.236959, 21.820959>,  <36.947754, 29.697214, 21.785213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468147, 30.236959, 21.820959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813751, 30.328590, 22.000298>,  <37.021114, 30.383570, 22.107901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813751, 30.328590, 22.000298>,  <36.468147, 30.236959, 21.820959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813751, 30.328590, 22.000298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027411, 0.867774, -0.496203,
		-0.502730, 0.441013, 0.743484,
		0.864009, 0.229077, 0.448345,
		37.072952, 30.397314, 22.134802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420677, 30.872322, 22.135639>,  <36.468147, 30.236959, 21.820959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420677, 30.872322, 22.135639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793377, 30.791088, 22.015236>,  <37.016994, 30.742348, 21.942993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793377, 30.791088, 22.015236>,  <36.420677, 30.872322, 22.135639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793377, 30.791088, 22.015236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016510, 0.804420, -0.593832,
		0.362737, 0.558270, 0.746161,
		0.931745, -0.203086, -0.301010,
		37.072899, 30.730162, 21.924932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183659, 31.201521, 22.791159>,  <36.420677, 30.872322, 22.135639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183659, 31.201521, 22.791159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119957, 31.497810, 22.530094>,  <36.081738, 31.675585, 22.373455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119957, 31.497810, 22.530094>,  <36.183659, 31.201521, 22.791159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119957, 31.497810, 22.530094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890984, 0.176890, 0.418159,
		0.425190, 0.648101, 0.631805,
		-0.159250, 0.740726, -0.652660,
		36.072182, 31.720028, 22.334295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019867, 31.755398, 23.163284>,  <36.183659, 31.201521, 22.791159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019867, 31.755398, 23.163284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861710, 31.733643, 22.796524>,  <35.766815, 31.720589, 22.576468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861710, 31.733643, 22.796524>,  <36.019867, 31.755398, 23.163284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861710, 31.733643, 22.796524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917855, -0.014356, 0.396656,
		-0.034737, 0.998416, -0.044244,
		-0.395393, -0.054389, -0.916900,
		35.743092, 31.717325, 22.521454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384247, 32.189690, 23.230160>,  <36.019867, 31.755398, 23.163284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384247, 32.189690, 23.230160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334522, 31.970646, 22.899181>,  <35.304688, 31.839218, 22.700594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334522, 31.970646, 22.899181>,  <35.384247, 32.189690, 23.230160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334522, 31.970646, 22.899181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889723, -0.307640, 0.337269,
		-0.439248, 0.778125, -0.448980,
		-0.124313, -0.547612, -0.827446,
		35.297230, 31.806362, 22.650948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720146, 32.285709, 22.783012>,  <35.384247, 32.189690, 23.230160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720146, 32.285709, 22.783012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860981, 31.911472, 22.772404>,  <34.945480, 31.686930, 22.766039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860981, 31.911472, 22.772404>,  <34.720146, 32.285709, 22.783012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860981, 31.911472, 22.772404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718992, -0.288500, 0.632312,
		-0.599238, -0.203558, -0.774260,
		0.352086, -0.935592, -0.026524,
		34.966606, 31.630795, 22.764446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131344, 31.998280, 22.686274>,  <34.720146, 32.285709, 22.783012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131344, 31.998280, 22.686274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416908, 31.789627, 22.873135>,  <34.588245, 31.664436, 22.985252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416908, 31.789627, 22.873135>,  <34.131344, 31.998280, 22.686274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416908, 31.789627, 22.873135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645873, -0.232801, 0.727085,
		-0.270522, -0.820791, -0.503110,
		0.713909, -0.521638, 0.467148,
		34.631081, 31.633139, 23.013281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034447, 31.209108, 22.752268>,  <34.131344, 31.998280, 22.686274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034447, 31.209108, 22.752268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240738, 31.356091, 23.061848>,  <34.364513, 31.444281, 23.247595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240738, 31.356091, 23.061848>,  <34.034447, 31.209108, 22.752268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240738, 31.356091, 23.061848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571425, -0.525547, 0.630297,
		0.638353, -0.767318, -0.061069,
		0.515732, 0.367455, 0.773949,
		34.395458, 31.466328, 23.294033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301296, 30.657639, 23.218071>,  <34.034447, 31.209108, 22.752268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301296, 30.657639, 23.218071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261803, 30.983822, 23.446205>,  <34.238106, 31.179531, 23.583086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261803, 30.983822, 23.446205>,  <34.301296, 30.657639, 23.218071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261803, 30.983822, 23.446205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513726, -0.532625, 0.672604,
		0.852254, -0.226584, 0.471511,
		-0.098738, 0.815457, 0.570334,
		34.232182, 31.228458, 23.617306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367989, 30.370115, 23.800486>,  <34.301296, 30.657639, 23.218071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367989, 30.370115, 23.800486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210182, 30.726433, 23.890678>,  <34.115498, 30.940224, 23.944794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210182, 30.726433, 23.890678>,  <34.367989, 30.370115, 23.800486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210182, 30.726433, 23.890678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563878, -0.428443, 0.706029,
		0.725533, 0.151396, 0.671328,
		-0.394516, 0.890795, 0.225481,
		34.091827, 30.993671, 23.958323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453552, 30.517885, 24.542250>,  <34.367989, 30.370115, 23.800486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453552, 30.517885, 24.542250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141296, 30.735748, 24.419640>,  <33.953945, 30.866467, 24.346073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141296, 30.735748, 24.419640>,  <34.453552, 30.517885, 24.542250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141296, 30.735748, 24.419640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600422, -0.517409, 0.609739,
		0.173502, 0.660026, 0.730933,
		-0.780635, 0.544658, -0.306523,
		33.907104, 30.899145, 24.327682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203415, 30.606339, 25.180244>,  <34.453552, 30.517885, 24.542250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203415, 30.606339, 25.180244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904385, 30.709023, 24.935219>,  <33.724968, 30.770634, 24.788202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904385, 30.709023, 24.935219>,  <34.203415, 30.606339, 25.180244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904385, 30.709023, 24.935219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639338, -0.528016, 0.558968,
		-0.179952, 0.809506, 0.558854,
		-0.747572, 0.256710, -0.612566,
		33.680115, 30.786036, 24.751450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725304, 30.830549, 25.642054>,  <34.203415, 30.606339, 25.180244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725304, 30.830549, 25.642054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543568, 30.736652, 25.298317>,  <33.434525, 30.680313, 25.092075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543568, 30.736652, 25.298317>,  <33.725304, 30.830549, 25.642054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543568, 30.736652, 25.298317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678960, -0.533246, 0.504641,
		-0.576701, 0.812739, 0.082895,
		-0.454345, -0.234744, -0.859340,
		33.407265, 30.666229, 25.040514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044323, 30.962154, 25.805767>,  <33.725304, 30.830549, 25.642054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044323, 30.962154, 25.805767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042339, 30.706585, 25.498066>,  <33.041149, 30.553244, 25.313446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042339, 30.706585, 25.498066>,  <33.044323, 30.962154, 25.805767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042339, 30.706585, 25.498066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585717, -0.621638, 0.520098,
		-0.810500, 0.453145, -0.371145,
		-0.004962, -0.638926, -0.769252,
		33.040852, 30.514908, 25.267290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342747, 30.720348, 25.747911>,  <33.044323, 30.962154, 25.805767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342747, 30.720348, 25.747911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579380, 30.451935, 25.569138>,  <32.721359, 30.290888, 25.461874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579380, 30.451935, 25.569138>,  <32.342747, 30.720348, 25.747911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579380, 30.451935, 25.569138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450215, -0.734801, 0.507319,
		-0.668835, -0.098904, -0.736802,
		0.591579, -0.671033, -0.446933,
		32.756855, 30.250626, 25.435059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828199, 30.300514, 25.436235>,  <32.342747, 30.720348, 25.747911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828199, 30.300514, 25.436235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171387, 30.095421, 25.448853>,  <32.377300, 29.972364, 25.456423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171387, 30.095421, 25.448853>,  <31.828199, 30.300514, 25.436235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171387, 30.095421, 25.448853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443928, -0.709141, 0.547766,
		-0.258490, -0.483968, -0.836037,
		0.857969, -0.512733, 0.031541,
		32.428776, 29.941601, 25.458315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650368, 29.634790, 25.317429>,  <31.828199, 30.300514, 25.436235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650368, 29.634790, 25.317429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009125, 29.583691, 25.486786>,  <32.224380, 29.553030, 25.588400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009125, 29.583691, 25.486786>,  <31.650368, 29.634790, 25.317429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009125, 29.583691, 25.486786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398541, -0.648460, 0.648587,
		0.191698, -0.750453, -0.632513,
		0.896893, -0.127749, 0.423395,
		32.278194, 29.545366, 25.613804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868473, 28.913792, 25.406099>,  <31.650368, 29.634790, 25.317429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868473, 28.913792, 25.406099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092991, 29.099079, 25.680435>,  <32.227703, 29.210253, 25.845036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092991, 29.099079, 25.680435>,  <31.868473, 28.913792, 25.406099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092991, 29.099079, 25.680435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115063, -0.776967, 0.618937,
		0.819578, -0.426321, -0.382809,
		0.561295, 0.463220, 0.685838,
		32.261379, 29.238045, 25.886187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296440, 28.390352, 25.584219>,  <31.868473, 28.913792, 25.406099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296440, 28.390352, 25.584219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326618, 28.674259, 25.864372>,  <32.344727, 28.844604, 26.032465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326618, 28.674259, 25.864372>,  <32.296440, 28.390352, 25.584219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326618, 28.674259, 25.864372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051940, -0.698634, 0.713592,
		0.995796, -0.090215, -0.015844,
		0.075446, 0.709769, 0.700383,
		32.349251, 28.887190, 26.074488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893181, 28.181311, 26.050005>,  <32.296440, 28.390352, 25.584219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893181, 28.181311, 26.050005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648891, 28.415699, 26.263042>,  <32.502319, 28.556332, 26.390865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648891, 28.415699, 26.263042>,  <32.893181, 28.181311, 26.050005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648891, 28.415699, 26.263042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099133, -0.723885, 0.682761,
		0.785617, 0.364179, 0.500180,
		-0.610720, 0.585973, 0.532594,
		32.465675, 28.591492, 26.422821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156940, 28.117916, 26.767866>,  <32.893181, 28.181311, 26.050005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156940, 28.117916, 26.767866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773270, 28.230694, 26.776615>,  <32.543068, 28.298361, 26.781864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773270, 28.230694, 26.776615>,  <33.156940, 28.117916, 26.767866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773270, 28.230694, 26.776615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202688, -0.739359, 0.642079,
		0.197202, 0.611437, 0.766326,
		-0.959181, 0.281944, 0.021872,
		32.485516, 28.315277, 26.783176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060646, 28.017357, 27.429617>,  <33.156940, 28.117916, 26.767866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060646, 28.017357, 27.429617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681297, 28.042595, 27.305286>,  <32.453690, 28.057737, 27.230688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681297, 28.042595, 27.305286>,  <33.060646, 28.017357, 27.429617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681297, 28.042595, 27.305286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302545, -0.474082, 0.826869,
		-0.095184, 0.878217, 0.468695,
		-0.948370, 0.063096, -0.310825,
		32.396786, 28.061523, 27.212038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613400, 28.212320, 27.931271>,  <33.060646, 28.017357, 27.429617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613400, 28.212320, 27.931271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324818, 28.056515, 27.702263>,  <32.151669, 27.963032, 27.564857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324818, 28.056515, 27.702263>,  <32.613400, 28.212320, 27.931271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324818, 28.056515, 27.702263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331564, -0.531535, 0.779446,
		-0.607921, 0.752162, 0.254330,
		-0.721455, -0.389515, -0.572521,
		32.108379, 27.939661, 27.530506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023922, 28.363863, 28.322821>,  <32.613400, 28.212320, 27.931271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023922, 28.363863, 28.322821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963621, 28.048004, 28.084919>,  <31.927441, 27.858488, 27.942179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963621, 28.048004, 28.084919>,  <32.023922, 28.363863, 28.322821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963621, 28.048004, 28.084919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381241, -0.508652, 0.771964,
		-0.912102, 0.343119, -0.224366,
		-0.150751, -0.789647, -0.594753,
		31.918396, 27.811110, 27.906492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363684, 27.962677, 28.535311>,  <32.023922, 28.363863, 28.322821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363684, 27.962677, 28.535311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568920, 27.690617, 28.325882>,  <31.692062, 27.527380, 28.200224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568920, 27.690617, 28.325882>,  <31.363684, 27.962677, 28.535311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568920, 27.690617, 28.325882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312414, -0.716133, 0.624140,
		-0.799458, -0.156670, -0.579932,
		0.513093, -0.680153, -0.523572,
		31.722847, 27.486570, 28.168810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978804, 27.404032, 28.569328>,  <31.363684, 27.962677, 28.535311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978804, 27.404032, 28.569328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.336143, 27.258755, 28.463482>,  <31.550547, 27.171589, 28.399973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.336143, 27.258755, 28.463482>,  <30.978804, 27.404032, 28.569328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.336143, 27.258755, 28.463482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158655, -0.805868, 0.570443,
		-0.420427, -0.467621, -0.777542,
		0.893348, -0.363191, -0.264618,
		31.604147, 27.149797, 28.384096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819197, 26.783884, 28.528419>,  <30.978804, 27.404032, 28.569328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819197, 26.783884, 28.528419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.213028, 26.769165, 28.596836>,  <31.449326, 26.760334, 28.637886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.213028, 26.769165, 28.596836>,  <30.819197, 26.783884, 28.528419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213028, 26.769165, 28.596836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138749, -0.759745, 0.635244,
		0.106574, -0.649179, -0.753133,
		0.984576, -0.036796, 0.171041,
		31.508400, 26.758125, 28.648148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024096, 26.065048, 28.544157>,  <30.819197, 26.783884, 28.528419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024096, 26.065048, 28.544157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341599, 26.244328, 28.708630>,  <31.532101, 26.351894, 28.807312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341599, 26.244328, 28.708630>,  <31.024096, 26.065048, 28.544157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341599, 26.244328, 28.708630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098406, -0.761747, 0.640357,
		0.600222, -0.467825, -0.648748,
		0.793757, 0.448197, 0.411181,
		31.579725, 26.378786, 28.831984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.481903, 25.447134, 28.675058>,  <31.024096, 26.065048, 28.544157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.481903, 25.447134, 28.675058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587439, 25.751225, 28.912525>,  <31.650761, 25.933680, 29.055006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587439, 25.751225, 28.912525>,  <31.481903, 25.447134, 28.675058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587439, 25.751225, 28.912525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020527, -0.619763, 0.784520,
		0.964348, -0.194801, -0.179123,
		0.263839, 0.760228, 0.593669,
		31.666590, 25.979292, 29.090626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020454, 25.198505, 29.086889>,  <31.481903, 25.447134, 28.675058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020454, 25.198505, 29.086889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867270, 25.515465, 29.276814>,  <31.775358, 25.705641, 29.390768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867270, 25.515465, 29.276814>,  <32.020454, 25.198505, 29.086889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867270, 25.515465, 29.276814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093975, -0.544748, 0.833317,
		0.918971, 0.274509, 0.283084,
		-0.382963, 0.792397, 0.474811,
		31.752380, 25.753183, 29.419256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433422, 25.257057, 29.752861>,  <32.020454, 25.198505, 29.086889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433422, 25.257057, 29.752861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072460, 25.419292, 29.811043>,  <31.855883, 25.516634, 29.845953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072460, 25.419292, 29.811043>,  <32.433422, 25.257057, 29.752861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072460, 25.419292, 29.811043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020246, -0.377117, 0.925944,
		0.430405, 0.832635, 0.348525,
		-0.902409, 0.405587, 0.145456,
		31.801737, 25.540968, 29.854679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406868, 25.506147, 30.479408>,  <32.433422, 25.257057, 29.752861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406868, 25.506147, 30.479408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028942, 25.471970, 30.352898>,  <31.802187, 25.451464, 30.276991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028942, 25.471970, 30.352898>,  <32.406868, 25.506147, 30.479408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028942, 25.471970, 30.352898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285424, -0.259226, 0.922678,
		-0.160825, 0.962030, 0.220532,
		-0.944811, -0.085444, -0.316277,
		31.745499, 25.446337, 30.258015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997971, 25.697235, 31.006639>,  <32.406868, 25.506147, 30.479408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997971, 25.697235, 31.006639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741755, 25.487370, 30.782341>,  <31.588024, 25.361450, 30.647762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741755, 25.487370, 30.782341>,  <31.997971, 25.697235, 31.006639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741755, 25.487370, 30.782341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488790, -0.284631, 0.824663,
		-0.592276, 0.802318, -0.074133,
		-0.640542, -0.524663, -0.560745,
		31.549593, 25.329971, 30.614117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.432959, 25.823347, 31.362652>,  <31.997971, 25.697235, 31.006639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.432959, 25.823347, 31.362652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324471, 25.514854, 31.132298>,  <31.259377, 25.329760, 30.994085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324471, 25.514854, 31.132298>,  <31.432959, 25.823347, 31.362652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.324471, 25.514854, 31.132298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563216, -0.358020, 0.744721,
		-0.780530, 0.526332, -0.337267,
		-0.271222, -0.771230, -0.575884,
		31.243103, 25.283485, 30.959532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.588642, 25.810589, 31.325552>,  <31.432959, 25.823347, 31.362652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.588642, 25.810589, 31.325552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.763412, 25.457790, 31.254925>,  <30.868275, 25.246111, 31.212549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.763412, 25.457790, 31.254925>,  <30.588642, 25.810589, 31.325552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763412, 25.457790, 31.254925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546930, -0.416342, 0.726310,
		-0.714116, -0.220773, -0.664302,
		0.436927, -0.881997, -0.176569,
		30.894491, 25.193192, 31.201954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.101929, 25.371414, 31.320618>,  <30.588642, 25.810589, 31.325552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.101929, 25.371414, 31.320618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.408857, 25.116104, 31.345348>,  <30.593014, 24.962917, 31.360188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.408857, 25.116104, 31.345348>,  <30.101929, 25.371414, 31.320618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.408857, 25.116104, 31.345348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514853, -0.555714, 0.652769,
		-0.382287, -0.532716, -0.755030,
		0.767322, -0.638275, 0.061828,
		30.639053, 24.924622, 31.363897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.749975, 24.853664, 31.410501>,  <30.101929, 25.371414, 31.320618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.749975, 24.853664, 31.410501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.098867, 24.680870, 31.502247>,  <30.308203, 24.577194, 31.557295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.098867, 24.680870, 31.502247>,  <29.749975, 24.853664, 31.410501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.098867, 24.680870, 31.502247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466253, -0.592740, 0.656709,
		-0.147735, -0.679742, -0.718419,
		0.872229, -0.431984, 0.229363,
		30.360537, 24.551275, 31.571056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723822, 24.179970, 31.383533>,  <29.749975, 24.853664, 31.410501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723822, 24.179970, 31.383533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027817, 24.236843, 31.637211>,  <30.210215, 24.270967, 31.789417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027817, 24.236843, 31.637211>,  <29.723822, 24.179970, 31.383533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027817, 24.236843, 31.637211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444953, -0.597430, 0.667153,
		0.473745, -0.789215, -0.390775,
		0.759988, 0.142184, 0.634193,
		30.255814, 24.279499, 31.827469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905453, 23.502577, 31.600170>,  <29.723822, 24.179970, 31.383533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905453, 23.502577, 31.600170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.050560, 23.742470, 31.885468>,  <30.137625, 23.886406, 32.056644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.050560, 23.742470, 31.885468>,  <29.905453, 23.502577, 31.600170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.050560, 23.742470, 31.885468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265751, -0.667020, 0.696032,
		0.893183, -0.442044, -0.082595,
		0.362770, 0.599735, 0.713244,
		30.159391, 23.922390, 32.099442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174040, 23.064390, 32.048401>,  <29.905453, 23.502577, 31.600170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.174040, 23.064390, 32.048401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147711, 23.391602, 32.276958>,  <30.131912, 23.587929, 32.414093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147711, 23.391602, 32.276958>,  <30.174040, 23.064390, 32.048401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147711, 23.391602, 32.276958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355189, -0.554339, 0.752694,
		0.932474, -0.153408, 0.327045,
		-0.065824, 0.818031, 0.571395,
		30.127964, 23.637011, 32.448376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451056, 22.876268, 32.739948>,  <30.174040, 23.064390, 32.048401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451056, 22.876268, 32.739948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.217121, 23.191784, 32.815609>,  <30.076759, 23.381092, 32.861008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.217121, 23.191784, 32.815609>,  <30.451056, 22.876268, 32.739948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.217121, 23.191784, 32.815609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366438, -0.464960, 0.805938,
		0.723663, 0.402029, 0.560967,
		-0.584837, 0.788788, 0.189156,
		30.041670, 23.428421, 32.872356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470175, 22.925577, 33.469845>,  <30.451056, 22.876268, 32.739948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470175, 22.925577, 33.469845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154675, 23.145927, 33.360733>,  <29.965374, 23.278137, 33.295265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154675, 23.145927, 33.360733>,  <30.470175, 22.925577, 33.469845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154675, 23.145927, 33.360733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501274, -0.319547, 0.804123,
		0.355805, 0.770991, 0.528182,
		-0.788750, 0.550875, -0.272782,
		29.918049, 23.311190, 33.278900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.255926, 23.361692, 34.122089>,  <30.470175, 22.925577, 33.469845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.255926, 23.361692, 34.122089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.943373, 23.316673, 33.876560>,  <29.755840, 23.289661, 33.729244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.943373, 23.316673, 33.876560>,  <30.255926, 23.361692, 34.122089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943373, 23.316673, 33.876560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566921, -0.283113, 0.773594,
		-0.260847, 0.952460, 0.157414,
		-0.781383, -0.112548, -0.613819,
		29.708958, 23.282909, 33.692413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681179, 23.816591, 34.370590>,  <30.255926, 23.361692, 34.122089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.681179, 23.816591, 34.370590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503025, 23.530537, 34.155106>,  <29.396132, 23.358904, 34.025814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503025, 23.530537, 34.155106>,  <29.681179, 23.816591, 34.370590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503025, 23.530537, 34.155106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632932, -0.174088, 0.754381,
		-0.633268, 0.676960, -0.375096,
		-0.445386, -0.715135, -0.538714,
		29.369410, 23.315996, 33.993492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.052467, 23.903257, 34.634090>,  <29.681179, 23.816591, 34.370590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.052467, 23.903257, 34.634090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.013403, 23.562607, 34.428104>,  <28.989964, 23.358215, 34.304512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.013403, 23.562607, 34.428104>,  <29.052467, 23.903257, 34.634090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.013403, 23.562607, 34.428104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559975, -0.380740, 0.735844,
		-0.822734, 0.360233, -0.439707,
		-0.097661, -0.851628, -0.514968,
		28.984104, 23.307119, 34.273613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.365402, 23.813950, 34.691551>,  <29.052467, 23.903257, 34.634090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.365402, 23.813950, 34.691551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.538092, 23.466431, 34.594551>,  <28.641705, 23.257919, 34.536350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.538092, 23.466431, 34.594551>,  <28.365402, 23.813950, 34.691551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.538092, 23.466431, 34.594551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550496, -0.466752, 0.692169,
		-0.714542, -0.165329, -0.679776,
		0.431722, -0.868798, -0.242501,
		28.667608, 23.205791, 34.521801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.821846, 23.301840, 34.583683>,  <28.365402, 23.813950, 34.691551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.821846, 23.301840, 34.583683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.160782, 23.114063, 34.682987>,  <28.364143, 23.001396, 34.742569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.160782, 23.114063, 34.682987>,  <27.821846, 23.301840, 34.583683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.160782, 23.114063, 34.682987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508953, -0.584438, 0.631980,
		-0.151584, -0.661858, -0.734143,
		0.847342, -0.469443, 0.248263,
		28.414984, 22.973230, 34.757465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.541220, 22.653715, 34.733028>,  <27.821846, 23.301840, 34.583683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.541220, 22.653715, 34.733028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.912125, 22.678551, 34.880722>,  <28.134666, 22.693451, 34.969337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.912125, 22.678551, 34.880722>,  <27.541220, 22.653715, 34.733028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.912125, 22.678551, 34.880722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301543, -0.460731, 0.834745,
		0.221944, -0.885365, -0.408496,
		0.927261, 0.062088, 0.369232,
		28.190304, 22.697176, 34.991493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.576435, 22.002140, 35.107952>,  <27.541220, 22.653715, 34.733028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.576435, 22.002140, 35.107952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.864212, 22.241699, 35.248650>,  <28.036879, 22.385435, 35.333069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.864212, 22.241699, 35.248650>,  <27.576435, 22.002140, 35.107952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.864212, 22.241699, 35.248650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168783, -0.340497, 0.924973,
		0.673731, -0.724833, -0.143884,
		0.719443, 0.598898, 0.351743,
		28.080046, 22.421368, 35.354172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.966812, 21.531450, 35.512783>,  <27.576435, 22.002140, 35.107952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.966812, 21.531450, 35.512783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.051897, 21.909332, 35.612614>,  <28.102947, 22.136061, 35.672512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.051897, 21.909332, 35.612614>,  <27.966812, 21.531450, 35.512783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.051897, 21.909332, 35.612614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081958, -0.237270, 0.967980,
		0.973671, -0.226356, 0.026956,
		0.212713, 0.944704, 0.249575,
		28.115711, 22.192743, 35.687485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.493973, 21.541832, 35.925320>,  <27.966812, 21.531450, 35.512783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.493973, 21.541832, 35.925320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299458, 21.877949, 36.021179>,  <28.182749, 22.079618, 36.078693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299458, 21.877949, 36.021179>,  <28.493973, 21.541832, 35.925320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.299458, 21.877949, 36.021179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195454, -0.371915, 0.907456,
		0.851658, 0.394446, 0.345097,
		-0.486289, 0.840292, 0.239649,
		28.153570, 22.130037, 36.093075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.707506, 21.817211, 36.552364>,  <28.493973, 21.541832, 35.925320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.707506, 21.817211, 36.552364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.347132, 21.989594, 36.531998>,  <28.130907, 22.093023, 36.519779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.347132, 21.989594, 36.531998>,  <28.707506, 21.817211, 36.552364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.347132, 21.989594, 36.531998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161954, -0.225053, 0.960792,
		0.402600, 0.873858, 0.272553,
		-0.900935, 0.430956, -0.050918,
		28.076851, 22.118881, 36.516724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.604027, 22.149845, 37.186142>,  <28.707506, 21.817211, 36.552364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.604027, 22.149845, 37.186142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.241760, 22.057766, 37.043716>,  <28.024401, 22.002520, 36.958260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.241760, 22.057766, 37.043716>,  <28.604027, 22.149845, 37.186142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.241760, 22.057766, 37.043716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232896, -0.431660, 0.871452,
		-0.354303, 0.872170, 0.337328,
		-0.905665, -0.230196, -0.356063,
		27.970060, 21.988707, 36.936897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.310902, 22.115187, 37.804726>,  <28.604027, 22.149845, 37.186142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.310902, 22.115187, 37.804726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.046755, 21.948757, 37.554668>,  <27.888268, 21.848900, 37.404636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.046755, 21.948757, 37.554668>,  <28.310902, 22.115187, 37.804726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.046755, 21.948757, 37.554668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337937, -0.578760, 0.742183,
		-0.670608, 0.701370, 0.241587,
		-0.660366, -0.416073, -0.625140,
		27.848644, 21.823935, 37.367126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.702806, 22.210281, 38.127541>,  <28.310902, 22.115187, 37.804726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.702806, 22.210281, 38.127541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.705427, 21.880005, 37.901909>,  <27.706999, 21.681839, 37.766529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.705427, 21.880005, 37.901909>,  <27.702806, 22.210281, 38.127541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.705427, 21.880005, 37.901909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243366, -0.548451, 0.799984,
		-0.969913, 0.132038, -0.204538,
		0.006551, -0.825692, -0.564083,
		27.707392, 21.632298, 37.732685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.040947, 22.780142, 38.366241>,  <27.702806, 22.210281, 38.127541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.040947, 22.780142, 38.366241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720848, 23.019634, 38.352821>,  <27.528788, 23.163330, 38.344769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720848, 23.019634, 38.352821>,  <28.040947, 22.780142, 38.366241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.720848, 23.019634, 38.352821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595330, 0.786494, -0.164347,
		-0.072011, -0.151493, -0.985832,
		-0.800248, 0.598730, -0.033552,
		27.480774, 23.199253, 38.342754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.088827, 23.294609, 37.775299>,  <28.040947, 22.780142, 38.366241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.088827, 23.294609, 37.775299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.860275, 23.469448, 38.053139>,  <27.723145, 23.574352, 38.219841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.860275, 23.469448, 38.053139>,  <28.088827, 23.294609, 37.775299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.860275, 23.469448, 38.053139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324309, 0.897737, -0.298148,
		-0.753888, 0.054909, -0.654705,
		-0.571381, 0.437097, 0.694600,
		27.688860, 23.600576, 38.261520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.488989, 23.668131, 37.501736>,  <28.088827, 23.294609, 37.775299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.488989, 23.668131, 37.501736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.683182, 23.814030, 37.819546>,  <27.799698, 23.901569, 38.010231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.683182, 23.814030, 37.819546>,  <27.488989, 23.668131, 37.501736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.683182, 23.814030, 37.819546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225756, 0.825680, -0.516997,
		-0.844594, 0.430362, 0.318511,
		0.485484, 0.364747, 0.794522,
		27.828827, 23.923454, 38.057903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.204668, 24.370640, 37.702385>,  <27.488989, 23.668131, 37.501736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.204668, 24.370640, 37.702385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.578634, 24.333702, 37.839443>,  <27.803013, 24.311541, 37.921680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.578634, 24.333702, 37.839443>,  <27.204668, 24.370640, 37.702385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.578634, 24.333702, 37.839443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242577, 0.871046, -0.427123,
		-0.259023, 0.482442, 0.836753,
		0.934914, -0.092342, 0.342650,
		27.859108, 24.306000, 37.942238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.418106, 25.057199, 38.053486>,  <27.204668, 24.370640, 37.702385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.418106, 25.057199, 38.053486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.718527, 24.835423, 37.910091>,  <27.898779, 24.702356, 37.824055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.718527, 24.835423, 37.910091>,  <27.418106, 25.057199, 38.053486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.718527, 24.835423, 37.910091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379834, 0.806954, -0.452274,
		0.540042, 0.203516, 0.816661,
		0.751053, -0.554443, -0.358487,
		27.943842, 24.669090, 37.802544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.062971, 25.480423, 38.000122>,  <27.418106, 25.057199, 38.053486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.062971, 25.480423, 38.000122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095997, 25.183323, 37.734337>,  <28.115812, 25.005062, 37.574867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095997, 25.183323, 37.734337>,  <28.062971, 25.480423, 38.000122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095997, 25.183323, 37.734337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296892, 0.654793, -0.695055,
		0.951335, -0.139886, 0.274579,
		0.082564, -0.742750, -0.664459,
		28.120766, 24.960497, 37.535000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.625397, 25.712168, 37.613686>,  <28.062971, 25.480423, 38.000122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.625397, 25.712168, 37.613686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.428083, 25.436211, 37.401756>,  <28.309696, 25.270636, 37.274597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.428083, 25.436211, 37.401756>,  <28.625397, 25.712168, 37.613686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.428083, 25.436211, 37.401756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105896, 0.556932, -0.823780,
		0.863399, -0.462463, -0.201668,
		-0.493283, -0.689895, -0.529827,
		28.280098, 25.229242, 37.242809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.010433, 25.670612, 37.104618>,  <28.625397, 25.712168, 37.613686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.010433, 25.670612, 37.104618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.668520, 25.519295, 36.962498>,  <28.463371, 25.428503, 36.877224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.668520, 25.519295, 36.962498>,  <29.010433, 25.670612, 37.104618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.668520, 25.519295, 36.962498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180176, 0.425716, -0.886737,
		0.486709, -0.821983, -0.295734,
		-0.854781, -0.378299, -0.355301,
		28.412085, 25.405806, 36.855907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.165495, 25.446215, 36.437359>,  <29.010433, 25.670612, 37.104618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.165495, 25.446215, 36.437359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.768255, 25.491371, 36.450096>,  <28.529911, 25.518465, 36.457737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.768255, 25.491371, 36.450096>,  <29.165495, 25.446215, 36.437359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.768255, 25.491371, 36.450096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032551, 0.526030, -0.849843,
		-0.112690, -0.842940, -0.526074,
		-0.993097, 0.112893, 0.031840,
		28.470325, 25.525238, 36.459648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045391, 25.301445, 35.852505>,  <29.165495, 25.446215, 36.437359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.045391, 25.301445, 35.852505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.711500, 25.477428, 35.984966>,  <28.511166, 25.583017, 36.064445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.711500, 25.477428, 35.984966>,  <29.045391, 25.301445, 35.852505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.711500, 25.477428, 35.984966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049196, 0.539393, -0.840616,
		-0.548459, -0.717978, -0.428603,
		-0.834729, 0.439957, 0.331156,
		28.461081, 25.609415, 36.084312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.588432, 25.224878, 35.330238>,  <29.045391, 25.301445, 35.852505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.588432, 25.224878, 35.330238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.476654, 25.548798, 35.536594>,  <28.409588, 25.743149, 35.660408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.476654, 25.548798, 35.536594>,  <28.588432, 25.224878, 35.330238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.476654, 25.548798, 35.536594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094143, 0.511594, -0.854054,
		-0.955535, -0.287229, -0.066725,
		-0.279445, 0.809797, 0.515886,
		28.392820, 25.791737, 35.691360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.138931, 25.522665, 34.827625>,  <28.588432, 25.224878, 35.330238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.138931, 25.522665, 34.827625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.240301, 25.809872, 35.086926>,  <28.301123, 25.982195, 35.242504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.240301, 25.809872, 35.086926>,  <28.138931, 25.522665, 34.827625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.240301, 25.809872, 35.086926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109151, 0.644624, -0.756668,
		-0.961178, 0.262513, 0.084990,
		0.253422, 0.718016, 0.648252,
		28.316328, 26.025276, 35.281403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.927917, 26.032736, 34.552425>,  <28.138931, 25.522665, 34.827625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.927917, 26.032736, 34.552425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170902, 26.208771, 34.816944>,  <28.316694, 26.314392, 34.975655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170902, 26.208771, 34.816944>,  <27.927917, 26.032736, 34.552425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.170902, 26.208771, 34.816944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240276, 0.691702, -0.681040,
		-0.757136, 0.572600, 0.314442,
		0.607464, 0.440087, 0.661295,
		28.353142, 26.340797, 35.015331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.824469, 26.718782, 34.522343>,  <27.927917, 26.032736, 34.552425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.824469, 26.718782, 34.522343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.187714, 26.696838, 34.688389>,  <28.405661, 26.683672, 34.788017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.187714, 26.696838, 34.688389>,  <27.824469, 26.718782, 34.522343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.187714, 26.696838, 34.688389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343556, 0.664374, -0.663759,
		-0.239380, 0.745384, 0.622173,
		0.908112, -0.054860, 0.415119,
		28.460148, 26.680380, 34.812923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.032013, 27.410397, 34.488049>,  <27.824469, 26.718782, 34.522343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.032013, 27.410397, 34.488049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.365135, 27.201252, 34.560768>,  <28.565008, 27.075766, 34.604401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.365135, 27.201252, 34.560768>,  <28.032013, 27.410397, 34.488049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.365135, 27.201252, 34.560768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476808, 0.510696, -0.715432,
		0.281229, 0.682499, 0.674615,
		0.832805, -0.522862, 0.181799,
		28.614977, 27.044394, 34.615307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.628954, 27.927801, 34.388630>,  <28.032013, 27.410397, 34.488049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.628954, 27.927801, 34.388630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767704, 27.554665, 34.349667>,  <28.850954, 27.330784, 34.326290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767704, 27.554665, 34.349667>,  <28.628954, 27.927801, 34.388630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767704, 27.554665, 34.349667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578898, 0.294651, -0.760302,
		0.737941, 0.207341, 0.642226,
		0.346874, -0.932840, -0.097406,
		28.871765, 27.274813, 34.320446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.345661, 27.923779, 34.358383>,  <28.628954, 27.927801, 34.388630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.345661, 27.923779, 34.358383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241444, 27.584160, 34.174541>,  <29.178913, 27.380388, 34.064236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241444, 27.584160, 34.174541>,  <29.345661, 27.923779, 34.358383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241444, 27.584160, 34.174541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620053, 0.217735, -0.753741,
		0.740034, -0.481360, 0.469726,
		-0.260545, -0.849049, -0.459600,
		29.163280, 27.329445, 34.036663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.931641, 27.698248, 34.094967>,  <29.345661, 27.923779, 34.358383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.931641, 27.698248, 34.094967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.664845, 27.489410, 33.882347>,  <29.504766, 27.364109, 33.754776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.664845, 27.489410, 33.882347>,  <29.931641, 27.698248, 34.094967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.664845, 27.489410, 33.882347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521893, 0.181776, -0.833418,
		0.531743, -0.833293, 0.151233,
		-0.666991, -0.522092, -0.531548,
		29.464746, 27.332783, 33.722881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336233, 27.315676, 33.696205>,  <29.931641, 27.698248, 34.094967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336233, 27.315676, 33.696205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.984985, 27.321911, 33.504929>,  <29.774237, 27.325651, 33.390163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.984985, 27.321911, 33.504929>,  <30.336233, 27.315676, 33.696205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.984985, 27.321911, 33.504929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467182, 0.243532, -0.849961,
		0.103203, -0.969768, -0.221133,
		-0.878118, 0.015591, -0.478191,
		29.721550, 27.326588, 33.361469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574150, 27.039972, 33.037849>,  <30.336233, 27.315676, 33.696205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574150, 27.039972, 33.037849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206833, 27.183834, 32.971653>,  <29.986443, 27.270151, 32.931934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206833, 27.183834, 32.971653>,  <30.574150, 27.039972, 33.037849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206833, 27.183834, 32.971653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287712, 0.319110, -0.902990,
		-0.271955, -0.876822, -0.396513,
		-0.918293, 0.359655, -0.165489,
		29.931345, 27.291731, 32.922005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.310097, 26.786409, 32.398376>,  <30.574150, 27.039972, 33.037849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.310097, 26.786409, 32.398376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.077120, 27.108379, 32.443726>,  <29.937334, 27.301561, 32.470936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.077120, 27.108379, 32.443726>,  <30.310097, 26.786409, 32.398376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.077120, 27.108379, 32.443726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267800, 0.321692, -0.908183,
		-0.767492, -0.498604, -0.402927,
		-0.582442, 0.804927, 0.113370,
		29.902388, 27.349857, 32.477737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041634, 26.984682, 31.706533>,  <30.310097, 26.786409, 32.398376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041634, 26.984682, 31.706533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.036751, 27.322262, 31.921047>,  <30.033821, 27.524809, 32.049755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.036751, 27.322262, 31.921047>,  <30.041634, 26.984682, 31.706533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.036751, 27.322262, 31.921047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229596, 0.524361, -0.819958,
		-0.973209, 0.113120, -0.200169,
		-0.012207, 0.843948, 0.536285,
		30.033089, 27.575447, 32.081932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.508844, 27.573885, 31.409315>,  <30.041634, 26.984682, 31.706533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.508844, 27.573885, 31.409315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769018, 27.779415, 31.633072>,  <29.925123, 27.902733, 31.767326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769018, 27.779415, 31.633072>,  <29.508844, 27.573885, 31.409315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769018, 27.779415, 31.633072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265932, 0.535802, -0.801372,
		-0.711489, 0.669999, 0.211861,
		0.650434, 0.513826, 0.559391,
		29.964148, 27.933563, 31.800890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.474802, 28.211313, 31.266321>,  <29.508844, 27.573885, 31.409315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.474802, 28.211313, 31.266321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.830484, 28.233158, 31.448013>,  <30.043894, 28.246265, 31.557030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.830484, 28.233158, 31.448013>,  <29.474802, 28.211313, 31.266321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.830484, 28.233158, 31.448013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328548, 0.614707, -0.717072,
		-0.318379, 0.786863, 0.528660,
		0.889208, 0.054610, 0.454232,
		30.097246, 28.249540, 31.584284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.548952, 28.880766, 31.457350>,  <29.474802, 28.211313, 31.266321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.548952, 28.880766, 31.457350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907856, 28.705650, 31.434486>,  <30.123198, 28.600580, 31.420769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907856, 28.705650, 31.434486>,  <29.548952, 28.880766, 31.457350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907856, 28.705650, 31.434486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279732, 0.663867, -0.693564,
		0.341579, 0.606318, 0.718124,
		0.897259, -0.437789, -0.057157,
		30.177034, 28.574314, 31.417339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919327, 29.460695, 31.413153>,  <29.548952, 28.880766, 31.457350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919327, 29.460695, 31.413153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168871, 29.171951, 31.293343>,  <30.318598, 28.998705, 31.221457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168871, 29.171951, 31.293343>,  <29.919327, 29.460695, 31.413153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168871, 29.171951, 31.293343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428606, 0.636488, -0.641233,
		0.653526, 0.271660, 0.706473,
		0.623859, -0.721861, -0.299526,
		30.356030, 28.955393, 31.203485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598593, 29.826874, 31.425318>,  <29.919327, 29.460695, 31.413153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598593, 29.826874, 31.425318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.643690, 29.483692, 31.224838>,  <30.670748, 29.277782, 31.104551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.643690, 29.483692, 31.224838>,  <30.598593, 29.826874, 31.425318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.643690, 29.483692, 31.224838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471586, 0.490187, -0.733024,
		0.874583, -0.153716, 0.459865,
		0.112742, -0.857956, -0.501199,
		30.677513, 29.226305, 31.074478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.289696, 29.760077, 31.322758>,  <30.598593, 29.826874, 31.425318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.289696, 29.760077, 31.322758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.124964, 29.526554, 31.042881>,  <31.026125, 29.386440, 30.874954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.124964, 29.526554, 31.042881>,  <31.289696, 29.760077, 31.322758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.124964, 29.526554, 31.042881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405487, 0.570221, -0.714443,
		0.816075, -0.577943, 0.001893,
		-0.411828, -0.583807, -0.699691,
		31.001415, 29.351412, 30.832973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804277, 29.631973, 30.860325>,  <31.289696, 29.760077, 31.322758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804277, 29.631973, 30.860325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454638, 29.596764, 30.669243>,  <31.244854, 29.575638, 30.554594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454638, 29.596764, 30.669243>,  <31.804277, 29.631973, 30.860325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454638, 29.596764, 30.669243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368177, 0.521440, -0.769770,
		0.316850, -0.848736, -0.423384,
		-0.874101, -0.088022, -0.477703,
		31.192408, 29.570356, 30.525932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022320, 29.502693, 30.080891>,  <31.804277, 29.631973, 30.860325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022320, 29.502693, 30.080891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633211, 29.594242, 30.066277>,  <31.399746, 29.649172, 30.057508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633211, 29.594242, 30.066277>,  <32.022320, 29.502693, 30.080891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633211, 29.594242, 30.066277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149031, 0.496957, -0.854882,
		-0.177502, -0.837049, -0.517534,
		-0.972771, 0.228872, -0.036535,
		31.341379, 29.662903, 30.055315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800341, 29.324291, 29.413990>,  <32.022320, 29.502693, 30.080891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800341, 29.324291, 29.413990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529579, 29.586853, 29.547218>,  <31.367123, 29.744390, 29.627155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529579, 29.586853, 29.547218>,  <31.800341, 29.324291, 29.413990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529579, 29.586853, 29.547218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124259, 0.547907, -0.827259,
		-0.725507, -0.518588, -0.452444,
		-0.676904, 0.656402, 0.333071,
		31.326508, 29.783773, 29.647141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390566, 29.555603, 28.829235>,  <31.800341, 29.324291, 29.413990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390566, 29.555603, 28.829235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365023, 29.847179, 29.101871>,  <31.349697, 30.022125, 29.265453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365023, 29.847179, 29.101871>,  <31.390566, 29.555603, 28.829235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365023, 29.847179, 29.101871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049066, 0.684452, -0.727405,
		-0.996752, -0.013008, -0.079474,
		-0.063858, 0.728942, 0.681591,
		31.345865, 30.065863, 29.306349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004189, 29.902308, 28.464962>,  <31.390566, 29.555603, 28.829235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004189, 29.902308, 28.464962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.115679, 30.156357, 28.753109>,  <31.182573, 30.308786, 28.925997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.115679, 30.156357, 28.753109>,  <31.004189, 29.902308, 28.464962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115679, 30.156357, 28.753109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106048, 0.725150, -0.680375,
		-0.954498, 0.266032, 0.134765,
		0.278727, 0.635125, 0.720366,
		31.199297, 30.346895, 28.969219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601051, 30.616882, 28.426458>,  <31.004189, 29.902308, 28.464962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.601051, 30.616882, 28.426458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953632, 30.666168, 28.608826>,  <31.165180, 30.695740, 28.718246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953632, 30.666168, 28.608826>,  <30.601051, 30.616882, 28.426458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953632, 30.666168, 28.608826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246361, 0.703649, -0.666471,
		-0.402923, 0.699783, 0.589878,
		0.881453, 0.123214, 0.455916,
		31.218069, 30.703133, 28.745600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.678148, 31.298222, 28.484333>,  <30.601051, 30.616882, 28.426458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.678148, 31.298222, 28.484333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.060701, 31.185436, 28.514870>,  <31.290234, 31.117765, 28.533192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.060701, 31.185436, 28.514870>,  <30.678148, 31.298222, 28.484333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060701, 31.185436, 28.514870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281255, 0.818246, -0.501367,
		0.078901, 0.500971, 0.861860,
		0.956384, -0.281961, 0.076340,
		31.347616, 31.100847, 28.537771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.051237, 31.913040, 28.671663>,  <30.678148, 31.298222, 28.484333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.051237, 31.913040, 28.671663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328098, 31.669369, 28.516834>,  <31.494215, 31.523167, 28.423937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328098, 31.669369, 28.516834>,  <31.051237, 31.913040, 28.671663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328098, 31.669369, 28.516834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353551, 0.753718, -0.553996,
		0.629224, 0.246601, 0.737065,
		0.692155, -0.609178, -0.387071,
		31.535746, 31.486616, 28.400713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726372, 32.332092, 28.657141>,  <31.051237, 31.913040, 28.671663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726372, 32.332092, 28.657141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791494, 32.044685, 28.386665>,  <31.830568, 31.872242, 28.224380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791494, 32.044685, 28.386665>,  <31.726372, 32.332092, 28.657141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791494, 32.044685, 28.386665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427851, 0.668958, -0.607815,
		0.889066, -0.190352, 0.416327,
		0.162806, -0.718514, -0.676190,
		31.840336, 31.829132, 28.183809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443890, 32.236889, 28.551107>,  <31.726372, 32.332092, 28.657141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443890, 32.236889, 28.551107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.256077, 32.100178, 28.225475>,  <32.143391, 32.018150, 28.030096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.256077, 32.100178, 28.225475>,  <32.443890, 32.236889, 28.551107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256077, 32.100178, 28.225475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625634, 0.521809, -0.579912,
		0.622994, -0.781605, -0.031180,
		-0.469532, -0.341774, -0.814083,
		32.115219, 31.997646, 27.981251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111889, 32.029049, 28.189489>,  <32.443890, 32.236889, 28.551107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111889, 32.029049, 28.189489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797272, 32.053089, 27.943649>,  <32.608501, 32.067513, 27.796144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797272, 32.053089, 27.943649>,  <33.111889, 32.029049, 28.189489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797272, 32.053089, 27.943649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552572, 0.512832, -0.657013,
		0.275700, -0.856382, -0.436576,
		-0.786545, 0.060101, -0.614601,
		32.561310, 32.071121, 27.759270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368759, 31.855915, 27.590101>,  <33.111889, 32.029049, 28.189489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368759, 31.855915, 27.590101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033058, 32.054955, 27.502415>,  <32.831638, 32.174377, 27.449802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033058, 32.054955, 27.502415>,  <33.368759, 31.855915, 27.590101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033058, 32.054955, 27.502415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438905, 0.381962, -0.813306,
		-0.320968, -0.778782, -0.538961,
		-0.839251, 0.497598, -0.219214,
		32.781284, 32.204235, 27.436651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269920, 31.680696, 26.913218>,  <33.368759, 31.855915, 27.590101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269920, 31.680696, 26.913218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037430, 32.001564, 26.967911>,  <32.897934, 32.194084, 27.000727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037430, 32.001564, 26.967911>,  <33.269920, 31.680696, 26.913218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037430, 32.001564, 26.967911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262837, 0.344091, -0.901398,
		-0.770124, -0.487978, -0.410836,
		-0.581228, 0.802171, 0.136734,
		32.863060, 32.242214, 27.008930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901150, 31.688738, 26.339931>,  <33.269920, 31.680696, 26.913218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901150, 31.688738, 26.339931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874630, 32.055054, 26.498390>,  <32.858719, 32.274845, 26.593466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874630, 32.055054, 26.498390>,  <32.901150, 31.688738, 26.339931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874630, 32.055054, 26.498390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187288, 0.401384, -0.896557,
		-0.980065, 0.014755, -0.198128,
		-0.066297, 0.915791, 0.396146,
		32.854740, 32.329792, 26.617233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585773, 32.178677, 25.745552>,  <32.901150, 31.688738, 26.339931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585773, 32.178677, 25.745552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751915, 32.444664, 25.993843>,  <32.851601, 32.604256, 26.142817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751915, 32.444664, 25.993843>,  <32.585773, 32.178677, 25.745552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751915, 32.444664, 25.993843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254065, 0.570414, -0.781076,
		-0.873460, 0.482127, 0.067979,
		0.415353, 0.664967, 0.620725,
		32.876522, 32.644154, 26.180061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344650, 32.814396, 25.544468>,  <32.585773, 32.178677, 25.745552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344650, 32.814396, 25.544468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683178, 32.898899, 25.740067>,  <32.886295, 32.949600, 25.857426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683178, 32.898899, 25.740067>,  <32.344650, 32.814396, 25.544468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683178, 32.898899, 25.740067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212985, 0.707212, -0.674157,
		-0.488248, 0.674699, 0.553529,
		0.846316, 0.211263, 0.488996,
		32.937073, 32.962276, 25.886765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357338, 33.473114, 25.672018>,  <32.344650, 32.814396, 25.544468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.357338, 33.473114, 25.672018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747845, 33.386524, 25.669544>,  <32.982147, 33.334568, 25.668060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747845, 33.386524, 25.669544>,  <32.357338, 33.473114, 25.672018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747845, 33.386524, 25.669544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178413, 0.820134, -0.543644,
		0.122760, 0.529639, 0.839293,
		0.976268, -0.216479, -0.006186,
		33.040726, 33.321579, 25.667688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194164, 33.041267, 26.247538>,  <32.357338, 33.473114, 25.672018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194164, 33.041267, 26.247538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.965784, 33.250259, 25.994232>,  <31.828754, 33.375656, 25.842249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.965784, 33.250259, 25.994232>,  <32.194164, 33.041267, 26.247538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.965784, 33.250259, 25.994232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799827, -0.180019, 0.572600,
		0.185175, 0.833428, 0.520679,
		-0.570953, 0.522484, -0.633263,
		31.794498, 33.407005, 25.804253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863714, 33.679615, 26.520504>,  <32.194164, 33.041267, 26.247538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863714, 33.679615, 26.520504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627750, 33.538284, 26.230080>,  <31.486172, 33.453484, 26.055824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627750, 33.538284, 26.230080>,  <31.863714, 33.679615, 26.520504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627750, 33.538284, 26.230080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672886, -0.281942, 0.683910,
		-0.446353, 0.892002, -0.071431,
		-0.589909, -0.353330, -0.726061,
		31.450777, 33.432285, 26.012260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156212, 34.029781, 26.643108>,  <31.863714, 33.679615, 26.520504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156212, 34.029781, 26.643108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.049362, 33.723728, 26.408772>,  <30.985252, 33.540096, 26.268169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.049362, 33.723728, 26.408772>,  <31.156212, 34.029781, 26.643108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049362, 33.723728, 26.408772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821597, -0.136882, 0.553391,
		-0.503610, 0.629151, -0.592069,
		-0.267123, -0.765135, -0.585844,
		30.969225, 33.494186, 26.233019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351357, 34.127880, 26.380697>,  <31.156212, 34.029781, 26.643108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351357, 34.127880, 26.380697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.442566, 33.740116, 26.344364>,  <30.497292, 33.507458, 26.322565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.442566, 33.740116, 26.344364>,  <30.351357, 34.127880, 26.380697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.442566, 33.740116, 26.344364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810951, -0.240721, 0.533303,
		-0.538854, -0.047944, -0.841034,
		0.228023, -0.969409, -0.090833,
		30.510973, 33.449295, 26.317114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756329, 33.822510, 26.204596>,  <30.351357, 34.127880, 26.380697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756329, 33.822510, 26.204596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.986095, 33.518238, 26.325535>,  <30.123955, 33.335674, 26.398098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.986095, 33.518238, 26.325535>,  <29.756329, 33.822510, 26.204596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.986095, 33.518238, 26.325535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696997, -0.260838, 0.667952,
		-0.429233, -0.594417, -0.680020,
		0.574417, -0.760679, 0.302346,
		30.158421, 33.290035, 26.416239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.192307, 33.292500, 26.312315>,  <29.756329, 33.822510, 26.204596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.192307, 33.292500, 26.312315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.509731, 33.139683, 26.501759>,  <29.700186, 33.047993, 26.615425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.509731, 33.139683, 26.501759>,  <29.192307, 33.292500, 26.312315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.509731, 33.139683, 26.501759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583980, -0.259501, 0.769173,
		-0.170951, -0.886965, -0.429033,
		0.793564, -0.382037, 0.473608,
		29.747801, 33.025070, 26.643841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893646, 32.619301, 26.453524>,  <29.192307, 33.292500, 26.312315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893646, 32.619301, 26.453524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200228, 32.681606, 26.702774>,  <29.384176, 32.718990, 26.852325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200228, 32.681606, 26.702774>,  <28.893646, 32.619301, 26.453524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200228, 32.681606, 26.702774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493535, -0.478061, 0.726554,
		0.411064, -0.864404, -0.289536,
		0.766452, 0.155764, 0.623128,
		29.430164, 32.728336, 26.889713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.135710, 31.951399, 26.756395>,  <28.893646, 32.619301, 26.453524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.135710, 31.951399, 26.756395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.277124, 32.229637, 27.006565>,  <29.361973, 32.396580, 27.156666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.277124, 32.229637, 27.006565>,  <29.135710, 31.951399, 26.756395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.277124, 32.229637, 27.006565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326250, -0.534926, 0.779369,
		0.876682, -0.479581, 0.037822,
		0.353538, 0.695598, 0.625423,
		29.383186, 32.438316, 27.194193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.212652, 31.531914, 27.206392>,  <29.135710, 31.951399, 26.756395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.212652, 31.531914, 27.206392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.251234, 31.884464, 27.391376>,  <29.274384, 32.095993, 27.502367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.251234, 31.884464, 27.391376>,  <29.212652, 31.531914, 27.206392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.251234, 31.884464, 27.391376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196563, -0.438611, 0.876917,
		0.975735, -0.175487, 0.130939,
		0.096456, 0.881376, 0.462463,
		29.280170, 32.148876, 27.530115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666325, 31.447618, 27.709938>,  <29.212652, 31.531914, 27.206392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666325, 31.447618, 27.709938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.454773, 31.759747, 27.843437>,  <29.327841, 31.947023, 27.923536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.454773, 31.759747, 27.843437>,  <29.666325, 31.447618, 27.709938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.454773, 31.759747, 27.843437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127137, -0.461657, 0.877901,
		0.839120, 0.421873, 0.343368,
		-0.528881, 0.780318, 0.333750,
		29.296108, 31.993841, 27.943562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910118, 31.533525, 28.457352>,  <29.666325, 31.447618, 27.709938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.910118, 31.533525, 28.457352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.555882, 31.706932, 28.390667>,  <29.343340, 31.810976, 28.350657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.555882, 31.706932, 28.390667>,  <29.910118, 31.533525, 28.457352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.555882, 31.706932, 28.390667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295137, -0.248077, 0.922687,
		0.358644, 0.866325, 0.347641,
		-0.885589, 0.433518, -0.166713,
		29.290205, 31.836988, 28.340652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.923004, 32.091133, 28.960951>,  <29.910118, 31.533525, 28.457352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.923004, 32.091133, 28.960951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.548080, 31.970257, 28.891521>,  <29.323126, 31.897730, 28.849863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.548080, 31.970257, 28.891521>,  <29.923004, 32.091133, 28.960951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548080, 31.970257, 28.891521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124909, -0.173660, 0.976852,
		-0.325343, 0.937294, 0.125027,
		-0.937310, -0.302195, -0.173575,
		29.266888, 31.879599, 28.839449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578785, 32.287037, 29.674940>,  <29.923004, 32.091133, 28.960951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578785, 32.287037, 29.674940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.313093, 32.076984, 29.462135>,  <29.153679, 31.950953, 29.334452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.313093, 32.076984, 29.462135>,  <29.578785, 32.287037, 29.674940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.313093, 32.076984, 29.462135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468814, -0.261700, 0.843639,
		-0.582250, 0.809783, -0.072361,
		-0.664227, -0.525133, -0.532013,
		29.113825, 31.919445, 29.302532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920069, 32.496693, 29.924437>,  <29.578785, 32.287037, 29.674940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.920069, 32.496693, 29.924437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.831902, 32.146885, 29.751633>,  <28.779001, 31.937000, 29.647951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.831902, 32.146885, 29.751633>,  <28.920069, 32.496693, 29.924437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.831902, 32.146885, 29.751633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530806, -0.264036, 0.805313,
		-0.818328, 0.406820, -0.406001,
		-0.220419, -0.874519, -0.432010,
		28.765776, 31.884529, 29.622030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175459, 32.396049, 30.048401>,  <28.920069, 32.496693, 29.924437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175459, 32.396049, 30.048401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.360523, 32.044853, 29.999287>,  <28.471561, 31.834135, 29.969818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.360523, 32.044853, 29.999287>,  <28.175459, 32.396049, 30.048401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.360523, 32.044853, 29.999287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484567, -0.366429, 0.794307,
		-0.742387, -0.307998, -0.594978,
		0.462663, -0.877990, -0.122787,
		28.499323, 31.781456, 29.962450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.627787, 31.934284, 30.073999>,  <28.175459, 32.396049, 30.048401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.627787, 31.934284, 30.073999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.972107, 31.748047, 30.156216>,  <28.178699, 31.636305, 30.205545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.972107, 31.748047, 30.156216>,  <27.627787, 31.934284, 30.073999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.972107, 31.748047, 30.156216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465148, -0.555812, 0.688992,
		-0.206546, -0.688692, -0.695012,
		0.860800, -0.465592, 0.205543,
		28.230347, 31.608370, 30.217878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.361998, 31.269602, 30.099316>,  <27.627787, 31.934284, 30.073999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.361998, 31.269602, 30.099316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.722511, 31.218269, 30.264828>,  <27.938820, 31.187469, 30.364136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.722511, 31.218269, 30.264828>,  <27.361998, 31.269602, 30.099316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.722511, 31.218269, 30.264828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379516, -0.694502, 0.611257,
		0.208929, -0.707954, -0.674648,
		0.901286, -0.128330, 0.413781,
		27.992897, 31.179770, 30.388962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.502977, 30.566648, 30.259321>,  <27.361998, 31.269602, 30.099316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.502977, 30.566648, 30.259321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.771591, 30.735268, 30.503071>,  <27.932760, 30.836439, 30.649321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.771591, 30.735268, 30.503071>,  <27.502977, 30.566648, 30.259321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.771591, 30.735268, 30.503071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177713, -0.706768, 0.684761,
		0.719347, -0.568134, -0.399704,
		0.671534, 0.421548, 0.609376,
		27.973051, 30.861732, 30.685884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105001, 30.097254, 30.351950>,  <27.502977, 30.566648, 30.259321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.105001, 30.097254, 30.351950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.118525, 30.333000, 30.674812>,  <28.126638, 30.474447, 30.868530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.118525, 30.333000, 30.674812>,  <28.105001, 30.097254, 30.351950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.118525, 30.333000, 30.674812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210360, -0.785331, 0.582240,
		0.977039, -0.189479, 0.097428,
		0.033809, 0.589366, 0.807158,
		28.128668, 30.509809, 30.916960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.609726, 29.883978, 30.880234>,  <28.105001, 30.097254, 30.351950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.609726, 29.883978, 30.880234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.340055, 30.106449, 31.074615>,  <28.178253, 30.239931, 31.191244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.340055, 30.106449, 31.074615>,  <28.609726, 29.883978, 30.880234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.340055, 30.106449, 31.074615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233167, -0.784595, 0.574494,
		0.700799, 0.274001, 0.658638,
		-0.674176, 0.556178, 0.485955,
		28.137802, 30.273302, 31.220402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.749132, 29.659319, 31.594940>,  <28.609726, 29.883978, 30.880234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.749132, 29.659319, 31.594940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.402992, 29.859158, 31.610790>,  <28.195309, 29.979061, 31.620300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.402992, 29.859158, 31.610790>,  <28.749132, 29.659319, 31.594940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.402992, 29.859158, 31.610790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302182, -0.583214, 0.754020,
		0.399819, 0.640517, 0.655654,
		-0.865350, 0.499599, 0.039628,
		28.143387, 30.009037, 31.622679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.691526, 29.729548, 32.298340>,  <28.749132, 29.659319, 31.594940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.691526, 29.729548, 32.298340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.328506, 29.753555, 32.132088>,  <28.110695, 29.767960, 32.032337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.328506, 29.753555, 32.132088>,  <28.691526, 29.729548, 32.298340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.328506, 29.753555, 32.132088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381232, -0.532808, 0.755498,
		-0.176105, 0.844105, 0.506433,
		-0.907551, 0.060021, -0.415630,
		28.056242, 29.771563, 32.007401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.165747, 29.880009, 32.822712>,  <28.691526, 29.729548, 32.298340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.165747, 29.880009, 32.822712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.987097, 29.715195, 32.505032>,  <27.879906, 29.616306, 32.314423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.987097, 29.715195, 32.505032>,  <28.165747, 29.880009, 32.822712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.987097, 29.715195, 32.505032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379916, -0.716319, 0.585278,
		-0.810055, 0.563130, 0.163388,
		-0.446626, -0.412034, -0.794200,
		27.853109, 29.591585, 32.266773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.781580, 29.434488, 33.138794>,  <28.165747, 29.880009, 32.822712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.781580, 29.434488, 33.138794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.662479, 29.295280, 32.783215>,  <27.591019, 29.211756, 32.569866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.662479, 29.295280, 32.783215>,  <27.781580, 29.434488, 33.138794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.662479, 29.295280, 32.783215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341005, -0.830974, 0.439542,
		-0.891661, 0.434009, 0.128748,
		-0.297751, -0.348019, -0.888947,
		27.573154, 29.190874, 32.516529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.047470, 29.265736, 33.189663>,  <27.781580, 29.434488, 33.138794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.047470, 29.265736, 33.189663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.159607, 29.050251, 32.871872>,  <27.226889, 28.920959, 32.681198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.159607, 29.050251, 32.871872>,  <27.047470, 29.265736, 33.189663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.159607, 29.050251, 32.871872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451237, -0.804477, 0.386265,
		-0.847227, 0.250213, -0.468615,
		0.280341, -0.538711, -0.794480,
		27.243710, 28.888638, 32.633530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.480230, 28.894957, 32.883804>,  <27.047470, 29.265736, 33.189663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.480230, 28.894957, 32.883804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.801050, 28.699230, 32.746819>,  <26.993542, 28.581795, 32.664627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.801050, 28.699230, 32.746819>,  <26.480230, 28.894957, 32.883804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.801050, 28.699230, 32.746819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360530, -0.853799, 0.375560,
		-0.476166, -0.177749, -0.861204,
		0.802050, -0.489318, -0.342466,
		27.041666, 28.552435, 32.644077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.318712, 28.350729, 32.435017>,  <26.480230, 28.894957, 32.883804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.318712, 28.350729, 32.435017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.676716, 28.229759, 32.566166>,  <26.891518, 28.157177, 32.644855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.676716, 28.229759, 32.566166>,  <26.318712, 28.350729, 32.435017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.676716, 28.229759, 32.566166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354638, -0.928291, 0.111836,
		0.270539, -0.216370, -0.938079,
		0.895009, -0.302422, 0.327872,
		26.945219, 28.139032, 32.664528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.424606, 27.727493, 32.007107>,  <26.318712, 28.350729, 32.435017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.424606, 27.727493, 32.007107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.645451, 27.692898, 32.338814>,  <26.777958, 27.672140, 32.537838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.645451, 27.692898, 32.338814>,  <26.424606, 27.727493, 32.007107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.645451, 27.692898, 32.338814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269447, -0.959745, 0.079294,
		0.789031, -0.267224, -0.553192,
		0.552112, -0.086491, 0.829271,
		26.811085, 27.666950, 32.587597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.577240, 27.095100, 32.014122>,  <26.424606, 27.727493, 32.007107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.577240, 27.095100, 32.014122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.680277, 27.147415, 32.397068>,  <26.742100, 27.178804, 32.626835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.680277, 27.147415, 32.397068>,  <26.577240, 27.095100, 32.014122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.680277, 27.147415, 32.397068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329312, -0.919596, 0.214235,
		0.908405, -0.370456, -0.193811,
		0.257592, 0.130788, 0.957361,
		26.757555, 27.186651, 32.684277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.058674, 26.563644, 32.180283>,  <26.577240, 27.095100, 32.014122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.058674, 26.563644, 32.180283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.909632, 26.686378, 32.530602>,  <26.820206, 26.760019, 32.740791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.909632, 26.686378, 32.530602>,  <27.058674, 26.563644, 32.180283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.909632, 26.686378, 32.530602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222960, -0.945711, 0.236474,
		0.900808, -0.107156, 0.420789,
		-0.372605, 0.306837, 0.875795,
		26.797850, 26.778429, 32.793339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.433023, 26.285414, 32.729256>,  <27.058674, 26.563644, 32.180283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.433023, 26.285414, 32.729256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.080212, 26.384396, 32.889652>,  <26.868525, 26.443785, 32.985889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.080212, 26.384396, 32.889652>,  <27.433023, 26.285414, 32.729256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.080212, 26.384396, 32.889652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060391, -0.903352, 0.424627,
		0.467310, 0.350317, 0.811726,
		-0.882029, 0.247453, 0.400989,
		26.815603, 26.458632, 33.009949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.469826, 25.908203, 33.250469>,  <27.433023, 26.285414, 32.729256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.469826, 25.908203, 33.250469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.083351, 26.003292, 33.290409>,  <26.851465, 26.060345, 33.314373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.083351, 26.003292, 33.290409>,  <27.469826, 25.908203, 33.250469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.083351, 26.003292, 33.290409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156248, -0.847871, 0.506656,
		0.205106, 0.473923, 0.856346,
		-0.966187, 0.237721, 0.099854,
		26.793495, 26.074608, 33.320366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.321671, 25.643488, 34.013531>,  <27.469826, 25.908203, 33.250469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.321671, 25.643488, 34.013531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.962908, 25.726295, 33.857220>,  <26.747650, 25.775980, 33.763435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.962908, 25.726295, 33.857220>,  <27.321671, 25.643488, 34.013531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.962908, 25.726295, 33.857220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405697, -0.736847, 0.540802,
		-0.175985, 0.643584, 0.744868,
		-0.896905, 0.207018, -0.390774,
		26.693836, 25.788401, 33.739986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.806597, 25.704899, 34.595329>,  <27.321671, 25.643488, 34.013531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.806597, 25.704899, 34.595329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.585983, 25.599350, 34.278801>,  <26.453615, 25.536020, 34.088886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.585983, 25.599350, 34.278801>,  <26.806597, 25.704899, 34.595329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.585983, 25.599350, 34.278801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335181, -0.798587, 0.499912,
		-0.763850, 0.540952, 0.352000,
		-0.551531, -0.263874, -0.791318,
		26.420525, 25.520187, 34.041405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.068491, 25.664684, 34.839050>,  <26.806597, 25.704899, 34.595329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.068491, 25.664684, 34.839050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.149586, 25.436039, 34.521019>,  <26.198242, 25.298851, 34.330200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.149586, 25.436039, 34.521019>,  <26.068491, 25.664684, 34.839050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.149586, 25.436039, 34.521019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237073, -0.816440, 0.526519,
		-0.950102, 0.081748, -0.301036,
		0.202736, -0.571615, -0.795082,
		26.210407, 25.264555, 34.282494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.518919, 25.091124, 34.881336>,  <26.068491, 25.664684, 34.839050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.518919, 25.091124, 34.881336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.801949, 24.974781, 34.623734>,  <25.971766, 24.904976, 34.469173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.801949, 24.974781, 34.623734>,  <25.518919, 25.091124, 34.881336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.801949, 24.974781, 34.623734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033109, -0.896715, 0.441369,
		-0.705864, -0.333623, -0.624861,
		0.707573, -0.290858, -0.644005,
		26.014221, 24.887524, 34.430531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.251837, 24.454411, 34.563313>,  <25.518919, 25.091124, 34.881336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.251837, 24.454411, 34.563313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.649942, 24.472469, 34.528877>,  <25.888805, 24.483305, 34.508217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.649942, 24.472469, 34.528877>,  <25.251837, 24.454411, 34.563313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.649942, 24.472469, 34.528877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070348, -0.945701, 0.317334,
		-0.067092, -0.321888, -0.944398,
		0.995264, 0.045146, -0.086093,
		25.948521, 24.486013, 34.503048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.549528, 23.818468, 34.229572>,  <25.251837, 24.454411, 34.563313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.549528, 23.818468, 34.229572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.839943, 23.952450, 34.469799>,  <26.014193, 24.032839, 34.613934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.839943, 23.952450, 34.469799>,  <25.549528, 23.818468, 34.229572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.839943, 23.952450, 34.469799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160819, -0.931836, 0.325298,
		0.668586, -0.139597, -0.730414,
		0.726037, 0.334954, 0.600563,
		26.057755, 24.052937, 34.649967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.714674, 23.493437, 33.466122>,  <25.549528, 23.818468, 34.229572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.714674, 23.493437, 33.466122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.667120, 23.118950, 33.333843>,  <25.638588, 22.894257, 33.254475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.667120, 23.118950, 33.333843>,  <25.714674, 23.493437, 33.466122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.667120, 23.118950, 33.333843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382958, 0.264054, -0.885222,
		0.916084, -0.231885, 0.327140,
		-0.118887, -0.936218, -0.330698,
		25.631454, 22.838085, 33.234634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.311672, 23.239079, 33.263340>,  <25.714674, 23.493437, 33.466122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.311672, 23.239079, 33.263340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.018351, 23.065586, 33.053905>,  <25.842358, 22.961491, 32.928246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.018351, 23.065586, 33.053905>,  <26.311672, 23.239079, 33.263340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.018351, 23.065586, 33.053905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342149, 0.430068, -0.835449,
		0.587539, -0.791782, -0.166969,
		-0.733302, -0.433730, -0.523589,
		25.798359, 22.935467, 32.896828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.527031, 22.830744, 32.802254>,  <26.311672, 23.239079, 33.263340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.527031, 22.830744, 32.802254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.186483, 22.974953, 32.649837>,  <25.982155, 23.061478, 32.558388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.186483, 22.974953, 32.649837>,  <26.527031, 22.830744, 32.802254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.186483, 22.974953, 32.649837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516232, 0.446877, -0.730620,
		-0.093126, -0.818734, -0.566571,
		-0.851371, 0.360522, -0.381041,
		25.931072, 23.083109, 32.535526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.414251, 22.590221, 32.053810>,  <26.527031, 22.830744, 32.802254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.414251, 22.590221, 32.053810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.205545, 22.928219, 32.100716>,  <26.080322, 23.131018, 32.128857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.205545, 22.928219, 32.100716>,  <26.414251, 22.590221, 32.053810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.205545, 22.928219, 32.100716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523483, 0.425663, -0.738090,
		-0.673593, -0.323726, -0.664435,
		-0.521764, 0.844993, 0.117259,
		26.049017, 23.181717, 32.135895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.463636, 22.814011, 31.430729>,  <26.414251, 22.590221, 32.053810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.463636, 22.814011, 31.430729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.329063, 23.148991, 31.603004>,  <26.248320, 23.349979, 31.706369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.329063, 23.148991, 31.603004>,  <26.463636, 22.814011, 31.430729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.329063, 23.148991, 31.603004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506469, 0.546479, -0.666971,
		-0.793916, -0.006260, -0.607995,
		-0.336432, 0.837449, 0.430688,
		26.228134, 23.400225, 31.732210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.293482, 23.202942, 30.843855>,  <26.463636, 22.814011, 31.430729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.293482, 23.202942, 30.843855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.341375, 23.457165, 31.148941>,  <26.370111, 23.609697, 31.331993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.341375, 23.457165, 31.148941>,  <26.293482, 23.202942, 30.843855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.341375, 23.457165, 31.148941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611436, 0.558053, -0.561002,
		-0.782183, 0.533522, -0.321783,
		0.119735, 0.635555, 0.762714,
		26.377296, 23.647831, 31.377756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.055172, 23.914194, 30.633863>,  <26.293482, 23.202942, 30.843855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.055172, 23.914194, 30.633863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.316322, 23.962841, 30.932919>,  <26.473013, 23.992029, 31.112352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.316322, 23.962841, 30.932919>,  <26.055172, 23.914194, 30.633863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.316322, 23.962841, 30.932919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451404, 0.730140, -0.512962,
		-0.608266, 0.672387, 0.421792,
		0.652876, 0.121618, 0.747638,
		26.512186, 23.999327, 31.157209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.062370, 24.691460, 30.747782>,  <26.055172, 23.914194, 30.633863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.062370, 24.691460, 30.747782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.389164, 24.564362, 30.940269>,  <26.585241, 24.488104, 31.055761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.389164, 24.564362, 30.940269>,  <26.062370, 24.691460, 30.747782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.389164, 24.564362, 30.940269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489732, 0.822904, -0.288084,
		-0.304460, 0.471029, 0.827910,
		0.816986, -0.317744, 0.481220,
		26.634260, 24.469038, 31.084635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.229504, 25.251583, 31.127026>,  <26.062370, 24.691460, 30.747782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.229504, 25.251583, 31.127026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.564428, 25.033272, 31.114182>,  <26.765383, 24.902285, 31.106474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.564428, 25.033272, 31.114182>,  <26.229504, 25.251583, 31.127026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.564428, 25.033272, 31.114182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542244, 0.836524, -0.078738,
		0.069836, 0.048517, 0.996378,
		0.837314, -0.545778, -0.032112,
		26.815622, 24.869537, 31.104548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.740622, 25.650288, 31.519608>,  <26.229504, 25.251583, 31.127026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.740622, 25.650288, 31.519608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.896088, 25.405109, 31.244438>,  <26.989367, 25.258003, 31.079336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.896088, 25.405109, 31.244438>,  <26.740622, 25.650288, 31.519608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.896088, 25.405109, 31.244438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675615, 0.697253, -0.239546,
		0.626485, -0.371669, 0.685112,
		0.388665, -0.612945, -0.687923,
		27.012688, 25.221226, 31.038061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.438118, 25.888489, 31.646488>,  <26.740622, 25.650288, 31.519608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.438118, 25.888489, 31.646488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.380178, 25.709038, 31.293728>,  <27.345415, 25.601368, 31.082071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.380178, 25.709038, 31.293728>,  <27.438118, 25.888489, 31.646488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.380178, 25.709038, 31.293728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484630, 0.744903, -0.458533,
		0.862643, -0.493814, 0.109520,
		-0.144848, -0.448627, -0.881903,
		27.336723, 25.574450, 31.029158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.043982, 26.069683, 31.282177>,  <27.438118, 25.888489, 31.646488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.043982, 26.069683, 31.282177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.768904, 25.960724, 31.012993>,  <27.603857, 25.895350, 30.851482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.768904, 25.960724, 31.012993>,  <28.043982, 26.069683, 31.282177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.768904, 25.960724, 31.012993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301294, 0.736269, -0.605911,
		0.660528, -0.619442, -0.424257,
		-0.687695, -0.272395, -0.672962,
		27.562595, 25.879005, 30.811104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.315201, 25.902914, 30.592047>,  <28.043982, 26.069683, 31.282177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.315201, 25.902914, 30.592047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945375, 26.008698, 30.482327>,  <27.723480, 26.072166, 30.416494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945375, 26.008698, 30.482327>,  <28.315201, 25.902914, 30.592047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.945375, 26.008698, 30.482327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380849, 0.663225, -0.644273,
		0.011541, -0.700139, -0.713913,
		-0.924565, 0.264458, -0.274301,
		27.668005, 26.088036, 30.400036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.341753, 25.956850, 29.927826>,  <28.315201, 25.902914, 30.592047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.341753, 25.956850, 29.927826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.004276, 26.149422, 30.022827>,  <27.801790, 26.264965, 30.079828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.004276, 26.149422, 30.022827>,  <28.341753, 25.956850, 29.927826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.004276, 26.149422, 30.022827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194117, 0.686082, -0.701149,
		-0.500503, -0.545450, -0.672295,
		-0.843691, 0.481431, 0.237505,
		27.751169, 26.293852, 30.094078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.163982, 26.235039, 29.256773>,  <28.341753, 25.956850, 29.927826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.163982, 26.235039, 29.256773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945091, 26.431862, 29.527599>,  <27.813757, 26.549955, 29.690096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945091, 26.431862, 29.527599>,  <28.163982, 26.235039, 29.256773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.945091, 26.431862, 29.527599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079488, 0.835835, -0.543196,
		-0.833199, -0.243435, -0.496506,
		-0.547230, 0.492057, 0.677067,
		27.780922, 26.579479, 29.730719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.861992, 26.680096, 28.877741>,  <28.163982, 26.235039, 29.256773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.861992, 26.680096, 28.877741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.803303, 26.852974, 29.233646>,  <27.768089, 26.956701, 29.447189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.803303, 26.852974, 29.233646>,  <27.861992, 26.680096, 28.877741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.803303, 26.852974, 29.233646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091116, 0.901579, -0.422911,
		-0.984972, 0.019022, -0.171660,
		-0.146721, 0.432197, 0.889763,
		27.759287, 26.982634, 29.500576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.365980, 27.046064, 28.730257>,  <27.861992, 26.680096, 28.877741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.365980, 27.046064, 28.730257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.541088, 27.208202, 29.051270>,  <27.646152, 27.305485, 29.243877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.541088, 27.208202, 29.051270>,  <27.365980, 27.046064, 28.730257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.541088, 27.208202, 29.051270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064881, 0.904521, -0.421465,
		-0.896743, 0.132436, 0.422272,
		0.437770, 0.405343, 0.802530,
		27.672419, 27.329805, 29.292028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.939516, 27.658890, 28.927769>,  <27.365980, 27.046064, 28.730257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.939516, 27.658890, 28.927769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.308064, 27.707092, 29.075584>,  <27.529192, 27.736013, 29.164274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.308064, 27.707092, 29.075584>,  <26.939516, 27.658890, 28.927769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.308064, 27.707092, 29.075584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031280, 0.924652, -0.379526,
		-0.387429, 0.361243, 0.848176,
		0.921369, 0.120509, 0.369537,
		27.584475, 27.743244, 29.186445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.993013, 28.358295, 29.066759>,  <26.939516, 27.658890, 28.927769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.993013, 28.358295, 29.066759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.383699, 28.275894, 29.090714>,  <27.618111, 28.226454, 29.105087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.383699, 28.275894, 29.090714>,  <26.993013, 28.358295, 29.066759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.383699, 28.275894, 29.090714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214484, 0.943550, -0.252407,
		-0.004510, 0.259376, 0.965766,
		0.976717, -0.206003, 0.059887,
		27.676714, 28.214092, 29.108679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.412748, 28.828146, 29.478552>,  <26.993013, 28.358295, 29.066759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.412748, 28.828146, 29.478552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.680452, 28.663311, 29.231239>,  <27.841076, 28.564411, 29.082851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.680452, 28.663311, 29.231239>,  <27.412748, 28.828146, 29.478552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.680452, 28.663311, 29.231239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264389, 0.909728, -0.320146,
		0.694396, 0.050794, 0.717798,
		0.669262, -0.412086, -0.618282,
		27.881231, 28.539684, 29.045755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.954189, 29.251257, 29.500998>,  <27.412748, 28.828146, 29.478552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.954189, 29.251257, 29.500998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.041962, 29.055225, 29.163555>,  <28.094625, 28.937607, 28.961090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.041962, 29.055225, 29.163555>,  <27.954189, 29.251257, 29.500998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.041962, 29.055225, 29.163555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193010, 0.869396, -0.454860,
		0.956346, -0.063015, 0.285362,
		0.219429, -0.490081, -0.843606,
		28.107790, 28.908201, 28.910473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.567389, 29.600664, 29.198801>,  <27.954189, 29.251257, 29.500998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.567389, 29.600664, 29.198801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.404543, 29.408157, 28.888283>,  <28.306835, 29.292652, 28.701971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.404543, 29.408157, 28.888283>,  <28.567389, 29.600664, 29.198801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.404543, 29.408157, 28.888283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153243, 0.801883, -0.577495,
		0.900430, -0.354069, -0.252708,
		-0.407115, -0.481268, -0.776298,
		28.282408, 29.263777, 28.655394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.985598, 29.695499, 28.493013>,  <28.567389, 29.600664, 29.198801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.985598, 29.695499, 28.493013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.618004, 29.613945, 28.358021>,  <28.397448, 29.565012, 28.277025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.618004, 29.613945, 28.358021>,  <28.985598, 29.695499, 28.493013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.618004, 29.613945, 28.358021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057069, 0.778132, -0.625503,
		0.390138, -0.594089, -0.703457,
		-0.918986, -0.203887, -0.337482,
		28.342308, 29.552778, 28.256777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921923, 29.932432, 27.732161>,  <28.985598, 29.695499, 28.493013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921923, 29.932432, 27.732161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.533653, 29.866940, 27.802567>,  <28.300692, 29.827644, 27.844810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.533653, 29.866940, 27.802567>,  <28.921923, 29.932432, 27.732161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.533653, 29.866940, 27.802567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240117, 0.695470, -0.677248,
		-0.011527, -0.699652, -0.714390,
		-0.970675, -0.163731, 0.176015,
		28.242451, 29.817820, 27.855371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.483755, 29.830124, 27.035257>,  <28.921923, 29.932432, 27.732161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.483755, 29.830124, 27.035257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267025, 29.961857, 27.344570>,  <28.136986, 30.040897, 27.530157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267025, 29.961857, 27.344570>,  <28.483755, 29.830124, 27.035257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.267025, 29.961857, 27.344570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404282, 0.704489, -0.583311,
		-0.736872, -0.628676, -0.248567,
		-0.541826, 0.329334, 0.773281,
		28.104477, 30.060658, 27.576555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.897289, 29.953348, 26.744112>,  <28.483755, 29.830124, 27.035257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.897289, 29.953348, 26.744112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.896170, 30.186367, 27.069229>,  <27.895498, 30.326178, 27.264299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.896170, 30.186367, 27.069229>,  <27.897289, 29.953348, 26.744112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.896170, 30.186367, 27.069229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378231, 0.751797, -0.540132,
		-0.925707, -0.308934, 0.218235,
		-0.002797, 0.582547, 0.812792,
		27.895330, 30.361132, 27.313066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.205585, 30.050003, 26.700485>,  <27.897289, 29.953348, 26.744112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.205585, 30.050003, 26.700485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.395512, 30.324657, 26.920696>,  <27.509468, 30.489450, 27.052824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.395512, 30.324657, 26.920696>,  <27.205585, 30.050003, 26.700485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.395512, 30.324657, 26.920696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401633, 0.725661, -0.558666,
		-0.783097, 0.044152, 0.620330,
		0.474816, 0.686634, 0.550530,
		27.537956, 30.530647, 27.085855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.668045, 30.519512, 26.967382>,  <27.205585, 30.050003, 26.700485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.668045, 30.519512, 26.967382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.017601, 30.713936, 26.964333>,  <27.227335, 30.830591, 26.962503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.017601, 30.713936, 26.964333>,  <26.668045, 30.519512, 26.967382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.017601, 30.713936, 26.964333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390925, 0.693348, -0.605348,
		-0.288949, 0.531989, 0.795925,
		0.873891, 0.486061, -0.007625,
		27.279768, 30.859755, 26.962046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.409622, 31.183966, 27.091074>,  <26.668045, 30.519512, 26.967382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.409622, 31.183966, 27.091074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.781944, 31.221043, 26.949646>,  <27.005337, 31.243290, 26.864790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.781944, 31.221043, 26.949646>,  <26.409622, 31.183966, 27.091074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.781944, 31.221043, 26.949646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352223, 0.485978, -0.799853,
		0.097685, 0.869042, 0.484999,
		0.930804, 0.092694, -0.353569,
		27.061186, 31.248852, 26.843575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.427217, 31.823668, 26.910172>,  <26.409622, 31.183966, 27.091074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.427217, 31.823668, 26.910172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.718256, 31.657635, 26.691700>,  <26.892879, 31.558016, 26.560617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.718256, 31.657635, 26.691700>,  <26.427217, 31.823668, 26.910172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.718256, 31.657635, 26.691700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361386, 0.444821, -0.819472,
		0.583100, 0.793625, 0.173644,
		0.727595, -0.415082, -0.546180,
		26.936535, 31.533110, 26.527845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.740477, 32.325432, 26.507286>,  <26.427217, 31.823668, 26.910172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.740477, 32.325432, 26.507286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.830215, 31.983566, 26.320000>,  <26.884058, 31.778448, 26.207628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.830215, 31.983566, 26.320000>,  <26.740477, 32.325432, 26.507286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.830215, 31.983566, 26.320000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172368, 0.438085, -0.882253,
		0.959145, 0.278635, -0.049034,
		0.224345, -0.854660, -0.468215,
		26.897518, 31.727169, 26.179535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.935528, 32.508331, 25.784222>,  <26.740477, 32.325432, 26.507286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.935528, 32.508331, 25.784222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.834921, 32.122723, 25.749786>,  <26.774557, 31.891359, 25.729126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.834921, 32.122723, 25.749786>,  <26.935528, 32.508331, 25.784222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.834921, 32.122723, 25.749786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199898, 0.138769, -0.969940,
		0.946985, -0.226746, -0.227608,
		-0.251515, -0.964017, -0.086086,
		26.759466, 31.833517, 25.723961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.191980, 32.397621, 25.017962>,  <26.935528, 32.508331, 25.784222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.191980, 32.397621, 25.017962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.930540, 32.133949, 25.166714>,  <26.773676, 31.975748, 25.255966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.930540, 32.133949, 25.166714>,  <27.191980, 32.397621, 25.017962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.930540, 32.133949, 25.166714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547834, 0.073032, -0.833393,
		0.522193, -0.748434, -0.408852,
		-0.653599, -0.659175, 0.371881,
		26.734461, 31.936197, 25.278278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.026070, 32.177677, 24.443373>,  <27.191980, 32.397621, 25.017962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.026070, 32.177677, 24.443373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.747917, 32.028549, 24.689121>,  <26.581026, 31.939074, 24.836571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.747917, 32.028549, 24.689121>,  <27.026070, 32.177677, 24.443373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.747917, 32.028549, 24.689121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660676, -0.004725, -0.750656,
		0.282760, -0.927893, -0.243025,
		-0.695381, -0.372816, 0.614373,
		26.539303, 31.916704, 24.873432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.740036, 31.557840, 24.087893>,  <27.026070, 32.177677, 24.443373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.740036, 31.557840, 24.087893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.487478, 31.685005, 24.370811>,  <26.335943, 31.761303, 24.540564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.487478, 31.685005, 24.370811>,  <26.740036, 31.557840, 24.087893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.487478, 31.685005, 24.370811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749409, -0.015725, -0.661920,
		-0.199310, -0.947990, 0.248174,
		-0.631396, 0.317911, 0.707299,
		26.298059, 31.780378, 24.583000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.198120, 31.031898, 24.201426>,  <26.740036, 31.557840, 24.087893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.198120, 31.031898, 24.201426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.064543, 31.396442, 24.297680>,  <25.984396, 31.615168, 24.355433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.064543, 31.396442, 24.297680>,  <26.198120, 31.031898, 24.201426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.064543, 31.396442, 24.297680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752234, -0.103835, -0.650664,
		-0.568001, -0.398302, 0.720230,
		-0.333946, 0.911358, 0.240637,
		25.964359, 31.669849, 24.369871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.414787, 30.939634, 24.078112>,  <26.198120, 31.031898, 24.201426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.414787, 30.939634, 24.078112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.497272, 31.330471, 24.099159>,  <25.546764, 31.564974, 24.111788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.497272, 31.330471, 24.099159>,  <25.414787, 30.939634, 24.078112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.497272, 31.330471, 24.099159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625383, 0.172964, -0.760907,
		-0.752577, 0.124002, 0.646724,
		0.206214, 0.977091, 0.052620,
		25.559137, 31.623598, 24.114944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.702288, 31.322662, 24.021732>,  <25.414787, 30.939634, 24.078112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.702288, 31.322662, 24.021732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.957626, 31.619221, 23.938938>,  <25.110830, 31.797155, 23.889261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.957626, 31.619221, 23.938938>,  <24.702288, 31.322662, 24.021732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.957626, 31.619221, 23.938938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572524, 0.277566, -0.771475,
		-0.514517, 0.610974, 0.601651,
		0.638349, 0.741396, -0.206985,
		25.149132, 31.841640, 23.876842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.377995, 31.965855, 23.973419>,  <24.702288, 31.322662, 24.021732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.377995, 31.965855, 23.973419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.708527, 31.976131, 23.748379>,  <24.906845, 31.982298, 23.613354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.708527, 31.976131, 23.748379>,  <24.377995, 31.965855, 23.973419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.708527, 31.976131, 23.748379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563184, 0.041037, -0.825312,
		0.001884, 0.998827, 0.048379,
		0.826329, 0.025692, -0.562601,
		24.956425, 31.983839, 23.579597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.152458, 32.354172, 23.422428>,  <24.377995, 31.965855, 23.973419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.152458, 32.354172, 23.422428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.471254, 32.152870, 23.288834>,  <24.662533, 32.032089, 23.208677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.471254, 32.152870, 23.288834>,  <24.152458, 32.354172, 23.422428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.471254, 32.152870, 23.288834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427070, -0.078523, -0.900803,
		0.427105, 0.860565, -0.277505,
		0.796990, -0.503251, -0.333984,
		24.710352, 32.001896, 23.188639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.686695, 32.598083, 23.845415>,  <24.152458, 32.354172, 23.422428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.686695, 32.598083, 23.845415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.327503, 32.774063, 23.841854>,  <23.111988, 32.879650, 23.839718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.327503, 32.774063, 23.841854>,  <23.686695, 32.598083, 23.845415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.327503, 32.774063, 23.841854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422724, 0.868089, 0.260244,
		0.122221, 0.229931, -0.965502,
		-0.897979, 0.439948, -0.008901,
		23.058109, 32.906048, 23.839184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.430744, 33.239918, 23.334131>,  <23.686695, 32.598083, 23.845415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.430744, 33.239918, 23.334131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.227072, 33.266602, 23.677361>,  <23.104868, 33.282612, 23.883297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.227072, 33.266602, 23.677361>,  <23.430744, 33.239918, 23.334131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.227072, 33.266602, 23.677361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545593, 0.796088, 0.261864,
		-0.665631, 0.601493, -0.441748,
		-0.509179, 0.066710, 0.858071,
		23.074318, 33.286613, 23.934782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.233616, 33.876923, 23.494942>,  <23.430744, 33.239918, 23.334131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.233616, 33.876923, 23.494942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.268820, 33.717205, 23.859978>,  <23.289942, 33.621376, 24.078999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.268820, 33.717205, 23.859978>,  <23.233616, 33.876923, 23.494942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.268820, 33.717205, 23.859978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405951, 0.850993, 0.333188,
		-0.909647, 0.341142, 0.236990,
		0.088012, -0.399290, 0.912591,
		23.295223, 33.597420, 24.133755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.055162, 34.471802, 23.892139>,  <23.233616, 33.876923, 23.494942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.055162, 34.471802, 23.892139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.268688, 34.190342, 24.079723>,  <23.396805, 34.021465, 24.192274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.268688, 34.190342, 24.079723>,  <23.055162, 34.471802, 23.892139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.268688, 34.190342, 24.079723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728820, 0.664079, 0.166796,
		-0.428793, 0.252750, 0.867326,
		0.533815, -0.703645, 0.468961,
		23.428833, 33.979248, 24.220411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.060463, 34.522747, 24.585745>,  <23.055162, 34.471802, 23.892139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.060463, 34.522747, 24.585745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.392334, 34.382885, 24.411678>,  <23.591457, 34.298965, 24.307238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.392334, 34.382885, 24.411678>,  <23.060463, 34.522747, 24.585745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.392334, 34.382885, 24.411678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474141, 0.852849, 0.218721,
		0.294654, -0.387800, 0.873379,
		0.829680, -0.349658, -0.435168,
		23.641237, 34.277988, 24.281128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.381830, 34.460510, 24.482092>,  <23.060463, 34.522747, 24.585745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.381830, 34.460510, 24.482092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.988834, 34.523098, 24.441628>,  <21.753036, 34.560650, 24.417349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.988834, 34.523098, 24.441628>,  <22.381830, 34.460510, 24.482092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.988834, 34.523098, 24.441628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172198, 0.555148, -0.813731,
		-0.071168, -0.816901, -0.572371,
		-0.982488, 0.156473, -0.101160,
		21.694088, 34.570042, 24.411280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.064457, 34.504208, 23.734367>,  <22.381830, 34.460510, 24.482092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.064457, 34.504208, 23.734367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.836573, 34.731979, 23.497326>,  <21.699842, 34.868645, 23.355101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.836573, 34.731979, 23.497326>,  <22.064457, 34.504208, 23.734367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.836573, 34.731979, 23.497326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610870, -0.188966, -0.768850,
		-0.549791, -0.800023, -0.240195,
		-0.569709, 0.569434, -0.592602,
		21.665661, 34.902809, 23.319546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.920607, 34.135910, 23.066265>,  <22.064457, 34.504208, 23.734367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.920607, 34.135910, 23.066265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.944616, 34.535133, 23.059708>,  <21.959023, 34.774670, 23.055773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.944616, 34.535133, 23.059708>,  <21.920607, 34.135910, 23.066265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.944616, 34.535133, 23.059708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727467, -0.054984, -0.683936,
		-0.683512, 0.029125, -0.729358,
		0.060022, 0.998062, -0.016395,
		21.962624, 34.834553, 23.054789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.292269, 34.214451, 22.530651>,  <21.920607, 34.135910, 23.066265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.292269, 34.214451, 22.530651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.258913, 34.592991, 22.655533>,  <22.238899, 34.820114, 22.730461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.258913, 34.592991, 22.655533>,  <22.292269, 34.214451, 22.530651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.258913, 34.592991, 22.655533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779912, 0.256997, -0.570692,
		-0.620309, 0.195901, -0.759499,
		-0.083390, 0.946348, 0.312203,
		22.233896, 34.876896, 22.749193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.384932, 34.562733, 21.982637>,  <22.292269, 34.214451, 22.530651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.384932, 34.562733, 21.982637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.465309, 34.829292, 22.269840>,  <22.513535, 34.989227, 22.442162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.465309, 34.829292, 22.269840>,  <22.384932, 34.562733, 21.982637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.465309, 34.829292, 22.269840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796969, 0.314987, -0.515386,
		-0.569616, 0.675793, -0.467805,
		0.200942, 0.666398, 0.718008,
		22.525591, 35.029213, 22.485243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.372509, 35.168774, 21.687885>,  <22.384932, 34.562733, 21.982637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.372509, 35.168774, 21.687885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.594187, 35.208382, 22.018475>,  <22.727194, 35.232147, 22.216829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.594187, 35.208382, 22.018475>,  <22.372509, 35.168774, 21.687885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.594187, 35.208382, 22.018475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789409, 0.252392, -0.559582,
		-0.264008, 0.962545, 0.061704,
		0.554196, 0.099024, 0.826475,
		22.760447, 35.238091, 22.266417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.700235, 35.792553, 21.566969>,  <22.372509, 35.168774, 21.687885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.700235, 35.792553, 21.566969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.933998, 35.603985, 21.831161>,  <23.074255, 35.490845, 21.989677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.933998, 35.603985, 21.831161>,  <22.700235, 35.792553, 21.566969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.933998, 35.603985, 21.831161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807324, 0.255680, -0.531842,
		0.081847, 0.844034, 0.530007,
		0.584405, -0.471417, 0.660483,
		23.109320, 35.462559, 22.029306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.373905, 36.226639, 21.671246>,  <22.700235, 35.792553, 21.566969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.373905, 36.226639, 21.671246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.474144, 35.873325, 21.829742>,  <23.534288, 35.661335, 21.924841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.474144, 35.873325, 21.829742>,  <23.373905, 36.226639, 21.671246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.474144, 35.873325, 21.829742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907538, 0.071859, -0.413777,
		0.337011, 0.463295, 0.819623,
		0.250598, -0.883286, 0.396240,
		23.549324, 35.608341, 21.948614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.091536, 36.291840, 21.992498>,  <23.373905, 36.226639, 21.671246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.091536, 36.291840, 21.992498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.029581, 35.903450, 21.919601>,  <23.992409, 35.670414, 21.875864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.029581, 35.903450, 21.919601>,  <24.091536, 36.291840, 21.992498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.029581, 35.903450, 21.919601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848775, -0.036384, -0.527501,
		0.505561, -0.236384, 0.829777,
		-0.154884, -0.970978, -0.182242,
		23.983116, 35.612156, 21.864929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.760109, 36.003483, 22.139791>,  <24.091536, 36.291840, 21.992498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.760109, 36.003483, 22.139791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.573444, 35.728596, 21.917095>,  <24.461445, 35.563663, 21.783478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.573444, 35.728596, 21.917095>,  <24.760109, 36.003483, 22.139791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.573444, 35.728596, 21.917095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845776, -0.162673, -0.508134,
		0.258631, -0.708006, 0.657143,
		-0.466662, -0.687216, -0.556742,
		24.433445, 35.522430, 21.750072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.137135, 35.411282, 22.266802>,  <24.760109, 36.003483, 22.139791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.137135, 35.411282, 22.266802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.954485, 35.350719, 21.916130>,  <24.844894, 35.314381, 21.705727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.954485, 35.350719, 21.916130>,  <25.137135, 35.411282, 22.266802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.954485, 35.350719, 21.916130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887127, -0.151798, -0.435848,
		-0.067088, -0.976746, 0.203632,
		-0.456624, -0.151407, -0.876682,
		24.817497, 35.305298, 21.653126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.362003, 34.753632, 22.089533>,  <25.137135, 35.411282, 22.266802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.362003, 34.753632, 22.089533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.228575, 34.896210, 21.740437>,  <25.148518, 34.981758, 21.530979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.228575, 34.896210, 21.740437>,  <25.362003, 34.753632, 22.089533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.228575, 34.896210, 21.740437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878734, -0.217696, -0.424776,
		-0.341404, -0.908599, -0.240608,
		-0.333572, 0.356451, -0.872739,
		25.128504, 35.003143, 21.478615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.673803, 34.224209, 21.560774>,  <25.362003, 34.753632, 22.089533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.673803, 34.224209, 21.560774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.568384, 34.557053, 21.365574>,  <25.505133, 34.756760, 21.248455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.568384, 34.557053, 21.365574>,  <25.673803, 34.224209, 21.560774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.568384, 34.557053, 21.365574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793477, -0.100691, -0.600213,
		-0.548578, -0.545400, -0.633720,
		-0.263547, 0.832106, -0.487999,
		25.489321, 34.806683, 21.219173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.807961, 34.041096, 20.834862>,  <25.673803, 34.224209, 21.560774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.807961, 34.041096, 20.834862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.808432, 34.441086, 20.832222>,  <25.808714, 34.681080, 20.830637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.808432, 34.441086, 20.832222>,  <25.807961, 34.041096, 20.834862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.808432, 34.441086, 20.832222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683479, -0.005624, -0.729948,
		-0.729969, -0.003651, -0.683471,
		0.001179, 0.999978, -0.006601,
		25.808784, 34.741077, 20.830242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.823853, 34.258385, 20.135441>,  <25.807961, 34.041096, 20.834862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.823853, 34.258385, 20.135441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.940895, 34.591557, 20.323315>,  <26.011120, 34.791462, 20.436039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.940895, 34.591557, 20.323315>,  <25.823853, 34.258385, 20.135441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.940895, 34.591557, 20.323315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669934, 0.171921, -0.722241,
		-0.682327, 0.525990, -0.507705,
		0.292606, 0.832933, 0.469684,
		26.028677, 34.841438, 20.464220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.873392, 34.838184, 19.581774>,  <25.823853, 34.258385, 20.135441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.873392, 34.838184, 19.581774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.117521, 34.921234, 19.887558>,  <26.264000, 34.971066, 20.071028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.117521, 34.921234, 19.887558>,  <25.873392, 34.838184, 19.581774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.117521, 34.921234, 19.887558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701758, 0.305970, -0.643365,
		-0.367479, 0.929126, 0.041039,
		0.610324, 0.207623, 0.764459,
		26.300619, 34.983521, 20.116896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.304785, 35.373108, 19.298204>,  <25.873392, 34.838184, 19.581774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.304785, 35.373108, 19.298204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.499479, 35.246239, 19.623779>,  <26.616295, 35.170116, 19.819124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.499479, 35.246239, 19.623779>,  <26.304785, 35.373108, 19.298204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.499479, 35.246239, 19.623779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846144, -0.060375, -0.529523,
		0.217091, 0.946444, 0.238987,
		0.486735, -0.317173, 0.813935,
		26.645500, 35.151089, 19.867960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.853167, 35.831161, 19.364895>,  <26.304785, 35.373108, 19.298204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.853167, 35.831161, 19.364895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.947819, 35.491611, 19.553959>,  <27.004610, 35.287880, 19.667398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.947819, 35.491611, 19.553959>,  <26.853167, 35.831161, 19.364895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.947819, 35.491611, 19.553959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881803, -0.016627, -0.471326,
		0.407958, 0.528325, 0.744610,
		0.236632, -0.848880, 0.472661,
		27.018808, 35.236946, 19.695757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.668955, 35.866081, 19.439585>,  <26.853167, 35.831161, 19.364895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.668955, 35.866081, 19.439585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.602201, 35.479305, 19.516716>,  <27.562149, 35.247242, 19.562994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.602201, 35.479305, 19.516716>,  <27.668955, 35.866081, 19.439585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.602201, 35.479305, 19.516716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907259, -0.227168, -0.353943,
		0.386045, 0.115878, 0.915173,
		-0.166884, -0.966937, 0.192828,
		27.552135, 35.189224, 19.574564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.316948, 35.589668, 19.767614>,  <27.668955, 35.866081, 19.439585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.316948, 35.589668, 19.767614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095613, 35.293953, 19.614109>,  <27.962812, 35.116524, 19.522007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095613, 35.293953, 19.614109>,  <28.316948, 35.589668, 19.767614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095613, 35.293953, 19.614109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795970, -0.333532, -0.505161,
		0.245462, -0.584987, 0.773006,
		-0.553335, -0.739288, -0.383762,
		27.929613, 35.072166, 19.498980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.671904, 34.975552, 19.814369>,  <28.316948, 35.589668, 19.767614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.671904, 34.975552, 19.814369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.405092, 34.919682, 19.521641>,  <28.245005, 34.886162, 19.346003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.405092, 34.919682, 19.521641>,  <28.671904, 34.975552, 19.814369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.405092, 34.919682, 19.521641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716205, -0.390803, -0.578207,
		-0.205239, -0.909816, 0.360711,
		-0.667029, -0.139673, -0.731822,
		28.204983, 34.877781, 19.302094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.788643, 34.268669, 19.706783>,  <28.671904, 34.975552, 19.814369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.788643, 34.268669, 19.706783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.609398, 34.400043, 19.374199>,  <28.501852, 34.478867, 19.174648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.609398, 34.400043, 19.374199>,  <28.788643, 34.268669, 19.706783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609398, 34.400043, 19.374199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715567, -0.425734, -0.553818,
		-0.535874, -0.843138, -0.044240,
		-0.448111, 0.328433, -0.831462,
		28.474964, 34.498573, 19.124760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.813280, 33.740211, 19.254847>,  <28.788643, 34.268669, 19.706783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.813280, 33.740211, 19.254847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.731565, 34.035107, 18.997242>,  <28.682537, 34.212044, 18.842680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.731565, 34.035107, 18.997242>,  <28.813280, 33.740211, 19.254847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.731565, 34.035107, 18.997242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621730, -0.410441, -0.667076,
		-0.756120, -0.536677, -0.374513,
		-0.204289, 0.737235, -0.644011,
		28.670279, 34.256279, 18.804039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.945171, 33.413708, 18.605194>,  <28.813280, 33.740211, 19.254847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.945171, 33.413708, 18.605194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965279, 33.809570, 18.551449>,  <28.977343, 34.047089, 18.519201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965279, 33.809570, 18.551449>,  <28.945171, 33.413708, 18.605194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.965279, 33.809570, 18.551449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832460, -0.115850, -0.541839,
		-0.551800, -0.084615, -0.829673,
		0.050270, 0.989656, -0.134365,
		28.980360, 34.106468, 18.511139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.039875, 33.604649, 17.936010>,  <28.945171, 33.413708, 18.605194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.039875, 33.604649, 17.936010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.178703, 33.925915, 18.129696>,  <29.262001, 34.118675, 18.245907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.178703, 33.925915, 18.129696>,  <29.039875, 33.604649, 17.936010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.178703, 33.925915, 18.129696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764955, 0.056263, -0.641621,
		-0.542572, 0.593092, -0.594859,
		0.347072, 0.803167, 0.484215,
		29.282825, 34.166866, 18.274960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.964455, 34.033382, 17.436266>,  <29.039875, 33.604649, 17.936010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.964455, 34.033382, 17.436266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.259254, 34.125103, 17.690590>,  <29.436134, 34.180134, 17.843184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.259254, 34.125103, 17.690590>,  <28.964455, 34.033382, 17.436266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.259254, 34.125103, 17.690590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672808, -0.159089, -0.722510,
		-0.064523, 0.960266, -0.271524,
		0.736999, 0.229302, 0.635809,
		29.480354, 34.193893, 17.881332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311893, 34.466232, 17.142181>,  <28.964455, 34.033382, 17.436266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311893, 34.466232, 17.142181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.580837, 34.308666, 17.392864>,  <29.742203, 34.214127, 17.543274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.580837, 34.308666, 17.392864>,  <29.311893, 34.466232, 17.142181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.580837, 34.308666, 17.392864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630767, -0.138184, -0.763569,
		0.387383, 0.908700, 0.155559,
		0.672360, -0.393915, 0.626708,
		29.782545, 34.190491, 17.580877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.537798, 35.146954, 17.066460>,  <29.311893, 34.466232, 17.142181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.537798, 35.146954, 17.066460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.518167, 35.540474, 17.135429>,  <29.506390, 35.776585, 17.176811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.518167, 35.540474, 17.135429>,  <29.537798, 35.146954, 17.066460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.518167, 35.540474, 17.135429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279205, 0.179265, -0.943349,
		-0.958976, 0.001847, -0.283480,
		-0.049076, 0.983799, 0.172427,
		29.503445, 35.835613, 17.187157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.172691, 35.502869, 16.577669>,  <29.537798, 35.146954, 17.066460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.172691, 35.502869, 16.577669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.469992, 35.741486, 16.698803>,  <29.648373, 35.884655, 16.771482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.469992, 35.741486, 16.698803>,  <29.172691, 35.502869, 16.577669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.469992, 35.741486, 16.698803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274603, 0.140736, -0.951202,
		-0.610056, 0.790142, -0.059211,
		0.743252, 0.596547, 0.302833,
		29.692966, 35.920448, 16.789654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.484991, 35.370277, 16.609171>,  <29.172691, 35.502869, 16.577669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.484991, 35.370277, 16.609171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.232346, 35.163887, 16.377712>,  <28.080757, 35.040054, 16.238836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.232346, 35.163887, 16.377712>,  <28.484991, 35.370277, 16.609171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.232346, 35.163887, 16.377712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760814, 0.268996, 0.590596,
		-0.149077, 0.813273, -0.562461,
		-0.631616, -0.515972, -0.578649,
		28.042860, 35.009094, 16.204117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.898937, 35.827843, 16.683594>,  <28.484991, 35.370277, 16.609171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.898937, 35.827843, 16.683594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.752293, 35.469002, 16.584961>,  <27.664307, 35.253696, 16.525782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.752293, 35.469002, 16.584961>,  <27.898937, 35.827843, 16.683594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.752293, 35.469002, 16.584961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765489, 0.140215, 0.627986,
		-0.528794, 0.418980, -0.738127,
		-0.366610, -0.897104, -0.246580,
		27.642309, 35.199871, 16.510986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.084806, 35.881596, 16.466787>,  <27.898937, 35.827843, 16.683594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.084806, 35.881596, 16.466787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.174364, 35.508549, 16.579998>,  <27.228098, 35.284721, 16.647924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.174364, 35.508549, 16.579998>,  <27.084806, 35.881596, 16.466787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.174364, 35.508549, 16.579998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810966, -0.017205, 0.584840,
		-0.540561, -0.360466, -0.760170,
		0.223894, -0.932614, 0.283025,
		27.241531, 35.228764, 16.664906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.668415, 35.380661, 16.095695>,  <27.084806, 35.881596, 16.466787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.668415, 35.380661, 16.095695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.766319, 35.321190, 16.478943>,  <26.825062, 35.285507, 16.708891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.766319, 35.321190, 16.478943>,  <26.668415, 35.380661, 16.095695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.766319, 35.321190, 16.478943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962410, 0.082727, 0.258695,
		-0.117725, -0.985418, -0.122846,
		0.244760, -0.148683, 0.958116,
		26.839746, 35.276585, 16.766378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.213928, 34.863319, 16.441158>,  <26.668415, 35.380661, 16.095695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.213928, 34.863319, 16.441158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.373260, 35.078556, 16.738289>,  <26.468859, 35.207699, 16.916567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.373260, 35.078556, 16.738289>,  <26.213928, 34.863319, 16.441158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.373260, 35.078556, 16.738289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833919, -0.124812, 0.537589,
		0.381987, -0.833592, 0.399011,
		0.398328, 0.538095, 0.742824,
		26.492760, 35.239983, 16.961136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.386303, 34.351135, 17.074686>,  <26.213928, 34.863319, 16.441158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.386303, 34.351135, 17.074686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349186, 34.725262, 17.211262>,  <26.326916, 34.949738, 17.293207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349186, 34.725262, 17.211262>,  <26.386303, 34.351135, 17.074686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.349186, 34.725262, 17.211262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758204, -0.288647, 0.584645,
		0.645381, -0.204630, 0.735941,
		-0.092791, 0.935313, 0.341439,
		26.321348, 35.005856, 17.313694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.013895, 34.239796, 17.670481>,  <26.386303, 34.351135, 17.074686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.013895, 34.239796, 17.670481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.014711, 34.638554, 17.638996>,  <26.015202, 34.877808, 17.620106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.014711, 34.638554, 17.638996>,  <26.013895, 34.239796, 17.670481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.014711, 34.638554, 17.638996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792326, 0.049633, 0.608076,
		0.610094, 0.061125, 0.789968,
		0.002040, 0.996895, -0.078712,
		26.015324, 34.937622, 17.615383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.876568, 34.527050, 18.336275>,  <26.013895, 34.239796, 17.670481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.876568, 34.527050, 18.336275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.781097, 34.824055, 18.085926>,  <25.723816, 35.002258, 17.935717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.781097, 34.824055, 18.085926>,  <25.876568, 34.527050, 18.336275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.781097, 34.824055, 18.085926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832447, 0.175445, 0.525595,
		0.500065, 0.646451, 0.576225,
		-0.238676, 0.742509, -0.625871,
		25.709496, 35.046806, 17.898165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.706928, 35.173191, 18.715580>,  <25.876568, 34.527050, 18.336275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.706928, 35.173191, 18.715580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.520979, 35.206623, 18.363010>,  <25.409409, 35.226681, 18.151468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.520979, 35.206623, 18.363010>,  <25.706928, 35.173191, 18.715580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.520979, 35.206623, 18.363010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865389, 0.167451, 0.472294,
		0.187068, 0.982332, -0.005516,
		-0.464873, 0.083578, -0.881424,
		25.381517, 35.231697, 18.098583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.398870, 35.905544, 18.714071>,  <25.706928, 35.173191, 18.715580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.398870, 35.905544, 18.714071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.192133, 35.697567, 18.442032>,  <25.068090, 35.572781, 18.278809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.192133, 35.697567, 18.442032>,  <25.398870, 35.905544, 18.714071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.192133, 35.697567, 18.442032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854301, 0.364421, 0.370631,
		0.055136, 0.772568, -0.632534,
		-0.516846, -0.519940, -0.680098,
		25.037079, 35.541584, 18.238003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.821602, 36.351177, 18.466854>,  <25.398870, 35.905544, 18.714071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.821602, 36.351177, 18.466854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.702370, 35.977688, 18.387550>,  <24.630831, 35.753593, 18.339968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.702370, 35.977688, 18.387550>,  <24.821602, 36.351177, 18.466854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.702370, 35.977688, 18.387550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934378, 0.242958, 0.260592,
		-0.195153, 0.262926, -0.944873,
		-0.298081, -0.933724, -0.198259,
		24.612946, 35.697571, 18.328074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.248240, 36.489441, 18.102150>,  <24.821602, 36.351177, 18.466854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.248240, 36.489441, 18.102150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.210379, 36.113010, 18.232025>,  <24.187662, 35.887154, 18.309950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.210379, 36.113010, 18.232025>,  <24.248240, 36.489441, 18.102150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.210379, 36.113010, 18.232025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941165, 0.190880, 0.278879,
		-0.324422, -0.279191, -0.903772,
		-0.094652, -0.941072, 0.324690,
		24.181984, 35.830688, 18.329432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.597815, 36.413437, 17.961430>,  <24.248240, 36.489441, 18.102150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.597815, 36.413437, 17.961430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.679585, 36.096004, 18.190670>,  <23.728645, 35.905544, 18.328215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.679585, 36.096004, 18.190670>,  <23.597815, 36.413437, 17.961430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.679585, 36.096004, 18.190670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870874, 0.119897, 0.476658,
		-0.446979, -0.596540, -0.666596,
		0.204422, -0.793577, 0.573102,
		23.740911, 35.857933, 18.362600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.969486, 35.965172, 17.886414>,  <23.597815, 36.413437, 17.961430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.969486, 35.965172, 17.886414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.153980, 35.848598, 18.221634>,  <23.264677, 35.778656, 18.422766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.153980, 35.848598, 18.221634>,  <22.969486, 35.965172, 17.886414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.153980, 35.848598, 18.221634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839863, 0.161226, 0.518301,
		-0.286164, -0.942907, -0.170398,
		0.461237, -0.291430, 0.838051,
		23.292351, 35.761169, 18.473049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.425863, 35.539989, 18.236223>,  <22.969486, 35.965172, 17.886414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.425863, 35.539989, 18.236223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.687372, 35.637447, 18.522781>,  <22.844276, 35.695923, 18.694715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.687372, 35.637447, 18.522781>,  <22.425863, 35.539989, 18.236223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.687372, 35.637447, 18.522781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755160, 0.270315, 0.597213,
		-0.048146, -0.931433, 0.360713,
		0.653770, 0.243642, 0.716395,
		22.883503, 35.710541, 18.737700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.014116, 35.347389, 18.778156>,  <22.425863, 35.539989, 18.236223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.014116, 35.347389, 18.778156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.325699, 35.566364, 18.900490>,  <22.512648, 35.697750, 18.973890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.325699, 35.566364, 18.900490>,  <22.014116, 35.347389, 18.778156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.325699, 35.566364, 18.900490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437541, 0.125116, 0.890451,
		0.449205, -0.827438, 0.336988,
		0.778956, 0.547441, 0.305835,
		22.559385, 35.730595, 18.992241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.246927, 34.998600, 19.419271>,  <22.014116, 35.347389, 18.778156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.246927, 34.998600, 19.419271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.327639, 35.389462, 19.392551>,  <22.376066, 35.623978, 19.376518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.327639, 35.389462, 19.392551>,  <22.246927, 34.998600, 19.419271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.327639, 35.389462, 19.392551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452928, 0.153566, 0.878222,
		0.868413, -0.146950, 0.473565,
		0.201779, 0.977150, -0.066801,
		22.388172, 35.682606, 19.372511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.338703, 35.126366, 20.052301>,  <22.246927, 34.998600, 19.419271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.338703, 35.126366, 20.052301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.284437, 35.489689, 19.894024>,  <22.251877, 35.707684, 19.799057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.284437, 35.489689, 19.894024>,  <22.338703, 35.126366, 20.052301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.284437, 35.489689, 19.894024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390857, 0.317928, 0.863801,
		0.910398, 0.271850, 0.311886,
		-0.135667, 0.908306, -0.395695,
		22.243736, 35.762180, 19.775316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.638874, 35.589390, 20.552641>,  <22.338703, 35.126366, 20.052301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.638874, 35.589390, 20.552641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.398153, 35.815487, 20.326954>,  <22.253721, 35.951145, 20.191542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.398153, 35.815487, 20.326954>,  <22.638874, 35.589390, 20.552641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.398153, 35.815487, 20.326954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408099, 0.389628, 0.825618,
		0.686507, 0.727114, -0.003805,
		-0.601801, 0.565240, -0.564216,
		22.217613, 35.985058, 20.157688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.649439, 36.249352, 20.829884>,  <22.638874, 35.589390, 20.552641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.649439, 36.249352, 20.829884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.315437, 36.245209, 20.609825>,  <22.115036, 36.242722, 20.477791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.315437, 36.245209, 20.609825>,  <22.649439, 36.249352, 20.829884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.315437, 36.245209, 20.609825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493646, 0.455767, 0.740669,
		0.243064, 0.890039, -0.385682,
		-0.835005, -0.010360, -0.550144,
		22.064936, 36.242100, 20.444782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.295219, 36.820641, 20.972902>,  <22.649439, 36.249352, 20.829884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.295219, 36.820641, 20.972902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.000223, 36.621666, 20.790184>,  <21.823227, 36.502281, 20.680553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.000223, 36.621666, 20.790184>,  <22.295219, 36.820641, 20.972902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.000223, 36.621666, 20.790184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652715, 0.351308, 0.671227,
		-0.173419, 0.793180, -0.583773,
		-0.737488, -0.497441, -0.456797,
		21.778976, 36.472435, 20.653145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.887505, 37.294807, 20.801611>,  <22.295219, 36.820641, 20.972902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.887505, 37.294807, 20.801611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.678268, 36.956123, 20.840519>,  <21.552727, 36.752914, 20.863863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.678268, 36.956123, 20.840519>,  <21.887505, 37.294807, 20.801611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.678268, 36.956123, 20.840519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618042, 0.455433, 0.640784,
		-0.586857, 0.275071, -0.761534,
		-0.523089, -0.846709, 0.097269,
		21.521341, 36.702110, 20.869699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.282572, 37.495037, 20.991352>,  <21.887505, 37.294807, 20.801611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.282572, 37.495037, 20.991352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.218012, 37.108856, 21.073177>,  <21.179276, 36.877148, 21.122272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.218012, 37.108856, 21.073177>,  <21.282572, 37.495037, 20.991352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.218012, 37.108856, 21.073177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718689, 0.257041, 0.646078,
		-0.676340, -0.042739, -0.735349,
		-0.161402, -0.965455, 0.204563,
		21.169592, 36.819221, 21.134546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.530621, 37.497585, 21.032793>,  <21.282572, 37.495037, 20.991352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.530621, 37.497585, 21.032793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.670246, 37.180889, 21.233311>,  <20.754021, 36.990871, 21.353621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.670246, 37.180889, 21.233311>,  <20.530621, 37.497585, 21.032793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.670246, 37.180889, 21.233311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615479, 0.209685, 0.759749,
		-0.706640, -0.573736, -0.414108,
		0.349063, -0.791744, 0.501294,
		20.774965, 36.943367, 21.383699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.914335, 37.029255, 21.202734>,  <20.530621, 37.497585, 21.032793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.914335, 37.029255, 21.202734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.210861, 36.968719, 21.464283>,  <20.388777, 36.932400, 21.621212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.210861, 36.968719, 21.464283>,  <19.914335, 37.029255, 21.202734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.210861, 36.968719, 21.464283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629802, 0.179843, 0.755650,
		-0.231952, -0.971984, 0.038007,
		0.741315, -0.151338, 0.653873,
		20.433256, 36.923317, 21.660444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.646317, 36.616455, 21.733171>,  <19.914335, 37.029255, 21.202734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.646317, 36.616455, 21.733171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.975290, 36.799118, 21.868858>,  <20.172674, 36.908714, 21.950270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.975290, 36.799118, 21.868858>,  <19.646317, 36.616455, 21.733171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.975290, 36.799118, 21.868858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470320, 0.210410, 0.857045,
		0.320000, -0.864404, 0.387822,
		0.822434, 0.456655, 0.339215,
		20.222021, 36.936115, 21.970623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.920656, 36.614136, 21.791298>,  <19.646317, 36.616455, 21.733171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.920656, 36.614136, 21.791298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.679787, 36.323441, 21.923504>,  <18.535265, 36.149025, 22.002827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.679787, 36.323441, 21.923504>,  <18.920656, 36.614136, 21.791298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.679787, 36.323441, 21.923504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147934, 0.305250, 0.940711,
		-0.784539, 0.615366, -0.076305,
		-0.602174, -0.726737, 0.330514,
		18.499134, 36.105419, 22.022657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.384710, 36.919113, 22.234386>,  <18.920656, 36.614136, 21.791298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.384710, 36.919113, 22.234386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.442184, 36.536304, 22.335152>,  <18.476669, 36.306618, 22.395611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.442184, 36.536304, 22.335152>,  <18.384710, 36.919113, 22.234386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.442184, 36.536304, 22.335152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098992, 0.267178, 0.958549,
		-0.984660, -0.112793, 0.133128,
		0.143686, -0.957023, 0.251913,
		18.485291, 36.249199, 22.410727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.846840, 36.738911, 22.720860>,  <18.384710, 36.919113, 22.234386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.846840, 36.738911, 22.720860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.183872, 36.532887, 22.783813>,  <18.386091, 36.409271, 22.821587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.183872, 36.532887, 22.783813>,  <17.846840, 36.738911, 22.720860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.183872, 36.532887, 22.783813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048283, 0.218813, 0.974571,
		-0.536400, -0.828755, 0.159500,
		0.842582, -0.515059, 0.157386,
		18.436647, 36.378368, 22.831030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.772467, 37.424145, 23.045012>,  <17.846840, 36.738911, 22.720860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.772467, 37.424145, 23.045012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.715132, 37.591022, 23.403988>,  <17.680731, 37.691151, 23.619373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.715132, 37.591022, 23.403988>,  <17.772467, 37.424145, 23.045012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.715132, 37.591022, 23.403988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727133, -0.659545, 0.190467,
		0.671366, -0.625259, 0.397894,
		-0.143338, 0.417194, 0.897442,
		17.672131, 37.716183, 23.673222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<28.860804, 24.138388, 27.862522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.199629, 24.289680, 28.011879>,  <29.402924, 24.380457, 28.101494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.199629, 24.289680, 28.011879>,  <28.860804, 24.138388, 27.862522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.199629, 24.289680, 28.011879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077668, 0.783086, -0.617045,
		-0.525786, 0.493676, 0.692700,
		0.847064, 0.378234, 0.373393,
		29.453749, 24.403151, 28.123898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722658, 24.852018, 28.126175>,  <28.860804, 24.138388, 27.862522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.722658, 24.852018, 28.126175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.117453, 24.835850, 28.063923>,  <29.354330, 24.826149, 28.026571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.117453, 24.835850, 28.063923>,  <28.722658, 24.852018, 28.126175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.117453, 24.835850, 28.063923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036251, 0.887028, -0.460291,
		0.156652, 0.459944, 0.874021,
		0.986988, -0.040421, -0.155628,
		29.413549, 24.823723, 28.017235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993591, 25.536722, 28.187752>,  <28.722658, 24.852018, 28.126175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993591, 25.536722, 28.187752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.286648, 25.340446, 27.999088>,  <29.462481, 25.222681, 27.885889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.286648, 25.340446, 27.999088>,  <28.993591, 25.536722, 28.187752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.286648, 25.340446, 27.999088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283477, 0.850014, -0.443978,
		0.618774, 0.191571, 0.761853,
		0.732639, -0.490690, -0.471660,
		29.506439, 25.193239, 27.857590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.700930, 25.937475, 28.208246>,  <28.993591, 25.536722, 28.187752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.700930, 25.937475, 28.208246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.713133, 25.674496, 27.907093>,  <29.720455, 25.516708, 27.726400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.713133, 25.674496, 27.907093>,  <29.700930, 25.937475, 28.208246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.713133, 25.674496, 27.907093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385996, 0.702551, -0.597854,
		0.921996, -0.272371, 0.275204,
		0.030507, -0.657447, -0.752883,
		29.722284, 25.477262, 27.681229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.377832, 26.118509, 27.910194>,  <29.700930, 25.937475, 28.208246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.377832, 26.118509, 27.910194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.191128, 25.887867, 27.641968>,  <30.079105, 25.749481, 27.481031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.191128, 25.887867, 27.641968>,  <30.377832, 26.118509, 27.910194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.191128, 25.887867, 27.641968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429619, 0.514920, -0.741812,
		0.773021, -0.634338, 0.007374,
		-0.466762, -0.576604, -0.670568,
		30.051100, 25.714886, 27.440798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835812, 25.998041, 27.431688>,  <30.377832, 26.118509, 27.910194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835812, 25.998041, 27.431688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.486629, 25.931156, 27.248390>,  <30.277121, 25.891026, 27.138411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.486629, 25.931156, 27.248390>,  <30.835812, 25.998041, 27.431688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.486629, 25.931156, 27.248390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227231, 0.691872, -0.685331,
		0.431643, -0.702391, -0.565978,
		-0.872955, -0.167211, -0.458247,
		30.224743, 25.880993, 27.110916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975550, 25.749929, 26.666668>,  <30.835812, 25.998041, 27.431688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.975550, 25.749929, 26.666668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.613642, 25.918777, 26.689308>,  <30.396496, 26.020086, 26.702892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.613642, 25.918777, 26.689308>,  <30.975550, 25.749929, 26.666668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613642, 25.918777, 26.689308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296897, 0.720416, -0.626780,
		-0.305353, -0.550288, -0.777137,
		-0.904772, 0.422118, 0.056602,
		30.342211, 26.045414, 26.706289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803797, 25.951017, 25.909248>,  <30.975550, 25.749929, 26.666668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803797, 25.951017, 25.909248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.537792, 26.167755, 26.114834>,  <30.378189, 26.297798, 26.238186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.537792, 26.167755, 26.114834>,  <30.803797, 25.951017, 25.909248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537792, 26.167755, 26.114834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094542, 0.743736, -0.661755,
		-0.740824, -0.391484, -0.545821,
		-0.665013, 0.541846, 0.513965,
		30.338287, 26.330309, 26.269024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513550, 26.301603, 25.336205>,  <30.803797, 25.951017, 25.909248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513550, 26.301603, 25.336205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.415846, 26.490520, 25.674973>,  <30.357224, 26.603870, 25.878233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.415846, 26.490520, 25.674973>,  <30.513550, 26.301603, 25.336205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415846, 26.490520, 25.674973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018247, 0.870983, -0.490975,
		-0.969539, -0.135379, -0.204127,
		-0.244259, 0.472294, 0.846921,
		30.342567, 26.632208, 25.929049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.753860, 26.547594, 25.272469>,  <30.513550, 26.301603, 25.336205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.753860, 26.547594, 25.272469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.951923, 26.770527, 25.539062>,  <30.070761, 26.904285, 25.699018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.951923, 26.770527, 25.539062>,  <29.753860, 26.547594, 25.272469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.951923, 26.770527, 25.539062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184569, 0.817098, -0.546154,
		-0.848973, 0.147420, 0.507457,
		0.495157, 0.557331, 0.666485,
		30.100470, 26.937727, 25.739008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326826, 27.155678, 25.395063>,  <29.753860, 26.547594, 25.272469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326826, 27.155678, 25.395063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.702806, 27.234760, 25.506348>,  <29.928394, 27.282211, 25.573118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.702806, 27.234760, 25.506348>,  <29.326826, 27.155678, 25.395063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702806, 27.234760, 25.506348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017011, 0.786983, -0.616740,
		-0.340881, 0.584439, 0.736363,
		0.939952, 0.197709, 0.278210,
		29.984793, 27.294073, 25.589811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.269268, 27.812174, 25.436821>,  <29.326826, 27.155678, 25.395063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.269268, 27.812174, 25.436821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.663622, 27.763775, 25.483116>,  <29.900234, 27.734735, 25.510893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.663622, 27.763775, 25.483116>,  <29.269268, 27.812174, 25.436821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.663622, 27.763775, 25.483116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159594, 0.888153, -0.430946,
		-0.050651, 0.443333, 0.894925,
		0.985882, -0.120997, 0.115739,
		29.959387, 27.727476, 25.517838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529371, 28.428421, 25.733690>,  <29.269268, 27.812174, 25.436821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.529371, 28.428421, 25.733690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.844608, 28.277702, 25.538986>,  <30.033751, 28.187271, 25.422163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.844608, 28.277702, 25.538986>,  <29.529371, 28.428421, 25.733690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.844608, 28.277702, 25.538986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173195, 0.894548, -0.412052,
		0.590691, 0.240430, 0.770245,
		0.788091, -0.376798, -0.486760,
		30.081036, 28.164663, 25.392958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129181, 28.919949, 25.791456>,  <29.529371, 28.428421, 25.733690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129181, 28.919949, 25.791456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.209732, 28.695370, 25.470402>,  <30.258062, 28.560623, 25.277769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.209732, 28.695370, 25.470402>,  <30.129181, 28.919949, 25.791456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209732, 28.695370, 25.470402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064698, 0.825258, -0.561038,
		0.977375, 0.061051, 0.202512,
		0.201376, -0.561447, -0.802636,
		30.270145, 28.526936, 25.229610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787268, 29.171728, 25.510262>,  <30.129181, 28.919949, 25.791456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787268, 29.171728, 25.510262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.586969, 28.981583, 25.220909>,  <30.466789, 28.867495, 25.047298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.586969, 28.981583, 25.220909>,  <30.787268, 29.171728, 25.510262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586969, 28.981583, 25.220909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037227, 0.846758, -0.530673,
		0.864792, -0.238805, -0.441710,
		-0.500749, -0.475365, -0.723379,
		30.436745, 28.838972, 25.003895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039055, 29.432455, 24.884844>,  <30.787268, 29.171728, 25.510262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039055, 29.432455, 24.884844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.683357, 29.283077, 24.779175>,  <30.469938, 29.193451, 24.715773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.683357, 29.283077, 24.779175>,  <31.039055, 29.432455, 24.884844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683357, 29.283077, 24.779175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164397, 0.799828, -0.577278,
		0.426874, -0.469910, -0.772633,
		-0.889242, -0.373443, -0.264174,
		30.416584, 29.171043, 24.699923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035320, 29.587509, 24.240242>,  <31.039055, 29.432455, 24.884844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.035320, 29.587509, 24.240242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.654549, 29.501987, 24.327984>,  <30.426086, 29.450674, 24.380629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.654549, 29.501987, 24.327984>,  <31.035320, 29.587509, 24.240242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654549, 29.501987, 24.327984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283640, 0.885647, -0.367664,
		-0.115664, -0.412209, -0.903718,
		-0.951930, -0.213805, 0.219357,
		30.368969, 29.437845, 24.393791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716078, 29.527950, 23.610376>,  <31.035320, 29.587509, 24.240242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716078, 29.527950, 23.610376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.408176, 29.592197, 23.857498>,  <30.223436, 29.630745, 24.005772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.408176, 29.592197, 23.857498>,  <30.716078, 29.527950, 23.610376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.408176, 29.592197, 23.857498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285123, 0.779408, -0.557879,
		-0.571126, -0.605579, -0.554156,
		-0.769753, 0.160617, 0.617804,
		30.177250, 29.640383, 24.042839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170536, 29.500046, 23.195913>,  <30.716078, 29.527950, 23.610376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170536, 29.500046, 23.195913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.990993, 29.688717, 23.499504>,  <29.883268, 29.801920, 23.681660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.990993, 29.688717, 23.499504>,  <30.170536, 29.500046, 23.195913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.990993, 29.688717, 23.499504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285991, 0.728847, -0.622086,
		-0.846604, -0.496288, -0.192251,
		-0.448855, 0.471678, 0.758979,
		29.856337, 29.830221, 23.727198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.548265, 29.557653, 23.055471>,  <30.170536, 29.500046, 23.195913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.548265, 29.557653, 23.055471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.600355, 29.846558, 23.327171>,  <29.631609, 30.019899, 23.490191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.600355, 29.846558, 23.327171>,  <29.548265, 29.557653, 23.055471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.600355, 29.846558, 23.327171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263942, 0.685617, -0.678428,
		-0.955707, -0.090933, 0.279920,
		0.130227, 0.722261, 0.679250,
		29.639423, 30.063236, 23.530947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925306, 29.991077, 23.012550>,  <29.548265, 29.557653, 23.055471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925306, 29.991077, 23.012550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.207010, 30.211491, 23.191605>,  <29.376032, 30.343739, 23.299038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.207010, 30.211491, 23.191605>,  <28.925306, 29.991077, 23.012550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.207010, 30.211491, 23.191605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154263, 0.734237, -0.661135,
		-0.692980, 0.396557, 0.602098,
		0.704260, 0.551034, 0.447637,
		29.418289, 30.376801, 23.325895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622524, 30.641111, 22.982916>,  <28.925306, 29.991077, 23.012550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622524, 30.641111, 22.982916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.995960, 30.752670, 23.072918>,  <29.220022, 30.819607, 23.126919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.995960, 30.752670, 23.072918>,  <28.622524, 30.641111, 22.982916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.995960, 30.752670, 23.072918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053319, 0.729026, -0.682406,
		-0.354358, 0.625089, 0.695481,
		0.933589, 0.278898, 0.225007,
		29.276037, 30.836340, 23.140421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.620558, 30.537828, 23.755726>,  <28.622524, 30.641111, 22.982916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.620558, 30.537828, 23.755726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.328035, 30.603397, 23.490902>,  <28.152521, 30.642738, 23.332008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.328035, 30.603397, 23.490902>,  <28.620558, 30.537828, 23.755726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.328035, 30.603397, 23.490902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373771, -0.908272, 0.187982,
		-0.570514, 0.384931, 0.725495,
		-0.731306, 0.163922, -0.662058,
		28.108643, 30.652575, 23.292284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.000015, 30.315447, 24.061157>,  <28.620558, 30.537828, 23.755726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.000015, 30.315447, 24.061157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.910038, 30.304104, 23.671574>,  <27.856052, 30.297298, 23.437824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.910038, 30.304104, 23.671574>,  <28.000015, 30.315447, 24.061157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910038, 30.304104, 23.671574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330789, -0.937989, 0.103710,
		-0.916504, 0.345504, 0.201614,
		-0.224944, -0.028359, -0.973959,
		27.842554, 30.295595, 23.379385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.255173, 30.214560, 23.949347>,  <28.000015, 30.315447, 24.061157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.255173, 30.214560, 23.949347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.438795, 30.074215, 23.622871>,  <27.548967, 29.990007, 23.426987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.438795, 30.074215, 23.622871>,  <27.255173, 30.214560, 23.949347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.438795, 30.074215, 23.622871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605145, -0.796113, 0.001878,
		-0.650437, 0.493050, -0.577783,
		0.459055, -0.350864, -0.816188,
		27.576511, 29.968956, 23.378016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.757681, 30.242519, 23.419127>,  <27.255173, 30.214560, 23.949347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.757681, 30.242519, 23.419127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.010332, 29.965031, 23.280682>,  <27.161922, 29.798538, 23.197615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.010332, 29.965031, 23.280682>,  <26.757681, 30.242519, 23.419127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.010332, 29.965031, 23.280682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714429, -0.694200, 0.087621,
		-0.301054, 0.191927, -0.934093,
		0.631630, -0.693722, -0.346110,
		27.199821, 29.756914, 23.176849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.387249, 29.747667, 23.035471>,  <26.757681, 30.242519, 23.419127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.387249, 29.747667, 23.035471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.721392, 29.535347, 23.092651>,  <26.921877, 29.407955, 23.126959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.721392, 29.535347, 23.092651>,  <26.387249, 29.747667, 23.035471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.721392, 29.535347, 23.092651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548827, -0.820065, 0.162118,
		0.031176, -0.213881, -0.976362,
		0.835355, -0.530799, 0.142951,
		26.971998, 29.376106, 23.135536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.370293, 29.097279, 22.612780>,  <26.387249, 29.747667, 23.035471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.370293, 29.097279, 22.612780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.616760, 29.048283, 22.923992>,  <26.764641, 29.018885, 23.110720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.616760, 29.048283, 22.923992>,  <26.370293, 29.097279, 22.612780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.616760, 29.048283, 22.923992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536382, -0.788614, 0.300636,
		0.576740, -0.602564, -0.551623,
		0.616171, -0.122492, 0.778030,
		26.801611, 29.011536, 23.157400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.501951, 28.355003, 22.641455>,  <26.370293, 29.097279, 22.612780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.501951, 28.355003, 22.641455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.631081, 28.481632, 22.998234>,  <26.708557, 28.557610, 23.212301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.631081, 28.481632, 22.998234>,  <26.501951, 28.355003, 22.641455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.631081, 28.481632, 22.998234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205763, -0.896388, 0.392619,
		0.923822, -0.310276, -0.224235,
		0.322822, 0.316571, 0.891947,
		26.727928, 28.576603, 23.265818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.615490, 27.675135, 23.014687>,  <26.501951, 28.355003, 22.641455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.615490, 27.675135, 23.014687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.657967, 27.961178, 23.291046>,  <26.683453, 28.132805, 23.456861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.657967, 27.961178, 23.291046>,  <26.615490, 27.675135, 23.014687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.657967, 27.961178, 23.291046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059631, -0.688997, 0.722307,
		0.992556, -0.117902, -0.030523,
		0.106192, 0.715110, 0.690899,
		26.689825, 28.175711, 23.498316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.172358, 27.506498, 23.434013>,  <26.615490, 27.675135, 23.014687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.172358, 27.506498, 23.434013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.945734, 27.741940, 23.664684>,  <26.809759, 27.883204, 23.803087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.945734, 27.741940, 23.664684>,  <27.172358, 27.506498, 23.434013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.945734, 27.741940, 23.664684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193331, -0.585350, 0.787394,
		0.801019, 0.557596, 0.217842,
		-0.566561, 0.588602, 0.576677,
		26.775766, 27.918520, 23.837687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.580311, 27.504574, 24.089748>,  <27.172358, 27.506498, 23.434013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.580311, 27.504574, 24.089748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.201265, 27.616383, 24.151585>,  <26.973839, 27.683468, 24.188686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.201265, 27.616383, 24.151585>,  <27.580311, 27.504574, 24.089748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.201265, 27.616383, 24.151585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106135, -0.732006, 0.672980,
		0.301275, 0.621317, 0.723325,
		-0.947612, 0.279522, 0.154591,
		26.916981, 27.700239, 24.197962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.640976, 27.801193, 24.804754>,  <27.580311, 27.504574, 24.089748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.640976, 27.801193, 24.804754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.275742, 27.675331, 24.701008>,  <27.056601, 27.599813, 24.638760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.275742, 27.675331, 24.701008>,  <27.640976, 27.801193, 24.804754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.275742, 27.675331, 24.701008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038790, -0.700193, 0.712899,
		-0.405923, 0.640876, 0.651541,
		-0.913084, -0.314655, -0.259365,
		27.001816, 27.580935, 24.623198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.254147, 27.740685, 25.409765>,  <27.640976, 27.801193, 24.804754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.254147, 27.740685, 25.409765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.054028, 27.522915, 25.140453>,  <26.933956, 27.392254, 24.978867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.054028, 27.522915, 25.140453>,  <27.254147, 27.740685, 25.409765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.054028, 27.522915, 25.140453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029330, -0.787802, 0.615230,
		-0.865356, 0.288051, 0.410104,
		-0.500298, -0.544422, -0.673281,
		26.903938, 27.359589, 24.938469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.973438, 27.278946, 25.830009>,  <27.254147, 27.740685, 25.409765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.973438, 27.278946, 25.830009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.919651, 27.111000, 25.470982>,  <26.887379, 27.010233, 25.255566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.919651, 27.111000, 25.470982>,  <26.973438, 27.278946, 25.830009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.919651, 27.111000, 25.470982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018909, -0.904544, 0.425961,
		-0.990738, 0.074250, 0.113692,
		-0.134468, -0.419866, -0.897570,
		26.879311, 26.985041, 25.201710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.380600, 26.975912, 25.816198>,  <26.973438, 27.278946, 25.830009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.380600, 26.975912, 25.816198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.614426, 26.783569, 25.554798>,  <26.754721, 26.668163, 25.397959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.614426, 26.783569, 25.554798>,  <26.380600, 26.975912, 25.816198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.614426, 26.783569, 25.554798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059290, -0.828614, 0.556672,
		-0.809174, -0.286668, -0.512892,
		0.584569, -0.480854, -0.653496,
		26.789795, 26.639313, 25.358749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.066032, 26.339769, 25.780832>,  <26.380600, 26.975912, 25.816198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.066032, 26.339769, 25.780832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.416513, 26.247196, 25.611736>,  <26.626802, 26.191652, 25.510279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.416513, 26.247196, 25.611736>,  <26.066032, 26.339769, 25.780832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.416513, 26.247196, 25.611736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000489, -0.877584, 0.479423,
		-0.481945, -0.419865, -0.769053,
		0.876201, -0.231432, -0.422742,
		26.679375, 26.177767, 25.484913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.996965, 25.713814, 25.640356>,  <26.066032, 26.339769, 25.780832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.996965, 25.713814, 25.640356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.392208, 25.775311, 25.641171>,  <26.629354, 25.812208, 25.641659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.392208, 25.775311, 25.641171>,  <25.996965, 25.713814, 25.640356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.392208, 25.775311, 25.641171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115586, -0.751472, 0.649561,
		0.101394, -0.641602, -0.760307,
		0.988109, 0.153742, 0.002035,
		26.688641, 25.821432, 25.641781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.238218, 25.088984, 25.639734>,  <25.996965, 25.713814, 25.640356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.238218, 25.088984, 25.639734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.538675, 25.309372, 25.785179>,  <26.718950, 25.441605, 25.872446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.538675, 25.309372, 25.785179>,  <26.238218, 25.088984, 25.639734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.538675, 25.309372, 25.785179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093953, -0.634430, 0.767249,
		0.653418, -0.542152, -0.528314,
		0.751144, 0.550972, 0.363611,
		26.764019, 25.474663, 25.894262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.751322, 24.567600, 25.703627>,  <26.238218, 25.088984, 25.639734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.751322, 24.567600, 25.703627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.853237, 24.873798, 25.939964>,  <26.914387, 25.057518, 26.081766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.853237, 24.873798, 25.939964>,  <26.751322, 24.567600, 25.703627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.853237, 24.873798, 25.939964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077096, -0.625145, 0.776692,
		0.963919, -0.152341, -0.218296,
		0.254789, 0.765498, 0.590844,
		26.929674, 25.103447, 26.117218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<27.354815, 24.275509, 26.143772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.224474, 24.596619, 26.343521>,  <27.146271, 24.789286, 26.463371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.224474, 24.596619, 26.343521>,  <27.354815, 24.275509, 26.143772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.224474, 24.596619, 26.343521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124193, -0.487277, 0.864371,
		0.937229, 0.343674, 0.059080,
		-0.325850, 0.802776, 0.499372,
		27.126719, 24.837452, 26.493332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.816290, 24.295769, 26.751738>,  <27.354815, 24.275509, 26.143772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.816290, 24.295769, 26.751738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.496206, 24.522865, 26.829029>,  <27.304157, 24.659122, 26.875404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.496206, 24.522865, 26.829029>,  <27.816290, 24.295769, 26.751738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.496206, 24.522865, 26.829029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080757, -0.421267, 0.903334,
		0.594261, 0.707250, 0.382950,
		-0.800208, 0.567742, 0.193228,
		27.256144, 24.693188, 26.886997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.938601, 24.632910, 27.336729>,  <27.816290, 24.295769, 26.751738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.938601, 24.632910, 27.336729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.539320, 24.654594, 27.326519>,  <27.299751, 24.667604, 27.320393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.539320, 24.654594, 27.326519>,  <27.938601, 24.632910, 27.336729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.539320, 24.654594, 27.326519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047576, -0.458078, 0.887638,
		0.036428, 0.887258, 0.459834,
		-0.998203, 0.054212, -0.025525,
		27.239859, 24.670858, 27.318861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.672480, 24.821512, 28.055021>,  <27.938601, 24.632910, 27.336729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.672480, 24.821512, 28.055021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.379955, 24.643936, 27.847908>,  <27.204441, 24.537390, 27.723640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.379955, 24.643936, 27.847908>,  <27.672480, 24.821512, 28.055021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.379955, 24.643936, 27.847908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209081, -0.576697, 0.789751,
		-0.649207, 0.685812, 0.328925,
		-0.731311, -0.443940, -0.517785,
		27.160563, 24.510754, 27.692572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.090609, 24.887344, 28.467955>,  <27.672480, 24.821512, 28.055021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.090609, 24.887344, 28.467955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.007959, 24.589874, 28.213631>,  <26.958370, 24.411392, 28.061037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.007959, 24.589874, 28.213631>,  <27.090609, 24.887344, 28.467955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.007959, 24.589874, 28.213631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178157, -0.610372, 0.771820,
		-0.962064, 0.272749, -0.006374,
		-0.206623, -0.743676, -0.635809,
		26.945972, 24.366772, 28.022888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.503201, 24.497118, 28.736727>,  <27.090609, 24.887344, 28.467955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.503201, 24.497118, 28.736727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.657295, 24.248539, 28.463848>,  <26.749752, 24.099392, 28.300121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.657295, 24.248539, 28.463848>,  <26.503201, 24.497118, 28.736727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.657295, 24.248539, 28.463848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085095, -0.760028, 0.644295,
		-0.918887, -0.190153, -0.345671,
		0.385234, -0.621449, -0.682199,
		26.772865, 24.062105, 28.259188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.000416, 24.036644, 28.651226>,  <26.503201, 24.497118, 28.736727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.000416, 24.036644, 28.651226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.353613, 23.877525, 28.551559>,  <26.565531, 23.782055, 28.491760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.353613, 23.877525, 28.551559>,  <26.000416, 24.036644, 28.651226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.353613, 23.877525, 28.551559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183224, -0.780823, 0.597280,
		-0.432150, -0.481741, -0.762347,
		0.882993, -0.397795, -0.249166,
		26.618511, 23.758186, 28.476810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.902405, 23.405878, 28.726748>,  <26.000416, 24.036644, 28.651226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.902405, 23.405878, 28.726748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.296991, 23.375725, 28.668499>,  <26.533743, 23.357632, 28.633551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.296991, 23.375725, 28.668499>,  <25.902405, 23.405878, 28.726748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.296991, 23.375725, 28.668499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007104, -0.867578, 0.497251,
		-0.163821, -0.491555, -0.855299,
		0.986464, -0.075384, -0.145619,
		26.592930, 23.353109, 28.624813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.062239, 22.785147, 28.348129>,  <25.902405, 23.405878, 28.726748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.062239, 22.785147, 28.348129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.375910, 22.874352, 28.579762>,  <26.564112, 22.927874, 28.718740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.375910, 22.874352, 28.579762>,  <26.062239, 22.785147, 28.348129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.375910, 22.874352, 28.579762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050710, -0.907039, 0.417982,
		0.618462, -0.357137, -0.699970,
		0.784176, 0.223011, 0.579080,
		26.611162, 22.941256, 28.753485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.336540, 22.075321, 28.499243>,  <26.062239, 22.785147, 28.348129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.336540, 22.075321, 28.499243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.506140, 22.338703, 28.747971>,  <26.607901, 22.496733, 28.897207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.506140, 22.338703, 28.747971>,  <26.336540, 22.075321, 28.499243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.506140, 22.338703, 28.747971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135272, -0.724932, 0.675407,
		0.895503, -0.202257, -0.396442,
		0.424000, 0.658457, 0.621819,
		26.633339, 22.536240, 28.934517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.962009, 21.753096, 28.721739>,  <26.336540, 22.075321, 28.499243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.962009, 21.753096, 28.721739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.868992, 22.023052, 29.001865>,  <26.813181, 22.185026, 29.169941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.868992, 22.023052, 29.001865>,  <26.962009, 21.753096, 28.721739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.868992, 22.023052, 29.001865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077473, -0.704917, 0.705046,
		0.969495, 0.218212, 0.111640,
		-0.232546, 0.674890, 0.700319,
		26.799229, 22.225519, 29.211962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.334951, 21.607325, 29.382370>,  <26.962009, 21.753096, 28.721739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.334951, 21.607325, 29.382370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.036959, 21.837635, 29.517117>,  <26.858162, 21.975822, 29.597965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.036959, 21.837635, 29.517117>,  <27.334951, 21.607325, 29.382370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.036959, 21.837635, 29.517117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092389, -0.589176, 0.802705,
		0.660655, 0.566879, 0.492122,
		-0.744983, 0.575778, 0.336869,
		26.813463, 22.010368, 29.618177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.514576, 21.678728, 30.104271>,  <27.334951, 21.607325, 29.382370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.514576, 21.678728, 30.104271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.125601, 21.760170, 30.058823>,  <26.892216, 21.809036, 30.031553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.125601, 21.760170, 30.058823>,  <27.514576, 21.678728, 30.104271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.125601, 21.760170, 30.058823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211973, -0.569022, 0.794532,
		0.097120, 0.796717, 0.596498,
		-0.972438, 0.203606, -0.113619,
		26.833870, 21.821253, 30.024736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.375086, 21.820049, 30.773760>,  <27.514576, 21.678728, 30.104271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.375086, 21.820049, 30.773760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.025818, 21.748734, 30.592304>,  <26.816257, 21.705944, 30.483431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.025818, 21.748734, 30.592304>,  <27.375086, 21.820049, 30.773760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.025818, 21.748734, 30.592304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228097, -0.673034, 0.703560,
		-0.430753, 0.717800, 0.547005,
		-0.873169, -0.178290, -0.453639,
		26.763866, 21.695246, 30.456213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.883944, 21.842537, 31.241356>,  <27.375086, 21.820049, 30.773760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.883944, 21.842537, 31.241356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.685368, 21.640697, 30.958817>,  <26.566221, 21.519594, 30.789293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.685368, 21.640697, 30.958817>,  <26.883944, 21.842537, 31.241356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.685368, 21.640697, 30.958817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240177, -0.702093, 0.670359,
		-0.834183, 0.502442, 0.227355,
		-0.496440, -0.504597, -0.706349,
		26.536436, 21.489319, 30.746912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.232441, 21.830286, 31.486280>,  <26.883944, 21.842537, 31.241356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.232441, 21.830286, 31.486280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.261890, 21.534882, 31.218197>,  <26.279560, 21.357639, 31.057346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.261890, 21.534882, 31.218197>,  <26.232441, 21.830286, 31.486280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.261890, 21.534882, 31.218197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186878, -0.670345, 0.718133,
		-0.979621, 0.072376, -0.187364,
		0.073623, -0.738512, -0.670209,
		26.283978, 21.313328, 31.017134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.769030, 21.334682, 31.630817>,  <26.232441, 21.830286, 31.486280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.769030, 21.334682, 31.630817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.027462, 21.114223, 31.419605>,  <26.182522, 20.981949, 31.292877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.027462, 21.114223, 31.419605>,  <25.769030, 21.334682, 31.630817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.027462, 21.114223, 31.419605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163716, -0.775767, 0.609412,
		-0.745500, -0.307287, -0.591444,
		0.646087, -0.551145, -0.528026,
		26.221287, 20.948879, 31.261196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.361164, 20.725176, 31.530230>,  <25.769030, 21.334682, 31.630817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.361164, 20.725176, 31.530230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.753620, 20.678970, 31.468231>,  <25.989094, 20.651247, 31.431032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.753620, 20.678970, 31.468231>,  <25.361164, 20.725176, 31.530230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.753620, 20.678970, 31.468231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014819, -0.754508, 0.656123,
		-0.192737, -0.646045, -0.738565,
		0.981139, -0.115515, -0.154995,
		26.047962, 20.644316, 31.421732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.430317, 19.967398, 31.503485>,  <25.361164, 20.725176, 31.530230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.430317, 19.967398, 31.503485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.786266, 20.130089, 31.586140>,  <25.999836, 20.227703, 31.635733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.786266, 20.130089, 31.586140>,  <25.430317, 19.967398, 31.503485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.786266, 20.130089, 31.586140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124747, -0.652620, 0.747345,
		0.438821, -0.639265, -0.631487,
		0.889873, 0.406727, 0.206637,
		26.053228, 20.252108, 31.648130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.836811, 19.432055, 31.617300>,  <25.430317, 19.967398, 31.503485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.836811, 19.432055, 31.617300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.049082, 19.723541, 31.790436>,  <26.176445, 19.898434, 31.894318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.049082, 19.723541, 31.790436>,  <25.836811, 19.432055, 31.617300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.049082, 19.723541, 31.790436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214279, -0.609442, 0.763325,
		0.820040, -0.312331, -0.479566,
		0.530678, 0.728718, 0.432842,
		26.208284, 19.942156, 31.920288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.408255, 19.094568, 31.915216>,  <25.836811, 19.432055, 31.617300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.408255, 19.094568, 31.915216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.391808, 19.440823, 32.114811>,  <26.381939, 19.648575, 32.234566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.391808, 19.440823, 32.114811>,  <26.408255, 19.094568, 31.915216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.391808, 19.440823, 32.114811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134602, -0.490057, 0.861235,
		0.990046, 0.102575, -0.096367,
		-0.041116, 0.865634, 0.498986,
		26.379473, 19.700512, 32.264507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.998753, 19.069876, 32.395798>,  <26.408255, 19.094568, 31.915216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.998753, 19.069876, 32.395798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.730885, 19.318081, 32.559017>,  <26.570164, 19.467005, 32.656948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.730885, 19.318081, 32.559017>,  <26.998753, 19.069876, 32.395798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.730885, 19.318081, 32.559017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156319, -0.419356, 0.894262,
		0.726019, 0.662648, 0.183833,
		-0.669672, 0.620515, 0.408045,
		26.529984, 19.504236, 32.681431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.251591, 19.458244, 32.993187>,  <26.998753, 19.069876, 32.395798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.251591, 19.458244, 32.993187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.857874, 19.400711, 33.034142>,  <26.621643, 19.366192, 33.058712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.857874, 19.400711, 33.034142>,  <27.251591, 19.458244, 32.993187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.857874, 19.400711, 33.034142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157537, -0.453735, 0.877101,
		-0.079699, 0.879452, 0.469267,
		-0.984292, -0.143831, 0.102384,
		26.562586, 19.357561, 33.064857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.221739, 19.604982, 33.671257>,  <27.251591, 19.458244, 32.993187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.221739, 19.604982, 33.671257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.885189, 19.410507, 33.576843>,  <26.683260, 19.293821, 33.520195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.885189, 19.410507, 33.576843>,  <27.221739, 19.604982, 33.671257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.885189, 19.410507, 33.576843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137079, -0.614427, 0.776974,
		-0.522783, 0.621369, 0.583608,
		-0.841372, -0.486189, -0.236035,
		26.632778, 19.264650, 33.506031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.776674, 19.394569, 33.930782>,  <27.221739, 19.604982, 33.671257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.776674, 19.394569, 33.930782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.135458, 19.472828, 34.089371>,  <28.350729, 19.519783, 34.184525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.135458, 19.472828, 34.089371>,  <27.776674, 19.394569, 33.930782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.135458, 19.472828, 34.089371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184997, 0.648388, -0.738491,
		-0.401549, 0.735742, 0.545383,
		0.896959, 0.195646, 0.396470,
		28.404545, 19.531521, 34.208313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.801394, 20.084099, 34.135578>,  <27.776674, 19.394569, 33.930782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.801394, 20.084099, 34.135578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.179609, 19.967361, 34.077911>,  <28.406538, 19.897320, 34.043312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.179609, 19.967361, 34.077911>,  <27.801394, 20.084099, 34.135578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.179609, 19.967361, 34.077911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100385, 0.682755, -0.723718,
		0.309644, 0.669831, 0.674868,
		0.945539, -0.291841, -0.144170,
		28.463270, 19.879808, 34.034660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.148102, 20.711206, 34.260166>,  <27.801394, 20.084099, 34.135578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.148102, 20.711206, 34.260166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.356285, 20.456486, 34.032619>,  <28.481195, 20.303654, 33.896091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.356285, 20.456486, 34.032619>,  <28.148102, 20.711206, 34.260166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.356285, 20.456486, 34.032619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102660, 0.708037, -0.698673,
		0.847694, 0.305230, 0.433877,
		0.520457, -0.636803, -0.568864,
		28.512423, 20.265446, 33.861961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.769464, 21.078737, 34.099052>,  <28.148102, 20.711206, 34.260166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.769464, 21.078737, 34.099052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.739674, 20.807823, 33.806274>,  <28.721798, 20.645275, 33.630608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.739674, 20.807823, 33.806274>,  <28.769464, 21.078737, 34.099052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.739674, 20.807823, 33.806274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190531, 0.710793, -0.677105,
		0.978852, -0.189888, 0.076105,
		-0.074479, -0.677286, -0.731941,
		28.717329, 20.604637, 33.586693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346346, 21.201950, 33.695206>,  <28.769464, 21.078737, 34.099052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.346346, 21.201950, 33.695206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.072901, 21.012180, 33.473362>,  <28.908834, 20.898319, 33.340256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.072901, 21.012180, 33.473362>,  <29.346346, 21.201950, 33.695206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.072901, 21.012180, 33.473362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182122, 0.624981, -0.759099,
		0.706756, -0.619937, -0.340843,
		-0.683613, -0.474423, -0.554613,
		28.867817, 20.869854, 33.306976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504301, 21.467218, 33.054279>,  <29.346346, 21.201950, 33.695206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504301, 21.467218, 33.054279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.186609, 21.244572, 32.956806>,  <28.995995, 21.110983, 32.898323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.186609, 21.244572, 32.956806>,  <29.504301, 21.467218, 33.054279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186609, 21.244572, 32.956806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108556, 0.524572, -0.844416,
		0.597847, -0.644204, -0.477053,
		-0.794226, -0.556619, -0.243682,
		28.948341, 21.077587, 32.883701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.643953, 21.030863, 32.514420>,  <29.504301, 21.467218, 33.054279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.643953, 21.030863, 32.514420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.250727, 21.104118, 32.512024>,  <29.014790, 21.148071, 32.510586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.250727, 21.104118, 32.512024>,  <29.643953, 21.030863, 32.514420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.250727, 21.104118, 32.512024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114222, 0.586930, -0.801541,
		-0.143280, -0.788653, -0.597911,
		-0.983069, 0.183139, -0.005986,
		28.955807, 21.159060, 32.510227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.456833, 20.947620, 31.864506>,  <29.643953, 21.030863, 32.514420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.456833, 20.947620, 31.864506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.144796, 21.145477, 32.017757>,  <28.957575, 21.264191, 32.109707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.144796, 21.145477, 32.017757>,  <29.456833, 20.947620, 31.864506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.144796, 21.145477, 32.017757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005871, 0.618114, -0.786066,
		-0.625638, -0.610954, -0.485089,
		-0.780091, 0.494641, 0.383129,
		28.910769, 21.293869, 32.132694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979774, 21.053959, 31.288504>,  <29.456833, 20.947620, 31.864506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979774, 21.053959, 31.288504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.857502, 21.332047, 31.548729>,  <28.784138, 21.498899, 31.704865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.857502, 21.332047, 31.548729>,  <28.979774, 21.053959, 31.288504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.857502, 21.332047, 31.548729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007675, 0.681446, -0.731828,
		-0.952102, -0.228700, -0.202971,
		-0.305683, 0.695217, 0.650562,
		28.765797, 21.540611, 31.743898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.550982, 21.403482, 30.941208>,  <28.979774, 21.053959, 31.288504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.550982, 21.403482, 30.941208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.609760, 21.651405, 31.249557>,  <28.645027, 21.800159, 31.434566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.609760, 21.651405, 31.249557>,  <28.550982, 21.403482, 30.941208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609760, 21.651405, 31.249557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088073, 0.784437, -0.613923,
		-0.985216, 0.022320, 0.169857,
		0.146945, 0.619806, 0.770874,
		28.653843, 21.837347, 31.480820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.119402, 21.956320, 30.774954>,  <28.550982, 21.403482, 30.941208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.119402, 21.956320, 30.774954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.381771, 22.088123, 31.046597>,  <28.539192, 22.167206, 31.209581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.381771, 22.088123, 31.046597>,  <28.119402, 21.956320, 30.774954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381771, 22.088123, 31.046597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044695, 0.881153, -0.470714,
		-0.753503, 0.339105, 0.563242,
		0.655924, 0.329511, 0.679107,
		28.578548, 22.186977, 31.250328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.901028, 22.718096, 30.928761>,  <28.119402, 21.956320, 30.774954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.901028, 22.718096, 30.928761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.288111, 22.645603, 30.998844>,  <28.520361, 22.602108, 31.040894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.288111, 22.645603, 30.998844>,  <27.901028, 22.718096, 30.928761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.288111, 22.645603, 30.998844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248111, 0.807621, -0.534966,
		-0.044549, 0.561162, 0.826507,
		0.967707, -0.181233, 0.175209,
		28.578423, 22.591232, 31.051407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.063236, 23.321920, 30.989338>,  <27.901028, 22.718096, 30.928761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.063236, 23.321920, 30.989338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.403748, 23.128681, 30.907421>,  <28.608055, 23.012737, 30.858271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.403748, 23.128681, 30.907421>,  <28.063236, 23.321920, 30.989338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.403748, 23.128681, 30.907421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320752, 0.787988, -0.525540,
		0.415263, 0.381692, 0.825752,
		0.851278, -0.483100, -0.204794,
		28.659130, 22.983751, 30.845984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.617277, 23.865932, 31.037447>,  <28.063236, 23.321920, 30.989338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.617277, 23.865932, 31.037447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.754877, 23.570763, 30.805195>,  <28.837437, 23.393660, 30.665844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.754877, 23.570763, 30.805195>,  <28.617277, 23.865932, 31.037447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.754877, 23.570763, 30.805195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431427, 0.673446, -0.600284,
		0.833987, -0.044001, 0.550027,
		0.344000, -0.737926, -0.580628,
		28.858078, 23.349384, 30.631006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177076, 24.187950, 30.699379>,  <28.617277, 23.865932, 31.037447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.177076, 24.187950, 30.699379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.177269, 23.831577, 30.517727>,  <29.177383, 23.617754, 30.408735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.177269, 23.831577, 30.517727>,  <29.177076, 24.187950, 30.699379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177269, 23.831577, 30.517727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408068, 0.414775, -0.813291,
		0.912951, -0.184927, 0.363761,
		0.000480, -0.890934, -0.454132,
		29.177412, 23.564297, 30.381487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.872967, 24.188290, 30.364300>,  <29.177076, 24.187950, 30.699379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.872967, 24.188290, 30.364300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.614771, 23.937027, 30.190514>,  <29.459854, 23.786268, 30.086243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.614771, 23.937027, 30.190514>,  <29.872967, 24.188290, 30.364300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614771, 23.937027, 30.190514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105924, 0.489721, -0.865421,
		0.756388, -0.604640, -0.249573,
		-0.645490, -0.628159, -0.434465,
		29.421124, 23.748579, 30.060175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272585, 23.694046, 29.861450>,  <29.872967, 24.188290, 30.364300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.272585, 23.694046, 29.861450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.885990, 23.742901, 29.771130>,  <29.654034, 23.772215, 29.716936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.885990, 23.742901, 29.771130>,  <30.272585, 23.694046, 29.861450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.885990, 23.742901, 29.771130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252638, 0.296305, -0.921074,
		-0.045592, -0.947252, -0.317231,
		-0.966486, 0.122139, -0.225803,
		29.596045, 23.779543, 29.703388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.313919, 23.454622, 29.247469>,  <30.272585, 23.694046, 29.861450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.313919, 23.454622, 29.247469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.983978, 23.679386, 29.272392>,  <29.786015, 23.814243, 29.287346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.983978, 23.679386, 29.272392>,  <30.313919, 23.454622, 29.247469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.983978, 23.679386, 29.272392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179193, 0.364378, -0.913848,
		-0.536202, -0.742623, -0.401248,
		-0.824850, 0.561908, 0.062307,
		29.736523, 23.847958, 29.291084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902966, 23.289751, 28.675030>,  <30.313919, 23.454622, 29.247469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902966, 23.289751, 28.675030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.764889, 23.645733, 28.794247>,  <29.682043, 23.859322, 28.865776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.764889, 23.645733, 28.794247>,  <29.902966, 23.289751, 28.675030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.764889, 23.645733, 28.794247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181267, 0.374799, -0.909213,
		-0.920862, -0.259826, -0.290695,
		-0.345190, 0.889953, 0.298040,
		29.661331, 23.912718, 28.883659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.630264, 23.475245, 28.086330>,  <29.902966, 23.289751, 28.675030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.630264, 23.475245, 28.086330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.669373, 23.824055, 28.278168>,  <29.692837, 24.033340, 28.393270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.669373, 23.824055, 28.278168>,  <29.630264, 23.475245, 28.086330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.669373, 23.824055, 28.278168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033019, 0.484478, -0.874180,
		-0.994661, 0.069633, 0.076161,
		0.097770, 0.872028, 0.479592,
		29.698704, 24.085663, 28.422045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<28.449196, 35.241684, 18.093826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.507801, 34.901310, 18.295593>,  <28.542965, 34.697086, 18.416655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.507801, 34.901310, 18.295593>,  <28.449196, 35.241684, 18.093826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.507801, 34.901310, 18.295593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756766, 0.231973, 0.611141,
		-0.637055, -0.471267, -0.609974,
		0.146513, -0.850938, 0.504419,
		28.551756, 34.646030, 18.446918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.773687, 34.981270, 18.131485>,  <28.449196, 35.241684, 18.093826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.773687, 34.981270, 18.131485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.999958, 34.841450, 18.430237>,  <28.135719, 34.757557, 18.609488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.999958, 34.841450, 18.430237>,  <27.773687, 34.981270, 18.131485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.999958, 34.841450, 18.430237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676109, 0.321937, 0.662747,
		-0.472110, -0.879870, -0.054222,
		0.565675, -0.349549, 0.746878,
		28.169661, 34.736584, 18.654301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.360258, 34.501408, 18.432013>,  <27.773687, 34.981270, 18.131485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.360258, 34.501408, 18.432013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.612404, 34.645191, 18.707237>,  <27.763691, 34.731461, 18.872372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.612404, 34.645191, 18.707237>,  <27.360258, 34.501408, 18.432013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.612404, 34.645191, 18.707237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776110, 0.272255, 0.568797,
		0.017128, -0.892563, 0.450597,
		0.630364, 0.359455, 0.688064,
		27.801514, 34.753029, 18.913656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.211714, 34.150536, 18.951424>,  <27.360258, 34.501408, 18.432013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.211714, 34.150536, 18.951424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.429241, 34.440430, 19.120667>,  <27.559757, 34.614365, 19.222212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.429241, 34.440430, 19.120667>,  <27.211714, 34.150536, 18.951424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.429241, 34.440430, 19.120667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588117, -0.030531, 0.808199,
		0.598648, -0.688352, 0.409626,
		0.543819, 0.724734, 0.423108,
		27.592386, 34.657848, 19.247599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.296690, 33.929691, 19.683697>,  <27.211714, 34.150536, 18.951424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.296690, 33.929691, 19.683697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.372847, 34.321644, 19.659752>,  <27.418541, 34.556816, 19.645386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.372847, 34.321644, 19.659752>,  <27.296690, 33.929691, 19.683697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.372847, 34.321644, 19.659752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659250, 0.172798, 0.731800,
		0.727421, -0.099863, 0.678886,
		0.190390, 0.979882, -0.059863,
		27.429964, 34.615608, 19.641792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.326412, 34.179214, 20.336887>,  <27.296690, 33.929691, 19.683697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.326412, 34.179214, 20.336887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.229166, 34.505363, 20.126720>,  <27.170818, 34.701054, 20.000622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.229166, 34.505363, 20.126720>,  <27.326412, 34.179214, 20.336887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.229166, 34.505363, 20.126720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689353, 0.235839, 0.684962,
		0.682413, 0.528721, 0.504744,
		-0.243115, 0.815374, -0.525415,
		27.156231, 34.749977, 19.969095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.422272, 34.801552, 20.832619>,  <27.326412, 34.179214, 20.336887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.422272, 34.801552, 20.832619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.163574, 34.884010, 20.538891>,  <27.008356, 34.933483, 20.362654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.163574, 34.884010, 20.538891>,  <27.422272, 34.801552, 20.832619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.163574, 34.884010, 20.538891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668275, 0.310875, 0.675844,
		0.367604, 0.927826, -0.063295,
		-0.646743, 0.206144, -0.734321,
		26.969551, 34.945854, 20.318594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.081583, 35.286068, 21.150419>,  <27.422272, 34.801552, 20.832619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.081583, 35.286068, 21.150419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.856701, 35.200966, 20.830753>,  <26.721771, 35.149906, 20.638954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.856701, 35.200966, 20.830753>,  <27.081583, 35.286068, 21.150419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.856701, 35.200966, 20.830753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814766, 0.308084, 0.491163,
		0.141713, 0.927265, -0.346549,
		-0.562204, -0.212752, -0.799164,
		26.688040, 35.137138, 20.591003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.551119, 35.816418, 21.137054>,  <27.081583, 35.286068, 21.150419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.551119, 35.816418, 21.137054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.380493, 35.529224, 20.917042>,  <26.278118, 35.356907, 20.785034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.380493, 35.529224, 20.917042>,  <26.551119, 35.816418, 21.137054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.380493, 35.529224, 20.917042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857237, 0.127014, 0.499012,
		-0.288422, 0.684370, -0.669665,
		-0.426566, -0.717987, -0.550033,
		26.252523, 35.313828, 20.752031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.735994, 36.040916, 20.972635>,  <26.551119, 35.816418, 21.137054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.735994, 36.040916, 20.972635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.761377, 35.647991, 20.902168>,  <25.776608, 35.412235, 20.859888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.761377, 35.647991, 20.902168>,  <25.735994, 36.040916, 20.972635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.761377, 35.647991, 20.902168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920098, -0.125954, 0.370885,
		-0.386514, 0.138554, -0.911817,
		0.063460, -0.982312, -0.176166,
		25.780415, 35.353298, 20.849318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.238060, 35.869118, 20.521837>,  <25.735994, 36.040916, 20.972635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.238060, 35.869118, 20.521837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.304569, 35.532513, 20.727444>,  <25.344475, 35.330551, 20.850807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.304569, 35.532513, 20.727444>,  <25.238060, 35.869118, 20.521837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.304569, 35.532513, 20.727444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940577, 0.021171, 0.338920,
		-0.296086, -0.539827, -0.787984,
		0.166275, -0.841510, 0.514018,
		25.354452, 35.280060, 20.881649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.730078, 35.470211, 20.386932>,  <25.238060, 35.869118, 20.521837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.730078, 35.470211, 20.386932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.857824, 35.315826, 20.733120>,  <24.934473, 35.223194, 20.940832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.857824, 35.315826, 20.733120>,  <24.730078, 35.470211, 20.386932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.857824, 35.315826, 20.733120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933566, 0.028622, 0.357260,
		-0.162661, -0.922070, -0.351182,
		0.319367, -0.385964, 0.865469,
		24.953634, 35.200039, 20.992762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.302647, 35.027931, 20.495302>,  <24.730078, 35.470211, 20.386932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.302647, 35.027931, 20.495302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.451178, 35.086594, 20.862041>,  <24.540297, 35.121792, 21.082085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.451178, 35.086594, 20.862041>,  <24.302647, 35.027931, 20.495302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.451178, 35.086594, 20.862041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928092, 0.088016, 0.361800,
		-0.027636, -0.985264, 0.168796,
		0.371325, 0.146659, 0.916847,
		24.562574, 35.130592, 21.137096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.859543, 34.669174, 20.939741>,  <24.302647, 35.027931, 20.495302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.859543, 34.669174, 20.939741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.021843, 34.946697, 21.177734>,  <24.119223, 35.113209, 21.320530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.021843, 34.946697, 21.177734>,  <23.859543, 34.669174, 20.939741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.021843, 34.946697, 21.177734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831773, 0.010475, 0.555017,
		0.378840, -0.720088, 0.581337,
		0.405751, 0.693803, 0.594982,
		24.143568, 35.154839, 21.356230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.725996, 34.360123, 21.655748>,  <23.859543, 34.669174, 20.939741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.725996, 34.360123, 21.655748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.832804, 34.737030, 21.736584>,  <23.896889, 34.963173, 21.785084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.832804, 34.737030, 21.736584>,  <23.725996, 34.360123, 21.655748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.832804, 34.737030, 21.736584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655751, 0.023989, 0.754596,
		0.706181, -0.334011, 0.624296,
		0.267020, 0.942264, 0.202088,
		23.912910, 35.019711, 21.797211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.850834, 34.420891, 22.320747>,  <23.725996, 34.360123, 21.655748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.850834, 34.420891, 22.320747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.750887, 34.785267, 22.189438>,  <23.690920, 35.003891, 22.110653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.750887, 34.785267, 22.189438>,  <23.850834, 34.420891, 22.320747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.750887, 34.785267, 22.189438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673416, 0.080125, 0.734908,
		0.695757, 0.404693, 0.593418,
		-0.249865, 0.910935, -0.328274,
		23.675928, 35.058548, 22.090956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.838053, 34.817356, 22.904394>,  <23.850834, 34.420891, 22.320747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.838053, 34.817356, 22.904394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.613861, 35.017086, 22.640110>,  <23.479345, 35.136925, 22.481539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.613861, 35.017086, 22.640110>,  <23.838053, 34.817356, 22.904394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.613861, 35.017086, 22.640110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743395, 0.048282, 0.667107,
		0.365002, 0.865070, 0.344133,
		-0.560479, 0.499323, -0.660712,
		23.445717, 35.166882, 22.441896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.550835, 35.373646, 23.303366>,  <23.838053, 34.817356, 22.904394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.550835, 35.373646, 23.303366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.318718, 35.319756, 22.982090>,  <23.179447, 35.287422, 22.789326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.318718, 35.319756, 22.982090>,  <23.550835, 35.373646, 23.303366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.318718, 35.319756, 22.982090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814352, 0.084357, 0.574208,
		-0.009604, 0.987286, -0.158662,
		-0.580292, -0.134721, -0.803188,
		23.144630, 35.279339, 22.741133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.963284, 35.749577, 23.428072>,  <23.550835, 35.373646, 23.303366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.963284, 35.749577, 23.428072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.824438, 35.531590, 23.122780>,  <22.741131, 35.400795, 22.939606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.824438, 35.531590, 23.122780>,  <22.963284, 35.749577, 23.428072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.824438, 35.531590, 23.122780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866118, -0.125818, 0.483745,
		-0.359656, 0.828961, -0.428336,
		-0.347114, -0.544971, -0.763229,
		22.720304, 35.368099, 22.893810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.367941, 36.050175, 23.279791>,  <22.963284, 35.749577, 23.428072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.367941, 36.050175, 23.279791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.333570, 35.679443, 23.133583>,  <22.312948, 35.457005, 23.045858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.333570, 35.679443, 23.133583>,  <22.367941, 36.050175, 23.279791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.333570, 35.679443, 23.133583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897640, -0.087160, 0.432024,
		-0.432271, 0.365228, -0.824470,
		-0.085926, -0.926829, -0.365520,
		22.307793, 35.401394, 23.023928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.652872, 36.112385, 22.943453>,  <22.367941, 36.050175, 23.279791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.652872, 36.112385, 22.943453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.755976, 35.726223, 22.959255>,  <21.817839, 35.494526, 22.968737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.755976, 35.726223, 22.959255>,  <21.652872, 36.112385, 22.943453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.755976, 35.726223, 22.959255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848506, -0.206613, 0.487184,
		-0.462166, -0.159095, -0.872406,
		0.257759, -0.965401, 0.039504,
		21.833303, 35.436604, 22.971107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.396936, 36.649227, 22.492373>,  <21.652872, 36.112385, 22.943453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.396936, 36.649227, 22.492373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.096039, 36.700909, 22.233936>,  <20.915501, 36.731918, 22.078875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.096039, 36.700909, 22.233936>,  <21.396936, 36.649227, 22.492373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.096039, 36.700909, 22.233936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585940, -0.317279, -0.745660,
		-0.301330, -0.939490, 0.162969,
		-0.752246, 0.129200, -0.646090,
		20.870365, 36.739670, 22.040110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.243900, 35.972618, 22.086933>,  <21.396936, 36.649227, 22.492373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.243900, 35.972618, 22.086933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.101616, 36.281963, 21.877026>,  <21.016245, 36.467571, 21.751081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.101616, 36.281963, 21.877026>,  <21.243900, 35.972618, 22.086933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.101616, 36.281963, 21.877026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462168, -0.342478, -0.817992,
		-0.812323, -0.533502, -0.235598,
		-0.355713, 0.773359, -0.524770,
		20.994902, 36.513969, 21.719595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.034365, 35.594810, 21.484806>,  <21.243900, 35.972618, 22.086933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.034365, 35.594810, 21.484806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.057997, 35.975677, 21.364883>,  <21.072176, 36.204197, 21.292929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.057997, 35.975677, 21.364883>,  <21.034365, 35.594810, 21.484806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.057997, 35.975677, 21.364883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372430, -0.299672, -0.878347,
		-0.926178, -0.059763, -0.372321,
		0.059082, 0.952168, -0.299807,
		21.075722, 36.261330, 21.274940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.785263, 35.561020, 20.807125>,  <21.034365, 35.594810, 21.484806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.785263, 35.561020, 20.807125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.008842, 35.890972, 20.840961>,  <21.142990, 36.088943, 20.861263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.008842, 35.890972, 20.840961>,  <20.785263, 35.561020, 20.807125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.008842, 35.890972, 20.840961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456659, -0.221069, -0.861738,
		-0.692126, 0.520297, -0.500253,
		0.558949, 0.824876, 0.084591,
		21.176527, 36.138435, 20.866339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.762463, 35.863945, 20.173704>,  <20.785263, 35.561020, 20.807125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.762463, 35.863945, 20.173704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.076168, 36.054787, 20.332352>,  <21.264391, 36.169292, 20.427540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.076168, 36.054787, 20.332352>,  <20.762463, 35.863945, 20.173704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.076168, 36.054787, 20.332352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475576, -0.051741, -0.878152,
		-0.398445, 0.877324, -0.267476,
		0.784263, 0.477100, 0.396619,
		21.311447, 36.197918, 20.451338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.029572, 36.151257, 19.628733>,  <20.762463, 35.863945, 20.173704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.029572, 36.151257, 19.628733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.334265, 36.197048, 19.883812>,  <21.517080, 36.224522, 20.036860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.334265, 36.197048, 19.883812>,  <21.029572, 36.151257, 19.628733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.334265, 36.197048, 19.883812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618750, 0.163329, -0.768422,
		-0.192123, 0.979907, 0.053578,
		0.761733, 0.114481, 0.637697,
		21.562784, 36.231392, 20.075121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.420261, 36.725735, 19.428726>,  <21.029572, 36.151257, 19.628733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.420261, 36.725735, 19.428726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.661589, 36.501045, 19.655167>,  <21.806385, 36.366230, 19.791031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.661589, 36.501045, 19.655167>,  <21.420261, 36.725735, 19.428726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.661589, 36.501045, 19.655167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577078, -0.182444, -0.796049,
		0.550445, 0.806955, 0.214089,
		0.603317, -0.561728, 0.566102,
		21.842583, 36.332527, 19.824997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.096972, 36.991543, 19.371452>,  <21.420261, 36.725735, 19.428726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.096972, 36.991543, 19.371452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.141029, 36.606644, 19.471004>,  <22.167463, 36.375702, 19.530737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.141029, 36.606644, 19.471004>,  <22.096972, 36.991543, 19.371452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.141029, 36.606644, 19.471004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676027, -0.111033, -0.728464,
		0.728599, 0.248485, 0.638278,
		0.110142, -0.962251, 0.248881,
		22.174072, 36.317970, 19.545670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.762585, 36.935883, 19.428951>,  <22.096972, 36.991543, 19.371452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.762585, 36.935883, 19.428951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.655079, 36.550972, 19.412064>,  <22.590574, 36.320026, 19.401932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.655079, 36.550972, 19.412064>,  <22.762585, 36.935883, 19.428951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.655079, 36.550972, 19.412064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741556, -0.178748, -0.646641,
		0.614703, -0.205102, 0.761626,
		-0.268767, -0.962280, -0.042218,
		22.574450, 36.262287, 19.399399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.404980, 36.633129, 19.366653>,  <22.762585, 36.935883, 19.428951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.404980, 36.633129, 19.366653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.144316, 36.351460, 19.253891>,  <22.987917, 36.182457, 19.186234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.144316, 36.351460, 19.253891>,  <23.404980, 36.633129, 19.366653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.144316, 36.351460, 19.253891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667942, -0.356630, -0.653199,
		0.359433, -0.613961, 0.702752,
		-0.651661, -0.704179, -0.281905,
		22.948818, 36.140205, 19.169319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.712725, 36.093834, 19.663029>,  <23.404980, 36.633129, 19.366653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.712725, 36.093834, 19.663029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.466345, 35.974174, 19.371517>,  <23.318518, 35.902378, 19.196609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.466345, 35.974174, 19.371517>,  <23.712725, 36.093834, 19.663029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.466345, 35.974174, 19.371517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775323, -0.394097, -0.493520,
		-0.139575, -0.869022, 0.474679,
		-0.615949, -0.299146, -0.728778,
		23.281561, 35.884430, 19.152884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.846933, 35.384323, 19.601051>,  <23.712725, 36.093834, 19.663029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.846933, 35.384323, 19.601051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.674902, 35.509476, 19.262314>,  <23.571684, 35.584568, 19.059072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.674902, 35.509476, 19.262314>,  <23.846933, 35.384323, 19.601051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.674902, 35.509476, 19.262314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753557, -0.392168, -0.527594,
		-0.497178, -0.865049, -0.067110,
		-0.430077, 0.312879, -0.846841,
		23.545879, 35.603340, 19.008261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.839525, 34.799706, 19.129301>,  <23.846933, 35.384323, 19.601051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.839525, 34.799706, 19.129301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.839184, 35.136040, 18.912785>,  <23.838980, 35.337841, 18.782875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.839184, 35.136040, 18.912785>,  <23.839525, 34.799706, 19.129301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.839184, 35.136040, 18.912785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800031, -0.324177, -0.504836,
		-0.599958, -0.433478, -0.672418,
		-0.000853, 0.840836, -0.541289,
		23.838928, 35.388290, 18.750399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.827946, 34.586227, 18.460447>,  <23.839525, 34.799706, 19.129301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.827946, 34.586227, 18.460447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.954983, 34.965019, 18.440956>,  <24.031204, 35.192295, 18.429262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.954983, 34.965019, 18.440956>,  <23.827946, 34.586227, 18.460447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.954983, 34.965019, 18.440956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759802, -0.284890, -0.584413,
		-0.567307, 0.148581, -0.809992,
		0.317591, 0.946975, -0.048728,
		24.050261, 35.249111, 18.426338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.250671, 34.495178, 17.865488>,  <23.827946, 34.586227, 18.460447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.250671, 34.495178, 17.865488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.339594, 34.858829, 18.006374>,  <24.392948, 35.077023, 18.090906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.339594, 34.858829, 18.006374>,  <24.250671, 34.495178, 17.865488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.339594, 34.858829, 18.006374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881450, -0.033016, -0.471123,
		-0.416684, 0.415196, -0.808694,
		0.222308, 0.909132, 0.352217,
		24.406286, 35.131569, 18.112040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.345406, 34.982838, 17.282957>,  <24.250671, 34.495178, 17.865488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.345406, 34.982838, 17.282957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.564312, 35.133141, 17.582104>,  <24.695656, 35.223324, 17.761591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.564312, 35.133141, 17.582104>,  <24.345406, 34.982838, 17.282957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.564312, 35.133141, 17.582104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790617, 0.061106, -0.609254,
		-0.274632, 0.924700, -0.263641,
		0.547267, 0.375760, 0.747866,
		24.728493, 35.245869, 17.806463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.820364, 35.447762, 16.999216>,  <24.345406, 34.982838, 17.282957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.820364, 35.447762, 16.999216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.991301, 35.393250, 17.356720>,  <25.093863, 35.360542, 17.571222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.991301, 35.393250, 17.356720>,  <24.820364, 35.447762, 16.999216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.991301, 35.393250, 17.356720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903953, 0.081594, -0.419775,
		-0.015717, 0.987304, 0.158062,
		0.427343, -0.136283, 0.893759,
		25.119503, 35.352364, 17.624847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.333092, 35.953323, 17.028318>,  <24.820364, 35.447762, 16.999216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.333092, 35.953323, 17.028318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.427473, 35.658070, 17.281139>,  <25.484102, 35.480919, 17.432833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.427473, 35.658070, 17.281139>,  <25.333092, 35.953323, 17.028318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.427473, 35.658070, 17.281139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934999, -0.004773, -0.354618,
		0.264771, 0.674642, 0.689024,
		0.235952, -0.738130, 0.632053,
		25.498259, 35.436630, 17.470755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.840584, 36.204975, 17.472195>,  <25.333092, 35.953323, 17.028318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.840584, 36.204975, 17.472195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.888687, 35.808907, 17.500774>,  <25.917549, 35.571266, 17.517923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.888687, 35.808907, 17.500774>,  <25.840584, 36.204975, 17.472195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.888687, 35.808907, 17.500774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979140, 0.106429, -0.173080,
		0.163774, 0.090774, 0.982313,
		0.120257, -0.990168, 0.071450,
		25.924765, 35.511856, 17.522209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.372286, 36.215260, 17.898886>,  <25.840584, 36.204975, 17.472195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.372286, 36.215260, 17.898886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.356398, 35.869579, 17.698254>,  <26.346865, 35.662170, 17.577873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.356398, 35.869579, 17.698254>,  <26.372286, 36.215260, 17.898886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.356398, 35.869579, 17.698254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910948, 0.174957, -0.373582,
		0.410604, -0.471754, 0.780290,
		-0.039722, -0.864198, -0.501581,
		26.344481, 35.610321, 17.547779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.033648, 35.897530, 17.971155>,  <26.372286, 36.215260, 17.898886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.033648, 35.897530, 17.971155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.873640, 35.715111, 17.653160>,  <26.777636, 35.605659, 17.462364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.873640, 35.715111, 17.653160>,  <27.033648, 35.897530, 17.971155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.873640, 35.715111, 17.653160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855453, 0.125509, -0.502443,
		0.328917, -0.881059, 0.339924,
		-0.400018, -0.456051, -0.794986,
		26.753635, 35.578297, 17.414663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<26.132923, 26.642200, 24.176857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.378052, 26.859867, 24.406059>,  <26.525129, 26.990467, 24.543581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.378052, 26.859867, 24.406059>,  <26.132923, 26.642200, 24.176857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.378052, 26.859867, 24.406059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282442, 0.828053, -0.484309,
		-0.738023, 0.134953, 0.661143,
		0.612820, 0.544166, 0.573005,
		26.561897, 27.023117, 24.577961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.693718, 27.221214, 24.418907>,  <26.132923, 26.642200, 24.176857>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.693718, 27.221214, 24.418907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.083652, 27.309235, 24.433159>,  <26.317614, 27.362047, 24.441710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.083652, 27.309235, 24.433159>,  <25.693718, 27.221214, 24.418907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.083652, 27.309235, 24.433159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188472, 0.898962, -0.395407,
		-0.119037, 0.378743, 0.917815,
		0.974838, 0.220050, 0.035627,
		26.376104, 27.375250, 24.443848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.656378, 27.988096, 24.391655>,  <25.693718, 27.221214, 24.418907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.656378, 27.988096, 24.391655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.035715, 27.888966, 24.312431>,  <26.263317, 27.829487, 24.264896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.035715, 27.888966, 24.312431>,  <25.656378, 27.988096, 24.391655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.035715, 27.888966, 24.312431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123445, 0.863373, -0.489233,
		0.292243, 0.439512, 0.849367,
		0.948343, -0.247825, -0.198059,
		26.320219, 27.814619, 24.253014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.955368, 28.630812, 24.474337>,  <25.656378, 27.988096, 24.391655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.955368, 28.630812, 24.474337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.208773, 28.394287, 24.274731>,  <26.360815, 28.252373, 24.154966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.208773, 28.394287, 24.274731>,  <25.955368, 28.630812, 24.474337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.208773, 28.394287, 24.274731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403126, 0.802737, -0.439434,
		0.660420, 0.077221, 0.746915,
		0.633510, -0.591312, -0.499014,
		26.398825, 28.216894, 24.125027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.608110, 28.928503, 24.559317>,  <25.955368, 28.630812, 24.474337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.608110, 28.928503, 24.559317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.634218, 28.694885, 24.235680>,  <26.649883, 28.554714, 24.041498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.634218, 28.694885, 24.235680>,  <26.608110, 28.928503, 24.559317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.634218, 28.694885, 24.235680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455414, 0.738888, -0.496630,
		0.887884, -0.336059, 0.314207,
		0.065267, -0.584045, -0.809093,
		26.653799, 28.519672, 23.992952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.301107, 28.764158, 24.423689>,  <26.608110, 28.928503, 24.559317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.301107, 28.764158, 24.423689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.111507, 28.717152, 24.074631>,  <26.997747, 28.688948, 23.865196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.111507, 28.717152, 24.074631>,  <27.301107, 28.764158, 24.423689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111507, 28.717152, 24.074631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616824, 0.662932, -0.424321,
		0.628371, -0.739398, -0.241743,
		-0.474002, -0.117518, -0.872646,
		26.969307, 28.681896, 23.812838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.837212, 28.682467, 23.903805>,  <27.301107, 28.764158, 24.423689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.837212, 28.682467, 23.903805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.514685, 28.793312, 23.694782>,  <27.321169, 28.859819, 23.569368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.514685, 28.793312, 23.694782>,  <27.837212, 28.682467, 23.903805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.514685, 28.793312, 23.694782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545919, 0.688695, -0.477149,
		0.227656, -0.670006, -0.706587,
		-0.806316, 0.277113, -0.522555,
		27.272791, 28.876446, 23.538015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.103451, 28.769167, 23.210028>,  <27.837212, 28.682467, 23.903805>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.103451, 28.769167, 23.210028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.758734, 28.971928, 23.217674>,  <27.551903, 29.093584, 23.222261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.758734, 28.971928, 23.217674>,  <28.103451, 28.769167, 23.210028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.758734, 28.971928, 23.217674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421153, 0.736000, -0.530032,
		-0.282743, -0.448726, -0.847762,
		-0.861793, 0.506900, 0.019117,
		27.500196, 29.123999, 23.223410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.157120, 29.106794, 22.639145>,  <28.103451, 28.769167, 23.210028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.157120, 29.106794, 22.639145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851728, 29.297508, 22.813396>,  <27.668493, 29.411938, 22.917948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851728, 29.297508, 22.813396>,  <28.157120, 29.106794, 22.639145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.851728, 29.297508, 22.813396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381539, 0.877216, -0.291411,
		-0.521081, -0.056277, -0.851650,
		-0.763481, 0.476787, 0.435628,
		27.622684, 29.440544, 22.944084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.938622, 29.631794, 22.169798>,  <28.157120, 29.106794, 22.639145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.938622, 29.631794, 22.169798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.816843, 29.738010, 22.535706>,  <27.743776, 29.801741, 22.755249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.816843, 29.738010, 22.535706>,  <27.938622, 29.631794, 22.169798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.816843, 29.738010, 22.535706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215076, 0.954719, -0.205557,
		-0.927930, 0.134163, -0.347773,
		-0.304448, 0.265540, 0.914768,
		27.725508, 29.817673, 22.810137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.433893, 30.200184, 22.154327>,  <27.938622, 29.631794, 22.169798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.433893, 30.200184, 22.154327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.540009, 30.244549, 22.537434>,  <27.603678, 30.271168, 22.767298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.540009, 30.244549, 22.537434>,  <27.433893, 30.200184, 22.154327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.540009, 30.244549, 22.537434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246292, 0.952610, -0.178535,
		-0.932181, 0.283254, 0.225402,
		0.265290, 0.110912, 0.957768,
		27.619596, 30.277822, 22.824764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.143013, 30.844309, 22.438219>,  <27.433893, 30.200184, 22.154327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.143013, 30.844309, 22.438219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.450102, 30.776379, 22.685368>,  <27.634356, 30.735620, 22.833656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.450102, 30.776379, 22.685368>,  <27.143013, 30.844309, 22.438219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.450102, 30.776379, 22.685368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228186, 0.973487, -0.015962,
		-0.598778, 0.153243, 0.786118,
		0.767722, -0.169824, 0.617870,
		27.680418, 30.725431, 22.870729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.143972, 31.342018, 23.080570>,  <27.143013, 30.844309, 22.438219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.143972, 31.342018, 23.080570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.515318, 31.251141, 22.962910>,  <27.738125, 31.196613, 22.892313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.515318, 31.251141, 22.962910>,  <27.143972, 31.342018, 23.080570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.515318, 31.251141, 22.962910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186332, 0.969277, -0.160567,
		0.321592, 0.094255, 0.942175,
		0.928363, -0.227195, -0.294150,
		27.793827, 31.182981, 22.874664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.472048, 31.307556, 23.180180>,  <27.143972, 31.342018, 23.080570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.472048, 31.307556, 23.180180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.536810, 31.212147, 22.797161>,  <26.575668, 31.154902, 22.567350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.536810, 31.212147, 22.797161>,  <26.472048, 31.307556, 23.180180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.536810, 31.212147, 22.797161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185509, -0.960405, 0.207869,
		-0.969213, 0.143978, -0.199743,
		0.161905, -0.238523, -0.957546,
		26.585382, 31.140591, 22.509897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.790821, 31.472507, 22.832441>,  <26.472048, 31.307556, 23.180180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.790821, 31.472507, 22.832441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.469318, 31.697163, 22.910965>,  <25.276417, 31.831955, 22.958078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.469318, 31.697163, 22.910965>,  <25.790821, 31.472507, 22.832441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.469318, 31.697163, 22.910965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388033, 0.244735, 0.888558,
		0.451002, 0.790360, -0.414641,
		-0.803758, 0.561636, 0.196310,
		25.228191, 31.865654, 22.969858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.164579, 32.041203, 23.094608>,  <25.790821, 31.472507, 22.832441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.164579, 32.041203, 23.094608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.783432, 32.066319, 23.213333>,  <25.554743, 32.081390, 23.284569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.783432, 32.066319, 23.213333>,  <26.164579, 32.041203, 23.094608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.783432, 32.066319, 23.213333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303249, 0.226062, 0.925708,
		-0.008969, 0.972087, -0.234449,
		-0.952869, 0.062794, 0.296812,
		25.497572, 32.085155, 23.302376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.014542, 32.680119, 23.559341>,  <26.164579, 32.041203, 23.094608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.014542, 32.680119, 23.559341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.739342, 32.402794, 23.645115>,  <25.574223, 32.236401, 23.696579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.739342, 32.402794, 23.645115>,  <26.014542, 32.680119, 23.559341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.739342, 32.402794, 23.645115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288182, 0.010175, 0.957522,
		-0.666040, 0.720569, 0.192798,
		-0.687999, -0.693308, 0.214432,
		25.532942, 32.194801, 23.709444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.748138, 32.908470, 24.160784>,  <26.014542, 32.680119, 23.559341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.748138, 32.908470, 24.160784> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.686600, 32.513321, 24.152493>,  <25.649677, 32.276230, 24.147518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.686600, 32.513321, 24.152493>,  <25.748138, 32.908470, 24.160784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.686600, 32.513321, 24.152493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412733, -0.083309, 0.907034,
		-0.897765, 0.130988, 0.420546,
		-0.153846, -0.987877, -0.020729,
		25.640446, 32.216957, 24.146275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.441725, 32.749004, 24.832798>,  <25.748138, 32.908470, 24.160784>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.441725, 32.749004, 24.832798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.607996, 32.412476, 24.694592>,  <25.707760, 32.210556, 24.611668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.607996, 32.412476, 24.694592>,  <25.441725, 32.749004, 24.832798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.607996, 32.412476, 24.694592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331667, -0.213514, 0.918917,
		-0.846881, -0.496571, 0.190286,
		0.415679, -0.841325, -0.345517,
		25.732700, 32.160076, 24.590937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.378355, 32.218803, 25.391464>,  <25.441725, 32.749004, 24.832798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.378355, 32.218803, 25.391464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.684750, 32.118988, 25.154484>,  <25.868586, 32.059097, 25.012295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.684750, 32.118988, 25.154484>,  <25.378355, 32.218803, 25.391464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.684750, 32.118988, 25.154484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519287, -0.303088, 0.799048,
		-0.378960, -0.919711, -0.102578,
		0.765983, -0.249540, -0.592452,
		25.914545, 32.044128, 24.976748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.673817, 31.701849, 25.782858>,  <25.378355, 32.218803, 25.391464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.673817, 31.701849, 25.782858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.926228, 31.751198, 25.476501>,  <26.077673, 31.780807, 25.292688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.926228, 31.751198, 25.476501>,  <25.673817, 31.701849, 25.782858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.926228, 31.751198, 25.476501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762145, -0.282761, 0.582392,
		-0.144712, -0.951223, -0.272458,
		0.631025, 0.123374, -0.765889,
		26.115536, 31.788210, 25.246735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.970509, 31.023378, 25.593096>,  <25.673817, 31.701849, 25.782858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.970509, 31.023378, 25.593096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.213120, 31.331406, 25.513981>,  <26.358686, 31.516222, 25.466511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.213120, 31.331406, 25.513981>,  <25.970509, 31.023378, 25.593096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.213120, 31.331406, 25.513981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712980, -0.416721, 0.563917,
		0.351832, -0.483049, -0.801796,
		0.606525, 0.770069, -0.197788,
		26.395077, 31.562426, 25.454645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.477655, 30.632685, 25.560944>,  <25.970509, 31.023378, 25.593096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.477655, 30.632685, 25.560944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.588739, 31.012829, 25.617081>,  <26.655390, 31.240915, 25.650763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.588739, 31.012829, 25.617081>,  <26.477655, 30.632685, 25.560944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.588739, 31.012829, 25.617081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696954, -0.299856, 0.651415,
		0.661160, -0.083092, -0.745629,
		0.277709, 0.950359, 0.140341,
		26.672052, 31.297937, 25.659184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.197176, 30.629930, 25.615395>,  <26.477655, 30.632685, 25.560944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.197176, 30.629930, 25.615395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.110209, 30.985561, 25.776527>,  <27.058029, 31.198940, 25.873207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.110209, 30.985561, 25.776527>,  <27.197176, 30.629930, 25.615395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.110209, 30.985561, 25.776527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575226, -0.216716, 0.788764,
		0.788571, 0.403212, -0.464301,
		-0.217417, 0.889075, 0.402834,
		27.044983, 31.252283, 25.897377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.822451, 30.976757, 25.815723>,  <27.197176, 30.629930, 25.615395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.822451, 30.976757, 25.815723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.548073, 31.122662, 26.067574>,  <27.383446, 31.210205, 26.218683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.548073, 31.122662, 26.067574>,  <27.822451, 30.976757, 25.815723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.548073, 31.122662, 26.067574> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588280, -0.231267, 0.774882,
		0.428259, 0.901922, -0.055946,
		-0.685945, 0.364762, 0.629626,
		27.342289, 31.232090, 26.256462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.319061, 31.347803, 26.419075>,  <27.822451, 30.976757, 25.815723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.319061, 31.347803, 26.419075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.939045, 31.307076, 26.537094>,  <27.711035, 31.282639, 26.607906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.939045, 31.307076, 26.537094>,  <28.319061, 31.347803, 26.419075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.939045, 31.307076, 26.537094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310647, -0.400303, 0.862123,
		0.030327, 0.910709, 0.411935,
		-0.950041, -0.101821, 0.295049,
		27.654032, 31.276529, 26.625608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.361010, 31.622881, 27.170094>,  <28.319061, 31.347803, 26.419075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.361010, 31.622881, 27.170094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.036385, 31.400223, 27.099087>,  <27.841610, 31.266628, 27.056482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.036385, 31.400223, 27.099087>,  <28.361010, 31.622881, 27.170094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.036385, 31.400223, 27.099087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170925, -0.516734, 0.838911,
		-0.558704, 0.650487, 0.514506,
		-0.811563, -0.556645, -0.177517,
		27.792915, 31.233229, 27.045832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.102833, 31.515104, 27.840034>,  <28.361010, 31.622881, 27.170094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.102833, 31.515104, 27.840034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.935801, 31.240505, 27.601925>,  <27.835581, 31.075747, 27.459059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.935801, 31.240505, 27.601925>,  <28.102833, 31.515104, 27.840034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.935801, 31.240505, 27.601925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057308, -0.673719, 0.736762,
		-0.906831, 0.273544, 0.320674,
		-0.417581, -0.686496, -0.595272,
		27.810526, 31.034557, 27.423344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.065140, 31.734434, 28.405279>,  <28.102833, 31.515104, 27.840034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.065140, 31.734434, 28.405279> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433475, 31.770660, 28.556992>,  <28.654476, 31.792397, 28.648020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433475, 31.770660, 28.556992>,  <28.065140, 31.734434, 28.405279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.433475, 31.770660, 28.556992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264754, 0.568900, -0.778625,
		-0.286292, 0.817404, 0.499887,
		0.920838, 0.090567, 0.379283,
		28.709726, 31.797831, 28.670776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.143017, 32.474403, 28.396801>,  <28.065140, 31.734434, 28.405279>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.143017, 32.474403, 28.396801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.488348, 32.272861, 28.385513>,  <28.695547, 32.151936, 28.378740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.488348, 32.272861, 28.385513>,  <28.143017, 32.474403, 28.396801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.488348, 32.272861, 28.385513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316554, 0.584254, -0.747289,
		0.393011, 0.636223, 0.663900,
		0.863328, -0.503853, -0.028219,
		28.747347, 32.121704, 28.377048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.653801, 33.015141, 28.295866>,  <28.143017, 32.474403, 28.396801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.653801, 33.015141, 28.295866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871807, 32.696442, 28.191441>,  <29.002611, 32.505222, 28.128786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871807, 32.696442, 28.191441>,  <28.653801, 33.015141, 28.295866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.871807, 32.696442, 28.191441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499039, 0.558484, -0.662613,
		0.673734, 0.230854, 0.701990,
		0.545017, -0.796745, -0.261064,
		29.035313, 32.457417, 28.113121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.312962, 33.228931, 28.273413>,  <28.653801, 33.015141, 28.295866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.312962, 33.228931, 28.273413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.323803, 32.919159, 28.020580>,  <29.330307, 32.733295, 27.868881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.323803, 32.919159, 28.020580>,  <29.312962, 33.228931, 28.273413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.323803, 32.919159, 28.020580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510380, 0.554406, -0.657378,
		0.859522, -0.304785, 0.410278,
		0.027102, -0.774429, -0.632081,
		29.331934, 32.686829, 27.830956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.878578, 33.311977, 27.991152>,  <29.312962, 33.228931, 28.273413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.878578, 33.311977, 27.991152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739302, 33.034779, 27.738640>,  <29.655737, 32.868458, 27.587133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739302, 33.034779, 27.738640>,  <29.878578, 33.311977, 27.991152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739302, 33.034779, 27.738640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717358, 0.236530, -0.655325,
		0.603457, -0.681031, 0.414773,
		-0.348190, -0.693002, -0.631279,
		29.634844, 32.826878, 27.549255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392857, 32.959248, 27.731358>,  <29.878578, 33.311977, 27.991152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392857, 32.959248, 27.731358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.120825, 32.858021, 27.456127>,  <29.957605, 32.797287, 27.290989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.120825, 32.858021, 27.456127>,  <30.392857, 32.959248, 27.731358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.120825, 32.858021, 27.456127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708119, 0.016346, -0.705904,
		0.189888, -0.967311, 0.168084,
		-0.680081, -0.253066, -0.688075,
		29.916800, 32.782101, 27.249704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.774761, 32.603374, 27.284750>,  <30.392857, 32.959248, 27.731358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.774761, 32.603374, 27.284750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453857, 32.728298, 27.081242>,  <30.261316, 32.803253, 26.959137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453857, 32.728298, 27.081242>,  <30.774761, 32.603374, 27.284750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453857, 32.728298, 27.081242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581123, 0.213447, -0.785325,
		-0.136670, -0.925691, -0.352730,
		-0.802258, 0.312310, -0.508769,
		30.213181, 32.821991, 26.928612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.786242, 32.226704, 26.754341>,  <30.774761, 32.603374, 27.284750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.786242, 32.226704, 26.754341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.594282, 32.562763, 26.653275>,  <30.479107, 32.764400, 26.592634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.594282, 32.562763, 26.653275>,  <30.786242, 32.226704, 26.754341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.594282, 32.562763, 26.653275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654247, 0.150835, -0.741087,
		-0.584516, -0.520952, -0.622053,
		-0.479898, 0.840154, -0.252666,
		30.450314, 32.814808, 26.577475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730795, 32.181561, 26.085075>,  <30.786242, 32.226704, 26.754341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730795, 32.181561, 26.085075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700041, 32.573177, 26.160507>,  <30.681589, 32.808147, 26.205767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700041, 32.573177, 26.160507>,  <30.730795, 32.181561, 26.085075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700041, 32.573177, 26.160507> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592058, 0.197012, -0.781443,
		-0.802220, 0.051570, -0.594797,
		-0.076884, 0.979044, 0.188579,
		30.676975, 32.866890, 26.217081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.886560, 32.490440, 25.403036>,  <30.730795, 32.181561, 26.085075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.886560, 32.490440, 25.403036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913033, 32.786808, 25.670368>,  <30.928917, 32.964626, 25.830767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913033, 32.786808, 25.670368>,  <30.886560, 32.490440, 25.403036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.913033, 32.786808, 25.670368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741358, 0.411787, -0.529924,
		-0.667838, 0.530543, -0.522031,
		0.066182, 0.740915, 0.668330,
		30.932886, 33.009083, 25.870867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623022, 33.082096, 25.120901>,  <30.886560, 32.490440, 25.403036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.623022, 33.082096, 25.120901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.891685, 33.189716, 25.397015>,  <31.052883, 33.254288, 25.562683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.891685, 33.189716, 25.397015>,  <30.623022, 33.082096, 25.120901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891685, 33.189716, 25.397015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634506, 0.272100, -0.723439,
		-0.382465, 0.923891, 0.012046,
		0.671657, 0.269047, 0.690283,
		31.093182, 33.270432, 25.604099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957668, 33.565033, 24.848772>,  <30.623022, 33.082096, 25.120901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957668, 33.565033, 24.848772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233004, 33.506378, 25.132938>,  <31.398205, 33.471184, 25.303438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233004, 33.506378, 25.132938>,  <30.957668, 33.565033, 24.848772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.233004, 33.506378, 25.132938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684775, 0.454471, -0.569683,
		-0.239324, 0.878609, 0.413244,
		0.688336, -0.146641, 0.710415,
		31.439505, 33.462387, 25.346064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<26.964972, 30.646391, 31.723551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.320812, 30.464470, 31.706726>,  <27.534317, 30.355318, 31.696630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.320812, 30.464470, 31.706726>,  <26.964972, 30.646391, 31.723551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.320812, 30.464470, 31.706726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398624, 0.818059, -0.414582,
		0.222961, 0.352045, 0.909039,
		0.889599, -0.454801, -0.042062,
		27.587692, 30.328030, 31.694107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.436863, 31.119118, 31.899183>,  <26.964972, 30.646391, 31.723551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.436863, 31.119118, 31.899183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.656309, 30.844662, 31.708088>,  <27.787977, 30.679989, 31.593431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.656309, 30.844662, 31.708088>,  <27.436863, 31.119118, 31.899183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.656309, 30.844662, 31.708088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469957, 0.725666, -0.502542,
		0.691492, 0.051186, 0.720568,
		0.548615, -0.686140, -0.477737,
		27.820894, 30.638819, 31.564766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.124504, 31.317034, 31.923347>,  <27.436863, 31.119118, 31.899183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.124504, 31.317034, 31.923347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.126799, 31.057442, 31.619034>,  <28.128176, 30.901688, 31.436445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.126799, 31.057442, 31.619034>,  <28.124504, 31.317034, 31.923347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.126799, 31.057442, 31.619034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467098, 0.674437, -0.571800,
		0.884187, -0.352081, 0.307005,
		0.005736, -0.648979, -0.760785,
		28.128519, 30.862747, 31.390799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.724352, 31.435665, 31.570250>,  <28.124504, 31.317034, 31.923347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.724352, 31.435665, 31.570250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.496859, 31.244942, 31.302162>,  <28.360363, 31.130507, 31.141310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.496859, 31.244942, 31.302162>,  <28.724352, 31.435665, 31.570250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.496859, 31.244942, 31.302162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446498, 0.505359, -0.738411,
		0.690784, -0.719211, -0.074519,
		-0.568733, -0.476811, -0.670220,
		28.326239, 31.101898, 31.101095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.150200, 31.132856, 31.047951>,  <28.724352, 31.435665, 31.570250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.150200, 31.132856, 31.047951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.815653, 31.150257, 30.829376>,  <28.614923, 31.160698, 30.698231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.815653, 31.150257, 30.829376>,  <29.150200, 31.132856, 31.047951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.815653, 31.150257, 30.829376> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543780, 0.191701, -0.817040,
		0.069210, -0.980489, -0.183987,
		-0.836369, 0.043501, -0.546438,
		28.564743, 31.163307, 30.665445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298527, 30.907831, 30.344080>,  <29.150200, 31.132856, 31.047951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298527, 30.907831, 30.344080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.959082, 31.116531, 30.309139>,  <28.755415, 31.241753, 30.288176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.959082, 31.116531, 30.309139>,  <29.298527, 30.907831, 30.344080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.959082, 31.116531, 30.309139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225394, 0.207219, -0.951976,
		-0.478594, -0.827548, -0.293449,
		-0.848613, 0.521752, -0.087351,
		28.704498, 31.273056, 30.282934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.874422, 30.553064, 29.910601>,  <29.298527, 30.907831, 30.344080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.874422, 30.553064, 29.910601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.772417, 30.939533, 29.895203>,  <28.711214, 31.171413, 29.885963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.772417, 30.939533, 29.895203>,  <28.874422, 30.553064, 29.910601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772417, 30.939533, 29.895203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308181, 0.043480, -0.950334,
		-0.916511, -0.254210, -0.308844,
		-0.255013, 0.966171, -0.038493,
		28.695913, 31.229385, 29.883656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.664223, 30.650270, 29.246414>,  <28.874422, 30.553064, 29.910601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.664223, 30.650270, 29.246414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.690161, 31.036728, 29.346302>,  <28.705723, 31.268602, 29.406235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.690161, 31.036728, 29.346302>,  <28.664223, 30.650270, 29.246414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.690161, 31.036728, 29.346302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123261, 0.240573, -0.962773,
		-0.990253, 0.093212, -0.103488,
		0.064846, 0.966145, 0.249717,
		28.709614, 31.326571, 29.421217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217487, 31.116161, 28.793453>,  <28.664223, 30.650270, 29.246414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217487, 31.116161, 28.793453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.519472, 31.343193, 28.924839>,  <28.700663, 31.479412, 29.003670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.519472, 31.343193, 28.924839>,  <28.217487, 31.116161, 28.793453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.519472, 31.343193, 28.924839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119202, 0.373762, -0.919833,
		-0.644845, 0.733592, 0.214520,
		0.754961, 0.567578, 0.328464,
		28.745960, 31.513466, 29.023378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.674618, 31.114153, 28.301451>,  <28.217487, 31.116161, 28.793453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.674618, 31.114153, 28.301451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.734428, 30.868103, 27.991802>,  <27.770315, 30.720474, 27.806013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.734428, 30.868103, 27.991802>,  <27.674618, 31.114153, 28.301451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.734428, 30.868103, 27.991802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071767, -0.774108, 0.628973,
		-0.986150, -0.149603, -0.071602,
		0.149524, -0.615123, -0.774123,
		27.779285, 30.683567, 27.759565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.184130, 30.468777, 28.422977>,  <27.674618, 31.114153, 28.301451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.184130, 30.468777, 28.422977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.485395, 30.367504, 28.180115>,  <27.666155, 30.306740, 28.034397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.485395, 30.367504, 28.180115>,  <27.184130, 30.468777, 28.422977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.485395, 30.367504, 28.180115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108095, -0.862792, 0.493868,
		-0.648889, -0.437595, -0.622458,
		0.753165, -0.253181, -0.607158,
		27.711346, 30.291550, 27.997967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044899, 29.738592, 28.264404>,  <27.184130, 30.468777, 28.422977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044899, 29.738592, 28.264404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.411564, 29.765358, 28.106796>,  <27.631563, 29.781418, 28.012232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.411564, 29.765358, 28.106796>,  <27.044899, 29.738592, 28.264404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.411564, 29.765358, 28.106796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181772, -0.947817, 0.261921,
		-0.355931, -0.311715, -0.880992,
		0.916664, 0.066914, -0.394019,
		27.686563, 29.785433, 27.988590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.182854, 29.201595, 27.804928>,  <27.044899, 29.738592, 28.264404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.182854, 29.201595, 27.804928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.528913, 29.331902, 27.957447>,  <27.736549, 29.410086, 28.048960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.528913, 29.331902, 27.957447>,  <27.182854, 29.201595, 27.804928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.528913, 29.331902, 27.957447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221725, -0.930417, 0.291825,
		0.449835, -0.167928, -0.877182,
		0.865151, 0.325767, 0.381301,
		27.788458, 29.429632, 28.071836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712622, 28.703972, 27.640999>,  <27.182854, 29.201595, 27.804928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712622, 28.703972, 27.640999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.870998, 28.871754, 27.967751>,  <27.966024, 28.972424, 28.163801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.870998, 28.871754, 27.967751>,  <27.712622, 28.703972, 27.640999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.870998, 28.871754, 27.967751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243231, -0.905709, 0.347175,
		0.885478, 0.061229, -0.460630,
		0.395940, 0.419455, 0.816878,
		27.989780, 28.997591, 28.212814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.318846, 28.305916, 27.801611>,  <27.712622, 28.703972, 27.640999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.318846, 28.305916, 27.801611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.258810, 28.480526, 28.156445>,  <28.222790, 28.585293, 28.369345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.258810, 28.480526, 28.156445>,  <28.318846, 28.305916, 27.801611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.258810, 28.480526, 28.156445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106228, -0.884933, 0.453441,
		0.982949, 0.162289, 0.086447,
		-0.150088, 0.436526, 0.887084,
		28.213783, 28.611485, 28.422569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.723158, 27.908340, 28.273094>,  <28.318846, 28.305916, 27.801611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.723158, 27.908340, 28.273094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.479614, 28.114098, 28.514652>,  <28.333488, 28.237553, 28.659588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.479614, 28.114098, 28.514652>,  <28.723158, 27.908340, 28.273094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.479614, 28.114098, 28.514652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009451, -0.756509, 0.653916,
		0.793221, 0.403851, 0.455747,
		-0.608860, 0.514392, 0.603895,
		28.296957, 28.268415, 28.695822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.923855, 27.864523, 28.991457>,  <28.723158, 27.908340, 28.273094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.923855, 27.864523, 28.991457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.539251, 27.971046, 29.018532>,  <28.308489, 28.034960, 29.034777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.539251, 27.971046, 29.018532>,  <28.923855, 27.864523, 28.991457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.539251, 27.971046, 29.018532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145079, -0.701225, 0.698022,
		0.233353, 0.661334, 0.712870,
		-0.961509, 0.266308, 0.067687,
		28.250799, 28.050940, 29.038837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.786781, 27.942823, 29.741491>,  <28.923855, 27.864523, 28.991457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.786781, 27.942823, 29.741491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.440783, 27.877579, 29.551682>,  <28.233183, 27.838432, 29.437796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.440783, 27.877579, 29.551682>,  <28.786781, 27.942823, 29.741491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.440783, 27.877579, 29.551682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219832, -0.726914, 0.650592,
		-0.451057, 0.667076, 0.592923,
		-0.864998, -0.163111, -0.474524,
		28.181284, 27.828646, 29.409325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.339083, 27.857067, 30.261456>,  <28.786781, 27.942823, 29.741491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.339083, 27.857067, 30.261456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.180593, 27.699608, 29.929661>,  <28.085501, 27.605131, 29.730585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.180593, 27.699608, 29.929661>,  <28.339083, 27.857067, 30.261456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.180593, 27.699608, 29.929661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285340, -0.805899, 0.518756,
		-0.872690, 0.442229, 0.206992,
		-0.396224, -0.393650, -0.829486,
		28.061726, 27.581512, 29.680815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712294, 27.519426, 30.620949>,  <28.339083, 27.857067, 30.261456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712294, 27.519426, 30.620949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.683489, 27.344856, 30.262207>,  <27.666206, 27.240114, 30.046963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.683489, 27.344856, 30.262207>,  <27.712294, 27.519426, 30.620949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.683489, 27.344856, 30.262207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320563, -0.841356, 0.435155,
		-0.944486, 0.318834, -0.079315,
		-0.072011, -0.436423, -0.896855,
		27.661886, 27.213930, 29.993151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.110260, 27.245564, 30.721148>,  <27.712294, 27.519426, 30.620949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.110260, 27.245564, 30.721148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.281807, 27.056923, 30.412949>,  <27.384735, 26.943739, 30.228029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.281807, 27.056923, 30.412949>,  <27.110260, 27.245564, 30.721148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.281807, 27.056923, 30.412949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241839, -0.881721, 0.405070,
		-0.870393, 0.012613, -0.492196,
		0.428870, -0.471603, -0.770494,
		27.410467, 26.915442, 30.181801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.561403, 26.752718, 30.302874>,  <27.110260, 27.245564, 30.721148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.561403, 26.752718, 30.302874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.933846, 26.619247, 30.243950>,  <27.157310, 26.539165, 30.208595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.933846, 26.619247, 30.243950>,  <26.561403, 26.752718, 30.302874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.933846, 26.619247, 30.243950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294061, -0.925661, 0.238075,
		-0.215799, -0.178355, -0.960011,
		0.931106, -0.333678, -0.147310,
		27.213177, 26.519144, 30.199757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.382822, 26.144707, 30.069946>,  <26.561403, 26.752718, 30.302874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.382822, 26.144707, 30.069946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.769360, 26.124706, 30.170887>,  <27.001282, 26.112705, 30.231451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.769360, 26.124706, 30.170887>,  <26.382822, 26.144707, 30.069946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.769360, 26.124706, 30.170887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113181, -0.963528, 0.242495,
		0.231024, -0.262895, -0.936757,
		0.966342, -0.050001, 0.252353,
		27.059263, 26.109705, 30.246593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.588345, 24.097103, 31.325109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.259193, 24.324318, 31.319317>,  <31.061703, 24.460646, 31.315842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.259193, 24.324318, 31.319317>,  <31.588345, 24.097103, 31.325109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259193, 24.324318, 31.319317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327400, 0.453147, -0.829137,
		-0.464418, -0.687018, -0.558859,
		-0.822877, 0.568036, -0.014480,
		31.012331, 24.494728, 31.314972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406395, 24.010775, 30.687256>,  <31.588345, 24.097103, 31.325109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.406395, 24.010775, 30.687256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.272377, 24.357246, 30.835567>,  <31.191967, 24.565130, 30.924555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.272377, 24.357246, 30.835567>,  <31.406395, 24.010775, 30.687256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272377, 24.357246, 30.835567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378909, 0.484169, -0.788675,
		-0.862655, -0.123749, -0.490421,
		-0.335044, 0.866179, 0.370781,
		31.171864, 24.617100, 30.946802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084280, 24.362143, 30.113571>,  <31.406395, 24.010775, 30.687256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084280, 24.362143, 30.113571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.103758, 24.645355, 30.395370>,  <31.115444, 24.815283, 30.564449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.103758, 24.645355, 30.395370>,  <31.084280, 24.362143, 30.113571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.103758, 24.645355, 30.395370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234199, 0.677577, -0.697166,
		-0.970968, 0.198943, -0.132825,
		0.048697, 0.708033, 0.704498,
		31.118366, 24.857765, 30.606720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568977, 24.870703, 30.006157>,  <31.084280, 24.362143, 30.113571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568977, 24.870703, 30.006157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.884514, 25.036301, 30.187855>,  <31.073835, 25.135658, 30.296873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.884514, 25.036301, 30.187855>,  <30.568977, 24.870703, 30.006157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.884514, 25.036301, 30.187855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093873, 0.649262, -0.754750,
		-0.607385, 0.638019, 0.473302,
		0.788842, 0.413993, 0.454244,
		31.121166, 25.160500, 30.324127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.530523, 25.563616, 29.813324>,  <30.568977, 24.870703, 30.006157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.530523, 25.563616, 29.813324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.905699, 25.533302, 29.948692>,  <31.130804, 25.515114, 30.029913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.905699, 25.533302, 29.948692>,  <30.530523, 25.563616, 29.813324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905699, 25.533302, 29.948692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308509, 0.628080, -0.714379,
		-0.158417, 0.774449, 0.612480,
		0.937937, -0.075786, 0.338423,
		31.187080, 25.510567, 30.050219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716175, 26.227648, 30.020302>,  <30.530523, 25.563616, 29.813324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716175, 26.227648, 30.020302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.051359, 26.018093, 29.959156>,  <31.252470, 25.892361, 29.922468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.051359, 26.018093, 29.959156>,  <30.716175, 26.227648, 30.020302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.051359, 26.018093, 29.959156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288497, 0.663017, -0.690781,
		0.463243, 0.534744, 0.706720,
		0.837959, -0.523886, -0.152866,
		31.302748, 25.860928, 29.913296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.322927, 26.747610, 30.036110>,  <30.716175, 26.227648, 30.020302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.322927, 26.747610, 30.036110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.436852, 26.427345, 29.825272>,  <31.505205, 26.235188, 29.698769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.436852, 26.427345, 29.825272>,  <31.322927, 26.747610, 30.036110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.436852, 26.427345, 29.825272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329660, 0.598138, -0.730449,
		0.900116, 0.034277, 0.434301,
		0.284809, -0.800660, -0.527094,
		31.522295, 26.187147, 29.667143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978088, 26.910063, 29.930723>,  <31.322927, 26.747610, 30.036110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978088, 26.910063, 29.930723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.891939, 26.629139, 29.659321>,  <31.840250, 26.460585, 29.496479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.891939, 26.629139, 29.659321>,  <31.978088, 26.910063, 29.930723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891939, 26.629139, 29.659321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345042, 0.595267, -0.725675,
		0.913543, -0.390405, 0.114123,
		-0.215373, -0.702312, -0.678507,
		31.827328, 26.418446, 29.455769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519535, 26.972261, 29.451908>,  <31.978088, 26.910063, 29.930723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519535, 26.972261, 29.451908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.227802, 26.781528, 29.255661>,  <32.052761, 26.667088, 29.137913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.227802, 26.781528, 29.255661>,  <32.519535, 26.972261, 29.451908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227802, 26.781528, 29.255661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357960, 0.345164, -0.867598,
		0.583043, -0.808388, -0.081052,
		-0.729332, -0.476833, -0.490616,
		32.009003, 26.638479, 29.108477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784058, 26.624231, 28.860910>,  <32.519535, 26.972261, 29.451908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784058, 26.624231, 28.860910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.397133, 26.690308, 28.783939>,  <32.164978, 26.729954, 28.737757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.397133, 26.690308, 28.783939>,  <32.784058, 26.624231, 28.860910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397133, 26.690308, 28.783939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251080, 0.516949, -0.818366,
		-0.035711, -0.839926, -0.541525,
		-0.967308, 0.165191, -0.192427,
		32.106941, 26.739864, 28.726212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739780, 26.509398, 28.151340>,  <32.784058, 26.624231, 28.860910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739780, 26.509398, 28.151340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.406582, 26.709900, 28.245029>,  <32.206661, 26.830200, 28.301243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.406582, 26.709900, 28.245029>,  <32.739780, 26.509398, 28.151340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406582, 26.709900, 28.245029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107060, 0.561366, -0.820613,
		-0.542820, -0.658493, -0.521281,
		-0.832997, 0.501254, 0.234222,
		32.156681, 26.860275, 28.315296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280533, 26.548571, 27.465694>,  <32.739780, 26.509398, 28.151340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280533, 26.548571, 27.465694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.117035, 26.837666, 27.688614>,  <32.018936, 27.011124, 27.822365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.117035, 26.837666, 27.688614>,  <32.280533, 26.548571, 27.465694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117035, 26.837666, 27.688614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042967, 0.594720, -0.802784,
		-0.911639, -0.352075, -0.212032,
		-0.408740, 0.722739, 0.557297,
		31.994413, 27.054487, 27.855803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913496, 26.836569, 26.924978>,  <32.280533, 26.548571, 27.465694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913496, 26.836569, 26.924978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.875772, 27.092037, 27.230450>,  <31.853138, 27.245319, 27.413733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.875772, 27.092037, 27.230450>,  <31.913496, 26.836569, 26.924978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875772, 27.092037, 27.230450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011710, 0.767755, -0.640637,
		-0.995474, -0.051474, -0.079884,
		-0.094308, 0.638673, 0.763677,
		31.847481, 27.283640, 27.459553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398361, 27.349691, 26.685696>,  <31.913496, 26.836569, 26.924978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398361, 27.349691, 26.685696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.652126, 27.503048, 26.954182>,  <31.804384, 27.595062, 27.115274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.652126, 27.503048, 26.954182>,  <31.398361, 27.349691, 26.685696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652126, 27.503048, 26.954182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239280, 0.728281, -0.642147,
		-0.735029, 0.567994, 0.370291,
		0.634411, 0.383393, 0.671217,
		31.842449, 27.618067, 27.155546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711237, 27.599468, 26.683582>,  <31.398361, 27.349691, 26.685696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711237, 27.599468, 26.683582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.542131, 27.395973, 26.383595>,  <30.440668, 27.273876, 26.203602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.542131, 27.395973, 26.383595>,  <30.711237, 27.599468, 26.683582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.542131, 27.395973, 26.383595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209457, -0.750302, 0.627036,
		-0.881701, 0.422176, 0.210643,
		-0.422766, -0.508738, -0.749970,
		30.415302, 27.243351, 26.158604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.161959, 27.324722, 26.994789>,  <30.711237, 27.599468, 26.683582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.161959, 27.324722, 26.994789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.204798, 27.115517, 26.656563>,  <30.230501, 26.989992, 26.453627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.204798, 27.115517, 26.656563>,  <30.161959, 27.324722, 26.994789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.204798, 27.115517, 26.656563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412739, -0.797104, 0.440762,
		-0.904531, 0.301794, -0.301237,
		0.107097, -0.523015, -0.845568,
		30.236927, 26.958612, 26.402893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.499725, 27.056412, 26.933012>,  <30.161959, 27.324722, 26.994789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.499725, 27.056412, 26.933012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.744261, 26.829681, 26.712116>,  <29.890982, 26.693644, 26.579578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.744261, 26.829681, 26.712116>,  <29.499725, 27.056412, 26.933012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.744261, 26.829681, 26.712116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357153, -0.820341, 0.446634,
		-0.706190, -0.075811, -0.703952,
		0.611341, -0.566827, -0.552240,
		29.927664, 26.659634, 26.546444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124496, 26.464485, 26.717604>,  <29.499725, 27.056412, 26.933012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124496, 26.464485, 26.717604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.503643, 26.338497, 26.698242>,  <29.731131, 26.262905, 26.686626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.503643, 26.338497, 26.698242>,  <29.124496, 26.464485, 26.717604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503643, 26.338497, 26.698242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247653, -0.823681, 0.510114,
		-0.200538, -0.471534, -0.858744,
		0.947867, -0.314968, -0.048403,
		29.788004, 26.244007, 26.683722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.064428, 25.651878, 26.553318>,  <29.124496, 26.464485, 26.717604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.064428, 25.651878, 26.553318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.434023, 25.707420, 26.695850>,  <29.655779, 25.740746, 26.781370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.434023, 25.707420, 26.695850>,  <29.064428, 25.651878, 26.553318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434023, 25.707420, 26.695850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073277, -0.850212, 0.521316,
		0.375344, -0.507799, -0.775408,
		0.923985, 0.138853, 0.356332,
		29.711218, 25.749077, 26.802750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326769, 25.052967, 26.577682>,  <29.064428, 25.651878, 26.553318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326769, 25.052967, 26.577682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.558096, 25.264362, 26.826279>,  <29.696892, 25.391199, 26.975437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.558096, 25.264362, 26.826279>,  <29.326769, 25.052967, 26.577682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.558096, 25.264362, 26.826279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021804, -0.771546, 0.635800,
		0.815521, -0.354143, -0.457721,
		0.578317, 0.528489, 0.621490,
		29.731590, 25.422909, 27.012726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.949499, 24.625612, 26.739944>,  <29.326769, 25.052967, 26.577682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.949499, 24.625612, 26.739944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.863228, 24.904789, 27.013107>,  <29.811466, 25.072294, 27.177006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.863228, 24.904789, 27.013107>,  <29.949499, 24.625612, 26.739944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.863228, 24.904789, 27.013107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119628, -0.712986, 0.690898,
		0.969109, 0.067316, 0.237268,
		-0.215677, 0.697940, 0.682908,
		29.798525, 25.114170, 27.217979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.419130, 24.552504, 27.235527>,  <29.949499, 24.625612, 26.739944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.419130, 24.552504, 27.235527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.128265, 24.762077, 27.412945>,  <29.953747, 24.887821, 27.519396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.128265, 24.762077, 27.412945>,  <30.419130, 24.552504, 27.235527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.128265, 24.762077, 27.412945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192144, -0.464954, 0.864233,
		0.659029, 0.713660, 0.237425,
		-0.727160, 0.523934, 0.443544,
		29.910118, 24.919258, 27.546007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680149, 24.684532, 27.910103>,  <30.419130, 24.552504, 27.235527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680149, 24.684532, 27.910103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.288422, 24.755577, 27.948872>,  <30.053385, 24.798204, 27.972134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.288422, 24.755577, 27.948872>,  <30.680149, 24.684532, 27.910103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.288422, 24.755577, 27.948872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018065, -0.400355, 0.916182,
		0.201527, 0.898983, 0.388866,
		-0.979317, 0.177610, 0.096922,
		29.994627, 24.808861, 27.977949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499796, 25.093369, 28.540377>,  <30.680149, 24.684532, 27.910103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499796, 25.093369, 28.540377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.186895, 24.875088, 28.420181>,  <29.999155, 24.744120, 28.348064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.186895, 24.875088, 28.420181>,  <30.499796, 25.093369, 28.540377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.186895, 24.875088, 28.420181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014230, -0.497876, 0.867131,
		-0.622802, 0.674037, 0.397229,
		-0.782250, -0.545704, -0.300487,
		29.952221, 24.711376, 28.330034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.732870, 25.257917, 28.897900>,  <30.499796, 25.093369, 28.540377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.732870, 25.257917, 28.897900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.732933, 24.886177, 28.750221>,  <29.732971, 24.663134, 28.661613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.732933, 24.886177, 28.750221>,  <29.732870, 25.257917, 28.897900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.732933, 24.886177, 28.750221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329544, -0.348622, 0.877419,
		-0.944140, 0.121528, -0.306317,
		0.000158, -0.929351, -0.369197,
		29.732981, 24.607372, 28.639462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157110, 25.081917, 29.207209>,  <29.732870, 25.257917, 28.897900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157110, 25.081917, 29.207209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.310923, 24.730225, 29.094715>,  <29.403210, 24.519209, 29.027220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.310923, 24.730225, 29.094715>,  <29.157110, 25.081917, 29.207209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310923, 24.730225, 29.094715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494711, -0.453493, 0.741354,
		-0.779357, -0.145945, -0.609347,
		0.384531, -0.879229, -0.281232,
		29.426283, 24.466455, 29.010345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.576517, 24.534494, 29.237196>,  <29.157110, 25.081917, 29.207209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.576517, 24.534494, 29.237196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.930969, 24.352127, 29.270451>,  <29.143641, 24.242706, 29.290403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.930969, 24.352127, 29.270451>,  <28.576517, 24.534494, 29.237196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.930969, 24.352127, 29.270451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380338, -0.612945, 0.692561,
		-0.264795, -0.645319, -0.716553,
		0.886130, -0.455919, 0.083134,
		29.196808, 24.215351, 29.295391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.370514, 23.870344, 29.171688>,  <28.576517, 24.534494, 29.237196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.370514, 23.870344, 29.171688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.725754, 23.858364, 29.355160>,  <28.938898, 23.851177, 29.465242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.725754, 23.858364, 29.355160>,  <28.370514, 23.870344, 29.171688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.725754, 23.858364, 29.355160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359741, -0.666444, 0.653022,
		0.286126, -0.744953, -0.602641,
		0.888098, -0.029948, 0.458678,
		28.992184, 23.849380, 29.492764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.912935, 23.454769, 28.751509>,  <28.370514, 23.870344, 29.171688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.912935, 23.454769, 28.751509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.522953, 23.397125, 28.683754>,  <27.288963, 23.362539, 28.643101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.522953, 23.397125, 28.683754>,  <27.912935, 23.454769, 28.751509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.522953, 23.397125, 28.683754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062359, 0.553957, -0.830206,
		0.213475, -0.819978, -0.531098,
		-0.974956, -0.144110, -0.169389,
		27.230467, 23.353891, 28.632936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.756268, 23.319328, 27.960987>,  <27.912935, 23.454769, 28.751509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.756268, 23.319328, 27.960987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.412117, 23.449207, 28.118122>,  <27.205626, 23.527136, 28.212402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.412117, 23.449207, 28.118122>,  <27.756268, 23.319328, 27.960987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.412117, 23.449207, 28.118122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136091, 0.596434, -0.791041,
		-0.491152, -0.734055, -0.468969,
		-0.860377, 0.324699, 0.392838,
		27.154003, 23.546618, 28.235973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.354223, 23.286037, 27.418272>,  <27.756268, 23.319328, 27.960987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.354223, 23.286037, 27.418272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.159929, 23.528732, 27.669964>,  <27.043352, 23.674349, 27.820978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.159929, 23.528732, 27.669964>,  <27.354223, 23.286037, 27.418272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.159929, 23.528732, 27.669964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218387, 0.612791, -0.759470,
		-0.846385, -0.506317, -0.165151,
		-0.485736, 0.606738, 0.629230,
		27.014208, 23.710754, 27.858732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.647152, 23.446131, 27.142756>,  <27.354223, 23.286037, 27.418272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.647152, 23.446131, 27.142756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.729073, 23.731735, 27.410561>,  <26.778225, 23.903097, 27.571243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.729073, 23.731735, 27.410561>,  <26.647152, 23.446131, 27.142756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.729073, 23.731735, 27.410561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301837, 0.696746, -0.650722,
		-0.931101, -0.068813, 0.358211,
		0.204803, 0.714010, 0.669512,
		26.790514, 23.945938, 27.611414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.164394, 23.989183, 27.065092>,  <26.647152, 23.446131, 27.142756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.164394, 23.989183, 27.065092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.475170, 24.147919, 27.260597>,  <26.661634, 24.243160, 27.377899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.475170, 24.147919, 27.260597>,  <26.164394, 23.989183, 27.065092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.475170, 24.147919, 27.260597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038062, 0.804520, -0.592704,
		-0.628426, 0.441891, 0.640167,
		0.776938, 0.396837, 0.488762,
		26.708252, 24.266970, 27.407227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.949347, 24.625736, 27.212564>,  <26.164394, 23.989183, 27.065092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.949347, 24.625736, 27.212564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.346889, 24.652618, 27.247738>,  <26.585415, 24.668747, 27.268841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.346889, 24.652618, 27.247738>,  <25.949347, 24.625736, 27.212564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.346889, 24.652618, 27.247738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008326, 0.837667, -0.546118,
		-0.110360, 0.542031, 0.833081,
		0.993857, 0.067206, 0.087933,
		26.645046, 24.672781, 27.274118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.176933, 25.357067, 27.155342>,  <25.949347, 24.625736, 27.212564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.176933, 25.357067, 27.155342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.526873, 25.174942, 27.089211>,  <26.736835, 25.065668, 27.049532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.526873, 25.174942, 27.089211>,  <26.176933, 25.357067, 27.155342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.526873, 25.174942, 27.089211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215147, 0.671027, -0.709531,
		0.433998, 0.585161, 0.685005,
		0.874847, -0.455312, -0.165329,
		26.789328, 25.038349, 27.039612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.742550, 25.813156, 27.250744>,  <26.176933, 25.357067, 27.155342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.742550, 25.813156, 27.250744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.854826, 25.516048, 27.007595>,  <26.922192, 25.337784, 26.861706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.854826, 25.516048, 27.007595>,  <26.742550, 25.813156, 27.250744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.854826, 25.516048, 27.007595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201585, 0.664829, -0.719282,
		0.938391, 0.079356, 0.336341,
		0.280689, -0.742769, -0.607872,
		26.939034, 25.293219, 26.825233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.259033, 26.074135, 26.921167>,  <26.742550, 25.813156, 27.250744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.259033, 26.074135, 26.921167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.154890, 25.773205, 26.679104>,  <27.092403, 25.592646, 26.533865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.154890, 25.773205, 26.679104>,  <27.259033, 26.074135, 26.921167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.154890, 25.773205, 26.679104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228291, 0.561035, -0.795690,
		0.938135, -0.345317, 0.025679,
		-0.260359, -0.752327, -0.605159,
		27.076782, 25.547506, 26.497557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.786623, 26.071102, 26.357365>,  <27.259033, 26.074135, 26.921167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.786623, 26.071102, 26.357365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.465061, 25.882133, 26.212833>,  <27.272125, 25.768753, 26.126114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.465061, 25.882133, 26.212833>,  <27.786623, 26.071102, 26.357365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.465061, 25.882133, 26.212833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079651, 0.516536, -0.852553,
		0.589405, -0.714149, -0.377615,
		-0.803901, -0.472421, -0.361331,
		27.223890, 25.740408, 26.104435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.992081, 25.962887, 25.673372>,  <27.786623, 26.071102, 26.357365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.992081, 25.962887, 25.673372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.592577, 25.943237, 25.670055>,  <27.352875, 25.931448, 25.668064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.592577, 25.943237, 25.670055>,  <27.992081, 25.962887, 25.673372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.592577, 25.943237, 25.670055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019474, 0.538207, -0.842588,
		0.045854, -0.841380, -0.538495,
		-0.998758, -0.049122, -0.008294,
		27.292950, 25.928501, 25.667566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.810091, 25.824568, 24.880136>,  <27.992081, 25.962887, 25.673372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.810091, 25.824568, 24.880136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.485287, 25.948318, 25.078094>,  <27.290403, 26.022570, 25.196869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.485287, 25.948318, 25.078094>,  <27.810091, 25.824568, 24.880136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.485287, 25.948318, 25.078094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224123, 0.617646, -0.753845,
		-0.538894, -0.723049, -0.432197,
		-0.812011, 0.309377, 0.494897,
		27.241684, 26.041132, 25.226564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262772, 25.941439, 24.369772>,  <27.810091, 25.824568, 24.880136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.262772, 25.941439, 24.369772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.147736, 26.155785, 24.687298>,  <27.078714, 26.284393, 24.877813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.147736, 26.155785, 24.687298>,  <27.262772, 25.941439, 24.369772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.147736, 26.155785, 24.687298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143959, 0.795226, -0.588975,
		-0.946873, -0.283659, -0.151556,
		-0.287589, 0.535867, 0.793813,
		27.061459, 26.316545, 24.925442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.827892, 26.398094, 24.073191>,  <27.262772, 25.941439, 24.369772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.827892, 26.398094, 24.073191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.832340, 26.577572, 24.430637>,  <26.835009, 26.685259, 24.645105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.832340, 26.577572, 24.430637>,  <26.827892, 26.398094, 24.073191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.832340, 26.577572, 24.430637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125151, 0.887268, -0.443950,
		-0.992075, -0.106901, 0.066020,
		0.011119, 0.448695, 0.893616,
		26.835676, 26.712181, 24.698723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.855862, 25.213793, 27.350805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.082401, 25.355999, 27.648224>,  <38.218323, 25.441322, 27.826675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.082401, 25.355999, 27.648224>,  <37.855862, 25.213793, 27.350805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082401, 25.355999, 27.648224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217853, 0.805513, -0.551079,
		-0.794854, 0.474085, 0.378748,
		0.566345, 0.355516, 0.743547,
		38.252304, 25.462654, 27.871288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575199, 25.875210, 27.533014>,  <37.855862, 25.213793, 27.350805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575199, 25.875210, 27.533014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.963318, 25.846920, 27.625557>,  <38.196190, 25.829947, 27.681082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.963318, 25.846920, 27.625557>,  <37.575199, 25.875210, 27.533014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963318, 25.846920, 27.625557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211916, 0.709787, -0.671784,
		-0.116703, 0.700857, 0.703690,
		0.970295, -0.070724, 0.231357,
		38.254406, 25.825703, 27.694963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856461, 26.639170, 27.677021>,  <37.575199, 25.875210, 27.533014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856461, 26.639170, 27.677021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.169476, 26.403217, 27.597351>,  <38.357285, 26.261646, 27.549549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.169476, 26.403217, 27.597351>,  <37.856461, 26.639170, 27.677021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169476, 26.403217, 27.597351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450943, 0.757574, -0.471945,
		0.429282, 0.279499, 0.858835,
		0.782539, -0.589883, -0.199175,
		38.404236, 26.226252, 27.537600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412716, 26.966713, 27.919027>,  <37.856461, 26.639170, 27.677021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412716, 26.966713, 27.919027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.567516, 26.724667, 27.640728>,  <38.660397, 26.579439, 27.473749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.567516, 26.724667, 27.640728>,  <38.412716, 26.966713, 27.919027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567516, 26.724667, 27.640728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478409, 0.776806, -0.409508,
		0.788262, -0.174373, 0.590116,
		0.386998, -0.605116, -0.695749,
		38.683617, 26.543131, 27.432003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096390, 27.201498, 27.955696>,  <38.412716, 26.966713, 27.919027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096390, 27.201498, 27.955696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.051510, 27.001091, 27.612442>,  <39.024582, 26.880846, 27.406490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.051510, 27.001091, 27.612442>,  <39.096390, 27.201498, 27.955696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051510, 27.001091, 27.612442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448570, 0.745051, -0.493643,
		0.886678, -0.440318, 0.141150,
		-0.112195, -0.501018, -0.858134,
		39.017853, 26.850786, 27.355001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617325, 27.484203, 27.522720>,  <39.096390, 27.201498, 27.955696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617325, 27.484203, 27.522720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.384373, 27.292656, 27.259960>,  <39.244602, 27.177727, 27.102304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.384373, 27.292656, 27.259960>,  <39.617325, 27.484203, 27.522720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384373, 27.292656, 27.259960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179037, 0.712678, -0.678260,
		0.792956, -0.512614, -0.329314,
		-0.582380, -0.478871, -0.656899,
		39.209660, 27.148994, 27.062891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964970, 27.449268, 26.913437>,  <39.617325, 27.484203, 27.522720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964970, 27.449268, 26.913437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.583302, 27.399799, 26.804436>,  <39.354301, 27.370117, 26.739035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.583302, 27.399799, 26.804436>,  <39.964970, 27.449268, 26.913437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583302, 27.399799, 26.804436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082209, 0.767244, -0.636065,
		0.287739, -0.629319, -0.721917,
		-0.954174, -0.123672, -0.272502,
		39.297050, 27.362698, 26.722685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020695, 27.314007, 26.227325>,  <39.964970, 27.449268, 26.913437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020695, 27.314007, 26.227325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.655979, 27.463715, 26.294918>,  <39.437149, 27.553539, 26.335474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.655979, 27.463715, 26.294918>,  <40.020695, 27.314007, 26.227325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655979, 27.463715, 26.294918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119324, 0.635213, -0.763064,
		-0.392932, -0.675593, -0.623843,
		-0.911793, 0.374271, 0.168981,
		39.382442, 27.575996, 26.345612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707661, 27.422407, 25.558537>,  <40.020695, 27.314007, 26.227325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707661, 27.422407, 25.558537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.484833, 27.643127, 25.806793>,  <39.351135, 27.775558, 25.955748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.484833, 27.643127, 25.806793>,  <39.707661, 27.422407, 25.558537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484833, 27.643127, 25.806793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062893, 0.717160, -0.694065,
		-0.828082, -0.425675, -0.364802,
		-0.557068, 0.551799, 0.620640,
		39.317711, 27.808666, 25.992985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187069, 27.772123, 25.072306>,  <39.707661, 27.422407, 25.558537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187069, 27.772123, 25.072306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.209671, 27.981499, 25.412380>,  <39.223232, 28.107124, 25.616425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.209671, 27.981499, 25.412380>,  <39.187069, 27.772123, 25.072306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209671, 27.981499, 25.412380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117437, 0.849121, -0.514978,
		-0.991472, -0.070746, 0.109447,
		0.056501, 0.523440, 0.850187,
		39.226620, 28.138531, 25.667437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685444, 28.250437, 25.022263>,  <39.187069, 27.772123, 25.072306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685444, 28.250437, 25.022263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.887436, 28.397484, 25.334637>,  <39.008629, 28.485712, 25.522060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.887436, 28.397484, 25.334637>,  <38.685444, 28.250437, 25.022263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887436, 28.397484, 25.334637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165039, 0.929196, -0.330690,
		-0.847208, 0.038107, 0.529893,
		0.504976, 0.367616, 0.780933,
		39.038929, 28.507769, 25.568916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294216, 28.815607, 25.326796>,  <38.685444, 28.250437, 25.022263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294216, 28.815607, 25.326796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.672901, 28.894989, 25.428272>,  <38.900112, 28.942619, 25.489159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.672901, 28.894989, 25.428272>,  <38.294216, 28.815607, 25.326796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672901, 28.894989, 25.428272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129018, 0.955334, -0.265878,
		-0.295124, 0.218978, 0.930027,
		0.946708, 0.198457, 0.253690,
		38.956913, 28.954527, 25.504379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251141, 29.601261, 25.587511>,  <38.294216, 28.815607, 25.326796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251141, 29.601261, 25.587511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.636913, 29.520042, 25.519806>,  <38.868378, 29.471312, 25.479183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.636913, 29.520042, 25.519806>,  <38.251141, 29.601261, 25.587511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636913, 29.520042, 25.519806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093998, 0.861881, -0.498323,
		0.247070, 0.464686, 0.850308,
		0.964428, -0.203048, -0.169265,
		38.926243, 29.459127, 25.469027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558445, 30.161371, 25.780077>,  <38.251141, 29.601261, 25.587511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.558445, 30.161371, 25.780077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.799564, 29.957687, 25.534367>,  <38.944237, 29.835478, 25.386940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.799564, 29.957687, 25.534367>,  <38.558445, 30.161371, 25.780077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799564, 29.957687, 25.534367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157695, 0.830723, -0.533883,
		0.782153, 0.224956, 0.581061,
		0.602801, -0.509209, -0.614278,
		38.980404, 29.804924, 25.350082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153164, 30.588028, 25.723501>,  <38.558445, 30.161371, 25.780077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153164, 30.588028, 25.723501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.161789, 30.368011, 25.389557>,  <39.166965, 30.236002, 25.189190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.161789, 30.368011, 25.389557>,  <39.153164, 30.588028, 25.723501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161789, 30.368011, 25.389557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042762, 0.833782, -0.550434,
		0.998852, 0.047569, -0.005543,
		0.021562, -0.550040, -0.834860,
		39.168259, 30.202999, 25.139099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522823, 30.998726, 25.309526>,  <39.153164, 30.588028, 25.723501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522823, 30.998726, 25.309526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.330391, 30.754822, 25.057571>,  <39.214931, 30.608480, 24.906399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.330391, 30.754822, 25.057571>,  <39.522823, 30.998726, 25.309526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330391, 30.754822, 25.057571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068351, 0.742394, -0.666468,
		0.874009, -0.277570, -0.398828,
		-0.481079, -0.609759, -0.629887,
		39.186066, 30.571894, 24.868605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025459, 30.831657, 24.699947>,  <39.522823, 30.998726, 25.309526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025459, 30.831657, 24.699947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.657219, 30.756027, 24.563274>,  <39.436275, 30.710649, 24.481272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.657219, 30.756027, 24.563274>,  <40.025459, 30.831657, 24.699947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657219, 30.756027, 24.563274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183834, 0.562116, -0.806369,
		0.344530, -0.805156, -0.482725,
		-0.920600, -0.189077, -0.341681,
		39.381039, 30.699305, 24.460770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118382, 30.618917, 23.977276>,  <40.025459, 30.831657, 24.699947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118382, 30.618917, 23.977276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.752537, 30.774097, 24.022846>,  <39.533031, 30.867207, 24.050188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.752537, 30.774097, 24.022846>,  <40.118382, 30.618917, 23.977276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752537, 30.774097, 24.022846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192115, 0.664885, -0.721817,
		-0.355778, -0.638295, -0.682643,
		-0.914611, 0.387952, 0.113926,
		39.478153, 30.890484, 24.057024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945229, 30.732277, 23.304129>,  <40.118382, 30.618917, 23.977276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945229, 30.732277, 23.304129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.658298, 30.945034, 23.484146>,  <39.486141, 31.072687, 23.592155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.658298, 30.945034, 23.484146>,  <39.945229, 30.732277, 23.304129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658298, 30.945034, 23.484146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080698, 0.578155, -0.811927,
		-0.692050, -0.618732, -0.371802,
		-0.717324, 0.531891, 0.450042,
		39.443100, 31.104601, 23.619160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350266, 30.862001, 22.894991>,  <39.945229, 30.732277, 23.304129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350266, 30.862001, 22.894991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.296177, 31.159481, 23.156868>,  <39.263725, 31.337969, 23.313995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.296177, 31.159481, 23.156868>,  <39.350266, 30.862001, 22.894991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296177, 31.159481, 23.156868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140787, 0.639637, -0.755674,
		-0.980762, -0.194353, 0.018213,
		-0.135218, 0.743701, 0.654694,
		39.255611, 31.382591, 23.353275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752735, 31.320177, 22.672224>,  <39.350266, 30.862001, 22.894991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752735, 31.320177, 22.672224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.970043, 31.577866, 22.887569>,  <39.100430, 31.732479, 23.016777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.970043, 31.577866, 22.887569>,  <38.752735, 31.320177, 22.672224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970043, 31.577866, 22.887569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241421, 0.734039, -0.634746,
		-0.804096, 0.214868, 0.554312,
		0.543273, 0.644219, 0.538364,
		39.133026, 31.771132, 23.049078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181644, 30.738031, 22.669416>,  <38.752735, 31.320177, 22.672224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181644, 30.738031, 22.669416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.802795, 30.680202, 22.554829>,  <37.575485, 30.645506, 22.486076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.802795, 30.680202, 22.554829>,  <38.181644, 30.738031, 22.669416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802795, 30.680202, 22.554829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154134, -0.578045, 0.801316,
		-0.281441, 0.803095, 0.525194,
		-0.947119, -0.144573, -0.286469,
		37.518661, 30.636831, 22.468887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681450, 30.741270, 23.286785>,  <38.181644, 30.738031, 22.669416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681450, 30.741270, 23.286785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.512516, 30.526920, 22.994354>,  <37.411156, 30.398310, 22.818895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.512516, 30.526920, 22.994354>,  <37.681450, 30.741270, 23.286785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512516, 30.526920, 22.994354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199179, -0.731960, 0.651585,
		-0.884287, 0.420801, 0.202395,
		-0.422332, -0.535875, -0.731077,
		37.385815, 30.366158, 22.775032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105640, 30.525528, 23.630795>,  <37.681450, 30.741270, 23.286785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105640, 30.525528, 23.630795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.135845, 30.270039, 23.324505>,  <37.153969, 30.116745, 23.140732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.135845, 30.270039, 23.324505>,  <37.105640, 30.525528, 23.630795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135845, 30.270039, 23.324505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232103, -0.758082, 0.609459,
		-0.969756, 0.131707, -0.205492,
		0.075510, -0.638722, -0.765724,
		37.158497, 30.078423, 23.094788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553024, 30.020126, 23.715462>,  <37.105640, 30.525528, 23.630795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553024, 30.020126, 23.715462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.825729, 29.836205, 23.487858>,  <36.989353, 29.725851, 23.351295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.825729, 29.836205, 23.487858>,  <36.553024, 30.020126, 23.715462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825729, 29.836205, 23.487858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127794, -0.840688, 0.526225,
		-0.720321, -0.286047, -0.631914,
		0.681767, -0.459806, -0.569009,
		37.030258, 29.698263, 23.317154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178780, 29.307056, 23.539034>,  <36.553024, 30.020126, 23.715462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178780, 29.307056, 23.539034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.557484, 29.209408, 23.455082>,  <36.784706, 29.150818, 23.404711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.557484, 29.209408, 23.455082>,  <36.178780, 29.307056, 23.539034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557484, 29.209408, 23.455082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154114, -0.916039, 0.370300,
		-0.282655, -0.318241, -0.904892,
		0.946761, -0.244123, -0.209877,
		36.841511, 29.136171, 23.392118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107380, 28.703922, 23.216049>,  <36.178780, 29.307056, 23.539034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107380, 28.703922, 23.216049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.480537, 28.721394, 23.359051>,  <36.704430, 28.731876, 23.444851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.480537, 28.721394, 23.359051>,  <36.107380, 28.703922, 23.216049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480537, 28.721394, 23.359051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078205, -0.944372, 0.319447,
		0.351570, -0.325967, -0.877579,
		0.932890, 0.043677, 0.357504,
		36.760403, 28.734497, 23.466303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447918, 28.019247, 23.035921>,  <36.107380, 28.703922, 23.216049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447918, 28.019247, 23.035921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.706749, 28.150463, 23.311218>,  <36.862049, 28.229193, 23.476397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.706749, 28.150463, 23.311218>,  <36.447918, 28.019247, 23.035921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706749, 28.150463, 23.311218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107847, -0.933011, 0.343306,
		0.754755, -0.147922, -0.639112,
		0.647081, 0.328038, 0.688242,
		36.900875, 28.248875, 23.517691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114063, 27.649797, 22.917406>,  <36.447918, 28.019247, 23.035921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114063, 27.649797, 22.917406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.156921, 27.789700, 23.289684>,  <37.182636, 27.873640, 23.513050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.156921, 27.789700, 23.289684>,  <37.114063, 27.649797, 22.917406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156921, 27.789700, 23.289684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297651, -0.904433, 0.305620,
		0.948643, 0.244277, -0.201011,
		0.107145, 0.349756, 0.930694,
		37.189064, 27.894627, 23.568892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730934, 27.469702, 23.133308>,  <37.114063, 27.649797, 22.917406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730934, 27.469702, 23.133308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.501839, 27.514160, 23.458176>,  <37.364384, 27.540834, 23.653097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.501839, 27.514160, 23.458176>,  <37.730934, 27.469702, 23.133308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501839, 27.514160, 23.458176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298647, -0.894383, 0.333000,
		0.763402, 0.433274, 0.479053,
		-0.572737, 0.111145, 0.812169,
		37.330017, 27.547504, 23.701826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044807, 27.101284, 23.670561>,  <37.730934, 27.469702, 23.133308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044807, 27.101284, 23.670561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.696766, 27.176941, 23.852615>,  <37.487942, 27.222336, 23.961849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.696766, 27.176941, 23.852615>,  <38.044807, 27.101284, 23.670561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696766, 27.176941, 23.852615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106712, -0.829239, 0.548612,
		0.481183, 0.525916, 0.701338,
		-0.870101, 0.189142, 0.455137,
		37.435734, 27.233683, 23.989157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146984, 27.075361, 24.354540>,  <38.044807, 27.101284, 23.670561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146984, 27.075361, 24.354540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.759361, 26.982197, 24.321835>,  <37.526787, 26.926298, 24.302212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.759361, 26.982197, 24.321835>,  <38.146984, 27.075361, 24.354540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759361, 26.982197, 24.321835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160461, -0.846077, 0.508336,
		-0.187576, 0.479485, 0.857268,
		-0.969055, -0.232910, -0.081765,
		37.468643, 26.912323, 24.297304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900917, 26.935564, 25.066996>,  <38.146984, 27.075361, 24.354540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900917, 26.935564, 25.066996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.666786, 26.740005, 24.808270>,  <37.526306, 26.622671, 24.653034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.666786, 26.740005, 24.808270>,  <37.900917, 26.935564, 25.066996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666786, 26.740005, 24.808270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095701, -0.833836, 0.543653,
		-0.805127, 0.256316, 0.534857,
		-0.585330, -0.488896, -0.646815,
		37.491188, 26.593336, 24.614225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444813, 26.478310, 25.552582>,  <37.900917, 26.935564, 25.066996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444813, 26.478310, 25.552582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.393280, 26.347675, 25.178043>,  <37.362362, 26.269295, 24.953320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.393280, 26.347675, 25.178043>,  <37.444813, 26.478310, 25.552582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393280, 26.347675, 25.178043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005753, -0.944445, 0.328618,
		-0.991650, 0.036950, 0.123551,
		-0.128830, -0.326585, -0.936347,
		37.354630, 26.249701, 24.897139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854813, 25.999178, 25.578447>,  <37.444813, 26.478310, 25.552582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854813, 25.999178, 25.578447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.051289, 25.902336, 25.243755>,  <37.169174, 25.844231, 25.042940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.051289, 25.902336, 25.243755>,  <36.854813, 25.999178, 25.578447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051289, 25.902336, 25.243755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054866, -0.967290, 0.247671,
		-0.869320, -0.075747, -0.488411,
		0.491195, -0.242102, -0.836728,
		37.198647, 25.829706, 24.992737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615482, 25.349468, 25.277948>,  <36.854813, 25.999178, 25.578447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615482, 25.349468, 25.277948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.977356, 25.403725, 25.116379>,  <37.194481, 25.436279, 25.019438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.977356, 25.403725, 25.116379>,  <36.615482, 25.349468, 25.277948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977356, 25.403725, 25.116379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253720, -0.933079, 0.254930,
		-0.342312, -0.333114, -0.878554,
		0.904682, 0.135641, -0.403922,
		37.248760, 25.444416, 24.995203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703014, 24.893555, 24.662046>,  <36.615482, 25.349468, 25.277948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703014, 24.893555, 24.662046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.052010, 24.979488, 24.837593>,  <37.261406, 25.031048, 24.942921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.052010, 24.979488, 24.837593>,  <36.703014, 24.893555, 24.662046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052010, 24.979488, 24.837593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067874, -0.942740, 0.326550,
		0.483893, -0.255124, -0.837114,
		0.872491, 0.214833, 0.438868,
		37.313759, 25.043938, 24.969254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986691, 24.281260, 24.622204>,  <36.703014, 24.893555, 24.662046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986691, 24.281260, 24.622204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.269402, 24.469398, 24.833576>,  <37.439030, 24.582281, 24.960400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.269402, 24.469398, 24.833576>,  <36.986691, 24.281260, 24.622204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269402, 24.469398, 24.833576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105887, -0.808887, 0.578351,
		0.699466, -0.352811, -0.621508,
		0.706778, 0.470346, 0.528431,
		37.481434, 24.610502, 24.992105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555107, 23.814058, 24.761055>,  <36.986691, 24.281260, 24.622204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555107, 23.814058, 24.761055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.575363, 24.099155, 25.040894>,  <37.587517, 24.270214, 25.208797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.575363, 24.099155, 25.040894>,  <37.555107, 23.814058, 24.761055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575363, 24.099155, 25.040894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171253, -0.696316, 0.697005,
		0.983925, 0.084512, -0.157319,
		0.050639, 0.712742, 0.699596,
		37.590553, 24.312979, 25.250772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123405, 23.655687, 25.155527>,  <37.555107, 23.814058, 24.761055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123405, 23.655687, 25.155527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.886383, 23.886898, 25.379944>,  <37.744171, 24.025623, 25.514595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.886383, 23.886898, 25.379944>,  <38.123405, 23.655687, 25.155527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886383, 23.886898, 25.379944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004722, -0.698968, 0.715137,
		0.805518, 0.421107, 0.416905,
		-0.592552, 0.578025, 0.561043,
		37.708618, 24.060305, 25.548256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446125, 23.417984, 25.789665>,  <38.123405, 23.655687, 25.155527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446125, 23.417984, 25.789665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.095215, 23.603878, 25.837685>,  <37.884670, 23.715414, 25.866495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.095215, 23.603878, 25.837685>,  <38.446125, 23.417984, 25.789665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095215, 23.603878, 25.837685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104917, -0.429719, 0.896847,
		0.468381, 0.774187, 0.425740,
		-0.877275, 0.464733, 0.120047,
		37.832031, 23.743298, 25.873699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480202, 23.722275, 26.482807>,  <38.446125, 23.417984, 25.789665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480202, 23.722275, 26.482807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.094387, 23.688786, 26.382679>,  <37.862900, 23.668692, 26.322601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.094387, 23.688786, 26.382679>,  <38.480202, 23.722275, 26.482807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094387, 23.688786, 26.382679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181406, -0.478620, 0.859078,
		-0.191733, 0.874021, 0.446459,
		-0.964536, -0.083723, -0.250320,
		37.805027, 23.663670, 26.307583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<26.785006, 25.524136, 29.823328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.046597, 25.585289, 30.119690>,  <27.203550, 25.621981, 30.297506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.046597, 25.585289, 30.119690>,  <26.785006, 25.524136, 29.823328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.046597, 25.585289, 30.119690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141626, -0.937310, 0.318422,
		0.743139, -0.313172, -0.591327,
		0.653978, 0.152884, 0.740905,
		27.242790, 25.631155, 30.341961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.292803, 24.947758, 29.903952>,  <26.785006, 25.524136, 29.823328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.292803, 24.947758, 29.903952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.305925, 25.131992, 30.258755>,  <27.313799, 25.242533, 30.471636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.305925, 25.131992, 30.258755>,  <27.292803, 24.947758, 29.903952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.305925, 25.131992, 30.258755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214241, -0.863616, 0.456364,
		0.976230, -0.205005, 0.070344,
		0.032807, 0.460587, 0.887008,
		27.315767, 25.270168, 30.524857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.681629, 24.493706, 30.287685>,  <27.292803, 24.947758, 29.903952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.681629, 24.493706, 30.287685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.474358, 24.732086, 30.533070>,  <27.349995, 24.875114, 30.680300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.474358, 24.732086, 30.533070>,  <27.681629, 24.493706, 30.287685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.474358, 24.732086, 30.533070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362134, -0.802681, 0.473881,
		0.774822, 0.023401, 0.631746,
		-0.518180, 0.595950, 0.613460,
		27.318903, 24.910872, 30.717108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.903976, 24.168196, 30.891865>,  <27.681629, 24.493706, 30.287685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.903976, 24.168196, 30.891865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.575283, 24.385120, 30.961895>,  <27.378067, 24.515276, 31.003914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.575283, 24.385120, 30.961895>,  <27.903976, 24.168196, 30.891865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.575283, 24.385120, 30.961895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347679, -0.720511, 0.599986,
		0.451526, 0.432157, 0.780618,
		-0.821732, 0.542314, 0.175077,
		27.328764, 24.547815, 31.014418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.768942, 24.090887, 31.631001>,  <27.903976, 24.168196, 30.891865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.768942, 24.090887, 31.631001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.420612, 24.208672, 31.473541>,  <27.211615, 24.279343, 31.379065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.420612, 24.208672, 31.473541>,  <27.768942, 24.090887, 31.631001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.420612, 24.208672, 31.473541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480365, -0.679885, 0.554081,
		-0.104483, 0.671602, 0.733508,
		-0.870823, 0.294460, -0.393650,
		27.159365, 24.297010, 31.355446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.291868, 24.258505, 32.176956>,  <27.768942, 24.090887, 31.631001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.291868, 24.258505, 32.176956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.037001, 24.198898, 31.874485>,  <26.884081, 24.163134, 31.693001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.037001, 24.198898, 31.874485>,  <27.291868, 24.258505, 32.176956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.037001, 24.198898, 31.874485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571163, -0.567460, 0.593095,
		-0.517485, 0.809804, 0.276454,
		-0.637167, -0.149018, -0.756182,
		26.845850, 24.154194, 31.647631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.544966, 24.341412, 32.456818>,  <27.291868, 24.258505, 32.176956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.544966, 24.341412, 32.456818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.499498, 24.141235, 32.113506>,  <26.472218, 24.021130, 31.907520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.499498, 24.141235, 32.113506>,  <26.544966, 24.341412, 32.456818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.499498, 24.141235, 32.113506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800412, -0.465647, 0.377509,
		-0.588575, 0.729886, -0.347628,
		-0.113667, -0.500439, -0.858279,
		26.465399, 23.991104, 31.856024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.883736, 24.432064, 32.352253>,  <26.544966, 24.341412, 32.456818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.883736, 24.432064, 32.352253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.983145, 24.110447, 32.136196>,  <26.042791, 23.917477, 32.006561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.983145, 24.110447, 32.136196>,  <25.883736, 24.432064, 32.352253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.983145, 24.110447, 32.136196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781384, -0.495962, 0.378761,
		-0.572428, 0.327924, -0.751526,
		0.248524, -0.804044, -0.540138,
		26.057701, 23.869234, 31.974155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.295965, 24.178427, 32.138958>,  <25.883736, 24.432064, 32.352253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.295965, 24.178427, 32.138958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.537497, 23.860161, 32.119740>,  <25.682415, 23.669201, 32.108208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.537497, 23.860161, 32.119740>,  <25.295965, 24.178427, 32.138958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.537497, 23.860161, 32.119740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661520, -0.533830, 0.526704,
		-0.444725, -0.286260, -0.848690,
		0.603830, -0.795664, -0.048041,
		25.718645, 23.621462, 32.105328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.827766, 23.569284, 32.184513>,  <25.295965, 24.178427, 32.138958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.827766, 23.569284, 32.184513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.185488, 23.410122, 32.266384>,  <25.400120, 23.314625, 32.315506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.185488, 23.410122, 32.266384>,  <24.827766, 23.569284, 32.184513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.185488, 23.410122, 32.266384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424107, -0.607900, 0.671260,
		-0.142671, -0.687117, -0.712401,
		0.894303, -0.397904, 0.204681,
		25.453779, 23.290751, 32.327789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.810640, 22.826523, 32.065201>,  <24.827766, 23.569284, 32.184513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.810640, 22.826523, 32.065201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.098213, 22.886703, 32.336643>,  <25.270756, 22.922812, 32.499508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.098213, 22.886703, 32.336643>,  <24.810640, 22.826523, 32.065201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.098213, 22.886703, 32.336643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464169, -0.622784, 0.629831,
		0.517384, -0.767791, -0.377903,
		0.718930, 0.150453, 0.678604,
		25.313892, 22.931839, 32.540226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.753296, 22.198250, 32.492783>,  <24.810640, 22.826523, 32.065201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.753296, 22.198250, 32.492783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.972910, 22.459167, 32.701809>,  <25.104677, 22.615717, 32.827225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.972910, 22.459167, 32.701809>,  <24.753296, 22.198250, 32.492783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.972910, 22.459167, 32.701809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480368, -0.265378, 0.835955,
		0.683965, -0.709992, 0.167639,
		0.549034, 0.652293, 0.522567,
		25.137621, 22.654856, 32.858578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.302105, 21.659254, 32.839012>,  <24.753296, 22.198250, 32.492783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.302105, 21.659254, 32.839012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.083914, 21.434837, 33.088070>,  <24.952999, 21.300188, 33.237503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.083914, 21.434837, 33.088070>,  <25.302105, 21.659254, 32.839012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.083914, 21.434837, 33.088070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485882, -0.393644, -0.780361,
		0.682915, -0.728202, -0.057875,
		-0.545478, -0.561041, 0.622645,
		24.920271, 21.266525, 33.274864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.279331, 20.889725, 32.715988>,  <25.302105, 21.659254, 32.839012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.279331, 20.889725, 32.715988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.939110, 21.033909, 32.869156>,  <24.734978, 21.120419, 32.961056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.939110, 21.033909, 32.869156>,  <25.279331, 20.889725, 32.715988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.939110, 21.033909, 32.869156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497408, -0.315049, -0.808288,
		-0.170717, -0.877960, 0.447261,
		-0.850554, 0.360460, 0.382920,
		24.683945, 21.142048, 32.984032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.778822, 20.445879, 33.200356>,  <25.279331, 20.889725, 32.715988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.778822, 20.445879, 33.200356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.037344, 20.176777, 33.056305>,  <26.192457, 20.015316, 32.969875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.037344, 20.176777, 33.056305>,  <25.778822, 20.445879, 33.200356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.037344, 20.176777, 33.056305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166098, 0.584653, -0.794098,
		0.744785, 0.453411, 0.489606,
		0.646303, -0.672755, -0.360130,
		26.231236, 19.974951, 32.948265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.326683, 20.806883, 32.939316>,  <25.778822, 20.445879, 33.200356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.326683, 20.806883, 32.939316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.336821, 20.461586, 32.737656>,  <26.342903, 20.254408, 32.616657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.336821, 20.461586, 32.737656>,  <26.326683, 20.806883, 32.939316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.336821, 20.461586, 32.737656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126710, 0.503022, -0.854935,
		0.991616, -0.042213, 0.122131,
		0.025345, -0.863242, -0.504153,
		26.344423, 20.202614, 32.586411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.925524, 20.879036, 32.471310>,  <26.326683, 20.806883, 32.939316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.925524, 20.879036, 32.471310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.707205, 20.585281, 32.309921>,  <26.576214, 20.409029, 32.213089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.707205, 20.585281, 32.309921>,  <26.925524, 20.879036, 32.471310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.707205, 20.585281, 32.309921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122162, 0.406627, -0.905390,
		0.828966, -0.543446, -0.132221,
		-0.545795, -0.734385, -0.403468,
		26.543467, 20.364965, 32.188881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.316566, 20.603745, 31.833115>,  <26.925524, 20.879036, 32.471310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.316566, 20.603745, 31.833115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.940445, 20.491367, 31.756275>,  <26.714773, 20.423941, 31.710171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.940445, 20.491367, 31.756275>,  <27.316566, 20.603745, 31.833115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.940445, 20.491367, 31.756275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026634, 0.623444, -0.781414,
		0.339298, -0.729649, -0.593709,
		-0.940302, -0.280945, -0.192100,
		26.658354, 20.407084, 31.698645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.283749, 20.488476, 31.164928>,  <27.316566, 20.603745, 31.833115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.283749, 20.488476, 31.164928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.896856, 20.521084, 31.261112>,  <26.664721, 20.540649, 31.318823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.896856, 20.521084, 31.261112>,  <27.283749, 20.488476, 31.164928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.896856, 20.521084, 31.261112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177836, 0.458437, -0.870752,
		-0.181221, -0.884980, -0.428917,
		-0.967230, 0.081522, 0.240460,
		26.606688, 20.545540, 31.333250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.009268, 20.147081, 30.592516>,  <27.283749, 20.488476, 31.164928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.009268, 20.147081, 30.592516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.752199, 20.396896, 30.770023>,  <26.597958, 20.546785, 30.876528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.752199, 20.396896, 30.770023>,  <27.009268, 20.147081, 30.592516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.752199, 20.396896, 30.770023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032198, 0.556694, -0.830094,
		-0.765465, -0.547766, -0.337662,
		-0.642671, 0.624536, 0.443767,
		26.559399, 20.584257, 30.903152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.425947, 20.380749, 30.099165>,  <27.009268, 20.147081, 30.592516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.425947, 20.380749, 30.099165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.413443, 20.667450, 30.377815>,  <26.405939, 20.839470, 30.545006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.413443, 20.667450, 30.377815>,  <26.425947, 20.380749, 30.099165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.413443, 20.667450, 30.377815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027534, 0.697320, -0.716231,
		-0.999132, -0.003210, -0.041535,
		-0.031262, 0.716753, 0.696626,
		26.404064, 20.882475, 30.586803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.070910, 20.831076, 29.748245>,  <26.425947, 20.380749, 30.099165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.070910, 20.831076, 29.748245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.204557, 21.035320, 30.065140>,  <26.284746, 21.157867, 30.255276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.204557, 21.035320, 30.065140>,  <26.070910, 20.831076, 29.748245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.204557, 21.035320, 30.065140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056436, 0.849872, -0.523958,
		-0.940839, 0.130356, 0.312778,
		0.334122, 0.510612, 0.792236,
		26.304794, 21.188503, 30.302811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.567005, 21.398291, 29.879282>,  <26.070910, 20.831076, 29.748245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.567005, 21.398291, 29.879282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.921072, 21.489117, 30.041725>,  <26.133512, 21.543612, 30.139191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.921072, 21.489117, 30.041725>,  <25.567005, 21.398291, 29.879282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.921072, 21.489117, 30.041725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035085, 0.902919, -0.428376,
		-0.463951, 0.364936, 0.807200,
		0.885166, 0.227066, 0.406107,
		26.186623, 21.557236, 30.163557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.590130, 22.093372, 29.932653>,  <25.567005, 21.398291, 29.879282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.590130, 22.093372, 29.932653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.977182, 22.003956, 29.979500>,  <26.209414, 21.950306, 30.007607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.977182, 22.003956, 29.979500>,  <25.590130, 22.093372, 29.932653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.977182, 22.003956, 29.979500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252031, 0.832192, -0.493900,
		0.012946, 0.507430, 0.861596,
		0.967633, -0.223543, 0.117115,
		26.267471, 21.936893, 30.014635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.903912, 22.776226, 30.004696>,  <25.590130, 22.093372, 29.932653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.903912, 22.776226, 30.004696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.193998, 22.526863, 29.887791>,  <26.368052, 22.377245, 29.817648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.193998, 22.526863, 29.887791>,  <25.903912, 22.776226, 30.004696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.193998, 22.526863, 29.887791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376671, 0.714558, -0.589513,
		0.576348, 0.317439, 0.753031,
		0.725219, -0.623410, -0.292264,
		26.411564, 22.339840, 29.800112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.506952, 23.126167, 30.154099>,  <25.903912, 22.776226, 30.004696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.506952, 23.126167, 30.154099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.595959, 22.866409, 29.863232>,  <26.649363, 22.710554, 29.688711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.595959, 22.866409, 29.863232>,  <26.506952, 23.126167, 30.154099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.595959, 22.866409, 29.863232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357981, 0.748189, -0.558626,
		0.906828, -0.136009, 0.398954,
		0.222515, -0.649396, -0.727167,
		26.662714, 22.671591, 29.645081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.136362, 23.273314, 29.881346>,  <26.506952, 23.126167, 30.154099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.136362, 23.273314, 29.881346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.985025, 23.056366, 29.581295>,  <26.894224, 22.926197, 29.401264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.985025, 23.056366, 29.581295>,  <27.136362, 23.273314, 29.881346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.985025, 23.056366, 29.581295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230353, 0.729709, -0.643788,
		0.896547, -0.416365, -0.151141,
		-0.378340, -0.542370, -0.750129,
		26.871523, 22.893656, 29.356256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.723379, 23.118221, 29.478485>,  <27.136362, 23.273314, 29.881346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.723379, 23.118221, 29.478485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.383480, 23.089939, 29.269512>,  <27.179541, 23.072969, 29.144129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.383480, 23.089939, 29.269512>,  <27.723379, 23.118221, 29.478485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.383480, 23.089939, 29.269512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371886, 0.622010, -0.689061,
		0.373675, -0.779811, -0.502257,
		-0.849746, -0.070702, -0.522430,
		27.128557, 23.068727, 29.112783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.457556, 23.056086, 29.446068>,  <27.723379, 23.118221, 29.478485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.457556, 23.056086, 29.446068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.747314, 23.269531, 29.620655>,  <28.921169, 23.397598, 29.725407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.747314, 23.269531, 29.620655>,  <28.457556, 23.056086, 29.446068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.747314, 23.269531, 29.620655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111291, -0.534303, 0.837935,
		0.680341, -0.655572, -0.327661,
		0.724397, 0.533616, 0.436467,
		28.964634, 23.429615, 29.751595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909313, 22.607849, 29.534132>,  <28.457556, 23.056086, 29.446068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.909313, 22.607849, 29.534132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.003296, 22.893242, 29.798176>,  <29.059685, 23.064478, 29.956602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.003296, 22.893242, 29.798176>,  <28.909313, 22.607849, 29.534132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.003296, 22.893242, 29.798176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026748, -0.674115, 0.738142,
		0.971638, -0.191088, -0.139304,
		0.234956, 0.713480, 0.660107,
		29.073782, 23.107286, 29.996208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.433344, 22.312500, 29.966034>,  <28.909313, 22.607849, 29.534132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.433344, 22.312500, 29.966034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.252293, 22.611778, 30.160076>,  <29.143661, 22.791346, 30.276503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.252293, 22.611778, 30.160076>,  <29.433344, 22.312500, 29.966034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.252293, 22.611778, 30.160076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026348, -0.555010, 0.831426,
		0.891309, 0.363547, 0.270927,
		-0.452630, 0.748196, 0.485107,
		29.116503, 22.836237, 30.305609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818193, 22.362631, 30.600475>,  <29.433344, 22.312500, 29.966034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818193, 22.362631, 30.600475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.470436, 22.545544, 30.675362>,  <29.261782, 22.655293, 30.720293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.470436, 22.545544, 30.675362>,  <29.818193, 22.362631, 30.600475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.470436, 22.545544, 30.675362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023039, -0.415985, 0.909080,
		0.493586, 0.786033, 0.372189,
		-0.869392, 0.457284, 0.187215,
		29.209618, 22.682730, 30.731525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.861506, 22.497450, 31.304838>,  <29.818193, 22.362631, 30.600475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.861506, 22.497450, 31.304838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.470491, 22.504379, 31.220814>,  <29.235884, 22.508537, 31.170399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.470491, 22.504379, 31.220814>,  <29.861506, 22.497450, 31.304838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.470491, 22.504379, 31.220814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183119, -0.563313, 0.805696,
		-0.104372, 0.826062, 0.553831,
		-0.977535, 0.017324, -0.210062,
		29.177231, 22.509577, 31.157795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590815, 22.568033, 31.937910>,  <29.861506, 22.497450, 31.304838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590815, 22.568033, 31.937910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.269890, 22.451786, 31.729359>,  <29.077335, 22.382038, 31.604227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.269890, 22.451786, 31.729359>,  <29.590815, 22.568033, 31.937910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.269890, 22.451786, 31.729359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284691, -0.581415, 0.762173,
		-0.524639, 0.759933, 0.383740,
		-0.802312, -0.290619, -0.521378,
		29.029196, 22.364601, 31.572945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.905380, 22.647306, 32.417278>,  <29.590815, 22.568033, 31.937910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.905380, 22.647306, 32.417278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.820446, 22.390533, 32.122570>,  <28.769485, 22.236469, 31.945744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.820446, 22.390533, 32.122570>,  <28.905380, 22.647306, 32.417278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.820446, 22.390533, 32.122570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332483, -0.661525, 0.672190,
		-0.918895, 0.387695, -0.072966,
		-0.212336, -0.641932, -0.736775,
		28.756744, 22.197954, 31.901537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.614981, 23.227615, 32.837067>,  <28.905380, 22.647306, 32.417278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.614981, 23.227615, 32.837067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.921329, 23.257771, 33.092491>,  <29.105139, 23.275864, 33.245747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.921329, 23.257771, 33.092491>,  <28.614981, 23.227615, 32.837067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.921329, 23.257771, 33.092491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469914, 0.612234, -0.635886,
		-0.438885, 0.787075, 0.433467,
		0.765872, 0.075388, 0.638558,
		29.151091, 23.280388, 33.284058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854889, 23.940434, 32.847229>,  <28.614981, 23.227615, 32.837067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854889, 23.940434, 32.847229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.187113, 23.766060, 32.985870>,  <29.386448, 23.661436, 33.069054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.187113, 23.766060, 32.985870>,  <28.854889, 23.940434, 32.847229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.187113, 23.766060, 32.985870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554302, 0.586645, -0.590421,
		0.054051, 0.682503, 0.728882,
		0.830559, -0.435933, 0.346604,
		29.436281, 23.635281, 33.089851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339464, 24.493502, 33.039471>,  <28.854889, 23.940434, 32.847229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339464, 24.493502, 33.039471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.558060, 24.163628, 32.981167>,  <29.689217, 23.965704, 32.946182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.558060, 24.163628, 32.981167>,  <29.339464, 24.493502, 33.039471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.558060, 24.163628, 32.981167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653237, 0.528678, -0.542016,
		0.524052, 0.200989, 0.827631,
		0.546490, -0.824683, -0.145761,
		29.722006, 23.916224, 32.937439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.022871, 24.761837, 33.054790>,  <29.339464, 24.493502, 33.039471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.022871, 24.761837, 33.054790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.050329, 24.398006, 32.890862>,  <30.066803, 24.179708, 32.792503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.050329, 24.398006, 32.890862>,  <30.022871, 24.761837, 33.054790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.050329, 24.398006, 32.890862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595016, 0.367059, -0.715000,
		0.800778, -0.194772, 0.566409,
		0.068643, -0.909578, -0.409825,
		30.070923, 24.125134, 32.767914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729855, 24.728720, 33.019135>,  <30.022871, 24.761837, 33.054790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729855, 24.728720, 33.019135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.558508, 24.484013, 32.753128>,  <30.455700, 24.337189, 32.593525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.558508, 24.484013, 32.753128>,  <30.729855, 24.728720, 33.019135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.558508, 24.484013, 32.753128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618228, 0.338321, -0.709459,
		0.659012, -0.715040, 0.233286,
		-0.428366, -0.611766, -0.665015,
		30.429998, 24.300484, 32.553623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270891, 24.487875, 32.636818>,  <30.729855, 24.728720, 33.019135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270891, 24.487875, 32.636818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.961733, 24.418839, 32.392574>,  <30.776237, 24.377417, 32.246029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.961733, 24.418839, 32.392574>,  <31.270891, 24.487875, 32.636818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961733, 24.418839, 32.392574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515375, 0.390620, -0.762761,
		0.370156, -0.904229, -0.212964,
		-0.772899, -0.172584, -0.610608,
		30.729864, 24.367062, 32.209393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383577, 23.990356, 32.077877>,  <31.270891, 24.487875, 32.636818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383577, 23.990356, 32.077877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.075205, 24.190277, 31.919960>,  <30.890181, 24.310228, 31.825209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.075205, 24.190277, 31.919960>,  <31.383577, 23.990356, 32.077877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075205, 24.190277, 31.919960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521539, 0.139575, -0.841734,
		-0.365596, -0.854821, -0.368268,
		-0.770933, 0.499800, -0.394794,
		30.843925, 24.340218, 31.801521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<27.148241, 24.475630, 35.146133> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.816763, 24.343658, 34.965286>,  <26.617876, 24.264477, 34.856777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.816763, 24.343658, 34.965286>,  <27.148241, 24.475630, 35.146133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.816763, 24.343658, 34.965286> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070562, 0.739763, -0.669158,
		0.555236, -0.586430, -0.589757,
		-0.828694, -0.329926, -0.452122,
		26.568155, 24.244680, 34.829651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304646, 24.593235, 34.434471>,  <27.148241, 24.475630, 35.146133>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.304646, 24.593235, 34.434471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.907156, 24.552296, 34.452541>,  <26.668663, 24.527731, 34.463383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.907156, 24.552296, 34.452541>,  <27.304646, 24.593235, 34.434471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.907156, 24.552296, 34.452541> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107972, 0.771619, -0.626854,
		0.029298, -0.627796, -0.777826,
		-0.993722, -0.102349, 0.045178,
		26.609039, 24.521591, 34.466095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.054701, 24.624348, 33.678268>,  <27.304646, 24.593235, 34.434471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.054701, 24.624348, 33.678268> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.732294, 24.684155, 33.907345>,  <26.538849, 24.720039, 34.044792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.732294, 24.684155, 33.907345>,  <27.054701, 24.624348, 33.678268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.732294, 24.684155, 33.907345> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233698, 0.808564, -0.540009,
		-0.543800, -0.569095, -0.616776,
		-0.806019, 0.149517, 0.572694,
		26.490488, 24.729010, 34.079151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.423491, 24.584358, 33.224239>,  <27.054701, 24.624348, 33.678268>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.423491, 24.584358, 33.224239> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.385092, 24.807968, 33.553669>,  <26.362053, 24.942135, 33.751328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.385092, 24.807968, 33.553669>,  <26.423491, 24.584358, 33.224239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.385092, 24.807968, 33.553669> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030841, 0.825327, -0.563812,
		-0.994904, -0.079524, -0.061988,
		-0.095997, 0.559027, 0.823574,
		26.356293, 24.975676, 33.800739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075768, 25.105179, 32.910030>,  <26.423491, 24.584358, 33.224239>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.075768, 25.105179, 32.910030> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.187693, 25.250515, 33.265488>,  <26.254847, 25.337717, 33.478764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.187693, 25.250515, 33.265488>,  <26.075768, 25.105179, 32.910030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.187693, 25.250515, 33.265488> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026959, 0.928226, -0.371038,
		-0.959676, 0.079864, 0.269524,
		0.279812, 0.363343, 0.888644,
		26.271637, 25.359518, 33.532082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.590282, 25.656946, 33.051361>,  <26.075768, 25.105179, 32.910030>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.590282, 25.656946, 33.051361> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.921629, 25.716812, 33.267292>,  <26.120436, 25.752731, 33.396851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.921629, 25.716812, 33.267292>,  <25.590282, 25.656946, 33.051361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.921629, 25.716812, 33.267292> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056503, 0.936414, -0.346318,
		-0.557332, 0.317379, 0.767236,
		0.828365, 0.149663, 0.539826,
		26.170139, 25.761711, 33.429241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.559294, 26.280695, 33.281742>,  <25.590282, 25.656946, 33.051361>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.559294, 26.280695, 33.281742> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.952648, 26.222576, 33.325272>,  <26.188662, 26.187706, 33.351391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.952648, 26.222576, 33.325272>,  <25.559294, 26.280695, 33.281742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.952648, 26.222576, 33.325272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163219, 0.970081, -0.179729,
		-0.079454, 0.194505, 0.977678,
		0.983385, -0.145296, 0.108823,
		26.247663, 26.178988, 33.357918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.766336, 26.842014, 33.665932>,  <25.559294, 26.280695, 33.281742>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.766336, 26.842014, 33.665932> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.090366, 26.707939, 33.473503>,  <26.284784, 26.627495, 33.358047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.090366, 26.707939, 33.473503>,  <25.766336, 26.842014, 33.665932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.090366, 26.707939, 33.473503> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326700, 0.939348, -0.104365,
		0.486876, -0.072623, 0.870447,
		0.810073, -0.335188, -0.481072,
		26.333387, 26.607382, 33.329182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.273779, 27.322783, 33.874870>,  <25.766336, 26.842014, 33.665932>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.273779, 27.322783, 33.874870> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.455126, 27.149433, 33.563320>,  <26.563934, 27.045424, 33.376392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.455126, 27.149433, 33.563320>,  <26.273779, 27.322783, 33.874870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.455126, 27.149433, 33.563320> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539274, 0.829124, -0.147433,
		0.709675, -0.353185, 0.609608,
		0.453369, -0.433375, -0.778872,
		26.591137, 27.019421, 33.329659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.968431, 27.490129, 33.947155>,  <26.273779, 27.322783, 33.874870>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.968431, 27.490129, 33.947155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.919781, 27.398228, 33.560909>,  <26.890591, 27.343086, 33.329163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.919781, 27.398228, 33.560909>,  <26.968431, 27.490129, 33.947155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.919781, 27.398228, 33.560909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504200, 0.823679, -0.259490,
		0.854980, -0.518425, 0.015663,
		-0.121625, -0.229756, -0.965619,
		26.883293, 27.329302, 33.271225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.641165, 27.672789, 33.600334>,  <26.968431, 27.490129, 33.947155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.641165, 27.672789, 33.600334> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.380207, 27.669144, 33.297203>,  <27.223633, 27.666958, 33.115326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.380207, 27.669144, 33.297203>,  <27.641165, 27.672789, 33.600334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.380207, 27.669144, 33.297203> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377712, 0.862987, -0.335539,
		0.657050, -0.505144, -0.559566,
		-0.652394, -0.009111, -0.757825,
		27.184488, 27.666410, 33.069855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.103657, 27.661974, 33.066605>,  <27.641165, 27.672789, 33.600334>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.103657, 27.661974, 33.066605> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.745205, 27.803581, 32.959553>,  <27.530134, 27.888546, 32.895321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.745205, 27.803581, 32.959553>,  <28.103657, 27.661974, 33.066605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.745205, 27.803581, 32.959553> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442284, 0.762124, -0.472812,
		0.036582, -0.542068, -0.839538,
		-0.896128, 0.354018, -0.267628,
		27.476366, 27.909786, 32.879265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.592236, 27.283113, 32.740868>,  <28.103657, 27.661974, 33.066605>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.592236, 27.283113, 32.740868> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.936811, 27.301296, 32.943195>,  <29.143557, 27.312206, 33.064590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.936811, 27.301296, 32.943195>,  <28.592236, 27.283113, 32.740868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.936811, 27.301296, 32.943195> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406204, -0.536132, 0.739973,
		0.304822, -0.842910, -0.443381,
		0.861441, 0.045457, 0.505819,
		29.195244, 27.314934, 33.094940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.804085, 26.530949, 32.965084>,  <28.592236, 27.283113, 32.740868>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.804085, 26.530949, 32.965084> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.969948, 26.803848, 33.205948>,  <29.069466, 26.967588, 33.350464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.969948, 26.803848, 33.205948>,  <28.804085, 26.530949, 32.965084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.969948, 26.803848, 33.205948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277901, -0.535172, 0.797723,
		0.866504, -0.498123, -0.032317,
		0.414659, 0.682249, 0.602158,
		29.094345, 27.008524, 33.386597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.809441, 26.195471, 33.583729>,  <28.804085, 26.530949, 32.965084>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.809441, 26.195471, 33.583729> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.950438, 26.547695, 33.710449>,  <29.035036, 26.759029, 33.786480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.950438, 26.547695, 33.710449>,  <28.809441, 26.195471, 33.583729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.950438, 26.547695, 33.710449> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166901, -0.273944, 0.947153,
		0.920811, -0.386739, 0.050403,
		0.352493, 0.880561, 0.316798,
		29.056185, 26.811863, 33.805489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.337795, 26.126116, 34.046993>,  <28.809441, 26.195471, 33.583729>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.337795, 26.126116, 34.046993> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.169071, 26.480011, 34.126305>,  <29.067837, 26.692348, 34.173893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.169071, 26.480011, 34.126305>,  <29.337795, 26.126116, 34.046993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.169071, 26.480011, 34.126305> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229045, -0.315569, 0.920844,
		0.877278, 0.343005, 0.335755,
		-0.421808, 0.884739, 0.198278,
		29.042528, 26.745432, 34.185787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743692, 26.370785, 34.590473>,  <29.337795, 26.126116, 34.046993>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.743692, 26.370785, 34.590473> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.394268, 26.564758, 34.607090>,  <29.184612, 26.681143, 34.617062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.394268, 26.564758, 34.607090>,  <29.743692, 26.370785, 34.590473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.394268, 26.564758, 34.607090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146303, -0.343043, 0.927856,
		0.464201, 0.804463, 0.370617,
		-0.873563, 0.484935, 0.041545,
		29.132198, 26.710239, 34.619553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676344, 26.791351, 35.252861>,  <29.743692, 26.370785, 34.590473>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676344, 26.791351, 35.252861> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.304935, 26.720387, 35.122398>,  <29.082090, 26.677809, 35.044121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.304935, 26.720387, 35.122398>,  <29.676344, 26.791351, 35.252861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.304935, 26.720387, 35.122398> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243450, -0.372338, 0.895598,
		-0.280329, 0.910983, 0.302532,
		-0.928519, -0.177411, -0.326156,
		29.026381, 26.667164, 35.024551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196289, 26.961895, 35.719162>,  <29.676344, 26.791351, 35.252861>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196289, 26.961895, 35.719162> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.923323, 26.759922, 35.507748>,  <28.759542, 26.638739, 35.380898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.923323, 26.759922, 35.507748>,  <29.196289, 26.961895, 35.719162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.923323, 26.759922, 35.507748> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377529, -0.375695, 0.846360,
		-0.625925, 0.777106, 0.065753,
		-0.682415, -0.504934, -0.528537,
		28.718597, 26.608442, 35.349186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650391, 26.844538, 36.230301>,  <29.196289, 26.961895, 35.719162>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650391, 26.844538, 36.230301> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.544641, 26.588726, 35.941551>,  <28.481192, 26.435238, 35.768299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.544641, 26.588726, 35.941551>,  <28.650391, 26.844538, 36.230301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.544641, 26.588726, 35.941551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489331, -0.556054, 0.671833,
		-0.831061, 0.530852, -0.165936,
		-0.264374, -0.639531, -0.721877,
		28.465330, 26.396866, 35.724987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.916279, 26.732925, 36.373810>,  <28.650391, 26.844538, 36.230301>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.916279, 26.732925, 36.373810> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.044331, 26.436470, 36.137764>,  <28.121161, 26.258596, 35.996136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.044331, 26.436470, 36.137764>,  <27.916279, 26.732925, 36.373810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.044331, 26.436470, 36.137764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197851, -0.661459, 0.723413,
		-0.926485, -0.114830, -0.358386,
		0.320127, -0.741138, -0.590113,
		28.140369, 26.214128, 35.960732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.413292, 26.246632, 36.442883>,  <27.916279, 26.732925, 36.373810>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.413292, 26.246632, 36.442883> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.733673, 26.033325, 36.333996>,  <27.925901, 25.905340, 36.268665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.733673, 26.033325, 36.333996>,  <27.413292, 26.246632, 36.442883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.733673, 26.033325, 36.333996> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247704, -0.709061, 0.660208,
		-0.545085, -0.461366, -0.700017,
		0.800952, -0.533267, -0.272217,
		27.973959, 25.873344, 36.252331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.195625, 25.622076, 36.493942>,  <27.413292, 26.246632, 36.442883>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.195625, 25.622076, 36.493942> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.592890, 25.581184, 36.471375>,  <27.831247, 25.556650, 36.457832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.592890, 25.581184, 36.471375>,  <27.195625, 25.622076, 36.493942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.592890, 25.581184, 36.471375> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036958, -0.733587, 0.678590,
		-0.110759, -0.671863, -0.732347,
		0.993160, -0.102227, -0.056421,
		27.890839, 25.550516, 36.454449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.292950, 24.910769, 36.422054>,  <27.195625, 25.622076, 36.493942>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.292950, 24.910769, 36.422054> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.634520, 25.058376, 36.568825>,  <27.839462, 25.146940, 36.656887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.634520, 25.058376, 36.568825>,  <27.292950, 24.910769, 36.422054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.634520, 25.058376, 36.568825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076887, -0.786820, 0.612374,
		0.514682, -0.494711, -0.700260,
		0.853927, 0.369018, 0.366925,
		27.890697, 25.169083, 36.678902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.624023, 24.324837, 36.549377>,  <27.292950, 24.910769, 36.422054>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.624023, 24.324837, 36.549377> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.830456, 24.604923, 36.746700>,  <27.954315, 24.772976, 36.865093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.830456, 24.604923, 36.746700>,  <27.624023, 24.324837, 36.549377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.830456, 24.604923, 36.746700> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168673, -0.647738, 0.742957,
		0.839767, -0.300218, -0.452394,
		0.516082, 0.700217, 0.493311,
		27.985281, 24.814989, 36.894695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.234379, 23.980858, 36.669479>,  <27.624023, 24.324837, 36.549377>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.234379, 23.980858, 36.669479> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.193163, 24.273144, 36.939423>,  <28.168432, 24.448515, 37.101391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.193163, 24.273144, 36.939423>,  <28.234379, 23.980858, 36.669479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193163, 24.273144, 36.939423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181484, -0.653274, 0.735049,
		0.977981, 0.198217, -0.065299,
		-0.103041, 0.730714, 0.674863,
		28.162251, 24.492357, 37.141880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.270079, 23.464743, 36.051361>,  <28.234379, 23.980858, 36.669479>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.270079, 23.464743, 36.051361> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.268522, 23.073559, 35.967857>,  <28.267588, 22.838848, 35.917755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.268522, 23.073559, 35.967857>,  <28.270079, 23.464743, 36.051361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.268522, 23.073559, 35.967857> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528611, 0.175197, -0.830588,
		0.848855, -0.113584, 0.516278,
		-0.003891, -0.977959, -0.208759,
		28.267355, 22.780170, 35.905231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.945564, 23.219322, 35.932022>,  <28.270079, 23.464743, 36.051361>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.945564, 23.219322, 35.932022> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.690636, 22.978725, 35.739342>,  <28.537680, 22.834368, 35.623734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.690636, 22.978725, 35.739342>,  <28.945564, 23.219322, 35.932022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.690636, 22.978725, 35.739342> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458346, 0.206617, -0.864424,
		0.619469, -0.771699, 0.144009,
		-0.637320, -0.601490, -0.481698,
		28.499439, 22.798279, 35.594833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.335503, 22.781040, 35.531147>,  <28.945564, 23.219322, 35.932022>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.335503, 22.781040, 35.531147> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.976021, 22.762917, 35.356663>,  <28.760332, 22.752043, 35.251972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.976021, 22.762917, 35.356663>,  <29.335503, 22.781040, 35.531147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.976021, 22.762917, 35.356663> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419118, 0.204130, -0.884687,
		0.129123, -0.977895, -0.164465,
		-0.898703, -0.045303, -0.436212,
		28.706409, 22.749325, 35.225800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.482618, 22.333927, 35.018921>,  <29.335503, 22.781040, 35.531147>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.482618, 22.333927, 35.018921> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.150717, 22.536037, 34.924091>,  <28.951576, 22.657303, 34.867191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.150717, 22.536037, 34.924091>,  <29.482618, 22.333927, 35.018921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.150717, 22.536037, 34.924091> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350225, 0.140629, -0.926049,
		-0.434569, -0.851423, -0.293647,
		-0.829755, 0.505275, -0.237077,
		28.901791, 22.687620, 34.852970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.385838, 22.115520, 34.404758>,  <29.482618, 22.333927, 35.018921>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.385838, 22.115520, 34.404758> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.131727, 22.423119, 34.433239>,  <28.979261, 22.607677, 34.450329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.131727, 22.423119, 34.433239>,  <29.385838, 22.115520, 34.404758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.131727, 22.423119, 34.433239> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156145, 0.218187, -0.963335,
		-0.756337, -0.600864, -0.258683,
		-0.635275, 0.768997, 0.071201,
		28.941145, 22.653818, 34.454597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.023895, 22.164892, 33.730614>,  <29.385838, 22.115520, 34.404758>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.023895, 22.164892, 33.730614> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.986696, 22.529327, 33.891247>,  <28.964376, 22.747988, 33.987629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.986696, 22.529327, 33.891247>,  <29.023895, 22.164892, 33.730614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.986696, 22.529327, 33.891247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163816, 0.411837, -0.896412,
		-0.982098, -0.017578, -0.187551,
		-0.092998, 0.911088, 0.401585,
		28.958797, 22.802654, 34.011723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.646410, 22.593010, 33.231953>,  <29.023895, 22.164892, 33.730614>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.646410, 22.593010, 33.231953> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.865124, 22.831940, 33.466637>,  <28.996351, 22.975298, 33.607449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.865124, 22.831940, 33.466637>,  <28.646410, 22.593010, 33.231953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.865124, 22.831940, 33.466637> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345882, 0.477004, -0.807981,
		-0.762491, 0.644723, 0.054214,
		0.546784, 0.597327, 0.586710,
		29.029160, 23.011137, 33.642651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.318621, 22.287487, 32.695526>,  <28.646410, 22.593010, 33.231953>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.318621, 22.287487, 32.695526> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.450554, 22.059303, 32.394650>,  <28.529713, 21.922394, 32.214123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.450554, 22.059303, 32.394650>,  <28.318621, 22.287487, 32.695526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.450554, 22.059303, 32.394650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202078, -0.820971, 0.534013,
		-0.922157, -0.024134, -0.386061,
		0.329833, -0.570459, -0.752188,
		28.549503, 21.888166, 32.168995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.824244, 21.906721, 32.587334>,  <28.318621, 22.287487, 32.695526>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.824244, 21.906721, 32.587334> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.149368, 21.718601, 32.449841>,  <28.344444, 21.605730, 32.367344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.149368, 21.718601, 32.449841>,  <27.824244, 21.906721, 32.587334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.149368, 21.718601, 32.449841> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101733, -0.695611, 0.711178,
		-0.573571, -0.543087, -0.613248,
		0.812814, -0.470299, -0.343732,
		28.393213, 21.577511, 32.346722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.660505, 21.279453, 32.807869>,  <27.824244, 21.906721, 32.587334>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.660505, 21.279453, 32.807869> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.041451, 21.252651, 32.688862>,  <28.270018, 21.236570, 32.617458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.041451, 21.252651, 32.688862>,  <27.660505, 21.279453, 32.807869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.041451, 21.252651, 32.688862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156028, -0.731160, 0.664124,
		-0.262029, -0.678908, -0.685875,
		0.952363, -0.067004, -0.297514,
		28.327160, 21.232550, 32.599609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.754526, 20.623121, 32.630199>,  <27.660505, 21.279453, 32.807869>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.754526, 20.623121, 32.630199> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.125877, 20.744591, 32.715893>,  <28.348688, 20.817472, 32.767307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.125877, 20.744591, 32.715893>,  <27.754526, 20.623121, 32.630199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.125877, 20.744591, 32.715893> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110553, -0.776026, 0.620936,
		0.354810, -0.552780, -0.754018,
		0.928379, 0.303673, 0.214231,
		28.404390, 20.835693, 32.780163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.148186, 20.052744, 32.535973>,  <27.754526, 20.623121, 32.630199>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.148186, 20.052744, 32.535973> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.356213, 20.302929, 32.768635>,  <28.481030, 20.453041, 32.908234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.356213, 20.302929, 32.768635>,  <28.148186, 20.052744, 32.535973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.356213, 20.302929, 32.768635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039244, -0.662781, 0.747785,
		0.853224, -0.411725, -0.320144,
		0.520067, 0.625464, 0.581658,
		28.512232, 20.490568, 32.943130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.757893, 19.600460, 32.787140>,  <28.148186, 20.052744, 32.535973>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.757893, 19.600460, 32.787140> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.758930, 19.913013, 33.036758>,  <28.759552, 20.100546, 33.186527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.758930, 19.913013, 33.036758>,  <28.757893, 19.600460, 32.787140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758930, 19.913013, 33.036758> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014040, -0.623956, 0.781333,
		0.999898, -0.010786, 0.009354,
		0.002592, 0.781385, 0.624044,
		28.759708, 20.147429, 33.223972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320862, 19.471956, 33.224957>,  <28.757893, 19.600460, 32.787140>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320862, 19.471956, 33.224957> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.057781, 19.706787, 33.413750>,  <28.899933, 19.847687, 33.527027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.057781, 19.706787, 33.413750>,  <29.320862, 19.471956, 33.224957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.057781, 19.706787, 33.413750> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129689, -0.528965, 0.838676,
		0.742031, 0.612809, 0.271763,
		-0.657701, 0.587079, 0.471983,
		28.860472, 19.882912, 33.555344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.711853, 19.497581, 33.781181>,  <29.320862, 19.471956, 33.224957>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.711853, 19.497581, 33.781181> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.339449, 19.618568, 33.862896>,  <29.116007, 19.691160, 33.911922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.339449, 19.618568, 33.862896>,  <29.711853, 19.497581, 33.781181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.339449, 19.618568, 33.862896> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106019, -0.311460, 0.944327,
		0.349254, 0.900837, 0.257906,
		-0.931011, 0.302467, 0.204284,
		29.060146, 19.709309, 33.924183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.713797, 19.785248, 34.463551>,  <29.711853, 19.497581, 33.781181>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.713797, 19.785248, 34.463551> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.330441, 19.700623, 34.386890>,  <29.100428, 19.649847, 34.340893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.330441, 19.700623, 34.386890>,  <29.713797, 19.785248, 34.463551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.330441, 19.700623, 34.386890> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092479, -0.405057, 0.909603,
		-0.270069, 0.889477, 0.368637,
		-0.958390, -0.211564, -0.191651,
		29.042923, 19.637154, 34.329395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<30.569559, 30.891792, 23.342766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.174650, 30.890102, 23.279179>,  <29.937704, 30.889088, 23.241026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.174650, 30.890102, 23.279179>,  <30.569559, 30.891792, 23.342766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.174650, 30.890102, 23.279179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133871, -0.517484, 0.845156,
		-0.085836, 0.855683, 0.510333,
		-0.987274, -0.004227, -0.158970,
		29.878468, 30.888834, 23.231487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.315100, 30.954468, 24.046982>,  <30.569559, 30.891792, 23.342766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.315100, 30.954468, 24.046982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.034519, 30.797432, 23.809044>,  <29.866171, 30.703211, 23.666281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.034519, 30.797432, 23.809044>,  <30.315100, 30.954468, 24.046982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.034519, 30.797432, 23.809044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289507, -0.605706, 0.741152,
		-0.651268, 0.692094, 0.311217,
		-0.701453, -0.392589, -0.594843,
		29.824083, 30.679655, 23.630590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.801718, 30.993027, 24.483673>,  <30.315100, 30.954468, 24.046982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.801718, 30.993027, 24.483673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.759716, 30.706615, 24.207623>,  <29.734516, 30.534769, 24.041992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.759716, 30.706615, 24.207623>,  <29.801718, 30.993027, 24.483673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.759716, 30.706615, 24.207623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052028, -0.689057, 0.722837,
		-0.993110, 0.111805, 0.035099,
		-0.105002, -0.716031, -0.690127,
		29.728216, 30.491806, 24.000584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.487522, 30.489811, 24.791424>,  <29.801718, 30.993027, 24.483673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.487522, 30.489811, 24.791424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.602615, 30.286175, 24.466946>,  <29.671671, 30.163994, 24.272259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.602615, 30.286175, 24.466946>,  <29.487522, 30.489811, 24.791424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.602615, 30.286175, 24.466946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135043, -0.816986, 0.560622,
		-0.948142, -0.270855, -0.166324,
		0.287732, -0.509088, -0.811196,
		29.688934, 30.133448, 24.223587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.167425, 29.901844, 24.863497>,  <29.487522, 30.489811, 24.791424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.167425, 29.901844, 24.863497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.470058, 29.814739, 24.616867>,  <29.651638, 29.762476, 24.468889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.470058, 29.814739, 24.616867>,  <29.167425, 29.901844, 24.863497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.470058, 29.814739, 24.616867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075807, -0.907351, 0.413481,
		-0.649490, -0.359573, -0.669978,
		0.756582, -0.217763, -0.616574,
		29.697033, 29.749411, 24.431894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.093191, 29.214342, 24.677553>,  <29.167425, 29.901844, 24.863497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.093191, 29.214342, 24.677553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.477373, 29.279316, 24.587093>,  <29.707882, 29.318300, 24.532818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.477373, 29.279316, 24.587093>,  <29.093191, 29.214342, 24.677553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477373, 29.279316, 24.587093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219436, -0.941528, 0.255681,
		-0.171394, -0.295195, -0.939938,
		0.960454, 0.162434, -0.226148,
		29.765509, 29.328047, 24.519249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.315348, 28.565304, 24.303585>,  <29.093191, 29.214342, 24.677553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.315348, 28.565304, 24.303585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.658331, 28.747482, 24.399361>,  <29.864120, 28.856789, 24.456827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.658331, 28.747482, 24.399361>,  <29.315348, 28.565304, 24.303585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658331, 28.747482, 24.399361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378299, -0.873422, 0.306634,
		0.348787, -0.172346, -0.921219,
		0.857460, 0.455447, 0.239440,
		29.915569, 28.884117, 24.471193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.872751, 28.121740, 24.110794>,  <29.315348, 28.565304, 24.303585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.872751, 28.121740, 24.110794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.065960, 28.337719, 24.386517>,  <30.181885, 28.467306, 24.551950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.065960, 28.337719, 24.386517>,  <29.872751, 28.121740, 24.110794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.065960, 28.337719, 24.386517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207836, -0.835437, 0.508773,
		0.850583, -0.102487, -0.515756,
		0.483024, 0.539947, 0.689308,
		30.210867, 28.499702, 24.593309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503027, 27.750057, 24.272434>,  <29.872751, 28.121740, 24.110794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503027, 27.750057, 24.272434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.408264, 27.989357, 24.578629>,  <30.351406, 28.132936, 24.762346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.408264, 27.989357, 24.578629>,  <30.503027, 27.750057, 24.272434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.408264, 27.989357, 24.578629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217660, -0.735206, 0.641947,
		0.946837, 0.318698, 0.043959,
		-0.236906, 0.598251, 0.765488,
		30.337193, 28.168833, 24.808275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062243, 27.633142, 24.737432>,  <30.503027, 27.750057, 24.272434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062243, 27.633142, 24.737432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.753668, 27.791649, 24.936573>,  <30.568523, 27.886753, 25.056057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.753668, 27.791649, 24.936573>,  <31.062243, 27.633142, 24.737432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.753668, 27.791649, 24.936573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096191, -0.700791, 0.706851,
		0.628991, 0.593181, 0.502500,
		-0.771438, 0.396267, 0.497851,
		30.522236, 27.910528, 25.085928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.211132, 27.513235, 25.413721>,  <31.062243, 27.633142, 24.737432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.211132, 27.513235, 25.413721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827091, 27.611286, 25.467556>,  <30.596666, 27.670116, 25.499857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827091, 27.611286, 25.467556>,  <31.211132, 27.513235, 25.413721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827091, 27.611286, 25.467556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047100, -0.616157, 0.786214,
		0.275649, 0.748508, 0.603120,
		-0.960104, 0.245126, 0.134588,
		30.539061, 27.684824, 25.507933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171310, 27.635138, 26.028368>,  <31.211132, 27.513235, 25.413721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171310, 27.635138, 26.028368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.808167, 27.537216, 25.892212>,  <30.590281, 27.478464, 25.810518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.808167, 27.537216, 25.892212>,  <31.171310, 27.635138, 26.028368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.808167, 27.537216, 25.892212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055998, -0.733781, 0.677075,
		-0.415520, 0.633749, 0.652461,
		-0.907859, -0.244801, -0.340389,
		30.535809, 27.463776, 25.790094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.193279, 28.125854, 26.644323>,  <31.171310, 27.635138, 26.028368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.193279, 28.125854, 26.644323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544113, 28.127087, 26.836452>,  <31.754614, 28.127827, 26.951731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544113, 28.127087, 26.836452>,  <31.193279, 28.125854, 26.644323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544113, 28.127087, 26.836452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334480, 0.713770, -0.615350,
		-0.344736, 0.700373, 0.625008,
		0.877087, 0.003081, 0.480323,
		31.807240, 28.128012, 26.980549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302967, 28.736555, 26.951059>,  <31.193279, 28.125854, 26.644323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302967, 28.736555, 26.951059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682465, 28.613808, 26.920830>,  <31.910164, 28.540159, 26.902691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682465, 28.613808, 26.920830>,  <31.302967, 28.736555, 26.951059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682465, 28.613808, 26.920830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219283, 0.811390, -0.541813,
		0.227588, 0.497470, 0.837095,
		0.948746, -0.306870, -0.075576,
		31.967089, 28.521746, 26.898157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724382, 29.437281, 27.036610>,  <31.302967, 28.736555, 26.951059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724382, 29.437281, 27.036610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938437, 29.162151, 26.840435>,  <32.066868, 28.997074, 26.722731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938437, 29.162151, 26.840435>,  <31.724382, 29.437281, 27.036610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938437, 29.162151, 26.840435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338185, 0.706439, -0.621751,
		0.774119, 0.166862, 0.610652,
		0.535135, -0.687823, -0.490438,
		32.098976, 28.955805, 26.693304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383167, 29.640501, 27.097662>,  <31.724382, 29.437281, 27.036610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383167, 29.640501, 27.097662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333805, 29.430489, 26.760826>,  <32.304188, 29.304482, 26.558725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333805, 29.430489, 26.760826>,  <32.383167, 29.640501, 27.097662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333805, 29.430489, 26.760826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305726, 0.787187, -0.535602,
		0.944089, -0.323542, 0.063376,
		-0.123401, -0.525031, -0.842089,
		32.296783, 29.272980, 26.508200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018158, 29.872238, 26.695326>,  <32.383167, 29.640501, 27.097662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018158, 29.872238, 26.695326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779690, 29.671516, 26.444641>,  <32.636608, 29.551083, 26.294230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779690, 29.671516, 26.444641>,  <33.018158, 29.872238, 26.695326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779690, 29.671516, 26.444641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402089, 0.489034, -0.774061,
		0.694911, -0.713469, -0.089779,
		-0.596173, -0.501805, -0.626714,
		32.600838, 29.520975, 26.256626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462231, 29.472765, 26.153564>,  <33.018158, 29.872238, 26.695326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462231, 29.472765, 26.153564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099190, 29.512867, 25.990490>,  <32.881367, 29.536928, 25.892645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099190, 29.512867, 25.990490>,  <33.462231, 29.472765, 26.153564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099190, 29.512867, 25.990490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407203, 0.446602, -0.796701,
		0.102201, -0.889098, -0.446160,
		-0.907601, 0.100254, -0.407687,
		32.826908, 29.542942, 25.868183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517849, 29.214970, 25.454647>,  <33.462231, 29.472765, 26.153564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517849, 29.214970, 25.454647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197227, 29.454136, 25.453438>,  <33.004856, 29.597635, 25.452713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197227, 29.454136, 25.453438>,  <33.517849, 29.214970, 25.454647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197227, 29.454136, 25.453438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383762, 0.510576, -0.769441,
		-0.458518, -0.617907, -0.638711,
		-0.801553, 0.597916, -0.003021,
		32.956760, 29.633511, 25.452532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348881, 29.342600, 24.727770>,  <33.517849, 29.214970, 25.454647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348881, 29.342600, 24.727770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188351, 29.627529, 24.958084>,  <33.092033, 29.798487, 25.096272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188351, 29.627529, 24.958084>,  <33.348881, 29.342600, 24.727770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188351, 29.627529, 24.958084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412961, 0.701833, -0.580425,
		-0.817556, 0.004835, -0.575829,
		-0.401329, 0.712325, 0.575784,
		33.067951, 29.841227, 25.130819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064789, 29.669661, 24.222689>,  <33.348881, 29.342600, 24.727770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064789, 29.669661, 24.222689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059940, 29.915943, 24.537842>,  <33.057034, 30.063713, 24.726933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059940, 29.915943, 24.537842>,  <33.064789, 29.669661, 24.222689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059940, 29.915943, 24.537842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376367, 0.732803, -0.566876,
		-0.926391, 0.289662, -0.240613,
		-0.012119, 0.615708, 0.787881,
		33.056305, 30.100655, 24.774206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914520, 30.370571, 23.893555>,  <33.064789, 29.669661, 24.222689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914520, 30.370571, 23.893555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058853, 30.458755, 24.256035>,  <33.145451, 30.511665, 24.473522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058853, 30.458755, 24.256035>,  <32.914520, 30.370571, 23.893555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058853, 30.458755, 24.256035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464952, 0.799778, -0.379704,
		-0.808469, 0.558348, 0.186079,
		0.360828, 0.220461, 0.906201,
		33.167103, 30.524895, 24.527895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603409, 31.004292, 24.061260>,  <32.914520, 30.370571, 23.893555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603409, 31.004292, 24.061260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957069, 30.946060, 24.238834>,  <33.169266, 30.911121, 24.345379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957069, 30.946060, 24.238834>,  <32.603409, 31.004292, 24.061260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957069, 30.946060, 24.238834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322225, 0.878058, -0.353815,
		-0.338294, 0.455874, 0.823247,
		0.884154, -0.145577, 0.443936,
		33.222317, 30.902388, 24.372015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891796, 31.607971, 24.013443>,  <32.603409, 31.004292, 24.061260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891796, 31.607971, 24.013443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210484, 31.389103, 24.116085>,  <33.401695, 31.257782, 24.177670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210484, 31.389103, 24.116085>,  <32.891796, 31.607971, 24.013443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210484, 31.389103, 24.116085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604349, 0.722669, -0.335428,
		-0.001904, 0.422320, 0.906445,
		0.796717, -0.547170, 0.256605,
		33.449497, 31.224953, 24.193066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381981, 32.084961, 24.197021>,  <32.891796, 31.607971, 24.013443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381981, 32.084961, 24.197021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594940, 31.755295, 24.119762>,  <33.722717, 31.557495, 24.073406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594940, 31.755295, 24.119762>,  <33.381981, 32.084961, 24.197021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594940, 31.755295, 24.119762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628840, 0.537820, -0.561526,
		0.566669, 0.177495, 0.804601,
		0.532398, -0.824164, -0.193150,
		33.754658, 31.508045, 24.061817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097584, 32.223381, 24.360044>,  <33.381981, 32.084961, 24.197021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097584, 32.223381, 24.360044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070667, 31.931782, 24.087566>,  <34.054516, 31.756821, 23.924080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070667, 31.931782, 24.087566>,  <34.097584, 32.223381, 24.360044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070667, 31.931782, 24.087566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495425, 0.568212, -0.657031,
		0.866040, -0.381694, 0.322930,
		-0.067292, -0.729003, -0.681195,
		34.050480, 31.713081, 23.883207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752209, 32.793827, 24.772532>,  <34.097584, 32.223381, 24.360044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752209, 32.793827, 24.772532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612240, 33.147072, 24.897537>,  <33.528259, 33.359020, 24.972540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612240, 33.147072, 24.897537>,  <33.752209, 32.793827, 24.772532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612240, 33.147072, 24.897537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007973, -0.336400, 0.941685,
		0.936747, 0.327021, 0.124753,
		-0.349918, 0.883115, 0.312515,
		33.507263, 33.412006, 24.991291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055756, 32.852150, 25.386440>,  <33.752209, 32.793827, 24.772532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055756, 32.852150, 25.386440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787113, 33.146126, 25.423988>,  <33.625927, 33.322510, 25.446516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787113, 33.146126, 25.423988>,  <34.055756, 32.852150, 25.386440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787113, 33.146126, 25.423988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076965, -0.195214, 0.977736,
		0.736897, 0.649432, 0.187672,
		-0.671610, 0.734935, 0.093869,
		33.585629, 33.366608, 25.452148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267086, 33.338398, 25.879818>,  <34.055756, 32.852150, 25.386440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267086, 33.338398, 25.879818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869934, 33.328533, 25.833191>,  <33.631645, 33.322613, 25.805216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869934, 33.328533, 25.833191>,  <34.267086, 33.338398, 25.879818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869934, 33.328533, 25.833191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084519, -0.543771, 0.834967,
		-0.083980, 0.838871, 0.537813,
		-0.992877, -0.024665, -0.116566,
		33.572071, 33.321133, 25.798222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037960, 33.250114, 26.538013>,  <34.267086, 33.338398, 25.879818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037960, 33.250114, 26.538013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698044, 33.157246, 26.348717>,  <33.494095, 33.101524, 26.235140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698044, 33.157246, 26.348717>,  <34.037960, 33.250114, 26.538013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698044, 33.157246, 26.348717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314465, -0.497238, 0.808619,
		-0.423049, 0.835974, 0.349539,
		-0.849789, -0.232167, -0.473241,
		33.443108, 33.087597, 26.206745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499100, 33.424335, 26.974884>,  <34.037960, 33.250114, 26.538013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499100, 33.424335, 26.974884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303787, 33.174927, 26.730652>,  <33.186600, 33.025284, 26.584112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303787, 33.174927, 26.730652>,  <33.499100, 33.424335, 26.974884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303787, 33.174927, 26.730652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612638, -0.253359, 0.748655,
		-0.621496, 0.739617, -0.258282,
		-0.488280, -0.623519, -0.610579,
		33.157303, 32.987869, 26.547478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708900, 33.545300, 27.018991>,  <33.499100, 33.424335, 26.974884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708900, 33.545300, 27.018991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760742, 33.164536, 26.907944>,  <32.791847, 32.936077, 26.841314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760742, 33.164536, 26.907944>,  <32.708900, 33.545300, 27.018991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760742, 33.164536, 26.907944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557519, -0.301489, 0.773484,
		-0.819985, 0.054532, -0.569781,
		0.129603, -0.951909, -0.277619,
		32.799622, 32.878963, 26.824657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.087395, 33.243938, 27.236855>,  <32.708900, 33.545300, 27.018991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.087395, 33.243938, 27.236855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328098, 32.937252, 27.147388>,  <32.472523, 32.753239, 27.093708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328098, 32.937252, 27.147388>,  <32.087395, 33.243938, 27.236855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328098, 32.937252, 27.147388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481191, -0.571560, 0.664662,
		-0.637445, -0.292343, -0.712881,
		0.601763, -0.766717, -0.223665,
		32.508629, 32.707237, 27.080290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590530, 32.648064, 27.237787>,  <32.087395, 33.243938, 27.236855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590530, 32.648064, 27.237787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967859, 32.520092, 27.273083>,  <32.194256, 32.443310, 27.294260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967859, 32.520092, 27.273083>,  <31.590530, 32.648064, 27.237787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967859, 32.520092, 27.273083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320231, -0.807633, 0.495158,
		-0.087153, -0.495350, -0.864310,
		0.943322, -0.319933, 0.088239,
		32.250854, 32.424110, 27.299555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517193, 32.022190, 26.946239>,  <31.590530, 32.648064, 27.237787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517193, 32.022190, 26.946239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824755, 32.032150, 27.201790>,  <32.009293, 32.038128, 27.355120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824755, 32.032150, 27.201790>,  <31.517193, 32.022190, 26.946239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824755, 32.032150, 27.201790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451012, -0.687136, 0.569589,
		0.453180, -0.726102, -0.517111,
		0.768906, 0.024904, 0.638877,
		32.055428, 32.039619, 27.393454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765987, 31.298038, 26.997265>,  <31.517193, 32.022190, 26.946239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765987, 31.298038, 26.997265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864920, 31.518959, 27.315708>,  <31.924280, 31.651512, 27.506775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864920, 31.518959, 27.315708>,  <31.765987, 31.298038, 26.997265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864920, 31.518959, 27.315708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253614, -0.756089, 0.603331,
		0.935151, -0.351128, -0.046934,
		0.247332, 0.552303, 0.796108,
		31.939119, 31.684650, 27.554541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056938, 30.801134, 27.393604>,  <31.765987, 31.298038, 26.997265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056938, 30.801134, 27.393604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004787, 31.111217, 27.640846>,  <31.973497, 31.297268, 27.789190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004787, 31.111217, 27.640846>,  <32.056938, 30.801134, 27.393604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004787, 31.111217, 27.640846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102180, -0.630611, 0.769343,
		0.986185, 0.037148, 0.161429,
		-0.130379, 0.775209, 0.618103,
		31.965673, 31.343781, 27.826277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474857, 30.722750, 27.991562>,  <32.056938, 30.801134, 27.393604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474857, 30.722750, 27.991562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185883, 30.961391, 28.131363>,  <32.012497, 31.104576, 28.215242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185883, 30.961391, 28.131363>,  <32.474857, 30.722750, 27.991562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185883, 30.961391, 28.131363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094489, -0.585911, 0.804847,
		0.684951, 0.548427, 0.479656,
		-0.722436, 0.596603, 0.349500,
		31.969152, 31.140373, 28.236214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582462, 30.733688, 28.740150>,  <32.474857, 30.722750, 27.991562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582462, 30.733688, 28.740150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204914, 30.839794, 28.661411>,  <31.978386, 30.903458, 28.614168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204914, 30.839794, 28.661411>,  <32.582462, 30.733688, 28.740150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204914, 30.839794, 28.661411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313082, -0.528386, 0.789169,
		0.105327, 0.806501, 0.581775,
		-0.943868, 0.265264, -0.196847,
		31.921753, 30.919373, 28.602358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312325, 30.859358, 29.410669>,  <32.582462, 30.733688, 28.740150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312325, 30.859358, 29.410669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978430, 30.827599, 29.192715>,  <31.778091, 30.808544, 29.061941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978430, 30.827599, 29.192715>,  <32.312325, 30.859358, 29.410669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978430, 30.827599, 29.192715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431152, -0.521282, 0.736459,
		-0.342513, 0.849682, 0.400904,
		-0.834741, -0.079397, -0.544888,
		31.728008, 30.803780, 29.029247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733673, 31.127844, 29.827702>,  <32.312325, 30.859358, 29.410669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733673, 31.127844, 29.827702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567343, 30.870956, 29.570129>,  <31.467545, 30.716824, 29.415586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567343, 30.870956, 29.570129>,  <31.733673, 31.127844, 29.827702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567343, 30.870956, 29.570129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460886, -0.461578, 0.757977,
		-0.784010, 0.611966, -0.104052,
		-0.415828, -0.642218, -0.643928,
		31.442595, 30.678291, 29.376951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133411, 30.995062, 30.091776>,  <31.733673, 31.127844, 29.827702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133411, 30.995062, 30.091776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.154634, 30.691826, 29.831779>,  <31.167368, 30.509884, 29.675781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.154634, 30.691826, 29.831779>,  <31.133411, 30.995062, 30.091776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154634, 30.691826, 29.831779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378411, -0.617625, 0.689452,
		-0.924116, 0.209385, -0.319638,
		0.053056, -0.758088, -0.649991,
		31.170551, 30.464399, 29.636782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453724, 30.668186, 30.003710>,  <31.133411, 30.995062, 30.091776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.453724, 30.668186, 30.003710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.734255, 30.397499, 29.914093>,  <30.902573, 30.235086, 29.860323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.734255, 30.397499, 29.914093>,  <30.453724, 30.668186, 30.003710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.734255, 30.397499, 29.914093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410586, -0.640409, 0.649073,
		-0.582716, -0.363225, -0.726987,
		0.701328, -0.676716, -0.224042,
		30.944653, 30.194485, 29.846880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.087208, 29.963036, 30.026258>,  <30.453724, 30.668186, 30.003710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.087208, 29.963036, 30.026258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478764, 29.884377, 30.048534>,  <30.713697, 29.837181, 30.061899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478764, 29.884377, 30.048534>,  <30.087208, 29.963036, 30.026258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478764, 29.884377, 30.048534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178279, -0.688317, 0.703161,
		-0.099944, -0.698247, -0.708846,
		0.978891, -0.196649, 0.055690,
		30.772430, 29.825382, 30.065241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.100731, 29.303429, 30.003002>,  <30.087208, 29.963036, 30.026258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.100731, 29.303429, 30.003002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.463184, 29.383308, 30.152157>,  <30.680656, 29.431236, 30.241650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.463184, 29.383308, 30.152157>,  <30.100731, 29.303429, 30.003002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463184, 29.383308, 30.152157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086773, -0.775036, 0.625931,
		0.413999, -0.599533, -0.684957,
		0.906132, 0.199698, 0.372888,
		30.735023, 29.443218, 30.264023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392351, 28.649279, 29.973089>,  <30.100731, 29.303429, 30.003002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392351, 28.649279, 29.973089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603725, 28.860329, 30.239132>,  <30.730551, 28.986958, 30.398758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603725, 28.860329, 30.239132>,  <30.392351, 28.649279, 29.973089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603725, 28.860329, 30.239132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246892, -0.654060, 0.715017,
		0.812280, -0.542051, -0.215363,
		0.528437, 0.527623, 0.665108,
		30.762257, 29.018616, 30.438663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783943, 28.144558, 30.287592>,  <30.392351, 28.649279, 29.973089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783943, 28.144558, 30.287592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.762865, 28.464092, 30.527287>,  <30.750217, 28.655813, 30.671103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.762865, 28.464092, 30.527287>,  <30.783943, 28.144558, 30.287592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762865, 28.464092, 30.527287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244584, -0.592119, 0.767837,
		0.968195, -0.106101, 0.226585,
		-0.052697, 0.798835, 0.599237,
		30.747055, 28.703743, 30.707058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088064, 27.873322, 30.889484>,  <30.783943, 28.144558, 30.287592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.088064, 27.873322, 30.889484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887156, 28.203819, 30.991501>,  <30.766611, 28.402119, 31.052710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887156, 28.203819, 30.991501>,  <31.088064, 27.873322, 30.889484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887156, 28.203819, 30.991501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165096, -0.381147, 0.909654,
		0.848803, 0.414787, 0.327849,
		-0.502271, 0.826244, 0.255039,
		30.736475, 28.451693, 31.068012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362833, 28.032417, 31.490509>,  <31.088064, 27.873322, 30.889484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362833, 28.032417, 31.490509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013721, 28.227276, 31.478233>,  <30.804255, 28.344191, 31.470869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013721, 28.227276, 31.478233>,  <31.362833, 28.032417, 31.490509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013721, 28.227276, 31.478233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234003, -0.362412, 0.902164,
		0.428367, 0.794571, 0.430300,
		-0.872780, 0.487149, -0.030687,
		30.751888, 28.373421, 31.469027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251322, 28.376839, 32.186077>,  <31.362833, 28.032417, 31.490509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251322, 28.376839, 32.186077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899342, 28.333565, 32.001045>,  <30.688152, 28.307600, 31.890026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899342, 28.333565, 32.001045>,  <31.251322, 28.376839, 32.186077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899342, 28.333565, 32.001045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408439, -0.324994, 0.852969,
		-0.242615, 0.939508, 0.241791,
		-0.879952, -0.108186, -0.462580,
		30.635357, 28.301109, 31.862270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744371, 28.587116, 32.676178>,  <31.251322, 28.376839, 32.186077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744371, 28.587116, 32.676178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.516823, 28.374050, 32.425529>,  <30.380295, 28.246210, 32.275139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.516823, 28.374050, 32.425529>,  <30.744371, 28.587116, 32.676178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.516823, 28.374050, 32.425529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481151, -0.402368, 0.778842,
		-0.666993, 0.744560, -0.027396,
		-0.568871, -0.532664, -0.626622,
		30.346161, 28.214251, 32.237541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055172, 28.659773, 32.811310>,  <30.744371, 28.587116, 32.676178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.055172, 28.659773, 32.811310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035547, 28.326393, 32.591145>,  <30.023771, 28.126366, 32.459045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035547, 28.326393, 32.591145>,  <30.055172, 28.659773, 32.811310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035547, 28.326393, 32.591145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635781, -0.398952, 0.660772,
		-0.770308, 0.382364, -0.510317,
		-0.049064, -0.833448, -0.550416,
		30.020828, 28.076359, 32.426022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392775, 28.458273, 32.958279>,  <30.055172, 28.659773, 32.811310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392775, 28.458273, 32.958279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.562393, 28.132133, 32.800598>,  <29.664164, 27.936451, 32.705990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.562393, 28.132133, 32.800598>,  <29.392775, 28.458273, 32.958279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.562393, 28.132133, 32.800598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581272, -0.578817, 0.571920,
		-0.694484, -0.013382, -0.719384,
		0.424045, -0.815348, -0.394201,
		29.689608, 27.887529, 32.682339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.834122, 28.039974, 32.768524>,  <29.392775, 28.458273, 32.958279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.834122, 28.039974, 32.768524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.150661, 27.796234, 32.788345>,  <29.340586, 27.649990, 32.800240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.150661, 27.796234, 32.788345>,  <28.834122, 28.039974, 32.768524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.150661, 27.796234, 32.788345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458239, -0.537539, 0.707863,
		-0.404697, -0.582877, -0.704610,
		0.791352, -0.609349, 0.049557,
		29.388067, 27.613430, 32.803211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.158176, 27.994074, 32.251534>,  <28.834122, 28.039974, 32.768524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.158176, 27.994074, 32.251534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.805466, 28.140694, 32.370266>,  <27.593840, 28.228666, 32.441505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.805466, 28.140694, 32.370266>,  <28.158176, 27.994074, 32.251534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.805466, 28.140694, 32.370266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043265, 0.689531, -0.722963,
		-0.469677, -0.624650, -0.623871,
		-0.881778, 0.366551, 0.296831,
		27.540932, 28.250660, 32.459316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820181, 28.192451, 31.650869>,  <28.158176, 27.994074, 32.251534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.820181, 28.192451, 31.650869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.642044, 28.402962, 31.940617>,  <27.535162, 28.529268, 32.114464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.642044, 28.402962, 31.940617>,  <27.820181, 28.192451, 31.650869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.642044, 28.402962, 31.940617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018786, 0.803351, -0.595210,
		-0.895164, -0.278679, -0.347878,
		-0.445341, 0.526275, 0.724366,
		27.508442, 28.560844, 32.157925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.303869, 28.619999, 31.367329>,  <27.820181, 28.192451, 31.650869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.303869, 28.619999, 31.367329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393368, 28.794247, 31.716080>,  <27.447067, 28.898796, 31.925331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393368, 28.794247, 31.716080>,  <27.303869, 28.619999, 31.367329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.393368, 28.794247, 31.716080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094738, 0.880601, -0.464291,
		-0.970032, 0.186484, 0.155762,
		0.223747, 0.435620, 0.871878,
		27.460491, 28.924932, 31.977644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.100201, 29.354282, 31.249311>,  <27.303869, 28.619999, 31.367329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.100201, 29.354282, 31.249311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.322754, 29.413528, 31.576359>,  <27.456285, 29.449076, 31.772587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.322754, 29.413528, 31.576359>,  <27.100201, 29.354282, 31.249311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.322754, 29.413528, 31.576359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262523, 0.902249, -0.342093,
		-0.788364, 0.404979, 0.463114,
		0.556385, 0.148116, 0.817617,
		27.489670, 29.457964, 31.821644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.840700, 29.947496, 31.525209>,  <27.100201, 29.354282, 31.249311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.840700, 29.947496, 31.525209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.217409, 29.888386, 31.646023>,  <27.443436, 29.852919, 31.718512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.217409, 29.888386, 31.646023>,  <26.840700, 29.947496, 31.525209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.217409, 29.888386, 31.646023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271339, 0.864509, -0.423085,
		-0.198589, 0.480403, 0.854269,
		0.941774, -0.147776, 0.302034,
		27.499941, 29.844053, 31.736633>
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
