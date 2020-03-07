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
	<36.345200, 53.187321, 49.786247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217373, 52.808315, 49.790344>,  <36.140678, 52.580914, 49.792801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217373, 52.808315, 49.790344>,  <36.345200, 53.187321, 49.786247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217373, 52.808315, 49.790344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913872, -0.305328, 0.267605,
		-0.250431, 0.094877, 0.963474,
		-0.319565, -0.947509, 0.010241,
		36.121502, 52.524063, 49.793415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665321, 52.853523, 50.392353>,  <36.345200, 53.187321, 49.786247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665321, 52.853523, 50.392353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572620, 52.544937, 50.155327>,  <36.516998, 52.359787, 50.013111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572620, 52.544937, 50.155327>,  <36.665321, 52.853523, 50.392353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572620, 52.544937, 50.155327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884443, -0.420735, 0.201850,
		-0.405032, -0.477308, 0.779824,
		-0.231755, -0.771466, -0.592562,
		36.503094, 52.313496, 49.977558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056469, 52.418743, 50.666145>,  <36.665321, 52.853523, 50.392353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056469, 52.418743, 50.666145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975899, 52.275444, 50.301491>,  <36.927555, 52.189465, 50.082699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975899, 52.275444, 50.301491>,  <37.056469, 52.418743, 50.666145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975899, 52.275444, 50.301491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881894, -0.471348, -0.009633,
		-0.426248, -0.805910, 0.410879,
		-0.201430, -0.358246, -0.911639,
		36.915470, 52.167969, 50.028000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201706, 51.682468, 50.780182>,  <37.056469, 52.418743, 50.666145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201706, 51.682468, 50.780182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254810, 51.824989, 50.410225>,  <37.286674, 51.910500, 50.188251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254810, 51.824989, 50.410225>,  <37.201706, 51.682468, 50.780182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254810, 51.824989, 50.410225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902988, -0.428211, -0.035343,
		-0.408641, -0.830473, -0.378585,
		0.132762, 0.356300, -0.924891,
		37.294640, 51.931881, 50.132759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314285, 51.139702, 50.316025>,  <37.201706, 51.682468, 50.780182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314285, 51.139702, 50.316025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492516, 51.473221, 50.185642>,  <37.599453, 51.673332, 50.107414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492516, 51.473221, 50.185642>,  <37.314285, 51.139702, 50.316025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492516, 51.473221, 50.185642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817867, -0.527194, -0.230564,
		-0.364085, -0.163855, -0.916839,
		0.445573, 0.833797, -0.325955,
		37.626186, 51.723358, 50.087856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530331, 51.053307, 49.593636>,  <37.314285, 51.139702, 50.316025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530331, 51.053307, 49.593636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755013, 51.356956, 49.725220>,  <37.889824, 51.539146, 49.804169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755013, 51.356956, 49.725220>,  <37.530331, 51.053307, 49.593636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755013, 51.356956, 49.725220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809304, -0.421602, -0.408998,
		-0.171790, 0.495966, -0.851179,
		0.561708, 0.759124, 0.328960,
		37.923523, 51.584694, 49.823906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066078, 51.094498, 49.091988>,  <37.530331, 51.053307, 49.593636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066078, 51.094498, 49.091988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.206001, 51.289261, 49.412125>,  <38.289955, 51.406116, 49.604206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.206001, 51.289261, 49.412125>,  <38.066078, 51.094498, 49.091988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206001, 51.289261, 49.412125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926338, -0.052332, -0.373042,
		-0.139753, 0.871885, -0.469345,
		0.349811, 0.486906, 0.800347,
		38.310944, 51.435333, 49.652229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643719, 51.629864, 48.763317>,  <38.066078, 51.094498, 49.091988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643719, 51.629864, 48.763317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705196, 51.545441, 49.149445>,  <38.742081, 51.494785, 49.381119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705196, 51.545441, 49.149445>,  <38.643719, 51.629864, 48.763317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705196, 51.545441, 49.149445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967611, -0.165854, -0.190318,
		0.200269, 0.963300, 0.178731,
		0.153690, -0.211057, 0.965316,
		38.751305, 51.482124, 49.439041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038506, 52.135460, 48.995384>,  <38.643719, 51.629864, 48.763317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038506, 52.135460, 48.995384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077042, 51.767452, 49.147324>,  <39.100163, 51.546650, 49.238487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077042, 51.767452, 49.147324>,  <39.038506, 52.135460, 48.995384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077042, 51.767452, 49.147324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979561, 0.019937, -0.200158,
		0.176575, 0.391372, 0.903133,
		0.096341, -0.920017, 0.379852,
		39.105946, 51.491447, 49.261280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527481, 52.059628, 49.474140>,  <39.038506, 52.135460, 48.995384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527481, 52.059628, 49.474140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.512592, 51.700195, 49.299252>,  <39.503658, 51.484535, 49.194317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.512592, 51.700195, 49.299252>,  <39.527481, 52.059628, 49.474140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512592, 51.700195, 49.299252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984548, 0.041941, -0.170016,
		0.171111, -0.436799, 0.883135,
		-0.037223, -0.898581, -0.437226,
		39.501427, 51.430622, 49.168083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745777, 51.560696, 49.908928>,  <39.527481, 52.059628, 49.474140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745777, 51.560696, 49.908928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.800766, 51.571362, 49.512871>,  <39.833759, 51.577759, 49.275234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.800766, 51.571362, 49.512871>,  <39.745777, 51.560696, 49.908928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800766, 51.571362, 49.512871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966718, -0.221374, 0.128260,
		-0.215773, -0.974824, -0.056208,
		0.137474, 0.026662, -0.990146,
		39.842007, 51.579361, 49.215828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093319, 50.943848, 49.612774>,  <39.745777, 51.560696, 49.908928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093319, 50.943848, 49.612774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.215759, 51.277878, 49.429932>,  <40.289223, 51.478298, 49.320225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.215759, 51.277878, 49.429932>,  <40.093319, 50.943848, 49.612774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215759, 51.277878, 49.429932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950905, -0.245206, 0.188820,
		0.045595, -0.492462, -0.869139,
		0.306105, 0.835078, -0.457105,
		40.307590, 51.528400, 49.292801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765690, 50.875603, 49.197124>,  <40.093319, 50.943848, 49.612774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765690, 50.875603, 49.197124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.727329, 51.255592, 49.316025>,  <40.704311, 51.483585, 49.387367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.727329, 51.255592, 49.316025>,  <40.765690, 50.875603, 49.197124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727329, 51.255592, 49.316025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971291, 0.023997, 0.236680,
		0.217706, 0.311419, -0.924998,
		-0.095904, 0.949970, 0.297255,
		40.698559, 51.540585, 49.405201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.129635, 51.485382, 48.756096>,  <40.765690, 50.875603, 49.197124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.129635, 51.485382, 48.756096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106380, 51.520790, 49.153847>,  <41.092426, 51.542034, 49.392498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106380, 51.520790, 49.153847>,  <41.129635, 51.485382, 48.756096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106380, 51.520790, 49.153847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996941, 0.057263, 0.053190,
		-0.052232, 0.994427, -0.091578,
		-0.058138, 0.088520, 0.994376,
		41.088940, 51.547344, 49.452160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.857204, 51.609058, 48.846172>,  <41.129635, 51.485382, 48.756096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.857204, 51.609058, 48.846172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643074, 51.640327, 49.182579>,  <41.514595, 51.659088, 49.384422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643074, 51.640327, 49.182579>,  <41.857204, 51.609058, 48.846172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643074, 51.640327, 49.182579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842923, 0.112971, 0.526041,
		-0.053890, 0.990519, -0.126368,
		-0.535329, 0.078170, 0.841019,
		41.482475, 51.663780, 49.434883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.081551, 52.240990, 49.189754>,  <41.857204, 51.609058, 48.846172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.081551, 52.240990, 49.189754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.950825, 51.981163, 49.464348>,  <41.872391, 51.825268, 49.629105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.950825, 51.981163, 49.464348>,  <42.081551, 52.240990, 49.189754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.950825, 51.981163, 49.464348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661192, 0.361863, 0.657176,
		-0.675293, 0.668668, 0.311229,
		-0.326810, -0.649568, 0.686481,
		41.852783, 51.786293, 49.670292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.863884, 52.541134, 49.718796>,  <42.081551, 52.240990, 49.189754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.863884, 52.541134, 49.718796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954636, 52.187897, 49.883076>,  <42.009087, 51.975956, 49.981644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954636, 52.187897, 49.883076>,  <41.863884, 52.541134, 49.718796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954636, 52.187897, 49.883076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432360, 0.469189, 0.770017,
		-0.872690, 0.002864, 0.488265,
		0.226883, -0.883093, 0.410696,
		42.022701, 51.922970, 50.006283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752865, 52.505714, 50.523228>,  <41.863884, 52.541134, 49.718796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752865, 52.505714, 50.523228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.029705, 52.231812, 50.431923>,  <42.195808, 52.067471, 50.377140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.029705, 52.231812, 50.431923>,  <41.752865, 52.505714, 50.523228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.029705, 52.231812, 50.431923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562734, 0.313847, 0.764742,
		-0.452021, -0.657732, 0.602549,
		0.692103, -0.684755, -0.228263,
		42.237335, 52.026386, 50.363445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.981194, 52.016670, 51.117535>,  <41.752865, 52.505714, 50.523228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.981194, 52.016670, 51.117535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.285229, 52.043907, 50.859039>,  <42.467651, 52.060249, 50.703941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.285229, 52.043907, 50.859039>,  <41.981194, 52.016670, 51.117535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.285229, 52.043907, 50.859039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627476, 0.181639, 0.757154,
		0.168928, -0.981006, 0.095345,
		0.760091, 0.068077, -0.646241,
		42.513256, 52.064335, 50.665165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.569969, 51.558506, 51.224583>,  <41.981194, 52.016670, 51.117535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.569969, 51.558506, 51.224583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.648594, 51.912323, 51.055374>,  <42.695766, 52.124615, 50.953850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.648594, 51.912323, 51.055374>,  <42.569969, 51.558506, 51.224583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.648594, 51.912323, 51.055374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609081, 0.227939, 0.759647,
		0.768365, -0.406968, -0.493956,
		0.196560, 0.884546, -0.423017,
		42.707561, 52.177689, 50.928471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.254242, 51.586864, 51.339741>,  <42.569969, 51.558506, 51.224583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.254242, 51.586864, 51.339741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.132343, 51.961143, 51.268646>,  <43.059204, 52.185711, 51.225990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.132343, 51.961143, 51.268646>,  <43.254242, 51.586864, 51.339741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.132343, 51.961143, 51.268646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693381, 0.345900, 0.632120,
		0.652954, 0.069400, -0.754211,
		-0.304751, 0.935701, -0.177736,
		43.040916, 52.241856, 51.215324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.776394, 52.045776, 51.258514>,  <43.254242, 51.586864, 51.339741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.776394, 52.045776, 51.258514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.493069, 52.304199, 51.372284>,  <43.323074, 52.459255, 51.440544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.493069, 52.304199, 51.372284>,  <43.776394, 52.045776, 51.258514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.493069, 52.304199, 51.372284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666321, 0.478914, 0.571540,
		0.233034, 0.594347, -0.769705,
		-0.708316, 0.646059, 0.284422,
		43.280575, 52.498016, 51.457611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.133732, 52.666592, 51.374451>,  <43.776394, 52.045776, 51.258514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.133732, 52.666592, 51.374451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.826241, 52.674980, 51.630142>,  <43.641747, 52.680012, 51.783558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.826241, 52.674980, 51.630142>,  <44.133732, 52.666592, 51.374451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.826241, 52.674980, 51.630142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591919, 0.401904, 0.698645,
		-0.242259, 0.915442, -0.321368,
		-0.768728, 0.020970, 0.639232,
		43.595623, 52.681271, 51.821911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.990070, 53.354736, 51.624519>,  <44.133732, 52.666592, 51.374451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.990070, 53.354736, 51.624519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.866360, 53.090118, 51.897781>,  <43.792133, 52.931347, 52.061741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.866360, 53.090118, 51.897781>,  <43.990070, 53.354736, 51.624519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.866360, 53.090118, 51.897781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633127, 0.392782, 0.666987,
		-0.709574, 0.638811, 0.297363,
		-0.309280, -0.661545, 0.683157,
		43.773575, 52.891655, 52.102730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.854939, 53.788727, 52.157089>,  <43.990070, 53.354736, 51.624519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.854939, 53.788727, 52.157089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.951847, 53.406193, 52.222488>,  <44.009995, 53.176674, 52.261726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.951847, 53.406193, 52.222488>,  <43.854939, 53.788727, 52.157089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.951847, 53.406193, 52.222488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854105, 0.290169, 0.431632,
		-0.460226, 0.035070, 0.887109,
		0.242275, -0.956332, 0.163497,
		44.024529, 53.119293, 52.271538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.158516, 53.725422, 52.868465>,  <43.854939, 53.788727, 52.157089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.158516, 53.725422, 52.868465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.286785, 53.432693, 52.627930>,  <44.363747, 53.257057, 52.483608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.286785, 53.432693, 52.627930>,  <44.158516, 53.725422, 52.868465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.286785, 53.432693, 52.627930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942369, 0.310470, 0.124697,
		0.095444, -0.606672, 0.789202,
		0.320674, -0.731817, -0.601342,
		44.382988, 53.213150, 52.447529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.784916, 53.360928, 53.178608>,  <44.158516, 53.725422, 52.868465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.784916, 53.360928, 53.178608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.785500, 53.335747, 52.779400>,  <44.785851, 53.320641, 52.539875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.785500, 53.335747, 52.779400>,  <44.784916, 53.360928, 53.178608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.785500, 53.335747, 52.779400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830275, 0.556323, -0.033878,
		0.557352, -0.828578, 0.053074,
		0.001456, -0.062948, -0.998016,
		44.785938, 53.316860, 52.479996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.456871, 53.473270, 53.043629>,  <44.784916, 53.360928, 53.178608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.456871, 53.473270, 53.043629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.223438, 53.577866, 52.736111>,  <45.083378, 53.640621, 52.551598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.223438, 53.577866, 52.736111>,  <45.456871, 53.473270, 53.043629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.223438, 53.577866, 52.736111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712852, 0.618405, -0.330782,
		0.388933, -0.741080, -0.547295,
		-0.583586, 0.261488, -0.768799,
		45.048363, 53.656311, 52.505470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.579063, 53.210114, 52.339569>,  <45.456871, 53.473270, 53.043629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.579063, 53.210114, 52.339569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.436996, 53.583294, 52.363113>,  <45.351757, 53.807201, 52.377239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.436996, 53.583294, 52.363113>,  <45.579063, 53.210114, 52.339569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.436996, 53.583294, 52.363113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919442, 0.360004, -0.158188,
		-0.168770, -0.002068, -0.985653,
		-0.355167, 0.932948, 0.058856,
		45.330448, 53.863178, 52.380772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.110725, 53.541672, 51.962952>,  <45.579063, 53.210114, 52.339569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.110725, 53.541672, 51.962952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.897930, 53.813274, 52.165314>,  <45.770252, 53.976238, 52.286732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.897930, 53.813274, 52.165314>,  <46.110725, 53.541672, 51.962952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.897930, 53.813274, 52.165314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826886, 0.545251, 0.137701,
		-0.182343, 0.491578, -0.851529,
		-0.531988, 0.679008, 0.505902,
		45.738335, 54.016975, 52.317085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.327545, 54.172703, 51.837624>,  <46.110725, 53.541672, 51.962952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.327545, 54.172703, 51.837624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.153053, 54.261589, 52.186409>,  <46.048359, 54.314919, 52.395679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.153053, 54.261589, 52.186409>,  <46.327545, 54.172703, 51.837624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.153053, 54.261589, 52.186409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799400, 0.540581, 0.262168,
		-0.413110, 0.811415, -0.413457,
		-0.436234, 0.222213, 0.871964,
		46.022182, 54.328255, 52.447998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.204670, 54.924007, 52.026630>,  <46.327545, 54.172703, 51.837624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.204670, 54.924007, 52.026630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.263634, 54.728012, 52.370300>,  <46.299011, 54.610416, 52.576504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.263634, 54.728012, 52.370300>,  <46.204670, 54.924007, 52.026630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.263634, 54.728012, 52.370300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833092, 0.529737, 0.159175,
		-0.533131, 0.692309, 0.486292,
		0.147409, -0.489987, 0.859176,
		46.307858, 54.581017, 52.628052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.422890, 55.373066, 52.452755>,  <46.204670, 54.924007, 52.026630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.422890, 55.373066, 52.452755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.542854, 55.033588, 52.627007>,  <46.614834, 54.829903, 52.731556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.542854, 55.033588, 52.627007>,  <46.422890, 55.373066, 52.452755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.542854, 55.033588, 52.627007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884784, 0.418198, 0.205591,
		-0.356663, 0.323777, 0.876334,
		0.299915, -0.848693, 0.435628,
		46.632828, 54.778980, 52.757694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.684383, 55.456791, 53.183491>,  <46.422890, 55.373066, 52.452755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.684383, 55.456791, 53.183491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.864281, 55.157127, 52.988968>,  <46.972218, 54.977329, 52.872253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.864281, 55.157127, 52.988968>,  <46.684383, 55.456791, 53.183491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.864281, 55.157127, 52.988968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892998, 0.366876, 0.260686,
		-0.016879, -0.551513, 0.833995,
		0.449745, -0.749156, -0.486308,
		46.999203, 54.932381, 52.843075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.181889, 55.123062, 53.671337>,  <46.684383, 55.456791, 53.183491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.181889, 55.123062, 53.671337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.276394, 55.123791, 53.282661>,  <47.333096, 55.124229, 53.049458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.276394, 55.123791, 53.282661>,  <47.181889, 55.123062, 53.671337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.276394, 55.123791, 53.282661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953865, 0.190226, 0.232285,
		0.185264, -0.981739, 0.043203,
		0.236262, 0.001825, -0.971688,
		47.347271, 55.124336, 52.991154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.686028, 54.556946, 53.474735>,  <47.181889, 55.123062, 53.671337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.686028, 54.556946, 53.474735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.687077, 54.895985, 53.262482>,  <47.687706, 55.099407, 53.135132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.687077, 54.895985, 53.262482>,  <47.686028, 54.556946, 53.474735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.687077, 54.895985, 53.262482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875962, 0.254014, 0.410082,
		0.482373, -0.465888, -0.741798,
		0.002625, 0.847600, -0.530630,
		47.687862, 55.150265, 53.103294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.325165, 54.694504, 53.080746>,  <47.686028, 54.556946, 53.474735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.325165, 54.694504, 53.080746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.179333, 55.063446, 53.131878>,  <48.091835, 55.284813, 53.162556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.179333, 55.063446, 53.131878>,  <48.325165, 54.694504, 53.080746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.179333, 55.063446, 53.131878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891270, 0.305897, 0.334760,
		0.269665, 0.235979, -0.933592,
		-0.364580, 0.922356, 0.127832,
		48.069958, 55.340153, 53.170227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.020634, 55.116291, 53.037418>,  <48.325165, 54.694504, 53.080746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.020634, 55.116291, 53.037418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.123112, 55.329365, 52.714775>,  <49.184597, 55.457211, 52.521191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.123112, 55.329365, 52.714775>,  <49.020634, 55.116291, 53.037418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.123112, 55.329365, 52.714775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915485, 0.134112, 0.379342,
		0.310247, -0.835619, -0.453309,
		0.256191, 0.532687, -0.806604,
		49.199970, 55.489170, 52.472794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.673603, 54.992870, 52.934872>,  <49.020634, 55.116291, 53.037418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.673603, 54.992870, 52.934872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.608761, 55.343697, 52.753998>,  <49.569855, 55.554192, 52.645473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.608761, 55.343697, 52.753998>,  <49.673603, 54.992870, 52.934872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.608761, 55.343697, 52.753998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822223, 0.373425, 0.429538,
		0.545592, -0.302169, -0.781680,
		-0.162105, 0.877068, -0.452188,
		49.560131, 55.606815, 52.618340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.289501, 55.307533, 53.133537>,  <49.673603, 54.992870, 52.934872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.289501, 55.307533, 53.133537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.162586, 55.603863, 52.896721>,  <50.086437, 55.781658, 52.754631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.162586, 55.603863, 52.896721>,  <50.289501, 55.307533, 53.133537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.162586, 55.603863, 52.896721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806997, 0.538815, 0.241733,
		0.498082, -0.401077, -0.768799,
		-0.317287, 0.740821, -0.592042,
		50.067402, 55.826111, 52.719109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.816357, 55.522739, 52.700359>,  <50.289501, 55.307533, 53.133537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.816357, 55.522739, 52.700359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.559368, 55.815758, 52.790337>,  <50.405174, 55.991570, 52.844322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.559368, 55.815758, 52.790337>,  <50.816357, 55.522739, 52.700359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.559368, 55.815758, 52.790337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753321, 0.549943, 0.360652,
		0.140487, 0.401167, -0.905168,
		-0.642472, 0.732549, 0.224948,
		50.366627, 56.035522, 52.857822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.131657, 56.163429, 52.638222>,  <50.816357, 55.522739, 52.700359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.131657, 56.163429, 52.638222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.811710, 56.234406, 52.867561>,  <50.619743, 56.276993, 53.005165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.811710, 56.234406, 52.867561>,  <51.131657, 56.163429, 52.638222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.811710, 56.234406, 52.867561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513029, 0.697903, 0.499733,
		-0.311466, 0.693863, -0.649264,
		-0.799869, 0.177441, 0.573344,
		50.571751, 56.287640, 53.039566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.292580, 55.845894, 53.260471>,  <51.131657, 56.163429, 52.638222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.292580, 55.845894, 53.260471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.509216, 55.996044, 52.959602>,  <51.639198, 56.086136, 52.779079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.509216, 55.996044, 52.959602>,  <51.292580, 55.845894, 53.260471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.509216, 55.996044, 52.959602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834436, -0.131555, 0.535173,
		0.101941, -0.917487, -0.384481,
		0.541595, 0.375381, -0.752173,
		51.671696, 56.108658, 52.733952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.763023, 55.302937, 53.005383>,  <51.292580, 55.845894, 53.260471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.763023, 55.302937, 53.005383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.908920, 55.671906, 52.954643>,  <51.996460, 55.893288, 52.924198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.908920, 55.671906, 52.954643>,  <51.763023, 55.302937, 53.005383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.908920, 55.671906, 52.954643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882770, -0.299261, 0.362161,
		0.296105, -0.244078, -0.923443,
		0.364746, 0.922426, -0.126852,
		52.018345, 55.948631, 52.916588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.377586, 55.218124, 52.712563>,  <51.763023, 55.302937, 53.005383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.377586, 55.218124, 52.712563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.371349, 55.574173, 52.894745>,  <52.367607, 55.787804, 53.004055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.371349, 55.574173, 52.894745>,  <52.377586, 55.218124, 52.712563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.371349, 55.574173, 52.894745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918725, -0.167009, 0.357845,
		0.394591, 0.424013, -0.815175,
		-0.015590, 0.890124, 0.455452,
		52.366673, 55.841209, 53.031380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.964741, 55.602070, 52.572227>,  <52.377586, 55.218124, 52.712563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.964741, 55.602070, 52.572227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.838390, 55.753613, 52.920181>,  <52.762581, 55.844536, 53.128952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.838390, 55.753613, 52.920181>,  <52.964741, 55.602070, 52.572227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.838390, 55.753613, 52.920181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948235, 0.094381, 0.303221,
		0.032776, 0.920632, -0.389054,
		-0.315875, 0.378853, 0.869882,
		52.743629, 55.867268, 53.181145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.365097, 56.283539, 52.752396>,  <52.964741, 55.602070, 52.572227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.365097, 56.283539, 52.752396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.212044, 56.066422, 53.051453>,  <53.120213, 55.936150, 53.230885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.212044, 56.066422, 53.051453>,  <53.365097, 56.283539, 52.752396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.212044, 56.066422, 53.051453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888579, 0.005417, 0.458692,
		-0.253027, 0.839846, 0.480246,
		-0.382629, -0.542797, 0.747640,
		53.097256, 55.903584, 53.275745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.479439, 56.544609, 53.406910>,  <53.365097, 56.283539, 52.752396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.479439, 56.544609, 53.406910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.444267, 56.150642, 53.466530>,  <53.423164, 55.914265, 53.502304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.444267, 56.150642, 53.466530>,  <53.479439, 56.544609, 53.406910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.444267, 56.150642, 53.466530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852256, 0.003081, 0.523116,
		-0.515683, 0.173028, 0.839126,
		-0.087928, -0.984912, 0.149053,
		53.417889, 55.855167, 53.511246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.686245, 56.329109, 54.097439>,  <53.479439, 56.544609, 53.406910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.686245, 56.329109, 54.097439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.759109, 56.034531, 53.836838>,  <53.802830, 55.857784, 53.680477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.759109, 56.034531, 53.836838>,  <53.686245, 56.329109, 54.097439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.759109, 56.034531, 53.836838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953029, -0.030817, 0.301307,
		-0.241975, -0.675790, 0.696244,
		0.182164, -0.736449, -0.651505,
		53.813759, 55.813595, 53.641388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.204487, 55.978863, 54.316837>,  <53.686245, 56.329109, 54.097439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.204487, 55.978863, 54.316837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.244667, 55.850254, 53.940212>,  <54.268776, 55.773087, 53.714237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.244667, 55.850254, 53.940212>,  <54.204487, 55.978863, 54.316837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.244667, 55.850254, 53.940212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994873, 0.021293, 0.098863,
		-0.011738, -0.946662, 0.322015,
		0.100446, -0.321524, -0.941559,
		54.274799, 55.753796, 53.657745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.734230, 55.457138, 54.254082>,  <54.204487, 55.978863, 54.316837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.734230, 55.457138, 54.254082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.722801, 55.702709, 53.938545>,  <54.715946, 55.850052, 53.749222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.722801, 55.702709, 53.938545>,  <54.734230, 55.457138, 54.254082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.722801, 55.702709, 53.938545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993709, 0.102933, 0.044120,
		0.108285, -0.782622, -0.613007,
		-0.028570, 0.613928, -0.788845,
		54.714230, 55.886887, 53.701893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.146023, 55.236259, 53.586277>,  <54.734230, 55.457138, 54.254082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.146023, 55.236259, 53.586277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.138550, 55.636047, 53.596985>,  <55.134064, 55.875919, 53.603409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.138550, 55.636047, 53.596985>,  <55.146023, 55.236259, 53.586277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.138550, 55.636047, 53.596985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954586, 0.009870, 0.297772,
		0.297349, 0.031122, -0.954261,
		-0.018686, 0.999467, 0.026774,
		55.132942, 55.935886, 53.605019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.949806, 55.444805, 53.452717>,  <55.146023, 55.236259, 53.586277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.949806, 55.444805, 53.452717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.720459, 55.737160, 53.600800>,  <55.582851, 55.912571, 53.689648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.720459, 55.737160, 53.600800>,  <55.949806, 55.444805, 53.452717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.720459, 55.737160, 53.600800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799106, 0.399202, 0.449520,
		0.180761, 0.553574, -0.812946,
		-0.573372, 0.730885, 0.370204,
		55.548447, 55.956425, 53.711861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.262604, 56.150967, 53.291687>,  <55.949806, 55.444805, 53.452717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.262604, 56.150967, 53.291687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.052818, 56.135536, 53.631912>,  <55.926949, 56.126278, 53.836048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.052818, 56.135536, 53.631912>,  <56.262604, 56.150967, 53.291687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.052818, 56.135536, 53.631912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732695, 0.488407, 0.473938,
		-0.433704, 0.871763, -0.227883,
		-0.524461, -0.038580, 0.850560,
		55.895481, 56.123962, 53.887081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.092979, 56.805965, 53.585304>,  <56.262604, 56.150967, 53.291687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.092979, 56.805965, 53.585304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.130882, 56.519588, 53.861984>,  <56.153622, 56.347763, 54.027992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.130882, 56.519588, 53.861984>,  <56.092979, 56.805965, 53.585304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.130882, 56.519588, 53.861984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746673, 0.510656, 0.426273,
		-0.658408, 0.476080, 0.582964,
		0.094754, -0.715945, 0.691696,
		56.159309, 56.304806, 54.069492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.412350, 57.239769, 54.159630>,  <56.092979, 56.805965, 53.585304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.412350, 57.239769, 54.159630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.451721, 56.846783, 54.222969>,  <56.475346, 56.610992, 54.260971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.451721, 56.846783, 54.222969>,  <56.412350, 57.239769, 54.159630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.451721, 56.846783, 54.222969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854173, 0.165050, 0.493100,
		-0.510588, 0.086721, 0.855441,
		0.098428, -0.982465, 0.158347,
		56.481251, 56.552044, 54.270473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.917694, 57.072342, 54.568638>,  <56.412350, 57.239769, 54.159630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.917694, 57.072342, 54.568638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.889786, 56.689392, 54.456524>,  <56.873039, 56.459621, 54.389256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.889786, 56.689392, 54.456524>,  <56.917694, 57.072342, 54.568638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.889786, 56.689392, 54.456524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960109, -0.140715, 0.241640,
		-0.270781, -0.252243, 0.929006,
		-0.069773, -0.957378, -0.280283,
		56.868855, 56.402180, 54.372440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.295906, 56.640152, 54.985634>,  <56.917694, 57.072342, 54.568638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.295906, 56.640152, 54.985634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.315079, 56.414639, 54.655823>,  <57.326584, 56.279331, 54.457935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.315079, 56.414639, 54.655823>,  <57.295906, 56.640152, 54.985634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.315079, 56.414639, 54.655823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961376, -0.197947, 0.191240,
		-0.271031, -0.801852, 0.532518,
		0.047936, -0.563782, -0.824531,
		57.329460, 56.245502, 54.408463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.430450, 55.909069, 55.257324>,  <57.295906, 56.640152, 54.985634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.430450, 55.909069, 55.257324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.574173, 56.002426, 54.895897>,  <57.660408, 56.058441, 54.679043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.574173, 56.002426, 54.895897>,  <57.430450, 55.909069, 55.257324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.574173, 56.002426, 54.895897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920442, 0.071042, 0.384370,
		0.153898, -0.969785, -0.189295,
		0.359308, 0.233389, -0.903564,
		57.681965, 56.072441, 54.624828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.057693, 55.541206, 55.177780>,  <57.430450, 55.909069, 55.257324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.057693, 55.541206, 55.177780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.068764, 55.783772, 54.859913>,  <58.075405, 55.929310, 54.669193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.068764, 55.783772, 54.859913>,  <58.057693, 55.541206, 55.177780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.068764, 55.783772, 54.859913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975604, 0.156816, 0.153641,
		0.217786, -0.779531, -0.587282,
		0.027672, 0.606416, -0.794666,
		58.077065, 55.965694, 54.621513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.423347, 55.311478, 54.574947>,  <58.057693, 55.541206, 55.177780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.423347, 55.311478, 54.574947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.448936, 55.710293, 54.591995>,  <58.464291, 55.949581, 54.602226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.448936, 55.710293, 54.591995>,  <58.423347, 55.311478, 54.574947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.448936, 55.710293, 54.591995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997585, -0.062732, -0.029815,
		-0.027053, 0.044427, -0.998646,
		0.063971, 0.997041, 0.042623,
		58.468128, 56.009407, 54.604782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.018578, 55.361488, 54.338097>,  <58.423347, 55.311478, 54.574947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.018578, 55.361488, 54.338097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.943741, 55.725819, 54.485279>,  <58.898838, 55.944416, 54.573589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.943741, 55.725819, 54.485279>,  <59.018578, 55.361488, 54.338097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.943741, 55.725819, 54.485279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974209, 0.220138, -0.049567,
		-0.126147, 0.349191, -0.928522,
		-0.187095, 0.910827, 0.367955,
		58.887611, 55.999065, 54.595665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.293198, 55.867363, 53.928055>,  <59.018578, 55.361488, 54.338097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.293198, 55.867363, 53.928055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.283104, 55.997692, 54.306091>,  <59.277046, 56.075890, 54.532913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.283104, 55.997692, 54.306091>,  <59.293198, 55.867363, 53.928055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.283104, 55.997692, 54.306091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999306, -0.017674, 0.032778,
		0.027383, 0.945267, -0.325146,
		-0.025237, 0.325818, 0.945095,
		59.275532, 56.095436, 54.589619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.948067, 56.274353, 54.068913>,  <59.293198, 55.867363, 53.928055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.948067, 56.274353, 54.068913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.829315, 56.104988, 54.411278>,  <59.758064, 56.003368, 54.616695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.829315, 56.104988, 54.411278>,  <59.948067, 56.274353, 54.068913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.829315, 56.104988, 54.411278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952078, -0.062212, 0.299463,
		-0.073548, 0.903799, 0.421591,
		-0.296882, -0.423412, 0.855911,
		59.740250, 55.977966, 54.668053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.195820, 56.661907, 54.654060>,  <59.948067, 56.274353, 54.068913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.195820, 56.661907, 54.654060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.152420, 56.268341, 54.710823>,  <60.126381, 56.032200, 54.744881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.152420, 56.268341, 54.710823>,  <60.195820, 56.661907, 54.654060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.152420, 56.268341, 54.710823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972536, -0.075492, 0.220170,
		-0.205915, 0.161902, 0.965084,
		-0.108502, -0.983915, 0.141911,
		60.119869, 55.973167, 54.753395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.381294, 56.464787, 55.322174>,  <60.195820, 56.661907, 54.654060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.381294, 56.464787, 55.322174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.431793, 56.139282, 55.095245>,  <60.462093, 55.943981, 54.959087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.431793, 56.139282, 55.095245>,  <60.381294, 56.464787, 55.322174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.431793, 56.139282, 55.095245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967074, -0.026430, 0.253120,
		-0.220974, -0.580598, 0.783630,
		0.126250, -0.813761, -0.567322,
		60.469669, 55.895153, 54.925049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.729115, 55.896118, 55.798813>,  <60.381294, 56.464787, 55.322174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.729115, 55.896118, 55.798813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.786148, 55.826050, 55.409149>,  <60.820370, 55.784008, 55.175350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.786148, 55.826050, 55.409149>,  <60.729115, 55.896118, 55.798813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.786148, 55.826050, 55.409149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968265, -0.179423, 0.173984,
		-0.205263, -0.968051, 0.144027,
		0.142584, -0.175169, -0.974159,
		60.828922, 55.773499, 55.116901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.494118, 56.014042, 55.874302>,  <60.729115, 55.896118, 55.798813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.494118, 56.014042, 55.874302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.837120, 55.819134, 55.808266>,  <62.042923, 55.702190, 55.768642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.837120, 55.819134, 55.808266>,  <61.494118, 56.014042, 55.874302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.837120, 55.819134, 55.808266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508397, 0.753396, 0.417046,
		-0.078834, -0.441550, 0.893766,
		0.857507, -0.487266, -0.165089,
		62.094372, 55.672955, 55.758739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.945305, 56.077549, 56.369675>,  <61.494118, 56.014042, 55.874302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.945305, 56.077549, 56.369675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.263008, 56.062675, 56.127098>,  <62.453629, 56.053753, 55.981552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.263008, 56.062675, 56.127098>,  <61.945305, 56.077549, 56.369675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.263008, 56.062675, 56.127098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491405, 0.626306, 0.605196,
		0.357316, -0.778691, 0.515719,
		0.794258, -0.037181, -0.606442,
		62.501286, 56.051521, 55.945164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.844971, 55.366474, 56.637997>,  <61.945305, 56.077549, 56.369675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.844971, 55.366474, 56.637997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.935959, 55.092045, 56.914421>,  <61.990551, 54.927387, 57.080276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.935959, 55.092045, 56.914421>,  <61.844971, 55.366474, 56.637997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.935959, 55.092045, 56.914421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368173, -0.717575, -0.591215,
		0.901503, -0.119947, -0.415818,
		0.227466, -0.686075, 0.691057,
		62.004200, 54.886223, 57.121738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.314236, 54.867241, 56.368301>,  <61.844971, 55.366474, 56.637997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.314236, 54.867241, 56.368301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.062119, 54.736034, 56.649765>,  <61.910851, 54.657310, 56.818645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.062119, 54.736034, 56.649765>,  <62.314236, 54.867241, 56.368301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.062119, 54.736034, 56.649765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464984, -0.566320, -0.680494,
		0.621713, -0.756099, 0.204421,
		-0.630288, -0.328019, 0.703662,
		61.873032, 54.637630, 56.860863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.235912, 54.097828, 56.589111>,  <62.314236, 54.867241, 56.368301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.235912, 54.097828, 56.589111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.871017, 54.261696, 56.589729>,  <61.652081, 54.360016, 56.590099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.871017, 54.261696, 56.589729>,  <62.235912, 54.097828, 56.589111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.871017, 54.261696, 56.589729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338585, -0.751817, -0.565802,
		-0.230632, -0.516665, 0.824540,
		-0.912233, 0.409669, 0.001542,
		61.597347, 54.384598, 56.590191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.905155, 53.835392, 56.725853>,  <62.235912, 54.097828, 56.589111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.905155, 53.835392, 56.725853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.870529, 53.666546, 57.086815>,  <62.849754, 53.565239, 57.303391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.870529, 53.666546, 57.086815>,  <62.905155, 53.835392, 56.725853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.870529, 53.666546, 57.086815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905927, 0.343511, 0.247581,
		-0.414492, 0.838941, 0.352668,
		-0.086561, -0.422112, 0.902402,
		62.844563, 53.539913, 57.357536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.011116, 54.310318, 57.355938>,  <62.905155, 53.835392, 56.725853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.011116, 54.310318, 57.355938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.137039, 53.942760, 57.451035>,  <63.212593, 53.722225, 57.508091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.137039, 53.942760, 57.451035>,  <63.011116, 54.310318, 57.355938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.137039, 53.942760, 57.451035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887313, 0.373851, 0.270021,
		-0.337000, 0.125943, 0.933043,
		0.314812, -0.918898, 0.237738,
		63.231483, 53.667091, 57.522354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.569340, 54.419514, 57.898117>,  <63.011116, 54.310318, 57.355938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.569340, 54.419514, 57.898117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.611801, 54.064217, 57.719337>,  <63.637280, 53.851040, 57.612068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.611801, 54.064217, 57.719337>,  <63.569340, 54.419514, 57.898117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.611801, 54.064217, 57.719337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989342, 0.049292, 0.137012,
		-0.099668, -0.456729, 0.884005,
		0.106152, -0.888239, -0.446949,
		63.643646, 53.797745, 57.585255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.033791, 53.931286, 58.289494>,  <63.569340, 54.419514, 57.898117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.033791, 53.931286, 58.289494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.051842, 53.824036, 57.904564>,  <64.062675, 53.759686, 57.673607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.051842, 53.824036, 57.904564>,  <64.033791, 53.931286, 58.289494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.051842, 53.824036, 57.904564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996475, 0.080273, 0.024372,
		0.070715, -0.960034, 0.270802,
		0.045136, -0.268124, -0.962327,
		64.065384, 53.743599, 57.615868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.614304, 53.432274, 58.272438>,  <64.033791, 53.931286, 58.289494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.614304, 53.432274, 58.272438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.595772, 53.604095, 57.911697>,  <64.584656, 53.707188, 57.695251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.595772, 53.604095, 57.911697>,  <64.614304, 53.432274, 58.272438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.595772, 53.604095, 57.911697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998913, 0.015113, -0.044108,
		-0.005317, -0.902913, -0.429790,
		-0.046321, 0.429557, -0.901851,
		64.581879, 53.732964, 57.641144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.960999, 53.035450, 57.679279>,  <64.614304, 53.432274, 58.272438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.960999, 53.035450, 57.679279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.975105, 53.434883, 57.663315>,  <64.983566, 53.674541, 57.653736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.975105, 53.434883, 57.663315>,  <64.960999, 53.035450, 57.679279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.975105, 53.434883, 57.663315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886135, -0.012780, 0.463251,
		0.462083, -0.051708, -0.885328,
		0.035268, 0.998580, -0.039915,
		64.985687, 53.734459, 57.651340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.428558, 53.468071, 57.197880>,  <64.960999, 53.035450, 57.679279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.428558, 53.468071, 57.197880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.355690, 53.661373, 57.540405>,  <65.311974, 53.777355, 57.745922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.355690, 53.661373, 57.540405>,  <65.428558, 53.468071, 57.197880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.355690, 53.661373, 57.540405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973109, -0.036261, 0.227471,
		0.140978, 0.874727, -0.463658,
		-0.182162, 0.483258, 0.856317,
		65.301041, 53.806351, 57.797302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.944763, 53.886787, 57.204815>,  <65.428558, 53.468071, 57.197880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.944763, 53.886787, 57.204815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.801086, 53.795502, 57.566788>,  <65.714882, 53.740730, 57.783970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.801086, 53.795502, 57.566788>,  <65.944763, 53.886787, 57.204815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.801086, 53.795502, 57.566788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932313, -0.131447, 0.336918,
		0.042062, 0.964698, 0.259979,
		-0.359197, -0.228210, 0.904929,
		65.693329, 53.727039, 57.838268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.181885, 54.290920, 57.702045>,  <65.944763, 53.886787, 57.204815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.181885, 54.290920, 57.702045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.115112, 53.954086, 57.907188>,  <66.075050, 53.751984, 58.030273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.115112, 53.954086, 57.907188>,  <66.181885, 54.290920, 57.702045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.115112, 53.954086, 57.907188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869391, 0.119632, 0.479424,
		-0.465070, 0.525906, 0.712132,
		-0.166938, -0.842088, 0.512855,
		66.065033, 53.701462, 58.061047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.121262, 54.298416, 58.551235>,  <66.181885, 54.290920, 57.702045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.121262, 54.298416, 58.551235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.272179, 53.945099, 58.439911>,  <66.362724, 53.733109, 58.373116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.272179, 53.945099, 58.439911>,  <66.121262, 54.298416, 58.551235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.272179, 53.945099, 58.439911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772406, 0.134336, 0.620759,
		-0.510924, -0.449170, 0.732942,
		0.377287, -0.883289, -0.278306,
		66.385368, 53.680111, 58.356419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.300148, 53.847961, 59.134388>,  <66.121262, 54.298416, 58.551235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.300148, 53.847961, 59.134388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.529465, 53.752777, 58.820778>,  <66.667053, 53.695667, 58.632610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.529465, 53.752777, 58.820778>,  <66.300148, 53.847961, 59.134388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.529465, 53.752777, 58.820778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805924, -0.008718, 0.591955,
		-0.147697, -0.971236, 0.186781,
		0.573299, -0.237961, -0.784030,
		66.701454, 53.681389, 58.585567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.784683, 53.302845, 59.377213>,  <66.300148, 53.847961, 59.134388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.784683, 53.302845, 59.377213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.876068, 53.547447, 59.074196>,  <66.930901, 53.694206, 58.892387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.876068, 53.547447, 59.074196>,  <66.784683, 53.302845, 59.377213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.876068, 53.547447, 59.074196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913858, 0.133576, 0.383433,
		0.335660, -0.779885, -0.528311,
		0.228464, 0.611504, -0.757540,
		66.944611, 53.730900, 58.846935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.395172, 53.224834, 58.935780>,  <66.784683, 53.302845, 59.377213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.395172, 53.224834, 58.935780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.332512, 53.619858, 58.941170>,  <67.294914, 53.856873, 58.944405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.332512, 53.619858, 58.941170>,  <67.395172, 53.224834, 58.935780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.332512, 53.619858, 58.941170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944926, 0.145894, 0.292968,
		0.287357, 0.058633, -0.956027,
		-0.156656, 0.987561, 0.013480,
		67.285515, 53.916126, 58.945213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.964424, 53.637985, 58.655746>,  <67.395172, 53.224834, 58.935780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.964424, 53.637985, 58.655746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.756371, 53.933174, 58.827728>,  <67.631538, 54.110287, 58.930916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.756371, 53.933174, 58.827728>,  <67.964424, 53.637985, 58.655746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.756371, 53.933174, 58.827728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851183, 0.489361, 0.189770,
		-0.070355, 0.464672, -0.882683,
		-0.520132, 0.737974, 0.429950,
		67.600334, 54.154568, 58.956715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.286438, 54.273338, 58.389744>,  <67.964424, 53.637985, 58.655746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.286438, 54.273338, 58.389744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.105995, 54.338947, 58.740654>,  <67.997734, 54.378311, 58.951199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.105995, 54.338947, 58.740654>,  <68.286438, 54.273338, 58.389744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.105995, 54.338947, 58.740654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783723, 0.543045, 0.301464,
		-0.426951, 0.823528, -0.373516,
		-0.451100, 0.164023, 0.877272,
		67.970665, 54.388153, 59.003834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.265732, 55.027485, 58.505581>,  <68.286438, 54.273338, 58.389744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.265732, 55.027485, 58.505581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.254471, 54.815563, 58.844643>,  <68.247711, 54.688412, 59.048080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.254471, 54.815563, 58.844643>,  <68.265732, 55.027485, 58.505581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.254471, 54.815563, 58.844643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922457, 0.312898, 0.226202,
		-0.385072, 0.788293, 0.479910,
		-0.028151, -0.529800, 0.847655,
		68.246025, 54.656624, 59.098938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.753983, 55.359779, 58.993809>,  <68.265732, 55.027485, 58.505581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.753983, 55.359779, 58.993809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.594734, 55.631958, 59.239899>,  <68.499184, 55.795265, 59.387554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.594734, 55.631958, 59.239899>,  <68.753983, 55.359779, 58.993809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.594734, 55.631958, 59.239899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851620, 0.024877, 0.523568,
		0.340954, 0.732378, -0.589383,
		-0.398112, 0.680444, 0.615226,
		68.475304, 55.836090, 59.424465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.129532, 55.999477, 59.057964>,  <68.753983, 55.359779, 58.993809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.129532, 55.999477, 59.057964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.934685, 56.012383, 59.407059>,  <68.817772, 56.020126, 59.616516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.934685, 56.012383, 59.407059>,  <69.129532, 55.999477, 59.057964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.934685, 56.012383, 59.407059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864470, 0.159827, 0.476599,
		-0.124109, 0.986618, -0.105749,
		-0.487122, 0.032266, 0.872737,
		68.788551, 56.022064, 59.668880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.298233, 56.602798, 59.483219>,  <69.129532, 55.999477, 59.057964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.298233, 56.602798, 59.483219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.199738, 56.327328, 59.756012>,  <69.140640, 56.162045, 59.919689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.199738, 56.327328, 59.756012>,  <69.298233, 56.602798, 59.483219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.199738, 56.327328, 59.756012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652563, 0.402459, 0.642019,
		-0.716612, 0.603120, 0.350305,
		-0.246231, -0.688674, 0.681980,
		69.125870, 56.120724, 59.960606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.952896, 56.854946, 60.114841>,  <69.298233, 56.602798, 59.483219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.952896, 56.854946, 60.114841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.200386, 56.541691, 60.139717>,  <69.348877, 56.353737, 60.154640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.200386, 56.541691, 60.139717>,  <68.952896, 56.854946, 60.114841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.200386, 56.541691, 60.139717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627589, 0.540337, 0.560507,
		-0.472558, -0.307773, 0.825811,
		0.618725, -0.783142, 0.062185,
		69.386002, 56.306747, 60.158371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.162529, 56.667377, 60.855618>,  <68.952896, 56.854946, 60.114841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.162529, 56.667377, 60.855618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.438797, 56.585644, 60.578140>,  <69.604561, 56.536602, 60.411652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.438797, 56.585644, 60.578140>,  <69.162529, 56.667377, 60.855618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.438797, 56.585644, 60.578140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690579, 0.471066, 0.548815,
		0.214635, -0.858105, 0.466463,
		0.690676, -0.204335, -0.693696,
		69.645996, 56.524345, 60.370029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.738510, 56.339993, 61.147949>,  <69.162529, 56.667377, 60.855618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.738510, 56.339993, 61.147949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.879585, 56.565006, 60.848839>,  <69.964226, 56.700016, 60.669373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.879585, 56.565006, 60.848839>,  <69.738510, 56.339993, 61.147949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.879585, 56.565006, 60.848839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712515, 0.356581, 0.604296,
		0.606580, -0.745926, -0.275055,
		0.352681, 0.562534, -0.747778,
		69.985390, 56.733765, 60.624504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.516579, 56.192276, 60.974880>,  <69.738510, 56.339993, 61.147949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.516579, 56.192276, 60.974880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.396675, 56.558430, 60.867393>,  <70.324730, 56.778122, 60.802902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.396675, 56.558430, 60.867393>,  <70.516579, 56.192276, 60.974880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.396675, 56.558430, 60.867393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733685, 0.401241, 0.548372,
		0.609792, -0.032769, -0.791884,
		-0.299766, 0.915386, -0.268716,
		70.306747, 56.833046, 60.786777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.068802, 56.610825, 60.713482>,  <70.516579, 56.192276, 60.974880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.068802, 56.610825, 60.713482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.787552, 56.851685, 60.864754>,  <70.618797, 56.996201, 60.955517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.787552, 56.851685, 60.864754>,  <71.068802, 56.610825, 60.713482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.787552, 56.851685, 60.864754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670358, 0.383990, 0.634958,
		0.237124, 0.699975, -0.673652,
		-0.703130, 0.602152, 0.378180,
		70.576614, 57.032330, 60.978207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.210266, 57.361858, 60.607735>,  <71.068802, 56.610825, 60.713482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.210266, 57.361858, 60.607735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.989517, 57.256226, 60.924141>,  <70.857071, 57.192844, 61.113983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.989517, 57.256226, 60.924141>,  <71.210266, 57.361858, 60.607735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.989517, 57.256226, 60.924141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604961, 0.526094, 0.597702,
		-0.573991, 0.808384, -0.130573,
		-0.551867, -0.264084, 0.791014,
		70.823959, 57.177002, 61.161446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.045433, 57.949055, 61.009312>,  <71.210266, 57.361858, 60.607735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.045433, 57.949055, 61.009312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.079399, 57.622353, 61.237595>,  <71.099777, 57.426331, 61.374565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.079399, 57.622353, 61.237595>,  <71.045433, 57.949055, 61.009312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.079399, 57.622353, 61.237595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539697, 0.519177, 0.662709,
		-0.837566, 0.251739, 0.484881,
		0.084909, -0.816751, 0.570708,
		71.104874, 57.377327, 61.408806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.708908, 57.939812, 61.399761>,  <71.045433, 57.949055, 61.009312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.708908, 57.939812, 61.399761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.581421, 57.600197, 61.568306>,  <71.504929, 57.396427, 61.669434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.581421, 57.600197, 61.568306>,  <71.708908, 57.939812, 61.399761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.581421, 57.600197, 61.568306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124449, 0.403215, 0.906604,
		-0.939643, 0.341392, -0.022851,
		-0.318721, -0.849040, 0.421364,
		71.485802, 57.345486, 61.694714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.169243, 57.798122, 60.845661>,  <71.708908, 57.939812, 61.399761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.169243, 57.798122, 60.845661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.299522, 58.025993, 60.543831>,  <72.377693, 58.162716, 60.362732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.299522, 58.025993, 60.543831>,  <72.169243, 57.798122, 60.845661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.299522, 58.025993, 60.543831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939134, 0.102657, -0.327855,
		-0.109309, 0.815432, 0.568439,
		0.325697, 0.569677, -0.754578,
		72.397232, 58.196896, 60.317459>
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
