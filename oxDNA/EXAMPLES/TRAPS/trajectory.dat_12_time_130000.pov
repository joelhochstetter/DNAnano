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
	<36.397499, 53.086769, 50.131687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139774, 53.230354, 49.861572>,  <35.985142, 53.316505, 49.699505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139774, 53.230354, 49.861572>,  <36.397499, 53.086769, 50.131687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139774, 53.230354, 49.861572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282992, 0.932227, 0.225541,
		0.710480, -0.045782, -0.702227,
		-0.644308, 0.358967, -0.675285,
		35.946484, 53.338043, 49.658985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855629, 53.452099, 49.675701>,  <36.397499, 53.086769, 50.131687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855629, 53.452099, 49.675701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478634, 53.584984, 49.661007>,  <36.252438, 53.664715, 49.652191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478634, 53.584984, 49.661007>,  <36.855629, 53.452099, 49.675701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478634, 53.584984, 49.661007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320897, 0.930134, 0.178536,
		0.093476, 0.156481, -0.983248,
		-0.942490, 0.332210, -0.036731,
		36.195889, 53.684647, 49.649986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377720, 53.427341, 50.242306>,  <36.855629, 53.452099, 49.675701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377720, 53.427341, 50.242306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.554626, 53.664497, 50.511490>,  <37.660770, 53.806789, 50.673000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.554626, 53.664497, 50.511490>,  <37.377720, 53.427341, 50.242306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554626, 53.664497, 50.511490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556767, -0.769746, 0.312253,
		0.703142, 0.236584, -0.670536,
		0.442269, 0.592890, 0.672963,
		37.687305, 53.842365, 50.713379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133472, 53.347076, 50.291134>,  <37.377720, 53.427341, 50.242306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133472, 53.347076, 50.291134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031460, 53.508175, 50.642761>,  <37.970253, 53.604832, 50.853737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031460, 53.508175, 50.642761>,  <38.133472, 53.347076, 50.291134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031460, 53.508175, 50.642761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678783, -0.572896, 0.459396,
		0.688632, 0.713854, -0.127271,
		-0.255029, 0.402745, 0.879066,
		37.954952, 53.628998, 50.906483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797707, 53.612289, 50.442017>,  <38.133472, 53.347076, 50.291134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797707, 53.612289, 50.442017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535568, 53.524063, 50.730980>,  <38.378284, 53.471127, 50.904358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535568, 53.524063, 50.730980>,  <38.797707, 53.612289, 50.442017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535568, 53.524063, 50.730980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707530, -0.514091, 0.484883,
		0.264433, 0.828890, 0.492966,
		-0.655344, -0.220569, 0.722408,
		38.338966, 53.457893, 50.947701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081505, 53.866936, 51.133701>,  <38.797707, 53.612289, 50.442017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081505, 53.866936, 51.133701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840847, 53.547771, 51.118946>,  <38.696453, 53.356274, 51.110092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840847, 53.547771, 51.118946>,  <39.081505, 53.866936, 51.133701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840847, 53.547771, 51.118946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648994, -0.515235, 0.559767,
		-0.465651, 0.312841, 0.827828,
		-0.601645, -0.797912, -0.036888,
		38.660355, 53.308399, 51.107880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017632, 53.636196, 51.778446>,  <39.081505, 53.866936, 51.133701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017632, 53.636196, 51.778446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942516, 53.324585, 51.539165>,  <38.897446, 53.137619, 51.395596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942516, 53.324585, 51.539165>,  <39.017632, 53.636196, 51.778446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942516, 53.324585, 51.539165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610007, -0.569845, 0.550606,
		-0.769822, -0.261508, 0.582227,
		-0.187792, -0.779031, -0.598201,
		38.886177, 53.090874, 51.359707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945190, 53.055588, 52.167953>,  <39.017632, 53.636196, 51.778446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945190, 53.055588, 52.167953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035210, 52.884552, 51.817749>,  <39.089222, 52.781933, 51.607624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035210, 52.884552, 51.817749>,  <38.945190, 53.055588, 52.167953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035210, 52.884552, 51.817749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710818, -0.542521, 0.447670,
		-0.666403, -0.723077, 0.181843,
		0.225046, -0.427586, -0.875514,
		39.102722, 52.756275, 51.555096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868637, 52.332336, 52.138000>,  <38.945190, 53.055588, 52.167953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868637, 52.332336, 52.138000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195557, 52.470383, 51.953430>,  <39.391708, 52.553211, 51.842686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195557, 52.470383, 51.953430>,  <38.868637, 52.332336, 52.138000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195557, 52.470383, 51.953430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572055, -0.581986, 0.577966,
		-0.069082, -0.736336, -0.673081,
		0.817301, 0.345112, -0.461430,
		39.440746, 52.573917, 51.815002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222816, 51.809795, 51.739548>,  <38.868637, 52.332336, 52.138000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222816, 51.809795, 51.739548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458488, 52.091991, 51.897106>,  <39.599892, 52.261311, 51.991642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458488, 52.091991, 51.897106>,  <39.222816, 51.809795, 51.739548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458488, 52.091991, 51.897106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584845, -0.708718, 0.394557,
		0.557514, -0.002099, -0.830165,
		0.589181, 0.705489, 0.393892,
		39.635242, 52.303638, 52.015274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771671, 51.401569, 51.793839>,  <39.222816, 51.809795, 51.739548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771671, 51.401569, 51.793839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914700, 51.720333, 51.988602>,  <40.000515, 51.911591, 52.105457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914700, 51.720333, 51.988602>,  <39.771671, 51.401569, 51.793839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914700, 51.720333, 51.988602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576631, -0.598516, 0.556126,
		0.734604, 0.081913, -0.673533,
		0.357566, 0.796912, 0.486906,
		40.021969, 51.959408, 52.134674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585537, 50.723473, 51.825481>,  <39.771671, 51.401569, 51.793839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585537, 50.723473, 51.825481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.194706, 50.749496, 51.744392>,  <38.960209, 50.765110, 51.695740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.194706, 50.749496, 51.744392>,  <39.585537, 50.723473, 51.825481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194706, 50.749496, 51.744392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155103, 0.869774, -0.468441,
		0.145844, -0.489144, -0.859923,
		-0.977073, 0.065057, -0.202718,
		38.901585, 50.769012, 51.683578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615738, 50.962910, 51.210766>,  <39.585537, 50.723473, 51.825481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615738, 50.962910, 51.210766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259068, 51.042648, 51.373337>,  <39.045067, 51.090492, 51.470879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259068, 51.042648, 51.373337>,  <39.615738, 50.962910, 51.210766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259068, 51.042648, 51.373337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016948, 0.882491, -0.470023,
		-0.452365, -0.425995, -0.783514,
		-0.891672, 0.199343, 0.406428,
		38.991566, 51.102451, 51.495266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340145, 51.100796, 51.235756>,  <39.615738, 50.962910, 51.210766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340145, 51.100796, 51.235756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.656452, 51.293468, 51.386845>,  <40.846237, 51.409073, 51.477497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.656452, 51.293468, 51.386845>,  <40.340145, 51.100796, 51.235756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.656452, 51.293468, 51.386845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549728, -0.287407, -0.784345,
		-0.269244, 0.827877, -0.492065,
		0.790764, 0.481682, 0.377724,
		40.893681, 51.437973, 51.500160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492233, 51.516792, 50.720951>,  <40.340145, 51.100796, 51.235756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492233, 51.516792, 50.720951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782368, 51.354267, 50.943230>,  <40.956448, 51.256752, 51.076595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782368, 51.354267, 50.943230>,  <40.492233, 51.516792, 50.720951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782368, 51.354267, 50.943230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373613, -0.445649, -0.813517,
		0.578191, 0.797687, -0.171439,
		0.725334, -0.406316, 0.555696,
		40.999969, 51.232372, 51.109940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786331, 52.170692, 50.786018>,  <40.492233, 51.516792, 50.720951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786331, 52.170692, 50.786018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549561, 52.247791, 51.099060>,  <40.407497, 52.294052, 51.286884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549561, 52.247791, 51.099060>,  <40.786331, 52.170692, 50.786018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549561, 52.247791, 51.099060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805927, 0.128991, 0.577792,
		0.010418, 0.972733, -0.231693,
		-0.591924, 0.192747, 0.782608,
		40.371983, 52.305614, 51.333843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697708, 52.804249, 51.100418>,  <40.786331, 52.170692, 50.786018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697708, 52.804249, 51.100418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668560, 52.526253, 51.386547>,  <40.651070, 52.359455, 51.558224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668560, 52.526253, 51.386547>,  <40.697708, 52.804249, 51.100418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668560, 52.526253, 51.386547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871992, 0.303711, 0.383913,
		-0.484065, 0.651729, 0.583892,
		-0.072873, -0.694988, 0.715319,
		40.646698, 52.317757, 51.601143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813545, 53.097805, 51.817940>,  <40.697708, 52.804249, 51.100418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813545, 53.097805, 51.817940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.901478, 52.710938, 51.766953>,  <40.954239, 52.478817, 51.736359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.901478, 52.710938, 51.766953>,  <40.813545, 53.097805, 51.817940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.901478, 52.710938, 51.766953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908919, 0.155610, 0.386848,
		-0.354314, -0.200900, 0.913291,
		0.219835, -0.967174, -0.127467,
		40.967430, 52.420784, 51.728714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278034, 52.813530, 52.355206>,  <40.813545, 53.097805, 51.817940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278034, 52.813530, 52.355206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360092, 52.543900, 52.071365>,  <41.409328, 52.382122, 51.901062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360092, 52.543900, 52.071365>,  <41.278034, 52.813530, 52.355206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360092, 52.543900, 52.071365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968364, 0.034546, 0.247139,
		-0.142076, -0.737854, 0.659837,
		0.205147, -0.674075, -0.709604,
		41.421635, 52.341679, 51.858482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684753, 52.228268, 52.487232>,  <41.278034, 52.813530, 52.355206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684753, 52.228268, 52.487232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794468, 52.243519, 52.102875>,  <41.860298, 52.252670, 51.872261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794468, 52.243519, 52.102875>,  <41.684753, 52.228268, 52.487232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794468, 52.243519, 52.102875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957155, 0.085661, 0.276618,
		0.092859, -0.995595, -0.013002,
		0.274285, 0.038132, -0.960892,
		41.876755, 52.254959, 51.814606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191513, 51.689770, 52.283176>,  <41.684753, 52.228268, 52.487232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191513, 51.689770, 52.283176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.238014, 52.016655, 52.057381>,  <42.265915, 52.212784, 51.921902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.238014, 52.016655, 52.057381>,  <42.191513, 51.689770, 52.283176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.238014, 52.016655, 52.057381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982874, -0.012839, 0.183830,
		0.142980, -0.576196, -0.804708,
		0.116254, 0.817211, -0.564492,
		42.272892, 52.261818, 51.888035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.746532, 51.575275, 52.054932>,  <42.191513, 51.689770, 52.283176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.746532, 51.575275, 52.054932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.703808, 51.969749, 52.004280>,  <42.678173, 52.206432, 51.973888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.703808, 51.969749, 52.004280>,  <42.746532, 51.575275, 52.054932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.703808, 51.969749, 52.004280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935982, 0.142696, 0.321834,
		0.335457, -0.084152, -0.938290,
		-0.106807, 0.986183, -0.126633,
		42.671764, 52.265606, 51.966290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.467834, 51.851353, 51.792900>,  <42.746532, 51.575275, 52.054932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.467834, 51.851353, 51.792900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.240635, 52.076511, 52.033073>,  <43.104317, 52.211609, 52.177177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.240635, 52.076511, 52.033073>,  <43.467834, 51.851353, 51.792900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.240635, 52.076511, 52.033073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795214, 0.187281, 0.576680,
		0.212164, 0.805027, -0.554002,
		-0.567997, 0.562901, 0.600435,
		43.070236, 52.245380, 52.213203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.623707, 52.552685, 51.814911>,  <43.467834, 51.851353, 51.792900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.623707, 52.552685, 51.814911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.482445, 52.407490, 52.159821>,  <43.397686, 52.320374, 52.366768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.482445, 52.407490, 52.159821>,  <43.623707, 52.552685, 51.814911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.482445, 52.407490, 52.159821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765177, 0.418248, 0.489462,
		-0.538315, 0.832650, 0.130045,
		-0.353159, -0.362992, 0.862274,
		43.376495, 52.298592, 52.418503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.060635, 52.340443, 52.255146>,  <43.623707, 52.552685, 51.814911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.060635, 52.340443, 52.255146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.871883, 52.380100, 52.605576>,  <43.758633, 52.403896, 52.815834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.871883, 52.380100, 52.605576>,  <44.060635, 52.340443, 52.255146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.871883, 52.380100, 52.605576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759984, 0.549453, 0.347167,
		-0.446939, 0.829621, -0.334626,
		-0.471879, 0.099148, 0.876071,
		43.730320, 52.409843, 52.868397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.171757, 53.019489, 52.500694>,  <44.060635, 52.340443, 52.255146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.171757, 53.019489, 52.500694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.063519, 52.841370, 52.842098>,  <43.998573, 52.734497, 53.046940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.063519, 52.841370, 52.842098>,  <44.171757, 53.019489, 52.500694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.063519, 52.841370, 52.842098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687099, 0.531654, 0.495216,
		-0.674293, 0.720453, 0.162100,
		-0.270598, -0.445299, 0.853513,
		43.982338, 52.707779, 53.098152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.507881, 53.325352, 52.034481>,  <44.171757, 53.019489, 52.500694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.507881, 53.325352, 52.034481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.644367, 53.305115, 52.409931>,  <44.726261, 53.292973, 52.635201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.644367, 53.305115, 52.409931>,  <44.507881, 53.325352, 52.034481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.644367, 53.305115, 52.409931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714555, 0.662733, -0.224045,
		-0.610721, 0.747145, 0.262285,
		0.341219, -0.050588, 0.938621,
		44.746735, 53.289940, 52.691517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.832653, 53.932438, 52.143429>,  <44.507881, 53.325352, 52.034481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.832653, 53.932438, 52.143429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.979416, 53.671444, 52.408649>,  <45.067474, 53.514847, 52.567783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.979416, 53.671444, 52.408649>,  <44.832653, 53.932438, 52.143429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.979416, 53.671444, 52.408649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880183, 0.474196, -0.020417,
		-0.301095, 0.591099, 0.748294,
		0.366907, -0.652488, 0.663053,
		45.089489, 53.475697, 52.607567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.933636, 54.414028, 52.698154>,  <44.832653, 53.932438, 52.143429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.933636, 54.414028, 52.698154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.158833, 54.083511, 52.691521>,  <45.293953, 53.885201, 52.687542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.158833, 54.083511, 52.691521>,  <44.933636, 54.414028, 52.698154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.158833, 54.083511, 52.691521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826407, 0.562614, 0.022747,
		-0.009466, -0.026509, 0.999604,
		0.562994, -0.826294, -0.016582,
		45.327732, 53.835625, 52.686546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.412891, 54.339943, 53.262947>,  <44.933636, 54.414028, 52.698154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.412891, 54.339943, 53.262947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.568569, 54.136745, 52.955578>,  <45.661976, 54.014828, 52.771156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.568569, 54.136745, 52.955578>,  <45.412891, 54.339943, 53.262947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.568569, 54.136745, 52.955578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905370, 0.364723, 0.217445,
		0.169801, -0.780335, 0.601868,
		0.389195, -0.507991, -0.768422,
		45.685329, 53.984348, 52.725052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.991150, 53.920101, 53.534119>,  <45.412891, 54.339943, 53.262947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.991150, 53.920101, 53.534119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.015522, 54.059269, 53.159901>,  <46.030148, 54.142769, 52.935371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.015522, 54.059269, 53.159901>,  <45.991150, 53.920101, 53.534119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.015522, 54.059269, 53.159901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925073, 0.332326, 0.183842,
		0.374868, -0.876646, -0.301604,
		0.060933, 0.347922, -0.935541,
		46.033802, 54.163647, 52.879238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.501511, 53.572784, 53.067371>,  <45.991150, 53.920101, 53.534119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.501511, 53.572784, 53.067371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.464470, 53.955673, 52.957718>,  <46.442245, 54.185406, 52.891926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.464470, 53.955673, 52.957718>,  <46.501511, 53.572784, 53.067371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.464470, 53.955673, 52.957718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957462, 0.161173, 0.239351,
		0.273295, -0.240303, -0.931431,
		-0.092605, 0.957224, -0.274129,
		46.436687, 54.242840, 52.875481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.013733, 53.767757, 52.592468>,  <46.501511, 53.572784, 53.067371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.013733, 53.767757, 52.592468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.903076, 54.079254, 52.817688>,  <46.836681, 54.266151, 52.952820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.903076, 54.079254, 52.817688>,  <47.013733, 53.767757, 52.592468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.903076, 54.079254, 52.817688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944099, 0.110922, 0.310441,
		0.179299, 0.617458, -0.765897,
		-0.276639, 0.778744, 0.563053,
		46.820084, 54.312878, 52.986603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.472893, 54.385502, 52.453690>,  <47.013733, 53.767757, 52.592468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.472893, 54.385502, 52.453690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.320984, 54.372082, 52.823479>,  <47.229839, 54.364029, 53.045353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.320984, 54.372082, 52.823479>,  <47.472893, 54.385502, 52.453690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.320984, 54.372082, 52.823479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916200, -0.151759, 0.370872,
		0.127854, 0.987848, 0.088370,
		-0.379776, -0.033547, 0.924470,
		47.207050, 54.362019, 53.100819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.878376, 54.770641, 52.832996>,  <47.472893, 54.385502, 52.453690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.878376, 54.770641, 52.832996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.703880, 54.492508, 53.061455>,  <47.599182, 54.325630, 53.198532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.703880, 54.492508, 53.061455>,  <47.878376, 54.770641, 52.832996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.703880, 54.492508, 53.061455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899474, -0.354835, 0.255025,
		0.025337, 0.624986, 0.780225,
		-0.436239, -0.695331, 0.571149,
		47.573009, 54.283909, 53.232800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.867226, 55.031479, 53.578560>,  <47.878376, 54.770641, 52.832996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.867226, 55.031479, 53.578560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.905369, 54.642307, 53.494347>,  <47.928253, 54.408806, 53.443817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.905369, 54.642307, 53.494347>,  <47.867226, 55.031479, 53.578560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.905369, 54.642307, 53.494347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894561, -0.009020, 0.446854,
		-0.436654, -0.230947, 0.869481,
		0.095357, -0.972924, -0.210535,
		47.933975, 54.350430, 53.431187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.130215, 54.697823, 54.184040>,  <47.867226, 55.031479, 53.578560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.130215, 54.697823, 54.184040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.227108, 54.498005, 53.851349>,  <48.285244, 54.378113, 53.651733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.227108, 54.498005, 53.851349>,  <48.130215, 54.697823, 54.184040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.227108, 54.498005, 53.851349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967854, 0.064610, 0.243072,
		-0.067687, -0.863876, 0.499136,
		0.242233, -0.499544, -0.831733,
		48.299778, 54.348141, 53.601830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.567173, 54.194252, 54.383327>,  <48.130215, 54.697823, 54.184040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.567173, 54.194252, 54.383327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.645061, 54.277634, 53.999947>,  <48.691795, 54.327663, 53.769917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.645061, 54.277634, 53.999947>,  <48.567173, 54.194252, 54.383327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.645061, 54.277634, 53.999947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939454, 0.241270, 0.243340,
		0.281971, -0.947806, -0.148850,
		0.194725, 0.208453, -0.958451,
		48.703480, 54.340168, 53.712410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.053532, 53.805035, 53.982552>,  <48.567173, 54.194252, 54.383327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.053532, 53.805035, 53.982552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.061974, 54.183281, 53.852718>,  <49.067039, 54.410229, 53.774818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.061974, 54.183281, 53.852718>,  <49.053532, 53.805035, 53.982552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.061974, 54.183281, 53.852718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968694, 0.060983, 0.240652,
		0.247360, -0.319504, -0.914730,
		0.021106, 0.945621, -0.324587,
		49.068306, 54.466969, 53.755341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.425919, 53.936203, 53.360142>,  <49.053532, 53.805035, 53.982552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.425919, 53.936203, 53.360142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.460800, 54.273170, 53.572830>,  <49.481728, 54.475349, 53.700443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.460800, 54.273170, 53.572830>,  <49.425919, 53.936203, 53.360142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.460800, 54.273170, 53.572830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995964, -0.062336, -0.064581,
		-0.021259, 0.535210, -0.844451,
		0.087204, 0.842416, 0.531725,
		49.486961, 54.525894, 53.732349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.739517, 54.465431, 53.058224>,  <49.425919, 53.936203, 53.360142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.739517, 54.465431, 53.058224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.846973, 54.496151, 53.442291>,  <49.911446, 54.514584, 53.672733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.846973, 54.496151, 53.442291>,  <49.739517, 54.465431, 53.058224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.846973, 54.496151, 53.442291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954403, -0.155938, -0.254555,
		0.130178, 0.984777, -0.115189,
		0.268642, 0.076800, 0.960174,
		49.927567, 54.519192, 53.730343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.415314, 54.696140, 53.065819>,  <49.739517, 54.465431, 53.058224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.415314, 54.696140, 53.065819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.413315, 54.553131, 53.439377>,  <50.412117, 54.467327, 53.663509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.413315, 54.553131, 53.439377>,  <50.415314, 54.696140, 53.065819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.413315, 54.553131, 53.439377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984477, -0.165605, -0.058132,
		0.175441, 0.919104, 0.352801,
		-0.004996, -0.357524, 0.933891,
		50.411816, 54.445873, 53.719543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.972351, 54.961529, 53.499119>,  <50.415314, 54.696140, 53.065819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.972351, 54.961529, 53.499119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.881947, 54.594437, 53.629768>,  <50.827705, 54.374180, 53.708160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.881947, 54.594437, 53.629768>,  <50.972351, 54.961529, 53.499119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.881947, 54.594437, 53.629768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974123, -0.213720, 0.073540,
		0.002316, 0.334795, 0.942288,
		-0.226007, -0.917734, 0.326626,
		50.814144, 54.319115, 53.727757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.653164, 54.744709, 53.629242>,  <50.972351, 54.961529, 53.499119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.653164, 54.744709, 53.629242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.441181, 54.431816, 53.760246>,  <51.313992, 54.244080, 53.838848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.441181, 54.431816, 53.760246>,  <51.653164, 54.744709, 53.629242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.441181, 54.431816, 53.760246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840632, -0.433698, 0.324412,
		-0.111723, 0.447242, 0.887408,
		-0.529958, -0.782228, 0.327511,
		51.282192, 54.197147, 53.858501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.037083, 55.299801, 53.283127>,  <51.653164, 54.744709, 53.629242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.037083, 55.299801, 53.283127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.934723, 55.478752, 53.625908>,  <51.873306, 55.586124, 53.831577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.934723, 55.478752, 53.625908>,  <52.037083, 55.299801, 53.283127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.934723, 55.478752, 53.625908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352139, -0.782423, 0.513627,
		0.900284, 0.433205, 0.042685,
		-0.255904, 0.447380, 0.856951,
		51.857952, 55.612965, 53.882992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.591892, 55.124397, 53.667793>,  <52.037083, 55.299801, 53.283127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.591892, 55.124397, 53.667793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.308224, 55.225163, 53.931194>,  <52.138023, 55.285622, 54.089233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.308224, 55.225163, 53.931194>,  <52.591892, 55.124397, 53.667793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.308224, 55.225163, 53.931194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250898, -0.782678, 0.569618,
		0.658888, 0.569171, 0.491845,
		-0.709167, 0.251911, 0.658501,
		52.095474, 55.300735, 54.128746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.803738, 55.297718, 54.262318>,  <52.591892, 55.124397, 53.667793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.803738, 55.297718, 54.262318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.459846, 55.102814, 54.323578>,  <52.253513, 54.985870, 54.360332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.459846, 55.102814, 54.323578>,  <52.803738, 55.297718, 54.262318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.459846, 55.102814, 54.323578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495424, -0.722622, 0.482051,
		-0.124216, 0.490303, 0.862655,
		-0.859724, -0.487258, 0.153147,
		52.201931, 54.956635, 54.369522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.641682, 55.244999, 54.985874>,  <52.803738, 55.297718, 54.262318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.641682, 55.244999, 54.985874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.466045, 54.935467, 54.803276>,  <52.360664, 54.749748, 54.693718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.466045, 54.935467, 54.803276>,  <52.641682, 55.244999, 54.985874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.466045, 54.935467, 54.803276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528641, -0.633357, 0.565153,
		-0.726454, 0.006835, 0.687181,
		-0.439093, -0.773830, -0.456492,
		52.334316, 54.703320, 54.666328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.130295, 54.802338, 55.435078>,  <52.641682, 55.244999, 54.985874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.130295, 54.802338, 55.435078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.306175, 54.580235, 55.152702>,  <52.411705, 54.446972, 54.983276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.306175, 54.580235, 55.152702>,  <52.130295, 54.802338, 55.435078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.306175, 54.580235, 55.152702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370047, -0.604184, 0.705710,
		-0.818368, -0.571534, -0.060189,
		0.439702, -0.555258, -0.705939,
		52.438087, 54.413658, 54.940922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.956100, 54.107193, 55.685928>,  <52.130295, 54.802338, 55.435078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.956100, 54.107193, 55.685928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.288750, 54.079159, 55.465569>,  <52.488338, 54.062340, 55.333355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.288750, 54.079159, 55.465569>,  <51.956100, 54.107193, 55.685928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.288750, 54.079159, 55.465569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334965, -0.727924, 0.598268,
		-0.442939, -0.682066, -0.581886,
		0.831627, -0.070084, -0.550894,
		52.538239, 54.058132, 55.300301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.060284, 53.422527, 55.427883>,  <51.956100, 54.107193, 55.685928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.060284, 53.422527, 55.427883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.407825, 53.610779, 55.489326>,  <52.616352, 53.723728, 55.526192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.407825, 53.610779, 55.489326>,  <52.060284, 53.422527, 55.427883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.407825, 53.610779, 55.489326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300323, -0.747743, 0.592188,
		0.393561, -0.468394, -0.791023,
		0.868859, 0.470624, 0.153613,
		52.668484, 53.751965, 55.535412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.604679, 53.006069, 55.188660>,  <52.060284, 53.422527, 55.427883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.604679, 53.006069, 55.188660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.693317, 53.248386, 55.494316>,  <52.746498, 53.393776, 55.677711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.693317, 53.248386, 55.494316>,  <52.604679, 53.006069, 55.188660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.693317, 53.248386, 55.494316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240317, -0.793379, 0.559283,
		0.945063, 0.059703, -0.321390,
		0.221593, 0.605794, 0.764140,
		52.759796, 53.430126, 55.723557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.372112, 53.041039, 55.495148>,  <52.604679, 53.006069, 55.188660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.372112, 53.041039, 55.495148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.091400, 53.124779, 55.767525>,  <52.922974, 53.175022, 55.930950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.091400, 53.124779, 55.767525>,  <53.372112, 53.041039, 55.495148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.091400, 53.124779, 55.767525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231192, -0.837187, 0.495649,
		0.673839, 0.505264, 0.539120,
		-0.701777, 0.209347, 0.680942,
		52.880867, 53.187584, 55.971806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.600960, 52.954636, 56.254826>,  <53.372112, 53.041039, 55.495148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.600960, 52.954636, 56.254826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.207603, 52.883541, 56.240150>,  <52.971588, 52.840885, 56.231346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.207603, 52.883541, 56.240150>,  <53.600960, 52.954636, 56.254826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.207603, 52.883541, 56.240150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141228, -0.876422, 0.460368,
		-0.113983, 0.447541, 0.886970,
		-0.983393, -0.177739, -0.036692,
		52.912586, 52.830219, 56.229141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.135654, 53.308231, 55.759457>,  <53.600960, 52.954636, 56.254826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.135654, 53.308231, 55.759457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.037392, 53.540749, 55.449165>,  <53.978436, 53.680260, 55.262993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.037392, 53.540749, 55.449165>,  <54.135654, 53.308231, 55.759457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.037392, 53.540749, 55.449165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923638, -0.102500, -0.369304,
		-0.294187, -0.807212, -0.511726,
		-0.245655, 0.581295, -0.775726,
		53.963696, 53.715137, 55.216446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.459885, 53.009903, 55.230419>,  <54.135654, 53.308231, 55.759457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.459885, 53.009903, 55.230419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.442413, 53.407436, 55.189667>,  <54.431931, 53.645958, 55.165215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.442413, 53.407436, 55.189667>,  <54.459885, 53.009903, 55.230419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.442413, 53.407436, 55.189667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971075, 0.018271, -0.238074,
		-0.234745, -0.109334, -0.965889,
		-0.043677, 0.993837, -0.101883,
		54.429310, 53.705589, 55.159103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.878380, 53.104439, 54.530064>,  <54.459885, 53.009903, 55.230419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.878380, 53.104439, 54.530064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.856987, 53.298096, 54.879402>,  <54.844151, 53.414291, 55.089005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.856987, 53.298096, 54.879402>,  <54.878380, 53.104439, 54.530064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.856987, 53.298096, 54.879402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967581, -0.191063, 0.165169,
		0.246832, 0.853872, -0.458233,
		-0.053482, 0.484146, 0.873351,
		54.840942, 53.443340, 55.141407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.313641, 53.685688, 54.575264>,  <54.878380, 53.104439, 54.530064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.313641, 53.685688, 54.575264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.267723, 53.482922, 54.916992>,  <55.240173, 53.361263, 55.122028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.267723, 53.482922, 54.916992>,  <55.313641, 53.685688, 54.575264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.267723, 53.482922, 54.916992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980667, -0.195023, 0.016049,
		0.158477, 0.839645, 0.519501,
		-0.114791, -0.506914, 0.854319,
		55.233284, 53.330849, 55.173286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.776012, 53.913376, 55.011169>,  <55.313641, 53.685688, 54.575264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.776012, 53.913376, 55.011169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.686806, 53.549492, 55.151276>,  <55.633282, 53.331161, 55.235340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.686806, 53.549492, 55.151276>,  <55.776012, 53.913376, 55.011169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.686806, 53.549492, 55.151276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909688, -0.323351, -0.260598,
		0.350328, 0.260516, 0.899668,
		-0.223018, -0.909712, 0.350267,
		55.619900, 53.276577, 55.256355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.356281, 53.564472, 54.769886>,  <55.776012, 53.913376, 55.011169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.356281, 53.564472, 54.769886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.150230, 53.267906, 54.941910>,  <56.026600, 53.089966, 55.045124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.150230, 53.267906, 54.941910>,  <56.356281, 53.564472, 54.769886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.150230, 53.267906, 54.941910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712706, -0.649241, -0.265587,
		0.476120, 0.169691, 0.862853,
		-0.515132, -0.741411, 0.430056,
		55.995689, 53.045483, 55.070927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.945786, 53.425476, 54.300739>,  <56.356281, 53.564472, 54.769886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.945786, 53.425476, 54.300739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.916565, 53.505928, 53.910004>,  <56.899033, 53.554199, 53.675564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.916565, 53.505928, 53.910004>,  <56.945786, 53.425476, 54.300739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.916565, 53.505928, 53.910004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486473, 0.862219, 0.141152,
		0.870637, -0.464892, -0.160833,
		-0.073053, 0.201133, -0.976836,
		56.894650, 53.566269, 53.616951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.647861, 53.609375, 54.062557>,  <56.945786, 53.425476, 54.300739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.647861, 53.609375, 54.062557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.407326, 53.767590, 53.784866>,  <57.263004, 53.862518, 53.618252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.407326, 53.767590, 53.784866>,  <57.647861, 53.609375, 54.062557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.407326, 53.767590, 53.784866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605363, 0.792616, -0.072772,
		0.521469, -0.464018, -0.716071,
		-0.601336, 0.395534, -0.694224,
		57.226925, 53.886250, 53.576599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.410061, 53.255821, 54.021423>,  <57.647861, 53.609375, 54.062557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.410061, 53.255821, 54.021423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.381714, 52.912651, 53.817879>,  <58.364704, 52.706749, 53.695751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.381714, 52.912651, 53.817879>,  <58.410061, 53.255821, 54.021423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.381714, 52.912651, 53.817879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713568, 0.312860, -0.626849,
		0.696992, -0.407536, 0.590014,
		-0.070872, -0.857924, -0.508865,
		58.360451, 52.655273, 53.665218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.904232, 53.226097, 54.689110>,  <58.410061, 53.255821, 54.021423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.904232, 53.226097, 54.689110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.083366, 53.013489, 54.401520>,  <59.190845, 52.885925, 54.228966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.083366, 53.013489, 54.401520>,  <58.904232, 53.226097, 54.689110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.083366, 53.013489, 54.401520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146160, 0.836823, -0.527603,
		0.882089, 0.131194, 0.452447,
		0.447836, -0.531522, -0.718977,
		59.217716, 52.854031, 54.185825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.488178, 52.954952, 55.104992>,  <58.904232, 53.226097, 54.689110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.488178, 52.954952, 55.104992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.508545, 53.250996, 55.373215>,  <59.520763, 53.428623, 55.534149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.508545, 53.250996, 55.373215>,  <59.488178, 52.954952, 55.104992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.508545, 53.250996, 55.373215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633265, 0.543113, -0.551365,
		-0.772259, -0.396566, 0.496339,
		0.050916, 0.740110, 0.670555,
		59.523819, 53.473030, 55.574383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.918610, 52.997879, 55.757584>,  <59.488178, 52.954952, 55.104992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.918610, 52.997879, 55.757584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.075653, 53.321877, 55.583336>,  <59.169880, 53.516277, 55.478786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.075653, 53.321877, 55.583336>,  <58.918610, 52.997879, 55.757584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.075653, 53.321877, 55.583336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912405, 0.283481, -0.295222,
		-0.115640, 0.513365, 0.850343,
		0.392613, 0.809997, -0.435615,
		59.193436, 53.564877, 55.452652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.044571, 53.613533, 56.212490>,  <58.918610, 52.997879, 55.757584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.044571, 53.613533, 56.212490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.819633, 53.534088, 56.533569>,  <58.684673, 53.486420, 56.726215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.819633, 53.534088, 56.533569>,  <59.044571, 53.613533, 56.212490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.819633, 53.534088, 56.533569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818777, -0.269528, 0.506912,
		0.115670, 0.942288, 0.314188,
		-0.562339, -0.198616, 0.802699,
		58.650932, 53.474503, 56.774380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.101089, 54.061058, 56.776207>,  <59.044571, 53.613533, 56.212490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.101089, 54.061058, 56.776207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.009315, 53.689262, 56.891731>,  <58.954250, 53.466187, 56.961048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.009315, 53.689262, 56.891731>,  <59.101089, 54.061058, 56.776207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.009315, 53.689262, 56.891731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831131, -0.032667, 0.555117,
		-0.506539, 0.367406, 0.780020,
		-0.229434, -0.929487, 0.288815,
		58.940487, 53.410416, 56.978374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.360809, 54.023098, 57.590420>,  <59.101089, 54.061058, 56.776207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.360809, 54.023098, 57.590420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.334091, 53.665070, 57.414062>,  <59.318062, 53.450253, 57.308247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.334091, 53.665070, 57.414062>,  <59.360809, 54.023098, 57.590420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.334091, 53.665070, 57.414062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820581, -0.300658, 0.486058,
		-0.567614, -0.329321, 0.754560,
		-0.066795, -0.895071, -0.440892,
		59.314053, 53.396549, 57.281796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.017567, 54.320057, 57.738792>,  <59.360809, 54.023098, 57.590420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.017567, 54.320057, 57.738792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.321159, 54.535595, 57.592590>,  <60.503315, 54.664917, 57.504868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.321159, 54.535595, 57.592590>,  <60.017567, 54.320057, 57.738792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.321159, 54.535595, 57.592590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279741, 0.237049, 0.930351,
		0.587958, -0.808365, 0.029178,
		0.758980, 0.538845, -0.365508,
		60.548855, 54.697247, 57.482937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.603336, 54.073456, 58.085949>,  <60.017567, 54.320057, 57.738792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.603336, 54.073456, 58.085949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.720207, 54.425137, 57.935410>,  <60.790329, 54.636143, 57.845085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.720207, 54.425137, 57.935410>,  <60.603336, 54.073456, 58.085949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.720207, 54.425137, 57.935410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397884, 0.246098, 0.883812,
		0.869666, -0.407976, -0.277915,
		0.292179, 0.879200, -0.376350,
		60.807861, 54.688896, 57.822506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.276920, 54.136723, 58.282791>,  <60.603336, 54.073456, 58.085949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.276920, 54.136723, 58.282791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.122414, 54.502274, 58.232773>,  <61.029709, 54.721603, 58.202763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.122414, 54.502274, 58.232773>,  <61.276920, 54.136723, 58.282791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.122414, 54.502274, 58.232773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487859, 0.317468, 0.813146,
		0.782812, 0.253082, -0.568468,
		-0.386263, 0.913873, -0.125049,
		61.006535, 54.776436, 58.195259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.856506, 54.698063, 58.257710>,  <61.276920, 54.136723, 58.282791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.856506, 54.698063, 58.257710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.512680, 54.824753, 58.418121>,  <61.306385, 54.900768, 58.514370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.512680, 54.824753, 58.418121>,  <61.856506, 54.698063, 58.257710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.512680, 54.824753, 58.418121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479503, 0.228559, 0.847253,
		0.176689, 0.920567, -0.348334,
		-0.859568, 0.316728, 0.401031,
		61.254810, 54.919769, 58.538429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.496498, 55.385868, 58.107914>,  <61.856506, 54.698063, 58.257710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.496498, 55.385868, 58.107914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.670189, 55.736015, 58.192940>,  <61.774403, 55.946102, 58.243954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.670189, 55.736015, 58.192940>,  <61.496498, 55.385868, 58.107914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.670189, 55.736015, 58.192940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885658, -0.457960, 0.076696,
		0.164482, 0.154954, -0.974133,
		0.434230, 0.875364, 0.212562,
		61.800457, 55.998623, 58.256710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.170727, 55.294640, 57.801895>,  <61.496498, 55.385868, 58.107914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.170727, 55.294640, 57.801895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.195137, 55.605396, 58.052567>,  <62.209782, 55.791851, 58.202969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.195137, 55.605396, 58.052567>,  <62.170727, 55.294640, 57.801895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.195137, 55.605396, 58.052567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960913, -0.215585, 0.173692,
		0.270041, 0.591582, -0.759677,
		0.061022, 0.776887, 0.626675,
		62.213444, 55.838463, 58.240570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.836769, 55.681477, 57.604275>,  <62.170727, 55.294640, 57.801895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.836769, 55.681477, 57.604275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.723198, 55.737160, 57.983749>,  <62.655056, 55.770569, 58.211433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.723198, 55.737160, 57.983749>,  <62.836769, 55.681477, 57.604275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.723198, 55.737160, 57.983749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925578, -0.218566, 0.309086,
		0.250378, 0.965842, -0.066790,
		-0.283930, 0.139208, 0.948686,
		62.638020, 55.778923, 58.268356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.378407, 56.092476, 57.914856>,  <62.836769, 55.681477, 57.604275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.378407, 56.092476, 57.914856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.171951, 55.930313, 58.216652>,  <63.048077, 55.833015, 58.397728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.171951, 55.930313, 58.216652>,  <63.378407, 56.092476, 57.914856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.171951, 55.930313, 58.216652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835880, -0.046267, 0.546959,
		-0.186830, 0.912967, 0.362748,
		-0.516139, -0.405402, 0.754486,
		63.017109, 55.808693, 58.442997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.218769, 56.578537, 58.442955>,  <63.378407, 56.092476, 57.914856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.218769, 56.578537, 58.442955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.249039, 56.196651, 58.558044>,  <63.267200, 55.967518, 58.627098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.249039, 56.196651, 58.558044>,  <63.218769, 56.578537, 58.442955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.249039, 56.196651, 58.558044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861459, 0.207916, 0.463314,
		-0.502157, 0.212802, 0.838185,
		0.075677, -0.954718, 0.287726,
		63.271744, 55.910236, 58.644363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.158863, 56.606140, 59.124664>,  <63.218769, 56.578537, 58.442955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.158863, 56.606140, 59.124664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.384911, 56.289711, 59.030983>,  <63.520538, 56.099854, 58.974773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.384911, 56.289711, 59.030983>,  <63.158863, 56.606140, 59.124664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.384911, 56.289711, 59.030983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736903, 0.356356, 0.574442,
		-0.370966, -0.497210, 0.784326,
		0.565118, -0.791070, -0.234200,
		63.554447, 56.052391, 58.960724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.426456, 56.070557, 59.704914>,  <63.158863, 56.606140, 59.124664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.426456, 56.070557, 59.704914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.694069, 56.086708, 59.408058>,  <63.854637, 56.096397, 59.229946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.694069, 56.086708, 59.408058>,  <63.426456, 56.070557, 59.704914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.694069, 56.086708, 59.408058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725394, 0.182013, 0.663834,
		0.161884, -0.982467, 0.092481,
		0.669027, 0.040379, -0.742140,
		63.894775, 56.098820, 59.185417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.074715, 55.607128, 59.860004>,  <63.426456, 56.070557, 59.704914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.074715, 55.607128, 59.860004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.102478, 55.957172, 59.668434>,  <64.119133, 56.167198, 59.553490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.102478, 55.957172, 59.668434>,  <64.074715, 55.607128, 59.860004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.102478, 55.957172, 59.668434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694567, 0.302220, 0.652871,
		0.716073, -0.377958, -0.586845,
		0.069402, 0.875106, -0.478929,
		64.123299, 56.219704, 59.524757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.756416, 55.678509, 59.726326>,  <64.074715, 55.607128, 59.860004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.756416, 55.678509, 59.726326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.581352, 56.038116, 59.732384>,  <64.476318, 56.253880, 59.736019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.581352, 56.038116, 59.732384>,  <64.756416, 55.678509, 59.726326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.581352, 56.038116, 59.732384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619828, 0.289457, 0.729403,
		0.651363, 0.328610, -0.683917,
		-0.437653, 0.899016, 0.015140,
		64.450058, 56.307823, 59.736927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.256973, 56.332565, 59.679771>,  <64.756416, 55.678509, 59.726326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.256973, 56.332565, 59.679771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.917770, 56.408165, 59.877823>,  <64.714249, 56.453526, 59.996655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.917770, 56.408165, 59.877823>,  <65.256973, 56.332565, 59.679771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.917770, 56.408165, 59.877823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526433, 0.408177, 0.745828,
		-0.061142, 0.893125, -0.445634,
		-0.848015, 0.188995, 0.495127,
		64.663368, 56.464863, 60.026360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.716583, 56.116585, 60.193035>,  <65.256973, 56.332565, 59.679771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.716583, 56.116585, 60.193035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.532089, 55.807755, 60.367920>,  <65.421394, 55.622456, 60.472851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.532089, 55.807755, 60.367920>,  <65.716583, 56.116585, 60.193035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.532089, 55.807755, 60.367920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880394, 0.336978, -0.333694,
		0.110307, -0.538830, -0.835162,
		-0.461235, -0.772080, 0.437212,
		65.393715, 55.576130, 60.499084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.982964, 55.433743, 60.161465>,  <65.716583, 56.116585, 60.193035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.982964, 55.433743, 60.161465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.374138, 55.352058, 60.179054>,  <66.608841, 55.303047, 60.189606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.374138, 55.352058, 60.179054>,  <65.982964, 55.433743, 60.161465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.374138, 55.352058, 60.179054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203211, 0.881265, -0.426705,
		0.048387, 0.426227, 0.903321,
		0.977939, -0.204212, 0.043972,
		66.667519, 55.290794, 60.192245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.375854, 55.929794, 60.659443>,  <65.982964, 55.433743, 60.161465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.375854, 55.929794, 60.659443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.590973, 55.780571, 60.357025>,  <66.720047, 55.691036, 60.175575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.590973, 55.780571, 60.357025>,  <66.375854, 55.929794, 60.659443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.590973, 55.780571, 60.357025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353476, 0.913919, -0.199519,
		0.765392, -0.159941, 0.623372,
		0.537800, -0.373057, -0.756042,
		66.752312, 55.668655, 60.130211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.985710, 56.159874, 60.771263>,  <66.375854, 55.929794, 60.659443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.985710, 56.159874, 60.771263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.865723, 56.107609, 60.393280>,  <66.793732, 56.076248, 60.166489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.865723, 56.107609, 60.393280>,  <66.985710, 56.159874, 60.771263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.865723, 56.107609, 60.393280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351733, 0.905632, -0.236884,
		0.886735, -0.403431, -0.225706,
		-0.299973, -0.130665, -0.944956,
		66.775734, 56.068409, 60.109795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.513527, 56.126465, 60.233772>,  <66.985710, 56.159874, 60.771263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.513527, 56.126465, 60.233772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.206238, 56.277397, 60.026909>,  <67.021866, 56.367958, 59.902790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.206238, 56.277397, 60.026909>,  <67.513527, 56.126465, 60.233772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.206238, 56.277397, 60.026909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532775, 0.824725, -0.189684,
		0.354940, -0.421249, -0.834606,
		-0.768224, 0.377330, -0.517158,
		66.975769, 56.390594, 59.871761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.585556, 56.376354, 59.546562>,  <67.513527, 56.126465, 60.233772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.585556, 56.376354, 59.546562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.262398, 56.589104, 59.648071>,  <67.068504, 56.716755, 59.708977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.262398, 56.589104, 59.648071>,  <67.585556, 56.376354, 59.546562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.262398, 56.589104, 59.648071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474035, 0.842359, -0.256365,
		-0.350126, -0.086818, -0.932670,
		-0.807900, 0.531878, 0.253777,
		67.020027, 56.748669, 59.724205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.302620, 56.107273, 59.900974>,  <67.585556, 56.376354, 59.546562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.302620, 56.107273, 59.900974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.495659, 55.811401, 60.088585>,  <68.611481, 55.633877, 60.201153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.495659, 55.811401, 60.088585>,  <68.302620, 56.107273, 59.900974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.495659, 55.811401, 60.088585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863825, 0.313542, -0.394333,
		0.144620, 0.595456, 0.790264,
		0.482589, -0.739678, 0.469025,
		68.640434, 55.589497, 60.229294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.880783, 56.377373, 60.412262>,  <68.302620, 56.107273, 59.900974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.880783, 56.377373, 60.412262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.961113, 56.003098, 60.296227>,  <69.009308, 55.778530, 60.226604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.961113, 56.003098, 60.296227>,  <68.880783, 56.377373, 60.412262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.961113, 56.003098, 60.296227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957216, 0.250408, -0.145028,
		0.208341, -0.248551, 0.945947,
		0.200826, -0.935691, -0.290088,
		69.021362, 55.722389, 60.209202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.474190, 56.111031, 60.749195>,  <68.880783, 56.377373, 60.412262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.474190, 56.111031, 60.749195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.452637, 55.965263, 60.377327>,  <69.439705, 55.877804, 60.154205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.452637, 55.965263, 60.377327>,  <69.474190, 56.111031, 60.749195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.452637, 55.965263, 60.377327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927169, 0.327420, -0.182081,
		0.370748, -0.871776, 0.320238,
		-0.053881, -0.364421, -0.929674,
		69.436470, 55.855938, 60.098423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.041687, 55.788776, 60.738453>,  <69.474190, 56.111031, 60.749195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.041687, 55.788776, 60.738453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.933937, 55.855541, 60.359070>,  <69.869286, 55.895599, 60.131439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.933937, 55.855541, 60.359070>,  <70.041687, 55.788776, 60.738453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.933937, 55.855541, 60.359070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957584, 0.151043, -0.245394,
		0.102298, -0.974333, -0.200524,
		-0.269384, 0.166915, -0.948457,
		69.853119, 55.905617, 60.074532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.571892, 55.458359, 60.436653>,  <70.041687, 55.788776, 60.738453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.571892, 55.458359, 60.436653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.421638, 55.712803, 60.167053>,  <70.331490, 55.865467, 60.005295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.421638, 55.712803, 60.167053>,  <70.571892, 55.458359, 60.436653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.421638, 55.712803, 60.167053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926579, 0.242971, -0.287084,
		-0.018855, -0.732347, -0.680670,
		-0.375628, 0.636107, -0.673996,
		70.308952, 55.903637, 59.964855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.076927, 55.320377, 59.854149>,  <70.571892, 55.458359, 60.436653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.076927, 55.320377, 59.854149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.866035, 55.658901, 59.823715>,  <70.739502, 55.862015, 59.805454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.866035, 55.658901, 59.823715>,  <71.076927, 55.320377, 59.854149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.866035, 55.658901, 59.823715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788403, 0.453820, -0.415292,
		-0.316940, -0.278935, -0.906501,
		-0.527228, 0.846311, -0.076080,
		70.707870, 55.912796, 59.800892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.558334, 55.293304, 60.348919>,  <71.076927, 55.320377, 59.854149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.558334, 55.293304, 60.348919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.651276, 54.929287, 60.486221>,  <71.707039, 54.710876, 60.568604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.651276, 54.929287, 60.486221>,  <71.558334, 55.293304, 60.348919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.651276, 54.929287, 60.486221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786072, 0.032132, 0.617300,
		-0.572802, -0.413256, -0.707897,
		0.232356, -0.910048, 0.343254,
		71.720985, 54.656273, 60.589199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.798340, 55.999252, 60.506824>,  <71.558334, 55.293304, 60.348919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.798340, 55.999252, 60.506824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.931564, 56.224167, 60.204063>,  <72.011497, 56.359116, 60.022408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.931564, 56.224167, 60.204063>,  <71.798340, 55.999252, 60.506824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.931564, 56.224167, 60.204063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473939, 0.594129, 0.649918,
		0.815139, -0.575188, -0.068609,
		0.333062, 0.562290, -0.756901,
		72.031487, 56.392853, 59.976994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.556465, 56.014694, 60.513416>,  <71.798340, 55.999252, 60.506824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.556465, 56.014694, 60.513416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.441406, 56.347496, 60.323669>,  <72.372368, 56.547176, 60.209820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.441406, 56.347496, 60.323669>,  <72.556465, 56.014694, 60.513416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.441406, 56.347496, 60.323669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580500, 0.545409, 0.604607,
		0.761761, -0.101458, -0.639865,
		-0.287646, 0.832007, -0.474367,
		72.355110, 56.597099, 60.181358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.092575, 56.383194, 60.349575>,  <72.556465, 56.014694, 60.513416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.092575, 56.383194, 60.349575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.801659, 56.654282, 60.392929>,  <72.627113, 56.816936, 60.418941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.801659, 56.654282, 60.392929>,  <73.092575, 56.383194, 60.349575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.801659, 56.654282, 60.392929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586569, 0.531771, 0.610865,
		0.356361, 0.507849, -0.784281,
		-0.727285, 0.677723, 0.108386,
		72.583473, 56.857597, 60.425446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.334412, 57.041649, 60.321777>,  <73.092575, 56.383194, 60.349575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.334412, 57.041649, 60.321777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.993172, 57.083019, 60.526329>,  <72.788429, 57.107841, 60.649059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.993172, 57.083019, 60.526329>,  <73.334412, 57.041649, 60.321777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.993172, 57.083019, 60.526329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472286, 0.569593, 0.672689,
		-0.221707, 0.815394, -0.534769,
		-0.853107, 0.103424, 0.511382,
		72.737236, 57.114048, 60.679745>
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
