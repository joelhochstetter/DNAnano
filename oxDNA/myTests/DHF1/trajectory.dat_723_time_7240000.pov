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
	<-0.100594, 1.046365, 6.356187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.226015, 0.829781, 6.436297>,  <0.421981, 0.699830, 6.484363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.226015, 0.829781, 6.436297>,  <-0.100594, 1.046365, 6.356187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.226015, 0.829781, 6.436297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224425, -0.021919, -0.974245,
		0.531907, 0.840439, 0.103620,
		0.816522, -0.541462, 0.200274,
		0.470972, 0.667342, 6.496379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.584284, 1.377701, 6.016351>,  <-0.100594, 1.046365, 6.356187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.584284, 1.377701, 6.016351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.576889, 0.979214, 6.050308>,  <0.572452, 0.740121, 6.070683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.576889, 0.979214, 6.050308>,  <0.584284, 1.377701, 6.016351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.576889, 0.979214, 6.050308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208420, -0.086881, -0.974173,
		0.977865, -0.000316, 0.209238,
		-0.018486, -0.996219, 0.084892,
		0.571343, 0.680348, 6.075776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.253074, 1.137770, 5.829773>,  <0.584284, 1.377701, 6.016351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.253074, 1.137770, 5.829773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.957712, 0.878193, 5.756417>,  <0.780495, 0.722447, 5.712403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.957712, 0.878193, 5.756417>,  <1.253074, 1.137770, 5.829773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.957712, 0.878193, 5.756417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027448, 0.242803, -0.969687,
		0.673800, -0.721055, -0.161474,
		-0.738404, -0.648942, -0.183392,
		0.736191, 0.683510, 5.701399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.573040, 0.809140, 5.293913>,  <1.253074, 1.137770, 5.829773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.573040, 0.809140, 5.293913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.173590, 0.788269, 5.295985>,  <0.933920, 0.775747, 5.297228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.173590, 0.788269, 5.295985>,  <1.573040, 0.809140, 5.293913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.173590, 0.788269, 5.295985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020849, 0.304489, -0.952288,
		0.048110, -0.951086, -0.305158,
		-0.998624, -0.052177, 0.005180,
		0.874002, 0.772616, 5.297539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.404332, 0.442183, 4.728908>,  <1.573040, 0.809140, 5.293913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.404332, 0.442183, 4.728908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.068306, 0.643665, 4.809478>,  <0.866690, 0.764555, 4.857821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.068306, 0.643665, 4.809478>,  <1.404332, 0.442183, 4.728908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.068306, 0.643665, 4.809478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057009, 0.287276, -0.956150,
		-0.539483, -0.814710, -0.212614,
		-0.840064, 0.503706, 0.201426,
		0.816287, 0.794777, 4.869906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.949497, 0.223725, 4.176879>,  <1.404332, 0.442183, 4.728908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.949497, 0.223725, 4.176879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.789171, 0.566025, 4.307748>,  <0.692976, 0.771405, 4.386270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.789171, 0.566025, 4.307748>,  <0.949497, 0.223725, 4.176879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.789171, 0.566025, 4.307748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081154, 0.322546, -0.943069,
		-0.912558, -0.404546, -0.059833,
		-0.400813, 0.855749, 0.327172,
		0.668927, 0.822750, 4.405900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.392987, 0.309314, 3.664371>,  <0.949497, 0.223725, 4.176879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.392987, 0.309314, 3.664371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.478146, 0.662094, 3.832581>,  <0.529241, 0.873762, 3.933507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.478146, 0.662094, 3.832581>,  <0.392987, 0.309314, 3.664371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.478146, 0.662094, 3.832581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019046, 0.434055, -0.900685,
		-0.976889, 0.183744, 0.109206,
		0.212897, 0.881949, 0.420524,
		0.542015, 0.926679, 3.958738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.092219, 0.703368, 3.267324>,  <0.392987, 0.309314, 3.664371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.092219, 0.703368, 3.267324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.291965, 0.994415, 3.455455>,  <0.411813, 1.169044, 3.568333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.291965, 0.994415, 3.455455>,  <0.092219, 0.703368, 3.267324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.291965, 0.994415, 3.455455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156949, 0.457903, -0.875038,
		-0.852057, 0.510781, 0.114463,
		0.499366, 0.727618, 0.470326,
		0.441775, 1.212701, 3.596553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.114560, 1.919973, 2.422060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.121872, 2.181362, 2.724751>,  <1.126259, 2.338196, 2.906366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.121872, 2.181362, 2.724751>,  <1.114560, 1.919973, 2.422060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.121872, 2.181362, 2.724751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331716, -0.710023, 0.621154,
		0.943202, -0.262374, 0.203788,
		0.018280, 0.653473, 0.756729,
		1.127356, 2.377404, 2.951770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.367272, 1.496767, 2.990776>,  <1.114560, 1.919973, 2.422060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.367272, 1.496767, 2.990776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.108131, 1.785061, 3.089431>,  <0.952647, 1.958037, 3.148624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.108131, 1.785061, 3.089431>,  <1.367272, 1.496767, 2.990776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.108131, 1.785061, 3.089431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413994, -0.604904, 0.680221,
		0.639450, 0.338576, 0.690268,
		-0.647852, 0.720734, 0.246637,
		0.913776, 2.001281, 3.163422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.493358, 1.846082, 3.649264>,  <1.367272, 1.496767, 2.990776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.493358, 1.846082, 3.649264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.104973, 1.833771, 3.554369>,  <0.871941, 1.826384, 3.497432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.104973, 1.833771, 3.554369>,  <1.493358, 1.846082, 3.649264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.104973, 1.833771, 3.554369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213322, -0.337429, 0.916862,
		-0.108270, 0.940848, 0.321066,
		-0.970964, -0.030778, -0.237237,
		0.813684, 1.824537, 3.483198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.045699, 2.212032, 4.104294>,  <1.493358, 1.846082, 3.649264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.045699, 2.212032, 4.104294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.848122, 1.893757, 3.964064>,  <0.729576, 1.702792, 3.879926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.848122, 1.893757, 3.964064>,  <1.045699, 2.212032, 4.104294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.848122, 1.893757, 3.964064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186948, -0.296578, 0.936532,
		-0.849159, 0.528132, -0.002260,
		-0.493942, -0.795687, -0.350575,
		0.699939, 1.655051, 3.858891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.511529, 2.180824, 4.407673>,  <1.045699, 2.212032, 4.104294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.511529, 2.180824, 4.407673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.528671, 1.798096, 4.292673>,  <0.538956, 1.568459, 4.223673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.528671, 1.798096, 4.292673>,  <0.511529, 2.180824, 4.407673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.528671, 1.798096, 4.292673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239844, -0.289203, 0.926735,
		-0.969865, 0.029240, -0.241881,
		0.042855, -0.956821, -0.287501,
		0.541528, 1.511049, 4.206423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.026582, 1.836056, 4.804956>,  <0.511529, 2.180824, 4.407673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.026582, 1.836056, 4.804956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.219322, 1.510311, 4.675567>,  <0.334966, 1.314864, 4.597934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.219322, 1.510311, 4.675567>,  <0.026582, 1.836056, 4.804956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.219322, 1.510311, 4.675567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181189, -0.453775, 0.872501,
		-0.857316, -0.361805, -0.366205,
		0.481851, -0.814362, -0.323474,
		0.363877, 1.266003, 4.578525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.354859, 1.297660, 5.037594>,  <0.026582, 1.836056, 4.804956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.354859, 1.297660, 5.037594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.009529, 1.141609, 4.984027>,  <0.228162, 1.047979, 4.951887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.009529, 1.141609, 4.984027>,  <-0.354859, 1.297660, 5.037594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.009529, 1.141609, 4.984027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075098, -0.476120, 0.876168,
		-0.405575, -0.788107, -0.463029,
		0.910971, -0.390124, -0.133918,
		0.282820, 1.024571, 4.943851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.418887, 0.538446, 5.153141>,  <-0.354859, 1.297660, 5.037594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.418887, 0.538446, 5.153141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.033310, 0.625011, 5.215084>,  <0.198036, 0.676951, 5.252250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.033310, 0.625011, 5.215084>,  <-0.418887, 0.538446, 5.153141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.033310, 0.625011, 5.215084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049800, -0.718349, 0.693899,
		0.261411, -0.661166, -0.703224,
		0.963942, 0.216413, 0.154859,
		0.255873, 0.689935, 5.261541>
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
