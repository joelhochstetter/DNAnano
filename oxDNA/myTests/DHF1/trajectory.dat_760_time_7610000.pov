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
	<0.558063, 1.902774, 0.467692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.537750, 1.798042, 0.853203>,  <0.525563, 1.735203, 1.084509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.537750, 1.798042, 0.853203>,  <0.558063, 1.902774, 0.467692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.537750, 1.798042, 0.853203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336689, 0.904042, 0.263341,
		-0.940246, 0.337866, 0.042247,
		-0.050781, -0.261830, 0.963777,
		0.522516, 1.719493, 1.142336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.297952, 2.518930, 0.933722>,  <0.558063, 1.902774, 0.467692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.297952, 2.518930, 0.933722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.472298, 2.253036, 1.176424>,  <0.576905, 2.093500, 1.322045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.472298, 2.253036, 1.176424>,  <0.297952, 2.518930, 0.933722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.472298, 2.253036, 1.176424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463337, 0.743691, 0.481915,
		-0.771583, 0.071081, 0.632145,
		0.435865, -0.664734, 0.606754,
		0.603057, 2.053617, 1.358450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.131660, 2.704525, 1.737880>,  <0.297952, 2.518930, 0.933722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.131660, 2.704525, 1.737880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.482258, 2.523180, 1.673107>,  <0.692616, 2.414373, 1.634244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.482258, 2.523180, 1.673107>,  <0.131660, 2.704525, 1.737880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.482258, 2.523180, 1.673107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475664, 0.763741, 0.436398,
		-0.074172, -0.459525, 0.885062,
		0.876494, -0.453361, -0.161931,
		0.745206, 2.387172, 1.624528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.393834, 2.661824, 2.392466>,  <0.131660, 2.704525, 1.737880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.393834, 2.661824, 2.392466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.659599, 2.676277, 2.093870>,  <0.819059, 2.684949, 1.914712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.659599, 2.676277, 2.093870>,  <0.393834, 2.661824, 2.392466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.659599, 2.676277, 2.093870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544389, 0.660940, 0.516526,
		0.512049, -0.749568, 0.419468,
		0.664415, 0.036133, -0.746491,
		0.858924, 2.687117, 1.869923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.125897, 2.713724, 2.691249>,  <0.393834, 2.661824, 2.392466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.125897, 2.713724, 2.691249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.175453, 2.819336, 2.308640>,  <1.205187, 2.882703, 2.079074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.175453, 2.819336, 2.308640>,  <1.125897, 2.713724, 2.691249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.175453, 2.819336, 2.308640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655946, 0.701511, 0.278598,
		0.744571, -0.661944, -0.086279,
		0.123891, 0.264030, -0.956525,
		1.212620, 2.898545, 2.021682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.969682, 2.865984, 2.533649>,  <1.125897, 2.713724, 2.691249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.969682, 2.865984, 2.533649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.731556, 3.044344, 2.266285>,  <1.588680, 3.151360, 2.105866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.731556, 3.044344, 2.266285>,  <1.969682, 2.865984, 2.533649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.731556, 3.044344, 2.266285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451001, 0.873914, 0.181309,
		0.664979, -0.193517, -0.721356,
		-0.595316, 0.445899, -0.668410,
		1.552961, 3.178114, 2.065762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.459049, 3.457465, 2.330131>,  <1.969682, 2.865984, 2.533649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.459049, 3.457465, 2.330131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.096771, 3.551867, 2.189266>,  <1.879404, 3.608508, 2.104747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.096771, 3.551867, 2.189266>,  <2.459049, 3.457465, 2.330131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.096771, 3.551867, 2.189266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212626, 0.971555, 0.104260,
		0.366751, 0.019549, -0.930114,
		-0.905695, 0.236004, -0.352162,
		1.825063, 3.622668, 2.083617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.544971, 3.935649, 1.759212>,  <2.459049, 3.457465, 2.330131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.544971, 3.935649, 1.759212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.174114, 3.990095, 1.898857>,  <1.951600, 4.022763, 1.982644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.174114, 3.990095, 1.898857>,  <2.544971, 3.935649, 1.759212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.174114, 3.990095, 1.898857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184586, 0.976709, 0.109398,
		-0.326092, 0.165869, -0.930673,
		-0.927142, 0.136115, 0.349114,
		1.895972, 4.030930, 2.003591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.780487, 4.214155, 3.318728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.589958, 4.037445, 3.014635>,  <2.475641, 3.931419, 2.832179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.589958, 4.037445, 3.014635>,  <2.780487, 4.214155, 3.318728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.589958, 4.037445, 3.014635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868470, -0.101271, -0.485287,
		0.137397, -0.891392, 0.431905,
		-0.476321, -0.441774, -0.760233,
		2.447062, 3.904913, 2.786565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.078902, 4.389383, 3.323661>,  <2.780487, 4.214155, 3.318728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.078902, 4.389383, 3.323661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.824448, 4.542229, 3.055536>,  <1.671775, 4.633936, 2.894661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.824448, 4.542229, 3.055536>,  <2.078902, 4.389383, 3.323661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.824448, 4.542229, 3.055536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017576, -0.875708, -0.482522,
		-0.771376, -0.295168, 0.563786,
		-0.636136, 0.382115, -0.670312,
		1.633607, 4.656863, 2.854443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.337485, 4.057476, 3.181609>,  <2.078902, 4.389383, 3.323661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.337485, 4.057476, 3.181609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.452820, 4.214680, 2.832346>,  <1.522020, 4.309002, 2.622788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.452820, 4.214680, 2.832346>,  <1.337485, 4.057476, 3.181609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.452820, 4.214680, 2.832346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148432, -0.882519, -0.446237,
		-0.945955, 0.258271, -0.196127,
		0.288336, 0.393009, -0.873159,
		1.539321, 4.332582, 2.570398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.805233, 4.051762, 2.641385>,  <1.337485, 4.057476, 3.181609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.805233, 4.051762, 2.641385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.158821, 4.059647, 2.454535>,  <1.370974, 4.064377, 2.342424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.158821, 4.059647, 2.454535>,  <0.805233, 4.051762, 2.641385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.158821, 4.059647, 2.454535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208284, -0.877890, -0.431193,
		-0.418585, 0.478457, -0.771924,
		0.883971, 0.019712, -0.467126,
		1.424012, 4.065560, 2.314397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.614715, 4.049712, 1.891691>,  <0.805233, 4.051762, 2.641385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.614715, 4.049712, 1.891691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.979637, 3.903049, 1.964642>,  <1.198591, 3.815052, 2.008412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.979637, 3.903049, 1.964642>,  <0.614715, 4.049712, 1.891691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.979637, 3.903049, 1.964642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188183, -0.770910, -0.608510,
		0.363710, 0.520827, -0.772304,
		0.912306, -0.366656, 0.182377,
		1.253329, 3.793053, 2.019355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.768723, 3.728979, 1.247765>,  <0.614715, 4.049712, 1.891691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.768723, 3.728979, 1.247765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.032951, 3.552914, 1.491043>,  <1.191488, 3.447274, 1.637010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.032951, 3.552914, 1.491043>,  <0.768723, 3.728979, 1.247765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.032951, 3.552914, 1.491043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079348, -0.764633, -0.639563,
		0.746559, 0.470736, -0.470168,
		0.660571, -0.440164, 0.608195,
		1.231123, 3.420864, 1.673502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.295062, 3.290881, 0.802186>,  <0.768723, 3.728979, 1.247765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.295062, 3.290881, 0.802186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.281532, 3.155800, 1.178444>,  <1.273414, 3.074751, 1.404199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.281532, 3.155800, 1.178444>,  <1.295062, 3.290881, 0.802186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.281532, 3.155800, 1.178444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165874, -0.926233, -0.338494,
		0.985567, -0.167478, -0.024686,
		-0.033825, -0.337703, 0.940645,
		1.271385, 3.054489, 1.460637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.732449, 2.703964, 0.837578>,  <1.295062, 3.290881, 0.802186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.732449, 2.703964, 0.837578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.469780, 2.694347, 1.139095>,  <1.312179, 2.688578, 1.320006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.469780, 2.694347, 1.139095>,  <1.732449, 2.703964, 0.837578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.469780, 2.694347, 1.139095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285512, -0.917176, -0.277978,
		0.698043, -0.397757, 0.595420,
		-0.656672, -0.024041, 0.753793,
		1.272778, 2.687135, 1.365233>
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
