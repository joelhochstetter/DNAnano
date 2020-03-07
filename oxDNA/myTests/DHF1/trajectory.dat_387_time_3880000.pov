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
	<3.236091, 4.066995, 5.367526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.539341, 4.221375, 5.157272>,  <3.721291, 4.314002, 5.031120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.539341, 4.221375, 5.157272>,  <3.236091, 4.066995, 5.367526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.539341, 4.221375, 5.157272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198589, -0.904407, -0.377638,
		-0.621137, 0.181911, -0.762298,
		0.758124, 0.385948, -0.525635,
		3.766778, 4.337159, 4.999582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.231650, 3.928058, 4.532129>,  <3.236091, 4.066995, 5.367526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.231650, 3.928058, 4.532129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.585423, 3.983231, 4.710457>,  <3.797686, 4.016334, 4.817454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.585423, 3.983231, 4.710457>,  <3.231650, 3.928058, 4.532129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.585423, 3.983231, 4.710457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323197, -0.870172, -0.371946,
		0.336637, 0.473049, -0.814187,
		0.884431, 0.137932, 0.445820,
		3.850752, 4.024610, 4.844203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.290051, 3.740541, 3.790179>,  <3.231650, 3.928058, 4.532129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.290051, 3.740541, 3.790179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.572041, 3.914497, 3.566078>,  <3.741234, 4.018871, 3.431617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.572041, 3.914497, 3.566078>,  <3.290051, 3.740541, 3.790179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.572041, 3.914497, 3.566078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549241, 0.834540, -0.043315,
		0.448716, 0.338250, 0.827188,
		0.704973, 0.434890, -0.560252,
		3.783533, 4.044964, 3.398002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.389276, 4.413799, 4.031618>,  <3.290051, 3.740541, 3.790179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.389276, 4.413799, 4.031618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.526543, 4.424973, 3.656075>,  <3.608902, 4.431677, 3.430748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.526543, 4.424973, 3.656075>,  <3.389276, 4.413799, 4.031618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.526543, 4.424973, 3.656075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455342, 0.879197, -0.140274,
		0.821523, 0.475639, 0.314431,
		0.343166, 0.027935, -0.938859,
		3.629493, 4.433353, 3.374417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.636505, 4.991779, 3.975930>,  <3.389276, 4.413799, 4.031618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.636505, 4.991779, 3.975930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.556187, 4.883392, 3.599365>,  <3.507996, 4.818360, 3.373426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.556187, 4.883392, 3.599365>,  <3.636505, 4.991779, 3.975930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.556187, 4.883392, 3.599365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607991, 0.787980, -0.097125,
		0.768133, 0.552869, -0.322968,
		-0.200795, -0.270967, -0.941413,
		3.495948, 4.802102, 3.316941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.666223, 5.614028, 3.567329>,  <3.636505, 4.991779, 3.975930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.666223, 5.614028, 3.567329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.451832, 5.352371, 3.353851>,  <3.323197, 5.195377, 3.225765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.451832, 5.352371, 3.353851>,  <3.666223, 5.614028, 3.567329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.451832, 5.352371, 3.353851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717980, 0.685739, -0.119447,
		0.444109, 0.319160, -0.837200,
		-0.535978, -0.654140, -0.533693,
		3.291039, 5.156129, 3.193743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.502823, 6.057089, 3.021437>,  <3.666223, 5.614028, 3.567329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.502823, 6.057089, 3.021437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.258785, 5.741653, 3.052200>,  <3.112363, 5.552392, 3.070658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.258785, 5.741653, 3.052200>,  <3.502823, 6.057089, 3.021437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.258785, 5.741653, 3.052200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788501, 0.594747, -0.156660,
		0.077799, -0.156219, -0.984654,
		-0.610093, -0.788588, 0.076908,
		3.075757, 5.505077, 3.075273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.021286, 6.058318, 2.466313>,  <3.502823, 6.057089, 3.021437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.021286, 6.058318, 2.466313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.868465, 5.840988, 2.765335>,  <2.776773, 5.710590, 2.944748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.868465, 5.840988, 2.765335>,  <3.021286, 6.058318, 2.466313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.868465, 5.840988, 2.765335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820372, 0.571819, -0.003666,
		-0.425474, -0.614673, -0.664191,
		-0.382051, -0.543323, 0.747554,
		2.753850, 5.677991, 2.989601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.509068, 1.713089, 3.577358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.147723, 1.574875, 3.475739>,  <1.930916, 1.491947, 3.414767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.147723, 1.574875, 3.475739>,  <2.509068, 1.713089, 3.577358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.147723, 1.574875, 3.475739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315973, -0.936751, 0.150526,
		-0.289991, 0.055708, 0.955407,
		-0.903364, -0.345534, -0.254048,
		1.876714, 1.471215, 3.399524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.416076, 1.124951, 4.074422>,  <2.509068, 1.713089, 3.577358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.416076, 1.124951, 4.074422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.216094, 1.062439, 3.733688>,  <2.096105, 1.024932, 3.529248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.216094, 1.062439, 3.733688>,  <2.416076, 1.124951, 4.074422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.216094, 1.062439, 3.733688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384834, -0.921233, -0.056853,
		-0.775852, -0.356239, 0.520718,
		-0.499956, -0.156281, -0.851833,
		2.066107, 1.015555, 3.478138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.976871, 0.552310, 4.083400>,  <2.416076, 1.124951, 4.074422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.976871, 0.552310, 4.083400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.108368, 0.615356, 3.710930>,  <2.187266, 0.653184, 3.487448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.108368, 0.615356, 3.710930>,  <1.976871, 0.552310, 4.083400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.108368, 0.615356, 3.710930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490677, -0.870959, 0.025806,
		-0.806948, -0.465390, -0.363659,
		0.328742, 0.157615, -0.931174,
		2.206990, 0.662641, 3.431577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.233058, -0.051972, 3.884932>,  <1.976871, 0.552310, 4.083400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.233058, -0.051972, 3.884932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.380708, 0.166817, 3.584381>,  <2.469297, 0.298090, 3.404050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.380708, 0.166817, 3.584381>,  <2.233058, -0.051972, 3.884932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.380708, 0.166817, 3.584381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651646, -0.728764, -0.210381,
		-0.662650, -0.411976, -0.625437,
		0.369124, 0.546972, -0.751378,
		2.491445, 0.330908, 3.358968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.112042, -0.470794, 3.216745>,  <2.233058, -0.051972, 3.884932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.112042, -0.470794, 3.216745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.411991, -0.207664, 3.188576>,  <2.591961, -0.049787, 3.171674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.411991, -0.207664, 3.188576>,  <2.112042, -0.470794, 3.216745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.411991, -0.207664, 3.188576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631323, -0.743334, -0.221100,
		-0.197793, 0.121337, -0.972705,
		0.749873, 0.657823, -0.070424,
		2.636953, -0.010318, 3.167449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.508077, -0.609713, 2.518970>,  <2.112042, -0.470794, 3.216745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.508077, -0.609713, 2.518970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.754323, -0.366333, 2.719292>,  <2.902071, -0.220305, 2.839485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.754323, -0.366333, 2.719292>,  <2.508077, -0.609713, 2.518970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.754323, -0.366333, 2.719292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755165, -0.637140, -0.154199,
		0.225260, 0.473118, -0.851714,
		0.615616, 0.608451, 0.500805,
		2.939008, -0.183798, 2.869533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.102655, -0.529186, 2.081427>,  <2.508077, -0.609713, 2.518970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.102655, -0.529186, 2.081427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.193658, -0.462502, 2.465187>,  <3.248260, -0.422491, 2.695443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.193658, -0.462502, 2.465187>,  <3.102655, -0.529186, 2.081427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.193658, -0.462502, 2.465187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856623, -0.502787, -0.115769,
		0.463073, 0.848182, -0.257196,
		0.227508, 0.166711, 0.959400,
		3.261910, -0.412488, 2.753007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.809880, -0.537270, 2.085881>,  <3.102655, -0.529186, 2.081427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.809880, -0.537270, 2.085881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.740598, -0.589790, 2.476318>,  <3.699029, -0.621303, 2.710581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.740598, -0.589790, 2.476318>,  <3.809880, -0.537270, 2.085881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.740598, -0.589790, 2.476318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790545, -0.609625, 0.058275,
		0.587400, 0.781740, 0.209389,
		-0.173205, -0.131301, 0.976094,
		3.688636, -0.629181, 2.769147>
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
