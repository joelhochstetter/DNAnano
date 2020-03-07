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
	<3.313097, 4.925129, 0.459694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.343792, 5.315269, 0.376940>,  <3.362209, 5.549354, 0.327287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.343792, 5.315269, 0.376940>,  <3.313097, 4.925129, 0.459694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.343792, 5.315269, 0.376940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323875, -0.171861, -0.930359,
		-0.942983, 0.138399, 0.302704,
		0.076738, 0.975351, -0.206886,
		3.366813, 5.607875, 0.314874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.822641, 4.537614, 0.118050>,  <3.313097, 4.925129, 0.459694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.822641, 4.537614, 0.118050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.531942, 4.789856, 0.226992>,  <2.357523, 4.941201, 0.292356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.531942, 4.789856, 0.226992>,  <2.822641, 4.537614, 0.118050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.531942, 4.789856, 0.226992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680623, -0.607572, -0.409400,
		-0.092696, -0.482900, 0.870756,
		-0.726746, 0.630606, 0.272353,
		2.313919, 4.979038, 0.308698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.223867, 4.087039, -0.240654>,  <2.822641, 4.537614, 0.118050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.223867, 4.087039, -0.240654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.336218, 3.826515, -0.522619>,  <3.403629, 3.670201, -0.691798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.336218, 3.826515, -0.522619>,  <3.223867, 4.087039, -0.240654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.336218, 3.826515, -0.522619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856126, -0.161926, 0.490742,
		-0.433769, -0.741333, 0.512122,
		0.280878, -0.651310, -0.704913,
		3.420481, 3.631122, -0.734093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.266856, 3.439737, 0.048531>,  <3.223867, 4.087039, -0.240654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.266856, 3.439737, 0.048531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.508886, 3.454491, -0.269594>,  <3.654104, 3.463343, -0.460469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.508886, 3.454491, -0.269594>,  <3.266856, 3.439737, 0.048531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.508886, 3.454491, -0.269594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780827, -0.222642, 0.583729,
		-0.155540, -0.974202, -0.163516,
		0.605075, 0.036885, -0.795313,
		3.690409, 3.465556, -0.508188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.692428, 2.812912, 0.005854>,  <3.266856, 3.439737, 0.048531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.692428, 2.812912, 0.005854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.872757, 3.136246, -0.145596>,  <3.980954, 3.330246, -0.236465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.872757, 3.136246, -0.145596>,  <3.692428, 2.812912, 0.005854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.872757, 3.136246, -0.145596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781296, -0.152213, 0.605317,
		0.431667, -0.568707, -0.700169,
		0.450823, 0.808334, -0.378623,
		4.008004, 3.378746, -0.259182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.434152, 2.636481, 0.029841>,  <3.692428, 2.812912, 0.005854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.434152, 2.636481, 0.029841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.397770, 3.034401, 0.048166>,  <4.375941, 3.273153, 0.059162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.397770, 3.034401, 0.048166>,  <4.434152, 2.636481, 0.029841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.397770, 3.034401, 0.048166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708173, 0.032268, 0.705301,
		0.700155, 0.096595, -0.707426,
		-0.090956, 0.994801, 0.045814,
		4.370483, 3.332841, 0.061910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.044132, 2.768694, -0.019552>,  <4.434152, 2.636481, 0.029841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.044132, 2.768694, -0.019552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.802200, 3.000504, 0.198929>,  <4.657042, 3.139589, 0.330017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.802200, 3.000504, 0.198929>,  <5.044132, 2.768694, -0.019552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.802200, 3.000504, 0.198929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642973, -0.049305, 0.764301,
		0.469860, 0.813463, -0.342796,
		-0.604829, 0.579523, 0.546201,
		4.620752, 3.174361, 0.362789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.389075, 3.412720, 0.168785>,  <5.044132, 2.768694, -0.019552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.389075, 3.412720, 0.168785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.114336, 3.275963, 0.425331>,  <4.949492, 3.193909, 0.579259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.114336, 3.275963, 0.425331>,  <5.389075, 3.412720, 0.168785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.114336, 3.275963, 0.425331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673495, 0.032320, 0.738485,
		-0.273211, 0.939183, 0.208064,
		-0.686848, -0.341893, 0.641365,
		4.908281, 3.173395, 0.617741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.879154, -0.051684, 1.441941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.820311, 0.295891, 1.630962>,  <1.785004, 0.504436, 1.744375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.820311, 0.295891, 1.630962>,  <1.879154, -0.051684, 1.441941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.820311, 0.295891, 1.630962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146190, 0.491605, -0.858460,
		-0.978257, -0.057204, -0.199350,
		-0.147109, 0.868937, 0.472554,
		1.776178, 0.556572, 1.772728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.359846, 0.505523, 1.166223>,  <1.879154, -0.051684, 1.441941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.359846, 0.505523, 1.166223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.595997, 0.730438, 1.397839>,  <1.737688, 0.865387, 1.536808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.595997, 0.730438, 1.397839>,  <1.359846, 0.505523, 1.166223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.595997, 0.730438, 1.397839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082129, 0.671833, -0.736135,
		-0.802938, 0.482154, 0.350455,
		0.590378, 0.562288, 0.579039,
		1.773110, 0.899125, 1.571550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.084308, 1.219261, 1.106508>,  <1.359846, 0.505523, 1.166223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.084308, 1.219261, 1.106508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.469637, 1.272705, 1.199596>,  <1.700834, 1.304772, 1.255449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.469637, 1.272705, 1.199596>,  <1.084308, 1.219261, 1.106508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.469637, 1.272705, 1.199596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078684, 0.688476, -0.720978,
		-0.256552, 0.712846, 0.652711,
		0.963322, 0.133610, 0.232720,
		1.758634, 1.312788, 1.269412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.247048, 1.991549, 1.028542>,  <1.084308, 1.219261, 1.106508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.247048, 1.991549, 1.028542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.590842, 1.791866, 0.984585>,  <1.797119, 1.672057, 0.958211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.590842, 1.791866, 0.984585>,  <1.247048, 1.991549, 1.028542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.590842, 1.791866, 0.984585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252730, 0.601885, -0.757537,
		0.444310, 0.623319, 0.643476,
		0.859486, -0.499207, -0.109892,
		1.848688, 1.642104, 0.951617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.894268, 2.306598, 1.104255>,  <1.247048, 1.991549, 1.028542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.894268, 2.306598, 1.104255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.958218, 2.022938, 0.829578>,  <1.996587, 1.852741, 0.664773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.958218, 2.022938, 0.829578>,  <1.894268, 2.306598, 1.104255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.958218, 2.022938, 0.829578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278734, 0.699761, -0.657755,
		0.946968, -0.086247, 0.309538,
		0.159873, -0.709151, -0.686691,
		2.006180, 1.810192, 0.623571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.572951, 2.382113, 0.989137>,  <1.894268, 2.306598, 1.104255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.572951, 2.382113, 0.989137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.400430, 2.227036, 0.663273>,  <2.296917, 2.133989, 0.467754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.400430, 2.227036, 0.663273>,  <2.572951, 2.382113, 0.989137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.400430, 2.227036, 0.663273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341991, 0.765323, -0.545273,
		0.834878, -0.513784, -0.197498,
		-0.431302, -0.387694, -0.814660,
		2.271039, 2.110727, 0.418875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.851483, 1.788732, 0.633530>,  <2.572951, 2.382113, 0.989137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.851483, 1.788732, 0.633530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.032364, 2.091900, 0.821602>,  <3.140893, 2.273801, 0.934445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.032364, 2.091900, 0.821602>,  <2.851483, 1.788732, 0.633530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.032364, 2.091900, 0.821602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458549, 0.254594, -0.851419,
		-0.765013, 0.600615, -0.232416,
		0.452203, 0.757921, 0.470179,
		3.168025, 2.319276, 0.962656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.833675, 2.429217, 0.216260>,  <2.851483, 1.788732, 0.633530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.833675, 2.429217, 0.216260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.148618, 2.441067, 0.462574>,  <3.337584, 2.448176, 0.610362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.148618, 2.441067, 0.462574>,  <2.833675, 2.429217, 0.216260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.148618, 2.441067, 0.462574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576594, 0.318127, -0.752552,
		-0.218191, 0.947585, 0.233399,
		0.787358, 0.029624, 0.615785,
		3.384825, 2.449954, 0.647309>
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
