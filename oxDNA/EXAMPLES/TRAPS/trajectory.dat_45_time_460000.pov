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
	<37.034885, 52.890747, 50.103527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656441, 52.779861, 50.170490>,  <36.429375, 52.713329, 50.210667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656441, 52.779861, 50.170490>,  <37.034885, 52.890747, 50.103527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656441, 52.779861, 50.170490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226278, -0.935708, -0.270647,
		0.231670, -0.218182, 0.948012,
		-0.946112, -0.277215, 0.167405,
		36.372608, 52.696697, 50.220711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692421, 52.518909, 50.271126>,  <37.034885, 52.890747, 50.103527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692421, 52.518909, 50.271126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597858, 52.263077, 50.563713>,  <37.541122, 52.109577, 50.739265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597858, 52.263077, 50.563713>,  <37.692421, 52.518909, 50.271126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597858, 52.263077, 50.563713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459258, 0.589859, 0.664190,
		-0.856269, 0.492948, 0.154291,
		-0.236402, -0.639585, 0.731468,
		37.526939, 52.071201, 50.783154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389778, 52.981426, 50.901611>,  <37.692421, 52.518909, 50.271126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389778, 52.981426, 50.901611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558289, 52.623024, 50.957764>,  <37.659393, 52.407982, 50.991455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558289, 52.623024, 50.957764>,  <37.389778, 52.981426, 50.901611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558289, 52.623024, 50.957764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625711, 0.399195, 0.670171,
		-0.656515, -0.194487, 0.728809,
		0.421276, -0.896001, 0.140385,
		37.684673, 52.354225, 50.999878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448074, 52.914078, 51.669453>,  <37.389778, 52.981426, 50.901611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448074, 52.914078, 51.669453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735626, 52.721909, 51.468494>,  <37.908157, 52.606606, 51.347919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735626, 52.721909, 51.468494>,  <37.448074, 52.914078, 51.669453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735626, 52.721909, 51.468494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695038, 0.484931, 0.530815,
		-0.011390, -0.730777, 0.682522,
		0.718883, -0.480424, -0.502394,
		37.951290, 52.577782, 51.317776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889896, 52.592022, 52.236519>,  <37.448074, 52.914078, 51.669453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889896, 52.592022, 52.236519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029243, 52.758720, 51.900673>,  <38.112854, 52.858738, 51.699165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029243, 52.758720, 51.900673>,  <37.889896, 52.592022, 52.236519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029243, 52.758720, 51.900673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516183, 0.662388, 0.542951,
		0.782427, -0.622545, 0.015638,
		0.348371, 0.416748, -0.839619,
		38.133755, 52.883743, 51.648788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598347, 52.528633, 52.393276>,  <37.889896, 52.592022, 52.236519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598347, 52.528633, 52.393276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483139, 52.839272, 52.169155>,  <38.414013, 53.025654, 52.034683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483139, 52.839272, 52.169155>,  <38.598347, 52.528633, 52.393276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483139, 52.839272, 52.169155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493408, 0.621803, 0.608202,
		0.820727, -0.101282, -0.562272,
		-0.288022, 0.776597, -0.560304,
		38.396732, 53.072250, 52.001064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152077, 52.783375, 52.177719>,  <38.598347, 52.528633, 52.393276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152077, 52.783375, 52.177719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858406, 53.053665, 52.204216>,  <38.682205, 53.215839, 52.220116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858406, 53.053665, 52.204216>,  <39.152077, 52.783375, 52.177719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858406, 53.053665, 52.204216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554589, 0.540538, 0.632652,
		0.391690, 0.501215, -0.771598,
		-0.734173, 0.675723, 0.066245,
		38.638153, 53.256382, 52.224091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394859, 53.447639, 52.083157>,  <39.152077, 52.783375, 52.177719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394859, 53.447639, 52.083157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074577, 53.510048, 52.314510>,  <38.882408, 53.547493, 52.453323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074577, 53.510048, 52.314510>,  <39.394859, 53.447639, 52.083157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074577, 53.510048, 52.314510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535536, 0.619116, 0.574366,
		-0.268475, 0.769644, -0.579284,
		-0.800701, 0.156024, 0.578389,
		38.834366, 53.556854, 52.488026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021412, 53.082378, 52.032780>,  <39.394859, 53.447639, 52.083157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021412, 53.082378, 52.032780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839092, 53.195396, 52.370399>,  <39.729702, 53.263206, 52.572971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839092, 53.195396, 52.370399>,  <40.021412, 53.082378, 52.032780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839092, 53.195396, 52.370399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743690, -0.400139, 0.535550,
		0.489052, 0.871813, -0.027740,
		-0.455800, 0.282542, 0.844048,
		39.702351, 53.280159, 52.623615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.545162, 53.426712, 52.479149>,  <40.021412, 53.082378, 52.032780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.545162, 53.426712, 52.479149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.254723, 53.229984, 52.671356>,  <40.080460, 53.111950, 52.786678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.254723, 53.229984, 52.671356>,  <40.545162, 53.426712, 52.479149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254723, 53.229984, 52.671356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686152, -0.563429, 0.460156,
		0.044424, 0.663826, 0.746566,
		-0.726100, -0.491816, 0.480516,
		40.036892, 53.082439, 52.815510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901642, 53.456905, 53.147102>,  <40.545162, 53.426712, 52.479149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.901642, 53.456905, 53.147102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639172, 53.155094, 53.142685>,  <40.481689, 52.974007, 53.140034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639172, 53.155094, 53.142685>,  <40.901642, 53.456905, 53.147102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639172, 53.155094, 53.142685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640567, -0.564682, 0.520391,
		-0.398888, 0.334392, 0.853856,
		-0.656172, -0.754530, -0.011045,
		40.442322, 52.928734, 53.139370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098423, 52.824108, 53.539368>,  <40.901642, 53.456905, 53.147102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.098423, 52.824108, 53.539368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.230320, 52.979565, 53.195221>,  <41.309460, 53.072838, 52.988731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.230320, 52.979565, 53.195221>,  <41.098423, 52.824108, 53.539368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230320, 52.979565, 53.195221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733220, 0.468647, 0.492705,
		0.594692, -0.793304, -0.130424,
		0.329742, 0.388638, -0.860367,
		41.329243, 53.096157, 52.937111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564304, 53.386471, 53.772598>,  <41.098423, 52.824108, 53.539368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564304, 53.386471, 53.772598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.653870, 53.360958, 53.383591>,  <41.707611, 53.345650, 53.150185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.653870, 53.360958, 53.383591>,  <41.564304, 53.386471, 53.772598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.653870, 53.360958, 53.383591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681951, 0.723140, 0.109591,
		0.696278, -0.687750, 0.205418,
		0.223917, -0.063779, -0.972519,
		41.721046, 53.341824, 53.091835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.362656, 53.524044, 53.529423>,  <41.564304, 53.386471, 53.772598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.362656, 53.524044, 53.529423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.498798, 53.148525, 53.550655>,  <42.580482, 52.923214, 53.563393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.498798, 53.148525, 53.550655>,  <42.362656, 53.524044, 53.529423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498798, 53.148525, 53.550655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935994, 0.343653, 0.076279,
		-0.089852, 0.023720, 0.995673,
		0.340357, -0.938797, 0.053080,
		42.600906, 52.866886, 53.566578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.868031, 53.480106, 54.120579>,  <42.362656, 53.524044, 53.529423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.868031, 53.480106, 54.120579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.962433, 53.245331, 53.810791>,  <43.019073, 53.104465, 53.624920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.962433, 53.245331, 53.810791>,  <42.868031, 53.480106, 54.120579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.962433, 53.245331, 53.810791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875262, 0.474627, -0.092982,
		0.422158, -0.655918, 0.625743,
		0.236006, -0.586942, -0.774468,
		43.033234, 53.069248, 53.578449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.485340, 53.076099, 54.233589>,  <42.868031, 53.480106, 54.120579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.485340, 53.076099, 54.233589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.407978, 53.171494, 53.852913>,  <43.361561, 53.228729, 53.624508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.407978, 53.171494, 53.852913>,  <43.485340, 53.076099, 54.233589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.407978, 53.171494, 53.852913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861978, 0.504599, -0.048728,
		0.468602, -0.829762, -0.303162,
		-0.193407, 0.238485, -0.951693,
		43.349957, 53.243038, 53.567406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.419796, 52.862534, 55.021763>,  <43.485340, 53.076099, 54.233589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.419796, 52.862534, 55.021763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.641113, 53.082413, 54.771420>,  <43.773903, 53.214340, 54.621212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.641113, 53.082413, 54.771420>,  <43.419796, 52.862534, 55.021763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.641113, 53.082413, 54.771420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827719, -0.278442, 0.487188,
		0.093542, -0.787591, -0.609057,
		0.553292, 0.549700, -0.625858,
		43.807102, 53.247322, 54.583664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.094883, 53.106457, 54.998474>,  <43.419796, 52.862534, 55.021763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.094883, 53.106457, 54.998474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.148499, 52.710426, 54.981560>,  <44.180668, 52.472809, 54.971409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.148499, 52.710426, 54.981560>,  <44.094883, 53.106457, 54.998474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.148499, 52.710426, 54.981560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989708, -0.131592, -0.056235,
		0.050112, 0.049391, -0.997522,
		0.134044, -0.990073, -0.042288,
		44.188713, 52.413406, 54.968872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.688065, 52.520245, 54.809124>,  <44.094883, 53.106457, 54.998474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.688065, 52.520245, 54.809124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.847839, 52.227024, 55.029335>,  <44.943703, 52.051090, 55.161461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.847839, 52.227024, 55.029335>,  <44.688065, 52.520245, 54.809124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.847839, 52.227024, 55.029335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907329, 0.230189, -0.351805,
		0.131166, 0.640034, 0.757068,
		0.399436, -0.733055, 0.550528,
		44.967670, 52.007107, 55.194492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.281624, 52.762444, 55.015900>,  <44.688065, 52.520245, 54.809124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.281624, 52.762444, 55.015900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.352558, 52.395157, 55.157570>,  <45.395119, 52.174786, 55.242573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.352558, 52.395157, 55.157570>,  <45.281624, 52.762444, 55.015900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.352558, 52.395157, 55.157570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983914, 0.173304, -0.043338,
		-0.021586, 0.356160, 0.934175,
		0.177332, -0.918213, 0.354172,
		45.405758, 52.119694, 55.263821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.732559, 52.738453, 55.684906>,  <45.281624, 52.762444, 55.015900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.732559, 52.738453, 55.684906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.761307, 52.403069, 55.468826>,  <45.778557, 52.201839, 55.339176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.761307, 52.403069, 55.468826>,  <45.732559, 52.738453, 55.684906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.761307, 52.403069, 55.468826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878439, 0.309735, -0.363882,
		0.472420, -0.448383, 0.758797,
		0.071867, -0.838461, -0.540202,
		45.782867, 52.151531, 55.306767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.416317, 52.398247, 55.846821>,  <45.732559, 52.738453, 55.684906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.416317, 52.398247, 55.846821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.286236, 52.283302, 55.486450>,  <46.208187, 52.214336, 55.270229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.286236, 52.283302, 55.486450>,  <46.416317, 52.398247, 55.846821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.286236, 52.283302, 55.486450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898477, 0.203241, -0.389143,
		0.294929, -0.936011, 0.192094,
		-0.325201, -0.287361, -0.900926,
		46.188675, 52.197094, 55.216171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.823719, 51.911514, 55.561127>,  <46.416317, 52.398247, 55.846821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.823719, 51.911514, 55.561127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.648514, 52.120506, 55.268509>,  <46.543388, 52.245899, 55.092937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.648514, 52.120506, 55.268509>,  <46.823719, 51.911514, 55.561127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.648514, 52.120506, 55.268509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886912, 0.118338, -0.446523,
		-0.146728, -0.844402, -0.515224,
		-0.438016, 0.522476, -0.731547,
		46.517109, 52.277248, 55.049046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.072884, 51.651672, 54.892700>,  <46.823719, 51.911514, 55.561127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.072884, 51.651672, 54.892700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.941624, 52.027264, 54.851463>,  <46.862865, 52.252621, 54.826721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.941624, 52.027264, 54.851463>,  <47.072884, 51.651672, 54.892700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.941624, 52.027264, 54.851463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788772, 0.212324, -0.576851,
		-0.519764, -0.270611, -0.810318,
		-0.328152, 0.938982, -0.103092,
		46.843178, 52.308960, 54.820538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.763279, 52.018490, 54.853058>,  <47.072884, 51.651672, 54.892700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.763279, 52.018490, 54.853058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.157608, 51.981575, 54.797005>,  <48.394207, 51.959427, 54.763371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.157608, 51.981575, 54.797005>,  <47.763279, 52.018490, 54.853058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.157608, 51.981575, 54.797005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025048, -0.744865, 0.666745,
		-0.165916, -0.660802, -0.731992,
		0.985821, -0.092289, -0.140137,
		48.453354, 51.953888, 54.754963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.829300, 51.186268, 54.908691>,  <47.763279, 52.018490, 54.853058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.829300, 51.186268, 54.908691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.163681, 51.398293, 54.965557>,  <48.364311, 51.525509, 54.999676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.163681, 51.398293, 54.965557>,  <47.829300, 51.186268, 54.908691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.163681, 51.398293, 54.965557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228793, -0.572081, 0.787640,
		0.498831, -0.625905, -0.599509,
		0.835956, 0.530062, 0.142169,
		48.414467, 51.557312, 55.008209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.437008, 50.710068, 55.059277>,  <47.829300, 51.186268, 54.908691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.437008, 50.710068, 55.059277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.446335, 51.074078, 55.224838>,  <48.451931, 51.292484, 55.324177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.446335, 51.074078, 55.224838>,  <48.437008, 50.710068, 55.059277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.446335, 51.074078, 55.224838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005971, -0.413885, 0.910309,
		0.999710, -0.023699, -0.004217,
		0.023319, 0.910020, 0.413907,
		48.453331, 51.347084, 55.349010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.055080, 50.673874, 55.401634>,  <48.437008, 50.710068, 55.059277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.055080, 50.673874, 55.401634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.788212, 50.916119, 55.575127>,  <48.628090, 51.061466, 55.679222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.788212, 50.916119, 55.575127>,  <49.055080, 50.673874, 55.401634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.788212, 50.916119, 55.575127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103689, -0.501088, 0.859162,
		0.737654, 0.618179, 0.271516,
		-0.667169, 0.605611, 0.433728,
		48.588062, 51.097801, 55.705246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.256844, 51.151360, 55.897289>,  <49.055080, 50.673874, 55.401634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.256844, 51.151360, 55.897289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.891533, 51.000561, 55.959000>,  <48.672348, 50.910080, 55.996025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.891533, 51.000561, 55.959000>,  <49.256844, 51.151360, 55.897289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.891533, 51.000561, 55.959000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313671, -0.409223, 0.856824,
		-0.259887, 0.830907, 0.491987,
		-0.913274, -0.377000, 0.154280,
		48.617550, 50.887463, 56.005283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.952591, 51.224949, 56.061306>,  <49.256844, 51.151360, 55.897289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.952591, 51.224949, 56.061306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.685558, 51.185299, 56.356468>,  <49.525337, 51.161510, 56.533566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.685558, 51.185299, 56.356468>,  <49.952591, 51.224949, 56.061306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.685558, 51.185299, 56.356468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735450, 0.066541, 0.674304,
		-0.115940, 0.992848, 0.028478,
		-0.667586, -0.099123, 0.737905,
		49.485283, 51.155563, 56.577839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.939026, 51.834023, 56.544849>,  <49.952591, 51.224949, 56.061306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.939026, 51.834023, 56.544849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.836903, 51.492504, 56.726334>,  <49.775627, 51.287594, 56.835224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.836903, 51.492504, 56.726334>,  <49.939026, 51.834023, 56.544849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.836903, 51.492504, 56.726334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671539, 0.181011, 0.718520,
		-0.695594, 0.488131, 0.527141,
		-0.255313, -0.853794, 0.453709,
		49.760307, 51.236366, 56.862446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.664257, 51.889778, 57.178074>,  <49.939026, 51.834023, 56.544849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.664257, 51.889778, 57.178074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.838493, 51.529728, 57.180389>,  <49.943035, 51.313698, 57.181778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.838493, 51.529728, 57.180389>,  <49.664257, 51.889778, 57.178074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.838493, 51.529728, 57.180389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714340, 0.349577, 0.606230,
		-0.547707, -0.259932, 0.795269,
		0.435586, -0.900128, 0.005787,
		49.969170, 51.259689, 57.182125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.675262, 51.617527, 57.846657>,  <49.664257, 51.889778, 57.178074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.675262, 51.617527, 57.846657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.965755, 51.424561, 57.650757>,  <50.140053, 51.308781, 57.533215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.965755, 51.424561, 57.650757>,  <49.675262, 51.617527, 57.846657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.965755, 51.424561, 57.650757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655355, 0.270715, 0.705141,
		-0.207586, -0.833061, 0.512756,
		0.726236, -0.482414, -0.489754,
		50.183624, 51.279835, 57.503830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.880684, 51.046001, 58.365868>,  <49.675262, 51.617527, 57.846657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.880684, 51.046001, 58.365868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.116932, 51.200302, 58.082359>,  <50.258682, 51.292885, 57.912254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.116932, 51.200302, 58.082359>,  <49.880684, 51.046001, 58.365868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.116932, 51.200302, 58.082359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647489, 0.297639, 0.701548,
		0.481583, -0.873272, -0.073979,
		0.590623, 0.385754, -0.708772,
		50.294121, 51.316029, 57.869728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.598732, 50.724258, 58.295719>,  <49.880684, 51.046001, 58.365868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.598732, 50.724258, 58.295719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.593033, 51.110184, 58.190697>,  <50.589611, 51.341740, 58.127682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.593033, 51.110184, 58.190697>,  <50.598732, 50.724258, 58.295719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.593033, 51.110184, 58.190697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735794, 0.187923, 0.650609,
		0.677055, -0.183918, -0.712580,
		-0.014252, 0.964811, -0.262560,
		50.588757, 51.399628, 58.111927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.263809, 50.870079, 58.042961>,  <50.598732, 50.724258, 58.295719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.263809, 50.870079, 58.042961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.021381, 51.125053, 58.233269>,  <50.875927, 51.278038, 58.347454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.021381, 51.125053, 58.233269>,  <51.263809, 50.870079, 58.042961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.021381, 51.125053, 58.233269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632467, 0.023467, 0.774232,
		0.482359, 0.770145, -0.417381,
		-0.606065, 0.637437, 0.475772,
		50.839561, 51.316284, 58.375999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.898582, 51.213249, 57.775761>,  <51.263809, 50.870079, 58.042961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.898582, 51.213249, 57.775761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.626122, 51.352371, 57.518059>,  <51.462643, 51.435844, 57.363438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.626122, 51.352371, 57.518059>,  <51.898582, 51.213249, 57.775761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.626122, 51.352371, 57.518059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653784, 0.685021, -0.321422,
		0.329534, -0.640139, -0.693995,
		-0.681156, 0.347804, -0.644251,
		51.421776, 51.456711, 57.324783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.144321, 51.301228, 57.038353>,  <51.898582, 51.213249, 57.775761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.144321, 51.301228, 57.038353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.861240, 51.567554, 57.132874>,  <51.691391, 51.727352, 57.189587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.861240, 51.567554, 57.132874>,  <52.144321, 51.301228, 57.038353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.861240, 51.567554, 57.132874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510504, 0.713136, -0.480441,
		-0.488401, -0.219377, -0.844593,
		-0.707707, 0.665816, 0.236303,
		51.648930, 51.767300, 57.203766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.813538, 51.509773, 56.881088>,  <52.144321, 51.301228, 57.038353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.813538, 51.509773, 56.881088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.956680, 51.346302, 56.545250>,  <53.042564, 51.248219, 56.343746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.956680, 51.346302, 56.545250>,  <52.813538, 51.509773, 56.881088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.956680, 51.346302, 56.545250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321856, 0.790059, -0.521742,
		0.876556, 0.456937, 0.151190,
		0.357852, -0.408674, -0.839599,
		53.064037, 51.223701, 56.293369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.168839, 52.057518, 56.579712>,  <52.813538, 51.509773, 56.881088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.168839, 52.057518, 56.579712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.046139, 51.769836, 56.330345>,  <52.972519, 51.597229, 56.180725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.046139, 51.769836, 56.330345>,  <53.168839, 52.057518, 56.579712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.046139, 51.769836, 56.330345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553073, 0.667756, -0.498209,
		0.774605, 0.191971, -0.602606,
		-0.306752, -0.719201, -0.623421,
		52.954113, 51.554077, 56.143318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.385292, 52.224106, 55.879025>,  <53.168839, 52.057518, 56.579712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.385292, 52.224106, 55.879025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.052292, 52.002518, 55.882034>,  <52.852493, 51.869564, 55.883842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.052292, 52.002518, 55.882034>,  <53.385292, 52.224106, 55.879025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.052292, 52.002518, 55.882034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465378, 0.691864, -0.552039,
		0.300606, -0.463077, -0.833784,
		-0.832502, -0.553971, 0.007527,
		52.802540, 51.836327, 55.884293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.985992, 52.819588, 55.629807>,  <53.385292, 52.224106, 55.879025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.985992, 52.819588, 55.629807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.714943, 52.532352, 55.566345>,  <52.552311, 52.360012, 55.528267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.714943, 52.532352, 55.566345>,  <52.985992, 52.819588, 55.629807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.714943, 52.532352, 55.566345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637565, 0.681160, -0.359905,
		0.366512, -0.142729, -0.919401,
		-0.677627, -0.718087, -0.158654,
		52.511654, 52.316925, 55.518749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.759251, 52.858700, 54.949928>,  <52.985992, 52.819588, 55.629807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.759251, 52.858700, 54.949928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.479176, 52.693554, 55.182922>,  <52.311131, 52.594467, 55.322720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.479176, 52.693554, 55.182922>,  <52.759251, 52.858700, 54.949928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.479176, 52.693554, 55.182922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617922, 0.759118, -0.204724,
		-0.357649, -0.503272, -0.786641,
		-0.700185, -0.412863, 0.582481,
		52.269119, 52.569695, 55.357666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.135132, 52.983742, 54.655544>,  <52.759251, 52.858700, 54.949928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.135132, 52.983742, 54.655544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.009411, 52.982128, 55.035271>,  <51.933979, 52.981159, 55.263107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.009411, 52.982128, 55.035271>,  <52.135132, 52.983742, 54.655544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.009411, 52.982128, 55.035271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613568, 0.763921, -0.199895,
		-0.724395, -0.645297, -0.242578,
		-0.314302, -0.004035, 0.949314,
		51.915119, 52.980919, 55.320065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.694942, 53.449848, 54.132095>,  <52.135132, 52.983742, 54.655544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.694942, 53.449848, 54.132095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.914494, 53.703972, 53.914795>,  <52.046223, 53.856445, 53.784416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.914494, 53.703972, 53.914795>,  <51.694942, 53.449848, 54.132095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.914494, 53.703972, 53.914795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784205, -0.166354, 0.597787,
		0.289405, -0.754131, -0.589518,
		0.548878, 0.635305, -0.543249,
		52.079159, 53.894562, 53.751820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.368328, 53.159576, 53.927319>,  <51.694942, 53.449848, 54.132095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.368328, 53.159576, 53.927319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.411240, 53.553028, 53.985241>,  <52.436989, 53.789097, 54.019993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.411240, 53.553028, 53.985241>,  <52.368328, 53.159576, 53.927319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.411240, 53.553028, 53.985241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623022, -0.180012, 0.761209,
		0.774812, 0.008553, -0.632134,
		0.107281, 0.983627, 0.144804,
		52.443424, 53.848118, 54.028683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.987972, 53.518421, 53.847122>,  <52.368328, 53.159576, 53.927319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.987972, 53.518421, 53.847122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.778732, 53.673466, 54.150734>,  <52.653187, 53.766491, 54.332901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.778732, 53.673466, 54.150734>,  <52.987972, 53.518421, 53.847122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.778732, 53.673466, 54.150734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747918, -0.218237, 0.626890,
		0.408636, 0.895619, -0.175738,
		-0.523102, 0.387608, 0.759029,
		52.621803, 53.789749, 54.378441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.391228, 54.008812, 54.179222>,  <52.987972, 53.518421, 53.847122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.391228, 54.008812, 54.179222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.108017, 53.915443, 54.445820>,  <52.938091, 53.859421, 54.605778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.108017, 53.915443, 54.445820>,  <53.391228, 54.008812, 54.179222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.108017, 53.915443, 54.445820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705731, -0.267874, 0.655886,
		0.025440, 0.934751, 0.354393,
		-0.708023, -0.233420, 0.666498,
		52.895611, 53.845417, 54.645767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.422573, 54.345467, 54.878201>,  <53.391228, 54.008812, 54.179222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.422573, 54.345467, 54.878201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.226105, 53.999035, 54.915405>,  <53.108223, 53.791176, 54.937729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.226105, 53.999035, 54.915405>,  <53.422573, 54.345467, 54.878201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.226105, 53.999035, 54.915405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610812, -0.266329, 0.745639,
		-0.621015, 0.423047, 0.659827,
		-0.491171, -0.866083, 0.093008,
		53.078754, 53.739208, 54.943306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.307770, 54.341557, 55.579967>,  <53.422573, 54.345467, 54.878201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.307770, 54.341557, 55.579967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.298306, 53.956161, 55.473289>,  <53.292625, 53.724922, 55.409283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.298306, 53.956161, 55.473289>,  <53.307770, 54.341557, 55.579967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.298306, 53.956161, 55.473289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587772, -0.229197, 0.775882,
		-0.808681, -0.138395, 0.571736,
		-0.023662, -0.963491, -0.266692,
		53.291206, 53.667114, 55.393284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.222115, 53.937260, 56.132030>,  <53.307770, 54.341557, 55.579967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.222115, 53.937260, 56.132030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.430923, 53.712734, 55.875153>,  <53.556210, 53.578018, 55.721027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.430923, 53.712734, 55.875153>,  <53.222115, 53.937260, 56.132030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.430923, 53.712734, 55.875153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611303, -0.278845, 0.740644,
		-0.594809, -0.779210, 0.197570,
		0.522026, -0.561318, -0.642193,
		53.587532, 53.544338, 55.682495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.322674, 53.197746, 56.501240>,  <53.222115, 53.937260, 56.132030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.322674, 53.197746, 56.501240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.586098, 53.255722, 56.205864>,  <53.744152, 53.290508, 56.028641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.586098, 53.255722, 56.205864>,  <53.322674, 53.197746, 56.501240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.586098, 53.255722, 56.205864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716349, -0.421338, 0.556163,
		-0.230520, -0.895247, -0.381306,
		0.658562, 0.144942, -0.738436,
		53.783665, 53.299206, 55.984333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.830315, 52.526180, 56.451210>,  <53.322674, 53.197746, 56.501240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.830315, 52.526180, 56.451210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.014809, 52.826805, 56.262566>,  <54.125507, 53.007179, 56.149380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.014809, 52.826805, 56.262566>,  <53.830315, 52.526180, 56.451210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.014809, 52.826805, 56.262566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867842, -0.271493, 0.416103,
		0.184686, -0.601208, -0.777458,
		0.461238, 0.751559, -0.471612,
		54.153179, 53.052273, 56.121082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.419102, 52.233601, 56.205265>,  <53.830315, 52.526180, 56.451210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.419102, 52.233601, 56.205265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.505226, 52.624214, 56.206970>,  <54.556900, 52.858582, 56.207993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.505226, 52.624214, 56.206970>,  <54.419102, 52.233601, 56.205265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.505226, 52.624214, 56.206970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926745, -0.205706, 0.314370,
		0.307869, -0.063742, -0.949291,
		0.215313, 0.976536, 0.004258,
		54.569820, 52.917175, 56.208248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.008114, 52.419224, 55.754555>,  <54.419102, 52.233601, 56.205265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.008114, 52.419224, 55.754555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.982742, 52.638382, 56.088211>,  <54.967518, 52.769875, 56.288406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.982742, 52.638382, 56.088211>,  <55.008114, 52.419224, 55.754555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.982742, 52.638382, 56.088211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941987, -0.243173, 0.231359,
		0.329600, 0.800425, -0.500683,
		-0.063433, 0.547893, 0.834140,
		54.963711, 52.802750, 56.338451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.725277, 52.679745, 55.767693>,  <55.008114, 52.419224, 55.754555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.725277, 52.679745, 55.767693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.558998, 52.734993, 56.127274>,  <55.459232, 52.768143, 56.343021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.558998, 52.734993, 56.127274>,  <55.725277, 52.679745, 55.767693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.558998, 52.734993, 56.127274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884069, -0.170747, 0.435048,
		0.213584, 0.975586, -0.051131,
		-0.415696, 0.138123, 0.898954,
		55.434288, 52.776428, 56.396961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.084126, 53.310780, 56.134377>,  <55.725277, 52.679745, 55.767693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.084126, 53.310780, 56.134377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.882500, 53.111443, 56.416534>,  <55.761524, 52.991840, 56.585827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.882500, 53.111443, 56.416534>,  <56.084126, 53.310780, 56.134377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.882500, 53.111443, 56.416534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786313, 0.073042, 0.613495,
		-0.357251, 0.863900, 0.355033,
		-0.504066, -0.498339, 0.705390,
		55.731281, 52.961941, 56.628151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.960453, 53.681019, 56.748055>,  <56.084126, 53.310780, 56.134377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.960453, 53.681019, 56.748055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.989601, 53.297050, 56.856300>,  <56.007088, 53.066669, 56.921249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.989601, 53.297050, 56.856300>,  <55.960453, 53.681019, 56.748055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.989601, 53.297050, 56.856300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704265, 0.241651, 0.667545,
		-0.706188, 0.141945, 0.693650,
		0.072866, -0.959925, 0.270618,
		56.011459, 53.009071, 56.937485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.117950, 53.755478, 57.429516>,  <55.960453, 53.681019, 56.748055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.117950, 53.755478, 57.429516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.241844, 53.400917, 57.291901>,  <56.316181, 53.188183, 57.209332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.241844, 53.400917, 57.291901>,  <56.117950, 53.755478, 57.429516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.241844, 53.400917, 57.291901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819617, 0.065486, 0.569157,
		-0.481971, -0.458266, 0.746791,
		0.309730, -0.886399, -0.344040,
		56.334763, 53.134998, 57.188690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.650684, 53.515831, 57.879173>,  <56.117950, 53.755478, 57.429516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.650684, 53.515831, 57.879173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.695946, 53.268906, 57.567757>,  <56.723103, 53.120750, 57.380909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.695946, 53.268906, 57.567757>,  <56.650684, 53.515831, 57.879173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.695946, 53.268906, 57.567757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904392, -0.260473, 0.337977,
		-0.411425, -0.742349, 0.528817,
		0.113154, -0.617310, -0.778540,
		56.729893, 53.083714, 57.334194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.807938, 52.867767, 58.103001>,  <56.650684, 53.515831, 57.879173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.807938, 52.867767, 58.103001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.957047, 52.914562, 57.734795>,  <57.046513, 52.942638, 57.513870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.957047, 52.914562, 57.734795>,  <56.807938, 52.867767, 58.103001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.957047, 52.914562, 57.734795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902468, -0.276472, 0.330325,
		-0.215854, -0.953875, -0.208638,
		0.372771, 0.116987, -0.920519,
		57.068878, 52.949657, 57.458637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.276505, 52.334171, 57.981567>,  <56.807938, 52.867767, 58.103001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.276505, 52.334171, 57.981567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.401573, 52.657280, 57.781670>,  <57.476612, 52.851147, 57.661732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.401573, 52.657280, 57.781670>,  <57.276505, 52.334171, 57.981567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.401573, 52.657280, 57.781670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945024, -0.317577, 0.077936,
		-0.095753, -0.496638, -0.862660,
		0.312667, 0.807772, -0.499744,
		57.495373, 52.899612, 57.631744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.761623, 52.173759, 57.502979>,  <57.276505, 52.334171, 57.981567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.761623, 52.173759, 57.502979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.841019, 52.551960, 57.606232>,  <57.888657, 52.778881, 57.668182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.841019, 52.551960, 57.606232>,  <57.761623, 52.173759, 57.502979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.841019, 52.551960, 57.606232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972723, -0.222296, 0.066291,
		0.120059, 0.237928, -0.963834,
		0.198484, 0.945502, 0.258127,
		57.900562, 52.835609, 57.683670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.230881, 52.476444, 56.988869>,  <57.761623, 52.173759, 57.502979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.230881, 52.476444, 56.988869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.253723, 52.632591, 57.356422>,  <58.267429, 52.726280, 57.576954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.253723, 52.632591, 57.356422>,  <58.230881, 52.476444, 56.988869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.253723, 52.632591, 57.356422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938900, -0.333905, 0.083506,
		0.339419, 0.857975, -0.385582,
		0.057101, 0.390367, 0.918887,
		58.270855, 52.749702, 57.632088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.773792, 52.973965, 57.031723>,  <58.230881, 52.476444, 56.988869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.773792, 52.973965, 57.031723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.713226, 52.788025, 57.380661>,  <58.676888, 52.676460, 57.590023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.713226, 52.788025, 57.380661>,  <58.773792, 52.973965, 57.031723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.713226, 52.788025, 57.380661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952853, -0.303410, 0.003714,
		0.262953, 0.831782, 0.488870,
		-0.151417, -0.464845, 0.872349,
		58.667801, 52.648571, 57.642365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.208027, 52.953968, 56.381538>,  <58.773792, 52.973965, 57.031723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.208027, 52.953968, 56.381538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.930405, 53.237789, 56.332848>,  <58.763832, 53.408081, 56.303635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.930405, 53.237789, 56.332848>,  <59.208027, 52.953968, 56.381538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.930405, 53.237789, 56.332848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379489, -0.504271, -0.775692,
		-0.611777, -0.492182, 0.619262,
		-0.694057, 0.709554, -0.121724,
		58.722187, 53.450657, 56.296329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.738426, 53.507751, 56.257751>,  <59.208027, 52.953968, 56.381538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.738426, 53.507751, 56.257751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.060982, 53.271774, 56.274300>,  <60.254513, 53.130188, 56.284229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.060982, 53.271774, 56.274300>,  <59.738426, 53.507751, 56.257751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.060982, 53.271774, 56.274300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215895, 0.358788, 0.908108,
		-0.550575, -0.723353, 0.416687,
		0.806385, -0.589942, 0.041371,
		60.302898, 53.094791, 56.286713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.857880, 53.171310, 56.964516>,  <59.738426, 53.507751, 56.257751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.857880, 53.171310, 56.964516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.216629, 53.177692, 56.787720>,  <60.431881, 53.181522, 56.681641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.216629, 53.177692, 56.787720>,  <59.857880, 53.171310, 56.964516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.216629, 53.177692, 56.787720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419879, 0.283307, 0.862229,
		0.138971, -0.958897, 0.247394,
		0.896877, 0.015950, -0.441992,
		60.485691, 53.182480, 56.655121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.331905, 52.838852, 57.404942>,  <59.857880, 53.171310, 56.964516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.331905, 52.838852, 57.404942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.520065, 53.097794, 57.165054>,  <60.632961, 53.253159, 57.021122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.520065, 53.097794, 57.165054>,  <60.331905, 52.838852, 57.404942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.520065, 53.097794, 57.165054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464145, 0.396502, 0.792058,
		0.750531, -0.650937, -0.113953,
		0.470397, 0.647354, -0.599716,
		60.661186, 53.292000, 56.985138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.094215, 52.803852, 57.494030>,  <60.331905, 52.838852, 57.404942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.094215, 52.803852, 57.494030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.006943, 53.174572, 57.371758>,  <60.954578, 53.397003, 57.298393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.006943, 53.174572, 57.371758>,  <61.094215, 52.803852, 57.494030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.006943, 53.174572, 57.371758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500070, 0.375155, 0.780505,
		0.838049, 0.017429, -0.545316,
		-0.218182, 0.926798, -0.305683,
		60.941486, 53.452610, 57.280052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.691261, 53.242477, 57.477882>,  <61.094215, 52.803852, 57.494030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.691261, 53.242477, 57.477882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.352753, 53.438080, 57.562454>,  <61.149647, 53.555439, 57.613197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.352753, 53.438080, 57.562454>,  <61.691261, 53.242477, 57.477882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.352753, 53.438080, 57.562454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364592, 0.242213, 0.899114,
		0.388459, 0.837978, -0.383265,
		-0.846269, 0.489004, 0.211430,
		61.098873, 53.584782, 57.625885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.400345, 53.214794, 57.790714>,  <61.691261, 53.242477, 57.477882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.400345, 53.214794, 57.790714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.779289, 53.333611, 57.742935>,  <63.006657, 53.404900, 57.714268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.779289, 53.333611, 57.742935>,  <62.400345, 53.214794, 57.790714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.779289, 53.333611, 57.742935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290423, 0.954347, 0.069826,
		0.134738, -0.031460, 0.990382,
		0.947365, 0.297038, -0.119450,
		63.063499, 53.422722, 57.707100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.659725, 53.668045, 58.348152>,  <62.400345, 53.214794, 57.790714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.659725, 53.668045, 58.348152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.794998, 53.725685, 57.976158>,  <62.876163, 53.760269, 57.752964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.794998, 53.725685, 57.976158>,  <62.659725, 53.668045, 58.348152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.794998, 53.725685, 57.976158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393379, 0.919376, -0.000592,
		0.854918, 0.366036, 0.367604,
		0.338183, 0.144102, -0.929982,
		62.896454, 53.768917, 57.697163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.176891, 54.268639, 58.236374>,  <62.659725, 53.668045, 58.348152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.176891, 54.268639, 58.236374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.945229, 54.189568, 57.920021>,  <62.806229, 54.142124, 57.730209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.945229, 54.189568, 57.920021>,  <63.176891, 54.268639, 58.236374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.945229, 54.189568, 57.920021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282931, 0.958593, -0.032411,
		0.764542, 0.204994, -0.611108,
		-0.579159, -0.197680, -0.790884,
		62.771481, 54.130264, 57.682755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.877445, 54.134991, 58.431908>,  <63.176891, 54.268639, 58.236374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.877445, 54.134991, 58.431908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.870888, 54.534451, 58.412224>,  <63.866955, 54.774128, 58.400414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.870888, 54.534451, 58.412224>,  <63.877445, 54.134991, 58.431908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.870888, 54.534451, 58.412224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996742, 0.020208, 0.078081,
		0.078970, -0.047766, -0.995732,
		-0.016392, 0.998654, -0.049206,
		63.865971, 54.834045, 58.397461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.441101, 54.301594, 57.975586>,  <63.877445, 54.134991, 58.431908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.441101, 54.301594, 57.975586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.348465, 54.603722, 58.220818>,  <64.292885, 54.784996, 58.367958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.348465, 54.603722, 58.220818>,  <64.441101, 54.301594, 57.975586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.348465, 54.603722, 58.220818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950969, 0.042959, 0.306289,
		0.205008, 0.653951, -0.728230,
		-0.231582, 0.755316, 0.613080,
		64.278992, 54.830315, 58.404743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.769966, 55.060898, 57.719509>,  <64.441101, 54.301594, 57.975586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.769966, 55.060898, 57.719509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.716957, 54.916115, 58.088600>,  <64.685150, 54.829243, 58.310055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.716957, 54.916115, 58.088600>,  <64.769966, 55.060898, 57.719509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.716957, 54.916115, 58.088600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989843, -0.096667, 0.104244,
		0.051464, 0.927167, 0.371096,
		-0.132525, -0.361962, 0.922725,
		64.677200, 54.807526, 58.365417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.161690, 55.552067, 58.200375>,  <64.769966, 55.060898, 57.719509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.161690, 55.552067, 58.200375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.107651, 55.180580, 58.338493>,  <65.075226, 54.957687, 58.421364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.107651, 55.180580, 58.338493>,  <65.161690, 55.552067, 58.200375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.107651, 55.180580, 58.338493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990080, -0.140111, 0.010544,
		0.038588, 0.343298, 0.938433,
		-0.135104, -0.928717, 0.345299,
		65.067116, 54.901966, 58.442081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.513557, 55.363663, 58.898693>,  <65.161690, 55.552067, 58.200375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.513557, 55.363663, 58.898693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.477943, 55.024235, 58.690079>,  <65.456573, 54.820576, 58.564911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.477943, 55.024235, 58.690079>,  <65.513557, 55.363663, 58.898693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.477943, 55.024235, 58.690079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985180, -0.152099, 0.079287,
		-0.146605, -0.506745, 0.849539,
		-0.089036, -0.848572, -0.521534,
		65.451233, 54.769665, 58.533619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.612793, 54.691437, 59.258713>,  <65.513557, 55.363663, 58.898693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.612793, 54.691437, 59.258713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.712822, 54.679016, 58.871620>,  <65.772835, 54.671562, 58.639366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.712822, 54.679016, 58.871620>,  <65.612793, 54.691437, 59.258713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.712822, 54.679016, 58.871620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959186, -0.128337, 0.251976,
		-0.132020, -0.991244, -0.002309,
		0.250066, -0.031052, -0.967731,
		65.787842, 54.669701, 58.581303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.027771, 54.134697, 59.178524>,  <65.612793, 54.691437, 59.258713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.027771, 54.134697, 59.178524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.109871, 54.429832, 58.921318>,  <66.159134, 54.606915, 58.766994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.109871, 54.429832, 58.921318>,  <66.027771, 54.134697, 59.178524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.109871, 54.429832, 58.921318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952283, 0.001081, 0.305216,
		0.225894, -0.674980, -0.702406,
		0.205255, 0.737836, -0.643016,
		66.171448, 54.651184, 58.728413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.592003, 53.903503, 58.735233>,  <66.027771, 54.134697, 59.178524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.592003, 53.903503, 58.735233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.596260, 54.300529, 58.783722>,  <66.598816, 54.538746, 58.812817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.596260, 54.300529, 58.783722>,  <66.592003, 53.903503, 58.735233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.596260, 54.300529, 58.783722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992971, -0.024783, 0.115733,
		0.117878, 0.119138, -0.985855,
		0.010644, 0.992568, 0.121222,
		66.599457, 54.598301, 58.820087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.908836, 54.321606, 58.244678>,  <66.592003, 53.903503, 58.735233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.908836, 54.321606, 58.244678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.932510, 54.483250, 58.609795>,  <66.946716, 54.580235, 58.828865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.932510, 54.483250, 58.609795>,  <66.908836, 54.321606, 58.244678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.932510, 54.483250, 58.609795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987397, 0.110754, -0.113051,
		-0.146780, 0.907981, -0.392462,
		0.059181, 0.404110, 0.912794,
		66.950264, 54.604485, 58.883633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.111237, 55.026016, 58.261700>,  <66.908836, 54.321606, 58.244678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.111237, 55.026016, 58.261700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.214928, 54.836708, 58.598465>,  <67.277138, 54.723122, 58.800526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.214928, 54.836708, 58.598465>,  <67.111237, 55.026016, 58.261700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.214928, 54.836708, 58.598465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959849, 0.223001, -0.170176,
		-0.107208, 0.852223, 0.512076,
		0.259221, -0.473271, 0.841914,
		67.292694, 54.694725, 58.851040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.740395, 55.295570, 58.357479>,  <67.111237, 55.026016, 58.261700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.740395, 55.295570, 58.357479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.730896, 55.011856, 58.639290>,  <67.725197, 54.841629, 58.808376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.730896, 55.011856, 58.639290>,  <67.740395, 55.295570, 58.357479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.730896, 55.011856, 58.639290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988996, 0.086267, 0.120190,
		-0.146026, 0.699627, 0.699427,
		-0.023751, -0.709281, 0.704525,
		67.723770, 54.799072, 58.850647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.920868, 55.632763, 58.936058>,  <67.740395, 55.295570, 58.357479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.920868, 55.632763, 58.936058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.001320, 55.242874, 58.974991>,  <68.049591, 55.008942, 58.998352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.001320, 55.242874, 58.974991>,  <67.920868, 55.632763, 58.936058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.001320, 55.242874, 58.974991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908285, 0.222778, 0.354102,
		-0.366833, 0.017186, 0.930128,
		0.201126, -0.974718, 0.097332,
		68.061661, 54.950459, 59.004189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.202461, 55.658813, 59.525833>,  <67.920868, 55.632763, 58.936058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.202461, 55.658813, 59.525833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.319374, 55.343006, 59.309967>,  <68.389519, 55.153522, 59.180447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.319374, 55.343006, 59.309967>,  <68.202461, 55.658813, 59.525833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.319374, 55.343006, 59.309967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955684, 0.220328, 0.195255,
		-0.035253, -0.572820, 0.818923,
		0.292278, -0.789514, -0.539667,
		68.407059, 55.106152, 59.148067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.628891, 55.114883, 59.931530>,  <68.202461, 55.658813, 59.525833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.628891, 55.114883, 59.931530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.715027, 55.168602, 59.544624>,  <68.766708, 55.200832, 59.312481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.715027, 55.168602, 59.544624>,  <68.628891, 55.114883, 59.931530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.715027, 55.168602, 59.544624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942939, 0.228993, 0.241718,
		0.253958, -0.964120, -0.077324,
		0.215338, 0.134298, -0.967261,
		68.779625, 55.208893, 59.254448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.170845, 54.636559, 59.773087>,  <68.628891, 55.114883, 59.931530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.170845, 54.636559, 59.773087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.151588, 54.978832, 59.566986>,  <69.140038, 55.184196, 59.443325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.151588, 54.978832, 59.566986>,  <69.170845, 54.636559, 59.773087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.151588, 54.978832, 59.566986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918118, 0.241058, 0.314563,
		0.393372, -0.457917, -0.797226,
		-0.048135, 0.855689, -0.515248,
		69.137146, 55.235538, 59.412411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.832863, 54.982998, 59.457726>,  <69.170845, 54.636559, 59.773087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.832863, 54.982998, 59.457726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.593018, 55.297386, 59.518013>,  <69.449112, 55.486019, 59.554184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.593018, 55.297386, 59.518013>,  <69.832863, 54.982998, 59.457726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.593018, 55.297386, 59.518013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796242, 0.566979, 0.211027,
		0.080408, 0.246540, -0.965791,
		-0.599610, 0.785972, 0.150716,
		69.413132, 55.533176, 59.563229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.228119, 55.587296, 59.126026>,  <69.832863, 54.982998, 59.457726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.228119, 55.587296, 59.126026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.996468, 55.720051, 59.423874>,  <69.857475, 55.799706, 59.602581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.996468, 55.720051, 59.423874>,  <70.228119, 55.587296, 59.126026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.996468, 55.720051, 59.423874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792121, 0.445030, 0.417723,
		-0.192740, 0.831745, -0.520626,
		-0.579133, 0.331887, 0.744618,
		69.822731, 55.819618, 59.647259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.171593, 56.349815, 59.208477>,  <70.228119, 55.587296, 59.126026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.171593, 56.349815, 59.208477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.182304, 56.145321, 59.552086>,  <70.188728, 56.022625, 59.758251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.182304, 56.145321, 59.552086>,  <70.171593, 56.349815, 59.208477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.182304, 56.145321, 59.552086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847387, 0.467475, 0.251799,
		-0.530300, 0.721183, 0.445732,
		0.026775, -0.511236, 0.859023,
		70.190338, 55.991951, 59.809792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.326851, 56.766552, 59.909149>,  <70.171593, 56.349815, 59.208477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.326851, 56.766552, 59.909149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.455177, 56.389465, 59.945717>,  <70.532173, 56.163212, 59.967659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.455177, 56.389465, 59.945717>,  <70.326851, 56.766552, 59.909149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.455177, 56.389465, 59.945717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908206, 0.333577, 0.252760,
		-0.268777, 0.001940, 0.963200,
		0.320811, -0.942721, 0.091420,
		70.551422, 56.106647, 59.973145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.793701, 56.917343, 60.375271>,  <70.326851, 56.766552, 59.909149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.793701, 56.917343, 60.375271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.870773, 56.576221, 60.181114>,  <70.917015, 56.371548, 60.064621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.870773, 56.576221, 60.181114>,  <70.793701, 56.917343, 60.375271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.870773, 56.576221, 60.181114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972177, 0.098752, 0.212413,
		-0.133212, -0.512815, 0.848101,
		0.192680, -0.852800, -0.485393,
		70.928574, 56.320381, 60.035496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.147629, 56.386044, 60.819221>,  <70.793701, 56.917343, 60.375271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.147629, 56.386044, 60.819221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.238182, 56.447510, 60.434486>,  <71.292511, 56.484390, 60.203644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.238182, 56.447510, 60.434486>,  <71.147629, 56.386044, 60.819221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.238182, 56.447510, 60.434486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875142, 0.401454, 0.270112,
		0.427642, -0.902896, -0.043598,
		0.226381, 0.153666, -0.961841,
		71.306099, 56.493610, 60.145935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.900200, 56.347771, 60.815868>,  <71.147629, 56.386044, 60.819221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.900200, 56.347771, 60.815868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.822769, 56.547115, 60.477837>,  <71.776306, 56.666721, 60.275017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.822769, 56.547115, 60.477837>,  <71.900200, 56.347771, 60.815868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.822769, 56.547115, 60.477837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936503, 0.350572, -0.007788,
		0.292381, -0.792928, -0.534582,
		-0.193585, 0.498361, -0.845081,
		71.764694, 56.696625, 60.224312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.418213, 56.208496, 60.281696>,  <71.900200, 56.347771, 60.815868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.418213, 56.208496, 60.281696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.274048, 56.575405, 60.213913>,  <72.187546, 56.795551, 60.173241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.274048, 56.575405, 60.213913>,  <72.418213, 56.208496, 60.281696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.274048, 56.575405, 60.213913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932750, 0.356158, -0.055946,
		0.009037, -0.178228, -0.983948,
		-0.360412, 0.917271, -0.169460,
		72.165924, 56.850586, 60.163074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.794983, 56.529968, 59.661182>,  <72.418213, 56.208496, 60.281696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.794983, 56.529968, 59.661182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.675682, 56.792152, 59.938721>,  <72.604103, 56.949463, 60.105244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.675682, 56.792152, 59.938721>,  <72.794983, 56.529968, 59.661182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.675682, 56.792152, 59.938721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913650, 0.406407, 0.008823,
		-0.276200, 0.636562, -0.720071,
		-0.298258, 0.655456, 0.693844,
		72.586205, 56.988789, 60.146873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.931717, 57.342449, 59.509171>,  <72.794983, 56.529968, 59.661182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.931717, 57.342449, 59.509171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.930405, 57.230415, 59.893158>,  <72.929619, 57.163197, 60.123550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.930405, 57.230415, 59.893158>,  <72.931717, 57.342449, 59.509171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.930405, 57.230415, 59.893158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890032, 0.436825, 0.130490,
		-0.455887, 0.854832, 0.247851,
		-0.003279, -0.280084, 0.959970,
		72.929420, 57.146389, 60.181149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.969139, 57.990143, 59.918983>,  <72.931717, 57.342449, 59.509171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.969139, 57.990143, 59.918983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.135017, 57.677910, 60.106056>,  <73.234543, 57.490570, 60.218300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.135017, 57.677910, 60.106056>,  <72.969139, 57.990143, 59.918983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.135017, 57.677910, 60.106056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832441, 0.533003, 0.151489,
		-0.367526, 0.326499, 0.870817,
		0.414687, -0.780581, 0.467684,
		73.259422, 57.443737, 60.246361>
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
