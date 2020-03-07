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
	<1.071759, 4.349307, 1.428008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.158806, 4.063782, 1.694275>,  <1.211034, 3.892467, 1.854035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.158806, 4.063782, 1.694275>,  <1.071759, 4.349307, 1.428008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.158806, 4.063782, 1.694275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587283, -0.448975, -0.673439,
		0.779578, 0.537487, 0.321506,
		0.217616, -0.713813, 0.665668,
		1.224091, 3.849638, 1.893975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.813096, 4.256270, 1.458337>,  <1.071759, 4.349307, 1.428008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.813096, 4.256270, 1.458337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.637005, 3.911499, 1.558960>,  <1.531350, 3.704637, 1.619334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.637005, 3.911499, 1.558960>,  <1.813096, 4.256270, 1.458337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.637005, 3.911499, 1.558960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481702, -0.463152, -0.743944,
		0.757735, -0.206330, 0.619085,
		-0.440228, -0.861927, 0.251556,
		1.504936, 3.652921, 1.634427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.298915, 3.778185, 1.655113>,  <1.813096, 4.256270, 1.458337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.298915, 3.778185, 1.655113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.960560, 3.636711, 1.495422>,  <1.757547, 3.551827, 1.399608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.960560, 3.636711, 1.495422>,  <2.298915, 3.778185, 1.655113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.960560, 3.636711, 1.495422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465832, -0.125362, -0.875948,
		0.259762, -0.926926, 0.270800,
		-0.845887, -0.353685, -0.399227,
		1.706794, 3.530606, 1.375654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.571968, 3.126676, 1.268082>,  <2.298915, 3.778185, 1.655113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.571968, 3.126676, 1.268082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.231606, 3.281021, 1.125496>,  <2.027388, 3.373629, 1.039945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.231606, 3.281021, 1.125496>,  <2.571968, 3.126676, 1.268082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.231606, 3.281021, 1.125496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391703, 0.013892, -0.919987,
		-0.350038, -0.922451, -0.162965,
		-0.850906, 0.385864, -0.356464,
		1.976333, 3.396780, 1.018557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.538495, 2.730865, 0.652232>,  <2.571968, 3.126676, 1.268082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.538495, 2.730865, 0.652232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.338913, 3.077332, 0.640923>,  <2.219164, 3.285212, 0.634137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.338913, 3.077332, 0.640923>,  <2.538495, 2.730865, 0.652232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.338913, 3.077332, 0.640923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270300, 0.124543, -0.954687,
		-0.823396, -0.483989, -0.296266,
		-0.498955, 0.866166, -0.028274,
		2.189226, 3.337181, 0.632440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.084946, 2.695992, 0.065848>,  <2.538495, 2.730865, 0.652232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.084946, 2.695992, 0.065848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.085484, 3.092682, 0.117203>,  <2.085806, 3.330695, 0.148016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.085484, 3.092682, 0.117203>,  <2.084946, 2.695992, 0.065848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.085484, 3.092682, 0.117203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057673, 0.128097, -0.990083,
		-0.998335, 0.008734, -0.057024,
		0.001343, 0.991723, 0.128387,
		2.085886, 3.390199, 0.155719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.576240, 2.890115, -0.474888>,  <2.084946, 2.695992, 0.065848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.576240, 2.890115, -0.474888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.811569, 3.192581, -0.360283>,  <1.952767, 3.374061, -0.291520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.811569, 3.192581, -0.360283>,  <1.576240, 2.890115, -0.474888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.811569, 3.192581, -0.360283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262644, 0.156418, -0.952130,
		-0.764783, 0.635411, -0.106577,
		0.588324, 0.756165, 0.286513,
		1.988066, 3.419431, -0.274329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.387592, 3.394837, -0.837422>,  <1.576240, 2.890115, -0.474888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.387592, 3.394837, -0.837422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.752590, 3.501114, -0.712997>,  <1.971589, 3.564880, -0.638343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.752590, 3.501114, -0.712997>,  <1.387592, 3.394837, -0.837422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.752590, 3.501114, -0.712997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294434, 0.101347, -0.950283,
		-0.284007, 0.958716, 0.014250,
		0.912496, 0.265692, 0.311062,
		2.026339, 3.580821, -0.619679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.720122, 3.926310, 2.942217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.333605, 3.866623, 2.858299>,  <1.101695, 3.830811, 2.807948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.333605, 3.866623, 2.858299>,  <1.720122, 3.926310, 2.942217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.333605, 3.866623, 2.858299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015517, -0.779662, 0.626008,
		-0.256981, 0.608162, 0.751065,
		-0.966292, -0.149218, -0.209795,
		1.043717, 3.821857, 2.795361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.481823, 3.692815, 2.945921>,  <1.720122, 3.926310, 2.942217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.481823, 3.692815, 2.945921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.775032, 3.831802, 3.179825>,  <2.950957, 3.915195, 3.320167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.775032, 3.831802, 3.179825>,  <2.481823, 3.692815, 2.945921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.775032, 3.831802, 3.179825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576301, -0.139412, 0.805259,
		0.361326, -0.927270, 0.098055,
		0.733022, 0.347470, 0.584759,
		2.994939, 3.936043, 3.355253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.696689, 3.189453, 3.531649>,  <2.481823, 3.692815, 2.945921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.696689, 3.189453, 3.531649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.759113, 3.568283, 3.643860>,  <2.796568, 3.795581, 3.711186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.759113, 3.568283, 3.643860>,  <2.696689, 3.189453, 3.531649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.759113, 3.568283, 3.643860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509780, -0.166031, 0.844131,
		0.846031, -0.274743, 0.456889,
		0.156062, 0.947074, 0.280526,
		2.805932, 3.852405, 3.728018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.037189, 3.224962, 4.243021>,  <2.696689, 3.189453, 3.531649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.037189, 3.224962, 4.243021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.828058, 3.552734, 4.149055>,  <2.702580, 3.749398, 4.092676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.828058, 3.552734, 4.149055>,  <3.037189, 3.224962, 4.243021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.828058, 3.552734, 4.149055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490670, -0.063942, 0.868996,
		0.697062, 0.569599, 0.435501,
		-0.522826, 0.819432, -0.234913,
		2.671210, 3.798564, 4.078581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.140949, 3.769541, 4.751168>,  <3.037189, 3.224962, 4.243021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.140949, 3.769541, 4.751168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.771410, 3.781616, 4.598541>,  <2.549686, 3.788861, 4.506965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.771410, 3.781616, 4.598541>,  <3.140949, 3.769541, 4.751168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.771410, 3.781616, 4.598541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382747, -0.065122, 0.921555,
		0.002971, 0.997420, 0.071717,
		-0.923848, 0.030187, -0.381566,
		2.494256, 3.790672, 4.484071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.815740, 4.315032, 5.072388>,  <3.140949, 3.769541, 4.751168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.815740, 4.315032, 5.072388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.529137, 4.060638, 4.957748>,  <2.357174, 3.908002, 4.888965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.529137, 4.060638, 4.957748>,  <2.815740, 4.315032, 5.072388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.529137, 4.060638, 4.957748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371611, 0.000295, 0.928389,
		-0.590356, 0.771702, -0.236550,
		-0.716509, -0.635984, -0.286599,
		2.314184, 3.869843, 4.871768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.192213, 4.643445, 5.317338>,  <2.815740, 4.315032, 5.072388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.192213, 4.643445, 5.317338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.124168, 4.251144, 5.278992>,  <2.083342, 4.015764, 5.255984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.124168, 4.251144, 5.278992>,  <2.192213, 4.643445, 5.317338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.124168, 4.251144, 5.278992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309330, -0.039221, 0.950145,
		-0.935616, 0.191285, -0.296704,
		-0.170112, -0.980751, -0.095866,
		2.073135, 3.956919, 5.250232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.545597, 4.480595, 5.577469>,  <2.192213, 4.643445, 5.317338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.545597, 4.480595, 5.577469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.747768, 4.136276, 5.601372>,  <1.869071, 3.929685, 5.615714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.747768, 4.136276, 5.601372>,  <1.545597, 4.480595, 5.577469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.747768, 4.136276, 5.601372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334264, -0.131480, 0.933264,
		-0.795493, -0.491673, -0.354187,
		0.505428, -0.860797, 0.059757,
		1.899397, 3.878037, 5.619299>
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
