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
	<36.169952, 52.924442, 50.679440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.434349, 52.927120, 50.379295>,  <36.592987, 52.928726, 50.199207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.434349, 52.927120, 50.379295>,  <36.169952, 52.924442, 50.679440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434349, 52.927120, 50.379295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313903, 0.910733, -0.268384,
		0.681584, 0.412941, 0.604089,
		0.660991, 0.006699, -0.750364,
		36.632645, 52.929131, 50.154186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628468, 53.449474, 50.703747>,  <36.169952, 52.924442, 50.679440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628468, 53.449474, 50.703747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623077, 53.394432, 50.307587>,  <36.619843, 53.361408, 50.069893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623077, 53.394432, 50.307587>,  <36.628468, 53.449474, 50.703747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623077, 53.394432, 50.307587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504131, 0.856319, -0.112116,
		0.863522, 0.497778, -0.080909,
		-0.013475, -0.137603, -0.990396,
		36.619034, 53.353149, 50.010468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755291, 54.152756, 50.374748>,  <36.628468, 53.449474, 50.703747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755291, 54.152756, 50.374748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587967, 53.935158, 50.083794>,  <36.487572, 53.804600, 49.909222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587967, 53.935158, 50.083794>,  <36.755291, 54.152756, 50.374748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587967, 53.935158, 50.083794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377852, 0.832452, -0.405281,
		0.825979, 0.105306, -0.553778,
		-0.418315, -0.543999, -0.727377,
		36.462475, 53.771957, 49.865578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486073, 54.399803, 50.689873>,  <36.755291, 54.152756, 50.374748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486073, 54.399803, 50.689873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376541, 54.311020, 51.064201>,  <37.310822, 54.257748, 51.288799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376541, 54.311020, 51.064201>,  <37.486073, 54.399803, 50.689873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376541, 54.311020, 51.064201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146228, -0.952086, -0.268606,
		0.950598, -0.210394, 0.228248,
		-0.273825, -0.221961, 0.935817,
		37.294395, 54.244431, 51.344948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967442, 53.883381, 50.927254>,  <37.486073, 54.399803, 50.689873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967442, 53.883381, 50.927254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602222, 53.873215, 51.090080>,  <37.383091, 53.867115, 51.187775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602222, 53.873215, 51.090080>,  <37.967442, 53.883381, 50.927254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602222, 53.873215, 51.090080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201394, -0.839796, -0.504166,
		0.354663, -0.542307, 0.761654,
		-0.913047, -0.025416, 0.407062,
		37.328308, 53.865589, 51.212200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815552, 53.443542, 50.346428>,  <37.967442, 53.883381, 50.927254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815552, 53.443542, 50.346428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949856, 53.085564, 50.463959>,  <38.030437, 52.870777, 50.534477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949856, 53.085564, 50.463959>,  <37.815552, 53.443542, 50.346428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949856, 53.085564, 50.463959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866503, 0.171136, -0.468920,
		0.369373, 0.412050, 0.832934,
		0.335764, -0.894945, 0.293829,
		38.050587, 52.817081, 50.552109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418247, 53.304569, 50.739010>,  <37.815552, 53.443542, 50.346428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418247, 53.304569, 50.739010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416851, 52.966522, 50.525181>,  <38.416012, 52.763695, 50.396881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416851, 52.966522, 50.525181>,  <38.418247, 53.304569, 50.739010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416851, 52.966522, 50.525181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981466, 0.099534, -0.163761,
		0.191605, -0.525238, 0.829104,
		-0.003490, -0.845114, -0.534574,
		38.415806, 52.712990, 50.364807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841293, 52.787647, 51.057240>,  <38.418247, 53.304569, 50.739010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841293, 52.787647, 51.057240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814896, 52.787678, 50.658112>,  <38.799057, 52.787697, 50.418636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814896, 52.787678, 50.658112>,  <38.841293, 52.787647, 51.057240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814896, 52.787678, 50.658112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975240, 0.211538, -0.064482,
		0.211072, -0.977370, -0.014036,
		-0.065992, 0.000078, -0.997820,
		38.795097, 52.787701, 50.358765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138432, 52.234085, 50.539799>,  <38.841293, 52.787647, 51.057240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138432, 52.234085, 50.539799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118660, 52.559631, 50.308220>,  <39.106796, 52.754959, 50.169273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118660, 52.559631, 50.308220>,  <39.138432, 52.234085, 50.539799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118660, 52.559631, 50.308220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996760, 0.003371, -0.080361,
		-0.063452, -0.581040, -0.811398,
		-0.049428, 0.813868, -0.578943,
		39.103832, 52.803791, 50.134537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840351, 52.228195, 50.234089>,  <39.138432, 52.234085, 50.539799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840351, 52.228195, 50.234089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676559, 52.590111, 50.187294>,  <39.578285, 52.807259, 50.159218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676559, 52.590111, 50.187294>,  <39.840351, 52.228195, 50.234089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676559, 52.590111, 50.187294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903787, 0.384808, -0.187330,
		-0.124477, -0.182437, -0.975306,
		-0.409482, 0.904787, -0.116984,
		39.553715, 52.861546, 50.152199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102486, 52.489605, 49.507805>,  <39.840351, 52.228195, 50.234089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102486, 52.489605, 49.507805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.983162, 52.738350, 49.797440>,  <39.911568, 52.887596, 49.971218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.983162, 52.738350, 49.797440>,  <40.102486, 52.489605, 49.507805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983162, 52.738350, 49.797440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816389, 0.559268, -0.143976,
		-0.494490, 0.548185, -0.674516,
		-0.298310, 0.621862, 0.724085,
		39.893669, 52.924908, 50.014664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080429, 53.176704, 49.272697>,  <40.102486, 52.489605, 49.507805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080429, 53.176704, 49.272697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.174950, 53.147606, 49.660278>,  <40.231663, 53.130146, 49.892826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.174950, 53.147606, 49.660278>,  <40.080429, 53.176704, 49.272697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174950, 53.147606, 49.660278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779259, 0.609874, -0.144254,
		-0.580444, 0.789153, 0.200804,
		0.236304, -0.072747, 0.968952,
		40.245842, 53.125782, 49.950966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427906, 53.823822, 49.439220>,  <40.080429, 53.176704, 49.272697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427906, 53.823822, 49.439220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550068, 53.582199, 49.733662>,  <40.623363, 53.437225, 49.910328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550068, 53.582199, 49.733662>,  <40.427906, 53.823822, 49.439220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550068, 53.582199, 49.733662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856608, 0.511899, 0.064669,
		-0.415874, 0.610801, 0.673774,
		0.305405, -0.604054, 0.736102,
		40.641689, 53.400982, 49.954491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696465, 54.278893, 50.009907>,  <40.427906, 53.823822, 49.439220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696465, 54.278893, 50.009907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841362, 53.906403, 49.993900>,  <40.928299, 53.682907, 49.984295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841362, 53.906403, 49.993900>,  <40.696465, 54.278893, 50.009907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.841362, 53.906403, 49.993900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931890, 0.360959, 0.035901,
		-0.018988, -0.050296, 0.998554,
		0.362243, -0.931224, -0.040017,
		40.950035, 53.627037, 49.981895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.190945, 53.982674, 50.639515>,  <40.696465, 54.278893, 50.009907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.190945, 53.982674, 50.639515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293423, 53.916935, 50.258495>,  <41.354908, 53.877491, 50.029884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293423, 53.916935, 50.258495>,  <41.190945, 53.982674, 50.639515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.293423, 53.916935, 50.258495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920632, 0.341839, 0.188632,
		0.294618, -0.925276, 0.238882,
		0.256196, -0.164348, -0.952551,
		41.370281, 53.867630, 49.972729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.605438, 53.361763, 50.401627>,  <41.190945, 53.982674, 50.639515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.605438, 53.361763, 50.401627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.684521, 53.695885, 50.196426>,  <41.731972, 53.896358, 50.073307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.684521, 53.695885, 50.196426>,  <41.605438, 53.361763, 50.401627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.684521, 53.695885, 50.196426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935234, -0.003950, 0.354008,
		0.293679, -0.549768, -0.781989,
		0.197711, 0.835308, -0.513002,
		41.743835, 53.946476, 50.042526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276039, 53.471027, 50.467983>,  <41.605438, 53.361763, 50.401627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276039, 53.471027, 50.467983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.264103, 53.822075, 50.276611>,  <42.256943, 54.032703, 50.161789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.264103, 53.822075, 50.276611>,  <42.276039, 53.471027, 50.467983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.264103, 53.822075, 50.276611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819517, 0.295518, 0.490980,
		0.572278, -0.377428, -0.728043,
		-0.029840, 0.877620, -0.478427,
		42.255150, 54.085361, 50.133083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.612625, 53.103886, 49.983021>,  <42.276039, 53.471027, 50.467983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.612625, 53.103886, 49.983021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.883831, 53.240234, 49.722527>,  <43.046555, 53.322044, 49.566231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.883831, 53.240234, 49.722527>,  <42.612625, 53.103886, 49.983021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.883831, 53.240234, 49.722527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448845, 0.509623, 0.734045,
		0.582098, -0.789996, 0.192533,
		0.678012, 0.340869, -0.651236,
		43.087234, 53.342495, 49.527157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.429455, 53.005829, 50.191818>,  <42.612625, 53.103886, 49.983021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.429455, 53.005829, 50.191818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.349072, 53.340103, 49.987370>,  <43.300842, 53.540668, 49.864700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.349072, 53.340103, 49.987370>,  <43.429455, 53.005829, 50.191818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.349072, 53.340103, 49.987370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645974, 0.505297, 0.572182,
		0.736433, -0.215186, -0.641375,
		-0.200959, 0.835685, -0.511122,
		43.288784, 53.590809, 49.834034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.091560, 53.186504, 49.813633>,  <43.429455, 53.005829, 50.191818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.091560, 53.186504, 49.813633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.839432, 53.481094, 49.911858>,  <43.688156, 53.657848, 49.970791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.839432, 53.481094, 49.911858>,  <44.091560, 53.186504, 49.813633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.839432, 53.481094, 49.911858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760100, 0.521102, 0.388200,
		0.157937, 0.431342, -0.888257,
		-0.630320, 0.736476, 0.245562,
		43.650337, 53.702038, 49.985527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.247910, 53.808697, 49.506828>,  <44.091560, 53.186504, 49.813633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.247910, 53.808697, 49.506828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.103748, 53.858650, 49.876587>,  <44.017254, 53.888622, 50.098442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.103748, 53.858650, 49.876587>,  <44.247910, 53.808697, 49.506828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.103748, 53.858650, 49.876587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908355, 0.272359, 0.317349,
		-0.212139, 0.954057, -0.211593,
		-0.360399, 0.124880, 0.924401,
		43.995628, 53.896114, 50.153908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.369213, 54.534805, 49.643513>,  <44.247910, 53.808697, 49.506828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.369213, 54.534805, 49.643513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.370888, 54.272911, 49.945854>,  <44.371891, 54.115776, 50.127258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.370888, 54.272911, 49.945854>,  <44.369213, 54.534805, 49.643513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.370888, 54.272911, 49.945854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945422, 0.248868, 0.210340,
		-0.325823, 0.713717, 0.620039,
		0.004185, -0.654732, 0.755850,
		44.372143, 54.076492, 50.172607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.616604, 54.928295, 50.225689>,  <44.369213, 54.534805, 49.643513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.616604, 54.928295, 50.225689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.662346, 54.535435, 50.285423>,  <44.689789, 54.299717, 50.321262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.662346, 54.535435, 50.285423>,  <44.616604, 54.928295, 50.225689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.662346, 54.535435, 50.285423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974885, 0.139858, 0.173320,
		-0.191113, 0.125766, 0.973478,
		0.114350, -0.982152, 0.149336,
		44.696651, 54.240788, 50.330223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.042511, 54.804363, 50.891586>,  <44.616604, 54.928295, 50.225689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.042511, 54.804363, 50.891586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.088928, 54.536659, 50.598022>,  <45.116779, 54.376038, 50.421883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.088928, 54.536659, 50.598022>,  <45.042511, 54.804363, 50.891586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.088928, 54.536659, 50.598022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993243, 0.077028, 0.086806,
		-0.001564, -0.739026, 0.673675,
		0.116043, -0.669259, -0.733912,
		45.123741, 54.335880, 50.377850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.564301, 54.378662, 51.035282>,  <45.042511, 54.804363, 50.891586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.564301, 54.378662, 51.035282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.561298, 54.391411, 50.635498>,  <45.559498, 54.399059, 50.395626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.561298, 54.391411, 50.635498>,  <45.564301, 54.378662, 51.035282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.561298, 54.391411, 50.635498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956707, 0.291045, 0.002097,
		0.290956, -0.956178, -0.032676,
		-0.007505, 0.031871, -0.999464,
		45.559048, 54.400974, 50.335659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.018566, 53.937851, 50.799889>,  <45.564301, 54.378662, 51.035282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.018566, 53.937851, 50.799889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.971119, 54.227928, 50.528587>,  <45.942650, 54.401974, 50.365807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.971119, 54.227928, 50.528587>,  <46.018566, 53.937851, 50.799889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.971119, 54.227928, 50.528587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959832, 0.258665, 0.108700,
		0.254269, -0.638114, -0.726745,
		-0.118620, 0.725192, -0.678252,
		45.935532, 54.445484, 50.325111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.579361, 53.949173, 50.382362>,  <46.018566, 53.937851, 50.799889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.579361, 53.949173, 50.382362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.427532, 54.319065, 50.393639>,  <46.336433, 54.541000, 50.400406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.427532, 54.319065, 50.393639>,  <46.579361, 53.949173, 50.382362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.427532, 54.319065, 50.393639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908257, 0.366666, 0.201557,
		0.176049, 0.102112, -0.979071,
		-0.379573, 0.924732, 0.028193,
		46.313660, 54.596485, 50.402096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.919079, 54.450989, 49.873859>,  <46.579361, 53.949173, 50.382362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.919079, 54.450989, 49.873859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.786076, 54.644600, 50.197624>,  <46.706272, 54.760765, 50.391884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.786076, 54.644600, 50.197624>,  <46.919079, 54.450989, 49.873859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.786076, 54.644600, 50.197624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918372, 0.361425, 0.161137,
		-0.214548, 0.796925, -0.564694,
		-0.332509, 0.484028, 0.809416,
		46.686321, 54.789806, 50.440449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.150063, 55.172810, 49.804192>,  <46.919079, 54.450989, 49.873859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.150063, 55.172810, 49.804192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.095001, 55.057983, 50.183380>,  <47.061962, 54.989086, 50.410892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.095001, 55.057983, 50.183380>,  <47.150063, 55.172810, 49.804192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.095001, 55.057983, 50.183380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931127, 0.288821, 0.222675,
		-0.337716, 0.913331, 0.227540,
		-0.137657, -0.287070, 0.947967,
		47.053703, 54.971863, 50.467770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.370720, 55.616131, 50.332092>,  <47.150063, 55.172810, 49.804192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.370720, 55.616131, 50.332092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.428951, 55.257637, 50.499699>,  <47.463890, 55.042542, 50.600262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.428951, 55.257637, 50.499699>,  <47.370720, 55.616131, 50.332092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.428951, 55.257637, 50.499699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969838, 0.212968, 0.118570,
		-0.195502, 0.389113, 0.900206,
		0.145578, -0.896234, 0.419012,
		47.472626, 54.988766, 50.625401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.777622, 55.632267, 50.977814>,  <47.370720, 55.616131, 50.332092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.777622, 55.632267, 50.977814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.836121, 55.254028, 50.861565>,  <47.871220, 55.027084, 50.791813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.836121, 55.254028, 50.861565>,  <47.777622, 55.632267, 50.977814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.836121, 55.254028, 50.861565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961918, 0.067357, 0.264906,
		-0.230918, -0.318300, 0.919435,
		0.146250, -0.945594, -0.290625,
		47.879997, 54.970348, 50.774376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.396488, 55.334339, 51.308056>,  <47.777622, 55.632267, 50.977814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.396488, 55.334339, 51.308056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.347149, 55.103062, 50.985447>,  <48.317547, 54.964294, 50.791882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.347149, 55.103062, 50.985447>,  <48.396488, 55.334339, 51.308056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.347149, 55.103062, 50.985447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991114, -0.112548, -0.070895,
		-0.049782, -0.808102, 0.586935,
		-0.123349, -0.578190, -0.806524,
		48.310143, 54.929604, 50.743488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.874554, 54.645958, 51.353344>,  <48.396488, 55.334339, 51.308056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.874554, 54.645958, 51.353344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.772877, 54.739925, 50.978069>,  <48.711872, 54.796307, 50.752903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.772877, 54.739925, 50.978069>,  <48.874554, 54.645958, 51.353344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.772877, 54.739925, 50.978069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966272, 0.020278, -0.256722,
		-0.041285, -0.971803, -0.232151,
		-0.254191, 0.234920, -0.938190,
		48.696621, 54.810402, 50.696613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.219048, 54.116928, 50.915722>,  <48.874554, 54.645958, 51.353344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.219048, 54.116928, 50.915722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.177292, 54.470047, 50.732513>,  <49.152241, 54.681919, 50.622589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.177292, 54.470047, 50.732513>,  <49.219048, 54.116928, 50.915722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.177292, 54.470047, 50.732513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942296, -0.059507, -0.329449,
		-0.318090, -0.465979, -0.825641,
		-0.104385, 0.882793, -0.458018,
		49.145977, 54.734886, 50.595108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.987495, 53.882893, 50.796333>,  <49.219048, 54.116928, 50.915722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.987495, 53.882893, 50.796333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.236301, 53.962109, 51.099350>,  <50.385586, 54.009640, 51.281158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.236301, 53.962109, 51.099350>,  <49.987495, 53.882893, 50.796333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.236301, 53.962109, 51.099350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713992, -0.540603, -0.444931,
		0.321414, 0.817635, -0.477667,
		0.622019, 0.198043, 0.757543,
		50.422909, 54.021523, 51.326614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.683270, 54.191586, 50.596470>,  <49.987495, 53.882893, 50.796333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.683270, 54.191586, 50.596470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.699787, 53.986378, 50.939423>,  <50.709698, 53.863255, 51.145195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.699787, 53.986378, 50.939423>,  <50.683270, 54.191586, 50.596470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.699787, 53.986378, 50.939423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681575, -0.612996, -0.399614,
		0.730582, 0.600873, 0.324348,
		0.041293, -0.513019, 0.857384,
		50.712173, 53.832474, 51.196636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.452034, 54.076584, 50.740391>,  <50.683270, 54.191586, 50.596470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.452034, 54.076584, 50.740391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.239704, 53.832832, 50.975979>,  <51.112305, 53.686581, 51.117332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.239704, 53.832832, 50.975979>,  <51.452034, 54.076584, 50.740391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.239704, 53.832832, 50.975979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702462, -0.705153, -0.096468,
		0.474100, 0.362522, 0.802376,
		-0.530826, -0.609375, 0.588971,
		51.080456, 53.650021, 51.152672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.886505, 53.802395, 51.262543>,  <51.452034, 54.076584, 50.740391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.886505, 53.802395, 51.262543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.593285, 53.539295, 51.193268>,  <51.417351, 53.381435, 51.151703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.593285, 53.539295, 51.193268>,  <51.886505, 53.802395, 51.262543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.593285, 53.539295, 51.193268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676427, -0.731670, -0.084293,
		-0.071272, -0.178940, 0.981275,
		-0.733053, -0.657753, -0.173187,
		51.373367, 53.341969, 51.141312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.171074, 53.271610, 51.580338>,  <51.886505, 53.802395, 51.262543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.171074, 53.271610, 51.580338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.902180, 53.161175, 51.305565>,  <51.740845, 53.094913, 51.140701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.902180, 53.161175, 51.305565>,  <52.171074, 53.271610, 51.580338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.902180, 53.161175, 51.305565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520399, -0.836174, -0.173197,
		-0.526579, -0.473909, 0.705780,
		-0.672235, -0.276085, -0.686933,
		51.700508, 53.078350, 51.099483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.328655, 52.765476, 52.104870>,  <52.171074, 53.271610, 51.580338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.328655, 52.765476, 52.104870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.211216, 53.147842, 52.106976>,  <52.140751, 53.377262, 52.108238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.211216, 53.147842, 52.106976>,  <52.328655, 52.765476, 52.104870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.211216, 53.147842, 52.106976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360254, -0.115749, 0.925645,
		0.885446, 0.269874, 0.378356,
		-0.293602, 0.955913, 0.005267,
		52.123135, 53.434616, 52.108555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.397846, 52.987007, 52.804455>,  <52.328655, 52.765476, 52.104870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.397846, 52.987007, 52.804455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.157787, 53.243088, 52.612640>,  <52.013752, 53.396736, 52.497551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.157787, 53.243088, 52.612640>,  <52.397846, 52.987007, 52.804455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.157787, 53.243088, 52.612640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572536, 0.074843, 0.816456,
		0.558589, 0.764550, 0.321623,
		-0.600150, 0.640204, -0.479539,
		51.977741, 53.435150, 52.468781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.166122, 52.940838, 53.061146>,  <52.397846, 52.987007, 52.804455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.166122, 52.940838, 53.061146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.387527, 53.237999, 52.910561>,  <53.520370, 53.416294, 52.820210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.387527, 53.237999, 52.910561>,  <53.166122, 52.940838, 53.061146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.387527, 53.237999, 52.910561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475298, 0.089416, 0.875270,
		0.683900, -0.663404, -0.303606,
		0.553510, 0.742900, -0.376466,
		53.553581, 53.460869, 52.797619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.863113, 52.785072, 53.090179>,  <53.166122, 52.940838, 53.061146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.863113, 52.785072, 53.090179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.885586, 53.184063, 53.072830>,  <53.899071, 53.423458, 53.062420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.885586, 53.184063, 53.072830>,  <53.863113, 52.785072, 53.090179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.885586, 53.184063, 53.072830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462552, 0.012493, 0.886504,
		0.884810, -0.069868, -0.460684,
		0.056183, 0.997478, -0.043372,
		53.902439, 53.483307, 53.059818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.626213, 53.094646, 53.185982>,  <53.863113, 52.785072, 53.090179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.626213, 53.094646, 53.185982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.329597, 53.323505, 53.326134>,  <54.151627, 53.460819, 53.410225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.329597, 53.323505, 53.326134>,  <54.626213, 53.094646, 53.185982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.329597, 53.323505, 53.326134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498113, 0.119654, 0.858817,
		0.449446, 0.811375, -0.373723,
		-0.741540, 0.572148, 0.350378,
		54.107136, 53.495152, 53.431248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.315643, 52.853519, 53.631474>,  <54.626213, 53.094646, 53.185982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.315643, 52.853519, 53.631474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.714569, 52.857876, 53.660423>,  <55.953926, 52.860489, 53.677792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.714569, 52.857876, 53.660423>,  <55.315643, 52.853519, 53.631474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.714569, 52.857876, 53.660423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008513, -0.964882, 0.262547,
		0.072694, -0.262459, -0.962201,
		0.997318, 0.010894, 0.072376,
		56.013763, 52.861145, 53.682137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.590530, 52.229725, 53.270836>,  <55.315643, 52.853519, 53.631474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.590530, 52.229725, 53.270836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.833290, 52.357685, 53.561859>,  <55.978947, 52.434460, 53.736473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.833290, 52.357685, 53.561859>,  <55.590530, 52.229725, 53.270836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.833290, 52.357685, 53.561859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024413, -0.922490, 0.385248,
		0.794402, -0.216046, -0.567670,
		0.606901, 0.319900, 0.727554,
		56.015362, 52.453655, 53.780125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.976753, 52.855789, 52.949356>,  <55.590530, 52.229725, 53.270836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.976753, 52.855789, 52.949356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.165115, 52.956177, 52.611065>,  <56.278133, 53.016411, 52.408089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.165115, 52.956177, 52.611065>,  <55.976753, 52.855789, 52.949356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.165115, 52.956177, 52.611065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354153, 0.824254, 0.441793,
		0.807972, -0.507563, 0.299269,
		0.470911, 0.250969, -0.845729,
		56.306389, 53.031467, 52.357346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.635498, 53.103935, 52.939171>,  <55.976753, 52.855789, 52.949356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.635498, 53.103935, 52.939171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.473259, 53.283516, 52.620689>,  <56.375916, 53.391266, 52.429600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.473259, 53.283516, 52.620689>,  <56.635498, 53.103935, 52.939171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.473259, 53.283516, 52.620689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249325, 0.892375, 0.376170,
		0.879391, -0.045940, -0.473879,
		-0.405596, 0.448951, -0.796200,
		56.351582, 53.418201, 52.381828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.172455, 53.619843, 52.699100>,  <56.635498, 53.103935, 52.939171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.172455, 53.619843, 52.699100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.820518, 53.760311, 52.571003>,  <56.609356, 53.844593, 52.494144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.820518, 53.760311, 52.571003>,  <57.172455, 53.619843, 52.699100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.820518, 53.760311, 52.571003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283649, 0.928657, 0.239038,
		0.381342, 0.119478, -0.916681,
		-0.879842, 0.351171, -0.320246,
		56.556564, 53.865662, 52.474930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.299171, 54.255882, 52.324890>,  <57.172455, 53.619843, 52.699100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.299171, 54.255882, 52.324890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.955803, 54.204445, 52.523514>,  <56.749783, 54.173580, 52.642689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.955803, 54.204445, 52.523514>,  <57.299171, 54.255882, 52.324890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.955803, 54.204445, 52.523514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111582, 0.898067, 0.425470,
		-0.500659, 0.420641, -0.756573,
		-0.858423, -0.128595, 0.496561,
		56.698277, 54.165867, 52.672482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.082138, 54.881977, 52.316055>,  <57.299171, 54.255882, 52.324890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.082138, 54.881977, 52.316055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.883957, 54.701809, 52.613144>,  <56.765049, 54.593708, 52.791397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.883957, 54.701809, 52.613144>,  <57.082138, 54.881977, 52.316055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.883957, 54.701809, 52.613144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149466, 0.798090, 0.583706,
		-0.855677, 0.400213, -0.328095,
		-0.495456, -0.450425, 0.742725,
		56.735321, 54.566681, 52.835960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.506218, 55.474136, 52.641769>,  <57.082138, 54.881977, 52.316055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.506218, 55.474136, 52.641769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.897339, 55.474136, 52.725586>,  <58.132011, 55.474136, 52.775875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.897339, 55.474136, 52.725586>,  <57.506218, 55.474136, 52.641769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.897339, 55.474136, 52.725586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016603, -0.996856, 0.077476,
		0.208880, -0.079235, -0.974726,
		0.977800, -0.000000, 0.209539,
		58.190678, 55.474136, 52.788448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.990540, 55.014797, 52.210739>,  <57.506218, 55.474136, 52.641769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.990540, 55.014797, 52.210739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.135406, 55.059811, 52.580856>,  <58.222328, 55.086819, 52.802925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.135406, 55.059811, 52.580856>,  <57.990540, 55.014797, 52.210739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.135406, 55.059811, 52.580856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028371, -0.993557, 0.109727,
		0.931680, -0.013488, -0.363031,
		0.362172, 0.112531, 0.925294,
		58.244057, 55.093571, 52.858444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.536610, 54.685406, 52.245167>,  <57.990540, 55.014797, 52.210739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.536610, 54.685406, 52.245167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.364601, 54.684788, 52.606293>,  <58.261395, 54.684418, 52.822968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.364601, 54.684788, 52.606293>,  <58.536610, 54.685406, 52.245167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.364601, 54.684788, 52.606293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133968, -0.989037, 0.062117,
		0.892822, 0.147660, 0.425518,
		-0.430026, -0.001547, 0.902815,
		58.235592, 54.684322, 52.877136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.962936, 54.372635, 52.861397>,  <58.536610, 54.685406, 52.245167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.962936, 54.372635, 52.861397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.568123, 54.318333, 52.895668>,  <58.331234, 54.285751, 52.916233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.568123, 54.318333, 52.895668>,  <58.962936, 54.372635, 52.861397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.568123, 54.318333, 52.895668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143229, -0.985757, 0.088137,
		0.072496, 0.099266, 0.992417,
		-0.987031, -0.135753, 0.085681,
		58.272015, 54.277607, 52.921371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.813805, 53.811100, 53.292042>,  <58.962936, 54.372635, 52.861397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.813805, 53.811100, 53.292042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.538208, 53.850147, 53.004776>,  <58.372849, 53.873577, 52.832417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.538208, 53.850147, 53.004776>,  <58.813805, 53.811100, 53.292042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.538208, 53.850147, 53.004776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162588, -0.944815, -0.284410,
		-0.706297, -0.312721, 0.635098,
		-0.688992, 0.097618, -0.718165,
		58.331512, 53.879433, 52.789326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.334412, 53.411129, 53.332497>,  <58.813805, 53.811100, 53.292042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.334412, 53.411129, 53.332497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.399544, 53.485550, 52.944916>,  <58.438622, 53.530201, 52.712368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.399544, 53.485550, 52.944916>,  <58.334412, 53.411129, 53.332497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.399544, 53.485550, 52.944916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215833, -0.964991, -0.149023,
		-0.962758, -0.184868, -0.197283,
		0.162827, 0.186053, -0.968954,
		58.448391, 53.541367, 52.654228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.003326, 52.854504, 52.974373>,  <58.334412, 53.411129, 53.332497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.003326, 52.854504, 52.974373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.310638, 53.003059, 52.765827>,  <58.495026, 53.092194, 52.640701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.310638, 53.003059, 52.765827>,  <58.003326, 52.854504, 52.974373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.310638, 53.003059, 52.765827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320347, -0.928224, -0.189152,
		-0.554188, -0.021694, -0.832109,
		0.768280, 0.371389, -0.521360,
		58.541122, 53.114475, 52.609421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.791050, 52.155186, 52.976273>,  <58.003326, 52.854504, 52.974373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.791050, 52.155186, 52.976273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.655006, 52.013603, 53.324764>,  <57.573380, 51.928654, 53.533859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.655006, 52.013603, 53.324764>,  <57.791050, 52.155186, 52.976273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.655006, 52.013603, 53.324764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703245, -0.710805, -0.014247,
		0.624317, 0.607841, 0.490670,
		-0.340111, -0.353956, 0.871229,
		57.552975, 51.907417, 53.586132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.670883, 52.497860, 53.716373>,  <57.791050, 52.155186, 52.976273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.670883, 52.497860, 53.716373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.956947, 52.508213, 53.995766>,  <58.128586, 52.514427, 54.163399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.956947, 52.508213, 53.995766>,  <57.670883, 52.497860, 53.716373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.956947, 52.508213, 53.995766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542969, 0.608707, -0.578498,
		-0.440143, 0.792973, 0.421270,
		0.715164, 0.025886, 0.698478,
		58.171497, 52.515980, 54.205311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.815487, 53.293571, 54.038769>,  <57.670883, 52.497860, 53.716373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.815487, 53.293571, 54.038769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.080795, 52.997955, 53.991631>,  <58.239979, 52.820583, 53.963348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.080795, 52.997955, 53.991631>,  <57.815487, 53.293571, 54.038769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.080795, 52.997955, 53.991631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443244, 0.514809, -0.733830,
		0.603000, 0.434494, 0.669034,
		0.663269, -0.739045, -0.117842,
		58.279778, 52.776241, 53.956276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.505119, 53.596256, 54.067322>,  <57.815487, 53.293571, 54.038769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.505119, 53.596256, 54.067322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.522049, 53.251713, 53.864830>,  <58.532207, 53.044987, 53.743336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.522049, 53.251713, 53.864830>,  <58.505119, 53.596256, 54.067322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.522049, 53.251713, 53.864830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436779, 0.471653, -0.766008,
		0.898573, -0.188689, 0.396187,
		0.042325, -0.861360, -0.506230,
		58.534748, 52.993305, 53.712959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.242798, 53.287331, 53.997993>,  <58.505119, 53.596256, 54.067322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.242798, 53.287331, 53.997993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.062874, 53.226616, 53.645943>,  <58.954918, 53.190189, 53.434711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.062874, 53.226616, 53.645943>,  <59.242798, 53.287331, 53.997993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.062874, 53.226616, 53.645943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731511, 0.502766, -0.460562,
		0.512407, -0.850992, -0.115118,
		-0.449812, -0.151785, -0.880131,
		58.927929, 53.181080, 53.381905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.987362, 53.255875, 53.930332>,  <59.242798, 53.287331, 53.997993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.987362, 53.255875, 53.930332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.769714, 52.970459, 53.753784>,  <59.639126, 52.799210, 53.647854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.769714, 52.970459, 53.753784>,  <59.987362, 53.255875, 53.930332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.769714, 52.970459, 53.753784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759310, -0.642569, 0.102733,
		-0.356915, -0.279239, 0.891425,
		-0.544114, -0.713534, -0.441371,
		59.606480, 52.756397, 53.621372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.333145, 53.364525, 54.498520>,  <59.987362, 53.255875, 53.930332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.333145, 53.364525, 54.498520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.041779, 53.629063, 54.426929>,  <59.866959, 53.787785, 54.383976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.041779, 53.629063, 54.426929>,  <60.333145, 53.364525, 54.498520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.041779, 53.629063, 54.426929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287507, -0.057940, 0.956024,
		0.621893, 0.747839, 0.232346,
		-0.728415, 0.661346, -0.178977,
		59.823254, 53.827465, 54.373238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.202835, 54.074963, 54.906536>,  <60.333145, 53.364525, 54.498520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.202835, 54.074963, 54.906536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.852722, 53.910568, 54.804581>,  <59.642654, 53.811932, 54.743408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.852722, 53.910568, 54.804581>,  <60.202835, 54.074963, 54.906536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.852722, 53.910568, 54.804581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141197, -0.286910, 0.947495,
		-0.462534, 0.865318, 0.193098,
		-0.875286, -0.410983, -0.254886,
		59.590137, 53.787273, 54.728115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.802078, 54.308640, 55.309422>,  <60.202835, 54.074963, 54.906536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.802078, 54.308640, 55.309422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.404442, 54.332901, 55.345451>,  <60.165859, 54.347458, 55.367069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.404442, 54.332901, 55.345451>,  <60.802078, 54.308640, 55.309422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.404442, 54.332901, 55.345451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102857, -0.791911, -0.601911,
		0.034824, -0.607617, 0.793467,
		-0.994087, 0.060653, 0.090075,
		60.106216, 54.351097, 55.372475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.067280, 54.836178, 55.768265>,  <60.802078, 54.308640, 55.309422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.067280, 54.836178, 55.768265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.356728, 54.852440, 56.043861>,  <61.530396, 54.862198, 56.209221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.356728, 54.852440, 56.043861>,  <61.067280, 54.836178, 55.768265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.356728, 54.852440, 56.043861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353701, 0.835374, -0.420768,
		-0.592675, 0.548177, 0.590118,
		0.723624, 0.040653, 0.688996,
		61.573814, 54.864635, 56.250561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.117786, 55.431801, 56.295319>,  <61.067280, 54.836178, 55.768265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.117786, 55.431801, 56.295319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.495026, 55.331104, 56.208427>,  <61.721371, 55.270687, 56.156292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.495026, 55.331104, 56.208427>,  <61.117786, 55.431801, 56.295319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.495026, 55.331104, 56.208427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230017, 0.965698, -0.120494,
		0.240112, 0.063671, 0.968655,
		0.943100, -0.251740, -0.217230,
		61.777954, 55.255581, 56.143257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.534225, 55.916481, 56.690598>,  <61.117786, 55.431801, 56.295319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.534225, 55.916481, 56.690598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.750847, 55.782330, 56.382248>,  <61.880817, 55.701839, 56.197239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.750847, 55.782330, 56.382248>,  <61.534225, 55.916481, 56.690598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.750847, 55.782330, 56.382248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120577, 0.938482, -0.323595,
		0.831977, 0.082294, 0.548673,
		0.541550, -0.335381, -0.770872,
		61.913311, 55.681717, 56.150986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.315121, 55.286011, 57.000778>,  <61.534225, 55.916481, 56.690598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.315121, 55.286011, 57.000778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.299461, 55.038380, 57.314522>,  <61.290066, 54.889801, 57.502766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.299461, 55.038380, 57.314522>,  <61.315121, 55.286011, 57.000778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.299461, 55.038380, 57.314522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204399, 0.763399, 0.612734,
		-0.978104, 0.184310, 0.096652,
		-0.039149, -0.619073, 0.784357,
		61.287716, 54.852657, 57.549828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.706097, 54.606434, 57.324612>,  <61.315121, 55.286011, 57.000778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.706097, 54.606434, 57.324612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.898819, 54.555035, 57.671333>,  <62.014454, 54.524197, 57.879368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.898819, 54.555035, 57.671333>,  <61.706097, 54.606434, 57.324612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.898819, 54.555035, 57.671333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728884, 0.607850, -0.315035,
		-0.486405, 0.783586, 0.386528,
		0.481808, -0.128499, 0.866804,
		62.043362, 54.516483, 57.931374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.806747, 55.328648, 57.605324>,  <61.706097, 54.606434, 57.324612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.806747, 55.328648, 57.605324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.056374, 55.022984, 57.670563>,  <62.206150, 54.839584, 57.709705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.056374, 55.022984, 57.670563>,  <61.806747, 55.328648, 57.605324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.056374, 55.022984, 57.670563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681916, 0.430734, -0.591150,
		0.381482, 0.480135, 0.789900,
		0.624069, -0.764158, 0.163094,
		62.243595, 54.793736, 57.719490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.517696, 55.576389, 57.750614>,  <61.806747, 55.328648, 57.605324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.517696, 55.576389, 57.750614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.565224, 55.220985, 57.573334>,  <62.593739, 55.007744, 57.466965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.565224, 55.220985, 57.573334>,  <62.517696, 55.576389, 57.750614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.565224, 55.220985, 57.573334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739772, 0.376943, -0.557361,
		0.662284, -0.261645, 0.702084,
		0.118815, -0.888514, -0.443201,
		62.600868, 54.954430, 57.440372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.217491, 55.304367, 57.759514>,  <62.517696, 55.576389, 57.750614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.217491, 55.304367, 57.759514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.074844, 55.138107, 57.424835>,  <62.989258, 55.038353, 57.224030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.074844, 55.138107, 57.424835>,  <63.217491, 55.304367, 57.759514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.074844, 55.138107, 57.424835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771956, 0.373340, -0.514491,
		0.526220, -0.829368, 0.187725,
		-0.356618, -0.415651, -0.836695,
		62.967857, 55.013412, 57.173828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.733593, 54.985630, 57.359100>,  <63.217491, 55.304367, 57.759514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.733593, 54.985630, 57.359100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.459511, 55.057213, 57.076691>,  <63.295063, 55.100163, 56.907246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.459511, 55.057213, 57.076691>,  <63.733593, 54.985630, 57.359100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.459511, 55.057213, 57.076691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629944, 0.632187, -0.451121,
		0.365607, -0.753866, -0.545911,
		-0.685202, 0.178960, -0.706025,
		63.253952, 55.110901, 56.864883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.064705, 54.824329, 56.809589>,  <63.733593, 54.985630, 57.359100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.064705, 54.824329, 56.809589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.776443, 55.071083, 56.683022>,  <63.603489, 55.219135, 56.607082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.776443, 55.071083, 56.683022>,  <64.064705, 54.824329, 56.809589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.776443, 55.071083, 56.683022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660952, 0.473516, -0.582173,
		-0.209303, -0.628681, -0.748968,
		-0.720649, 0.616882, -0.316419,
		63.560249, 55.256149, 56.588097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.924362, 55.247414, 56.221825>,  <64.064705, 54.824329, 56.809589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.924362, 55.247414, 56.221825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.938446, 55.577652, 56.447090>,  <63.946896, 55.775795, 56.582249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.938446, 55.577652, 56.447090>,  <63.924362, 55.247414, 56.221825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.938446, 55.577652, 56.447090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937379, 0.168113, -0.305054,
		-0.346526, 0.538642, -0.767974,
		0.035209, 0.825593, 0.563167,
		63.949009, 55.825329, 56.616039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.182129, 55.743149, 55.765511>,  <63.924362, 55.247414, 56.221825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.182129, 55.743149, 55.765511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.247414, 55.837616, 56.148674>,  <64.286583, 55.894295, 56.378571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.247414, 55.837616, 56.148674>,  <64.182129, 55.743149, 55.765511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.247414, 55.837616, 56.148674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967038, 0.154046, -0.202747,
		-0.195445, 0.959424, -0.203242,
		0.163212, 0.236169, 0.957907,
		64.296379, 55.908466, 56.436047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.680840, 56.377369, 55.785519>,  <64.182129, 55.743149, 55.765511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.680840, 56.377369, 55.785519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.723351, 56.131546, 56.098190>,  <64.748856, 55.984051, 56.285793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.723351, 56.131546, 56.098190>,  <64.680840, 56.377369, 55.785519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.723351, 56.131546, 56.098190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992074, 0.012525, -0.125028,
		0.067046, 0.788773, 0.611017,
		0.106272, -0.614557, 0.781681,
		64.755234, 55.947178, 56.332695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.154694, 56.507523, 56.341286>,  <64.680840, 56.377369, 55.785519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.154694, 56.507523, 56.341286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.147858, 56.107582, 56.342430>,  <65.143761, 55.867619, 56.343117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.147858, 56.107582, 56.342430>,  <65.154694, 56.507523, 56.341286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.147858, 56.107582, 56.342430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959620, -0.017200, -0.280775,
		0.280782, -0.002048, 0.959769,
		-0.017083, -0.999850, 0.002864,
		65.142731, 55.807629, 56.343288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.831886, 56.340496, 56.500557>,  <65.154694, 56.507523, 56.341286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.831886, 56.340496, 56.500557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.667068, 55.996861, 56.379105>,  <65.568176, 55.790680, 56.306232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.667068, 55.996861, 56.379105>,  <65.831886, 56.340496, 56.500557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.667068, 55.996861, 56.379105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882853, -0.294012, -0.366233,
		0.225356, -0.418964, 0.879593,
		-0.412050, -0.859085, -0.303626,
		65.543457, 55.739136, 56.288017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.050659, 55.858120, 56.998657>,  <65.831886, 56.340496, 56.500557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.050659, 55.858120, 56.998657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.991272, 55.741795, 56.620583>,  <65.955635, 55.671997, 56.393738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.991272, 55.741795, 56.620583>,  <66.050659, 55.858120, 56.998657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.991272, 55.741795, 56.620583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976629, -0.193315, -0.093934,
		-0.155401, -0.937045, 0.312724,
		-0.148475, -0.290818, -0.945188,
		65.946732, 55.654549, 56.337025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.212059, 55.106194, 57.002960>,  <66.050659, 55.858120, 56.998657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.212059, 55.106194, 57.002960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.296242, 55.344124, 56.692635>,  <66.346748, 55.486881, 56.506439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.296242, 55.344124, 56.692635>,  <66.212059, 55.106194, 57.002960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.296242, 55.344124, 56.692635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960971, -0.271642, 0.052403,
		-0.179573, -0.756563, -0.628781,
		0.210450, 0.594830, -0.775814,
		66.359375, 55.522572, 56.459888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.551147, 54.721748, 56.509460>,  <66.212059, 55.106194, 57.002960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.551147, 54.721748, 56.509460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.696213, 55.091873, 56.465126>,  <66.783249, 55.313946, 56.438526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.696213, 55.091873, 56.465126>,  <66.551147, 54.721748, 56.509460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.696213, 55.091873, 56.465126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916791, -0.332892, 0.220630,
		0.167256, -0.181624, -0.969040,
		0.362657, 0.925309, -0.110833,
		66.805008, 55.369465, 56.431877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.997513, 54.813858, 55.997551>,  <66.551147, 54.721748, 56.509460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.997513, 54.813858, 55.997551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.092834, 55.038795, 56.314278>,  <67.150024, 55.173759, 56.504314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.092834, 55.038795, 56.314278>,  <66.997513, 54.813858, 55.997551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.092834, 55.038795, 56.314278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920056, -0.391784, 0.001339,
		0.310976, 0.728201, -0.610751,
		0.238307, 0.562342, 0.791821,
		67.164330, 55.207497, 56.551823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.699440, 55.132782, 55.888454>,  <66.997513, 54.813858, 55.997551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.699440, 55.132782, 55.888454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.613083, 55.047436, 56.269585>,  <67.561272, 54.996227, 56.498260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.613083, 55.047436, 56.269585>,  <67.699440, 55.132782, 55.888454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.613083, 55.047436, 56.269585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911799, -0.393150, 0.118557,
		0.349306, 0.894377, 0.279419,
		-0.215888, -0.213361, 0.952822,
		67.548317, 54.983429, 56.555431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.188843, 55.395065, 56.377487>,  <67.699440, 55.132782, 55.888454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.188843, 55.395065, 56.377487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.064545, 55.121552, 56.641571>,  <67.989967, 54.957443, 56.800022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.064545, 55.121552, 56.641571>,  <68.188843, 55.395065, 56.377487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.064545, 55.121552, 56.641571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927186, -0.065180, 0.368888,
		-0.209207, 0.726767, 0.654249,
		-0.310740, -0.683784, 0.660212,
		67.971321, 54.916416, 56.839634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.390686, 55.491482, 57.117458>,  <68.188843, 55.395065, 56.377487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.390686, 55.491482, 57.117458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.358559, 55.094055, 57.085518>,  <68.339279, 54.855598, 57.066353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.358559, 55.094055, 57.085518>,  <68.390686, 55.491482, 57.117458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.358559, 55.094055, 57.085518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962375, -0.098164, 0.253373,
		-0.259581, -0.056491, 0.964068,
		-0.080323, -0.993566, -0.079847,
		68.334465, 54.795986, 57.061565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.883286, 55.295670, 57.616161>,  <68.390686, 55.491482, 57.117458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.883286, 55.295670, 57.616161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.823959, 54.988049, 57.367462>,  <68.788368, 54.803478, 57.218243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.823959, 54.988049, 57.367462>,  <68.883286, 55.295670, 57.616161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.823959, 54.988049, 57.367462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967810, -0.242139, 0.068651,
		-0.203344, -0.591550, 0.780205,
		-0.148307, -0.769050, -0.621746,
		68.779465, 54.757332, 57.180939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.195862, 54.702145, 57.971645>,  <68.883286, 55.295670, 57.616161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.195862, 54.702145, 57.971645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.192047, 54.659294, 57.573967>,  <69.189758, 54.633583, 57.335358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.192047, 54.659294, 57.573967>,  <69.195862, 54.702145, 57.971645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.192047, 54.659294, 57.573967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988460, -0.151327, 0.006827,
		-0.151181, -0.982662, 0.107328,
		-0.009534, -0.107122, -0.994200,
		69.189186, 54.627159, 57.275707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.050247, 54.614922, 57.990250>,  <69.195862, 54.702145, 57.971645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.050247, 54.614922, 57.990250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.198914, 54.954002, 58.141655>,  <70.288109, 55.157452, 58.232498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.198914, 54.954002, 58.141655>,  <70.050247, 54.614922, 57.990250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.198914, 54.954002, 58.141655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357523, -0.245580, 0.901037,
		0.856766, -0.470205, 0.211801,
		0.371659, 0.847702, 0.378513,
		70.310410, 55.208313, 58.255211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.449173, 54.485771, 58.588009>,  <70.050247, 54.614922, 57.990250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.449173, 54.485771, 58.588009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.304230, 54.858162, 58.605751>,  <70.217262, 55.081596, 58.616398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.304230, 54.858162, 58.605751>,  <70.449173, 54.485771, 58.588009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.304230, 54.858162, 58.605751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540098, -0.248533, 0.804068,
		0.759595, 0.267410, 0.592880,
		-0.362366, 0.930980, 0.044357,
		70.195518, 55.137455, 58.619057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.659416, 55.245853, 58.780926>,  <70.449173, 54.485771, 58.588009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.659416, 55.245853, 58.780926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.305740, 55.419617, 58.712227>,  <70.093536, 55.523872, 58.671005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.305740, 55.419617, 58.712227>,  <70.659416, 55.245853, 58.780926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.305740, 55.419617, 58.712227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297189, -0.239464, 0.924303,
		0.360393, 0.868303, 0.340832,
		-0.884192, 0.434404, -0.171749,
		70.040482, 55.549938, 58.660702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.789436, 55.731926, 59.320324>,  <70.659416, 55.245853, 58.780926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.789436, 55.731926, 59.320324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.016037, 55.716835, 58.991043>,  <71.152000, 55.707779, 58.793476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.016037, 55.716835, 58.991043>,  <70.789436, 55.731926, 59.320324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.016037, 55.716835, 58.991043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781902, 0.340039, 0.522496,
		0.260206, -0.939654, 0.222133,
		0.566499, -0.037730, -0.823198,
		71.185989, 55.705517, 58.744083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.331314, 56.114487, 59.249161>,  <70.789436, 55.731926, 59.320324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.331314, 56.114487, 59.249161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.165771, 56.474194, 59.192528>,  <71.066444, 56.690018, 59.158550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.165771, 56.474194, 59.192528>,  <71.331314, 56.114487, 59.249161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.165771, 56.474194, 59.192528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704621, 0.414911, 0.575637,
		0.576392, 0.138473, -0.805355,
		-0.413860, 0.899263, -0.141580,
		71.041611, 56.743973, 59.150055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.734337, 56.525478, 58.902580>,  <71.331314, 56.114487, 59.249161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.734337, 56.525478, 58.902580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.490074, 56.708920, 59.160812>,  <71.343513, 56.818985, 59.315750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.490074, 56.708920, 59.160812>,  <71.734337, 56.525478, 58.902580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.490074, 56.708920, 59.160812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717969, -0.023292, 0.695685,
		0.334083, 0.888334, -0.315042,
		-0.610663, 0.458608, 0.645578,
		71.306877, 56.846500, 59.354485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.034409, 57.195011, 59.308762>,  <71.734337, 56.525478, 58.902580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.034409, 57.195011, 59.308762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.745071, 57.031712, 59.531509>,  <71.571465, 56.933731, 59.665157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.745071, 57.031712, 59.531509>,  <72.034409, 57.195011, 59.308762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.745071, 57.031712, 59.531509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622063, -0.035279, 0.782172,
		-0.299672, 0.912190, 0.279473,
		-0.723349, -0.408245, 0.556868,
		71.528069, 56.909237, 59.698570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.661057, 57.115860, 59.798721>,  <72.034409, 57.195011, 59.308762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.661057, 57.115860, 59.798721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.958969, 57.356720, 59.683670>,  <73.137718, 57.501236, 59.614639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.958969, 57.356720, 59.683670>,  <72.661057, 57.115860, 59.798721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.958969, 57.356720, 59.683670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302564, 0.688875, 0.658716,
		0.594782, -0.403571, 0.695245,
		0.744775, 0.602148, -0.287625,
		73.182404, 57.537365, 59.597382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.098358, 57.330349, 60.377842>,  <72.661057, 57.115860, 59.798721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.098358, 57.330349, 60.377842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.064583, 57.644539, 60.132599>,  <73.044319, 57.833054, 59.985455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.064583, 57.644539, 60.132599>,  <73.098358, 57.330349, 60.377842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.064583, 57.644539, 60.132599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144795, 0.599100, 0.787473,
		0.985852, 0.155275, 0.063140,
		-0.084448, 0.785474, -0.613107,
		73.039246, 57.880180, 59.948666>
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
