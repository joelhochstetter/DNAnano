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
	<1.792015, 4.371301, 4.023630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.398201, 4.433464, 4.055980>,  <1.161913, 4.470762, 4.075389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.398201, 4.433464, 4.055980>,  <1.792015, 4.371301, 4.023630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.398201, 4.433464, 4.055980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104985, -0.892923, 0.437797,
		0.140252, 0.422535, 0.895429,
		-0.984534, 0.155409, 0.080874,
		1.102841, 4.480087, 4.080242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.670096, 4.119589, 4.671977>,  <1.792015, 4.371301, 4.023630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.670096, 4.119589, 4.671977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.339752, 4.127974, 4.446583>,  <1.141546, 4.133004, 4.311346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.339752, 4.127974, 4.446583>,  <1.670096, 4.119589, 4.671977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.339752, 4.127974, 4.446583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292065, -0.870715, 0.395669,
		-0.482342, 0.491342, 0.725210,
		-0.825860, 0.020961, -0.563486,
		1.091994, 4.134262, 4.277537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.130620, 3.993541, 5.035188>,  <1.670096, 4.119589, 4.671977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.130620, 3.993541, 5.035188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.091442, 3.862801, 4.659193>,  <1.067936, 3.784357, 4.433596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.091442, 3.862801, 4.659193>,  <1.130620, 3.993541, 5.035188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.091442, 3.862801, 4.659193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017059, -0.943838, 0.329967,
		-0.995046, 0.048353, 0.086868,
		-0.097944, -0.326850, -0.939987,
		1.062059, 3.764745, 4.377197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.474517, 3.572772, 4.881916>,  <1.130620, 3.993541, 5.035188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.474517, 3.572772, 4.881916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.804234, 3.477049, 4.676675>,  <1.002064, 3.419615, 4.553530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.804234, 3.477049, 4.676675>,  <0.474517, 3.572772, 4.881916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.804234, 3.477049, 4.676675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034868, -0.883100, 0.467887,
		-0.565090, -0.403567, -0.719589,
		0.824292, -0.239307, -0.513103,
		1.051521, 3.405257, 4.522744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.372220, 2.935717, 4.511940>,  <0.474517, 3.572772, 4.881916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.372220, 2.935717, 4.511940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.764832, 2.971760, 4.579445>,  <1.000399, 2.993386, 4.619948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.764832, 2.971760, 4.579445>,  <0.372220, 2.935717, 4.511940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.764832, 2.971760, 4.579445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033911, -0.950110, 0.310065,
		0.188283, -0.298615, -0.935616,
		0.981529, 0.090107, 0.168764,
		1.059290, 2.998792, 4.630074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.618200, 2.398878, 4.162603>,  <0.372220, 2.935717, 4.511940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.618200, 2.398878, 4.162603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.908962, 2.510382, 4.413650>,  <1.083420, 2.577284, 4.564277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.908962, 2.510382, 4.413650>,  <0.618200, 2.398878, 4.162603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.908962, 2.510382, 4.413650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098895, -0.946875, 0.306019,
		0.679579, -0.160379, -0.715856,
		0.726906, 0.278759, 0.627616,
		1.127034, 2.594009, 4.601934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.189988, 1.914650, 4.046647>,  <0.618200, 2.398878, 4.162603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.189988, 1.914650, 4.046647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.238567, 2.053999, 4.418428>,  <1.267715, 2.137608, 4.641498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.238567, 2.053999, 4.418428>,  <1.189988, 1.914650, 4.046647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.238567, 2.053999, 4.418428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245245, -0.917887, 0.311991,
		0.961824, 0.190053, -0.196913,
		0.121449, 0.348373, 0.929455,
		1.275002, 2.158511, 4.697265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.870365, 1.700330, 4.287086>,  <1.189988, 1.914650, 4.046647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.870365, 1.700330, 4.287086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.644978, 1.785400, 4.606402>,  <1.509745, 1.836443, 4.797993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.644978, 1.785400, 4.606402>,  <1.870365, 1.700330, 4.287086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.644978, 1.785400, 4.606402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296194, -0.850048, 0.435532,
		0.771214, 0.481859, 0.415982,
		-0.563470, 0.212676, 0.798292,
		1.475937, 1.849203, 4.845890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.295925, 0.559444, 0.258262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.469948, 0.732418, 0.574167>,  <1.574361, 0.836203, 0.763710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.469948, 0.732418, 0.574167>,  <1.295925, 0.559444, 0.258262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.469948, 0.732418, 0.574167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285535, 0.898110, -0.334468,
		-0.853930, -0.079993, 0.514203,
		0.435056, 0.432435, 0.789764,
		1.600465, 0.862149, 0.811096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.855163, 0.902402, 0.702463>,  <1.295925, 0.559444, 0.258262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.855163, 0.902402, 0.702463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.205032, 1.094501, 0.728716>,  <1.414954, 1.209761, 0.744468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.205032, 1.094501, 0.728716>,  <0.855163, 0.902402, 0.702463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.205032, 1.094501, 0.728716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408437, 0.803156, -0.433728,
		-0.261011, 0.352564, 0.898650,
		0.874673, 0.480249, 0.065632,
		1.467434, 1.238576, 0.748406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.762181, 1.620894, 0.947530>,  <0.855163, 0.902402, 0.702463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.762181, 1.620894, 0.947530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.095848, 1.628105, 0.727043>,  <1.296048, 1.632432, 0.594751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.095848, 1.628105, 0.727043>,  <0.762181, 1.620894, 0.947530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.095848, 1.628105, 0.727043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236910, 0.914267, -0.328618,
		0.498034, 0.404712, 0.766923,
		0.834168, 0.018029, -0.551216,
		1.346098, 1.633514, 0.561678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.126290, 2.208467, 1.069785>,  <0.762181, 1.620894, 0.947530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.126290, 2.208467, 1.069785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.254166, 2.105644, 0.704990>,  <1.330891, 2.043951, 0.486113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.254166, 2.105644, 0.704990>,  <1.126290, 2.208467, 1.069785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.254166, 2.105644, 0.704990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060153, 0.966061, -0.251213,
		0.945611, 0.025451, 0.324302,
		0.319689, -0.257057, -0.911987,
		1.350072, 2.028527, 0.431394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.570535, 2.687953, 0.846598>,  <1.126290, 2.208467, 1.069785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.570535, 2.687953, 0.846598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.518623, 2.528011, 0.483660>,  <1.487476, 2.432047, 0.265897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.518623, 2.528011, 0.483660>,  <1.570535, 2.687953, 0.846598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.518623, 2.528011, 0.483660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158464, 0.894958, -0.417060,
		0.978798, -0.197907, -0.052786,
		-0.129780, -0.399853, -0.907345,
		1.479689, 2.408056, 0.211456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.184381, 2.844215, 0.337150>,  <1.570535, 2.687953, 0.846598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.184381, 2.844215, 0.337150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.849335, 2.765228, 0.133421>,  <1.648307, 2.717836, 0.011184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.849335, 2.765228, 0.133421>,  <2.184381, 2.844215, 0.337150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.849335, 2.765228, 0.133421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104683, 0.857072, -0.504450,
		0.536137, -0.475852, -0.697224,
		-0.837615, -0.197467, -0.509321,
		1.598050, 2.705988, -0.019376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.355700, 2.875932, -0.371685>,  <2.184381, 2.844215, 0.337150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.355700, 2.875932, -0.371685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.960953, 2.934856, -0.345186>,  <1.724104, 2.970211, -0.329287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.960953, 2.934856, -0.345186>,  <2.355700, 2.875932, -0.371685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.960953, 2.934856, -0.345186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090260, 0.843089, -0.530146,
		-0.133948, -0.517205, -0.845314,
		-0.986869, 0.147310, 0.066248,
		1.664892, 2.979049, -0.325312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.209530, 3.148442, -0.926406>,  <2.355700, 2.875932, -0.371685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.209530, 3.148442, -0.926406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.854256, 3.218369, -0.756435>,  <1.641091, 3.260325, -0.654453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.854256, 3.218369, -0.756435>,  <2.209530, 3.148442, -0.926406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.854256, 3.218369, -0.756435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077529, 0.854518, -0.513604,
		-0.452895, -0.489120, -0.745418,
		-0.888187, 0.174817, 0.424927,
		1.587800, 3.270814, -0.628957>
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
