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
	<1.005388, 3.885456, 1.638801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.725189, 3.622086, 1.748915>,  <0.557070, 3.464064, 1.814983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.725189, 3.622086, 1.748915>,  <1.005388, 3.885456, 1.638801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.725189, 3.622086, 1.748915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535887, -0.740043, -0.406401,
		0.471307, -0.137161, 0.871238,
		-0.700496, -0.658425, 0.275284,
		0.515040, 3.424558, 1.831500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.318690, 3.314159, 2.020093>,  <1.005388, 3.885456, 1.638801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.318690, 3.314159, 2.020093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.974319, 3.233238, 1.833382>,  <0.767697, 3.184685, 1.721355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.974319, 3.233238, 1.833382>,  <1.318690, 3.314159, 2.020093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.974319, 3.233238, 1.833382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449366, -0.732540, -0.511326,
		-0.238490, -0.649967, 0.721571,
		-0.860925, -0.202303, -0.466777,
		0.716042, 3.172547, 1.693348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.192814, 2.621032, 2.084111>,  <1.318690, 3.314159, 2.020093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.192814, 2.621032, 2.084111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.034203, 2.766182, 1.746807>,  <0.939036, 2.853272, 1.544425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.034203, 2.766182, 1.746807>,  <1.192814, 2.621032, 2.084111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.034203, 2.766182, 1.746807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315382, -0.808807, -0.496352,
		-0.862148, -0.462766, 0.206271,
		-0.396529, 0.362875, -0.843260,
		0.915244, 2.875044, 1.493829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.802638, 2.135081, 1.704284>,  <1.192814, 2.621032, 2.084111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.802638, 2.135081, 1.704284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.926262, 2.400696, 1.431950>,  <1.000436, 2.560065, 1.268549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.926262, 2.400696, 1.431950>,  <0.802638, 2.135081, 1.704284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.926262, 2.400696, 1.431950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464352, -0.730113, -0.501309,
		-0.829975, -0.161213, -0.533996,
		0.309060, 0.664037, -0.680836,
		1.018980, 2.599907, 1.227699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.595981, 1.910985, 1.036914>,  <0.802638, 2.135081, 1.704284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.595981, 1.910985, 1.036914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.921059, 2.142250, 1.007917>,  <1.116105, 2.281009, 0.990519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.921059, 2.142250, 1.007917>,  <0.595981, 1.910985, 1.036914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.921059, 2.142250, 1.007917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455304, -0.707731, -0.540199,
		-0.363628, 0.406011, -0.838409,
		0.812695, 0.578163, -0.072492,
		1.164867, 2.315699, 0.986170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.769129, 1.803019, 0.388531>,  <0.595981, 1.910985, 1.036914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.769129, 1.803019, 0.388531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.075966, 1.934914, 0.608656>,  <1.260068, 2.014051, 0.740731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.075966, 1.934914, 0.608656>,  <0.769129, 1.803019, 0.388531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.075966, 1.934914, 0.608656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573824, -0.736235, -0.358725,
		0.286875, 0.590958, -0.753971,
		0.767091, 0.329737, 0.550313,
		1.306093, 2.033835, 0.773750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.369907, 1.906911, -0.103839>,  <0.769129, 1.803019, 0.388531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.369907, 1.906911, -0.103839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.505501, 1.852715, 0.268555>,  <1.586857, 1.820197, 0.491991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.505501, 1.852715, 0.268555>,  <1.369907, 1.906911, -0.103839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.505501, 1.852715, 0.268555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737318, -0.576378, -0.352351,
		0.584339, 0.805873, -0.095484,
		0.338985, -0.135490, 0.930984,
		1.607196, 1.812067, 0.547850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.035178, 2.161132, -0.134745>,  <1.369907, 1.906911, -0.103839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.035178, 2.161132, -0.134745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.961510, 1.856911, 0.114298>,  <1.917309, 1.674378, 0.263723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.961510, 1.856911, 0.114298>,  <2.035178, 2.161132, -0.134745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.961510, 1.856911, 0.114298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716309, -0.537609, -0.444835,
		0.673040, 0.364053, 0.643804,
		-0.184171, -0.760554, 0.622607,
		1.906258, 1.628745, 0.301080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.170441, 0.703584, -0.319411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.375885, 0.599388, 0.007600>,  <2.499151, 0.536871, 0.203806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.375885, 0.599388, 0.007600>,  <2.170441, 0.703584, -0.319411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.375885, 0.599388, 0.007600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454214, 0.725803, 0.516623,
		-0.727938, -0.636675, 0.254461,
		0.513610, -0.260490, 0.817527,
		2.529968, 0.521241, 0.252858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.688883, 0.689417, 0.269200>,  <2.170441, 0.703584, -0.319411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.688883, 0.689417, 0.269200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.057701, 0.770821, 0.400908>,  <2.278992, 0.819663, 0.479932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.057701, 0.770821, 0.400908>,  <1.688883, 0.689417, 0.269200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.057701, 0.770821, 0.400908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358825, 0.768426, 0.529874,
		-0.145185, -0.606717, 0.781547,
		0.922045, 0.203509, 0.329269,
		2.334314, 0.831873, 0.499688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.877695, 0.637904, 0.977959>,  <1.688883, 0.689417, 0.269200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.877695, 0.637904, 0.977959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.066536, 0.953598, 0.820871>,  <2.179841, 1.143014, 0.726619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.066536, 0.953598, 0.820871>,  <1.877695, 0.637904, 0.977959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.066536, 0.953598, 0.820871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470592, 0.602335, 0.644776,
		0.745428, -0.119589, 0.655771,
		0.472102, 0.789235, -0.392719,
		2.208167, 1.190368, 0.703056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.901528, 1.057282, 1.513867>,  <1.877695, 0.637904, 0.977959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.901528, 1.057282, 1.513867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.989937, 1.301346, 1.209538>,  <2.042982, 1.447784, 1.026940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.989937, 1.301346, 1.209538>,  <1.901528, 1.057282, 1.513867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.989937, 1.301346, 1.209538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638590, 0.680168, 0.359964,
		0.737124, 0.406296, 0.539973,
		0.221021, 0.610160, -0.760825,
		2.056243, 1.484394, 0.981290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.178885, 1.816265, 1.709591>,  <1.901528, 1.057282, 1.513867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.178885, 1.816265, 1.709591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.016670, 1.806229, 1.344097>,  <1.919341, 1.800207, 1.124801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.016670, 1.806229, 1.344097>,  <2.178885, 1.816265, 1.709591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.016670, 1.806229, 1.344097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467933, 0.864409, 0.183944,
		0.785225, 0.502163, -0.362291,
		-0.405538, -0.025090, -0.913734,
		1.895009, 1.798702, 1.069977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.360410, 2.442342, 1.355790>,  <2.178885, 1.816265, 1.709591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.360410, 2.442342, 1.355790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.021423, 2.300362, 1.197899>,  <1.818031, 2.215173, 1.103164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.021423, 2.300362, 1.197899>,  <2.360410, 2.442342, 1.355790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.021423, 2.300362, 1.197899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435617, 0.889953, 0.134984,
		0.303376, 0.286345, -0.908829,
		-0.847467, -0.354950, -0.394727,
		1.767183, 2.193877, 1.079481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.235991, 2.987797, 0.952238>,  <2.360410, 2.442342, 1.355790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.235991, 2.987797, 0.952238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.904327, 2.769104, 0.998850>,  <1.705329, 2.637888, 1.026817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.904327, 2.769104, 0.998850>,  <2.235991, 2.987797, 0.952238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.904327, 2.769104, 0.998850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518157, 0.829902, 0.206822,
		-0.209785, 0.111107, -0.971414,
		-0.829158, -0.546734, 0.116530,
		1.655580, 2.605084, 1.033809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.710012, 3.337168, 0.507657>,  <2.235991, 2.987797, 0.952238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.710012, 3.337168, 0.507657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.570366, 3.135147, 0.823389>,  <1.486578, 3.013935, 1.012828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.570366, 3.135147, 0.823389>,  <1.710012, 3.337168, 0.507657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.570366, 3.135147, 0.823389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540151, 0.796772, 0.270909,
		-0.765738, -0.331778, -0.550970,
		-0.349116, -0.505052, 0.789329,
		1.465631, 2.983632, 1.060188>
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
