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
	<4.996655, 1.736773, 1.245617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.022697, 1.379538, 1.423674>,  <5.038323, 1.165196, 1.530508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.022697, 1.379538, 1.423674>,  <4.996655, 1.736773, 1.245617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.022697, 1.379538, 1.423674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635273, -0.381108, -0.671703,
		0.769538, -0.239055, -0.592169,
		0.065107, -0.893089, 0.445143,
		5.042230, 1.111611, 1.557216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.082304, 1.221405, 0.720097>,  <4.996655, 1.736773, 1.245617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.082304, 1.221405, 0.720097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.904671, 1.079407, 1.049160>,  <4.798090, 0.994208, 1.246598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.904671, 1.079407, 1.049160>,  <5.082304, 1.221405, 0.720097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.904671, 1.079407, 1.049160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666254, -0.483069, -0.568111,
		0.599079, -0.800388, -0.021994,
		-0.444084, -0.354997, 0.822658,
		4.771445, 0.972908, 1.295957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.144075, 0.483255, 0.774889>,  <5.082304, 1.221405, 0.720097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.144075, 0.483255, 0.774889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.804596, 0.610241, 0.944089>,  <4.600909, 0.686432, 1.045609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.804596, 0.610241, 0.944089>,  <5.144075, 0.483255, 0.774889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.804596, 0.610241, 0.944089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528297, -0.546388, -0.649894,
		0.024805, -0.775033, 0.631434,
		-0.848697, 0.317464, 0.423001,
		4.549987, 0.705480, 1.070989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.750740, -0.088441, 0.982701>,  <5.144075, 0.483255, 0.774889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.750740, -0.088441, 0.982701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.514091, 0.229004, 0.925898>,  <4.372103, 0.419471, 0.891815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.514091, 0.229004, 0.925898>,  <4.750740, -0.088441, 0.982701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.514091, 0.229004, 0.925898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579257, -0.540941, -0.609790,
		-0.560754, -0.278505, 0.779737,
		-0.591622, 0.793610, -0.142009,
		4.336605, 0.467087, 0.883295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.152272, -0.391385, 0.989123>,  <4.750740, -0.088441, 0.982701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.152272, -0.391385, 0.989123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.089069, -0.044403, 0.800420>,  <4.051148, 0.163786, 0.687198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.089069, -0.044403, 0.800420>,  <4.152272, -0.391385, 0.989123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.089069, -0.044403, 0.800420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548185, -0.474434, -0.688771,
		-0.821296, 0.149780, 0.550489,
		-0.158006, 0.867455, -0.471758,
		4.041667, 0.215834, 0.658893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.396170, -0.334523, 0.805773>,  <4.152272, -0.391385, 0.989123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.396170, -0.334523, 0.805773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.589756, -0.081226, 0.564183>,  <3.705907, 0.070751, 0.419229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.589756, -0.081226, 0.564183>,  <3.396170, -0.334523, 0.805773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.589756, -0.081226, 0.564183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396345, -0.456719, -0.796441,
		-0.780185, 0.624831, 0.029946,
		0.483964, 0.633241, -0.603974,
		3.734945, 0.108746, 0.382991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.865631, -0.220471, 0.294651>,  <3.396170, -0.334523, 0.805773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.865631, -0.220471, 0.294651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.208176, -0.103247, 0.124588>,  <3.413703, -0.032912, 0.022550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.208176, -0.103247, 0.124588>,  <2.865631, -0.220471, 0.294651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.208176, -0.103247, 0.124588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320642, -0.343595, -0.882684,
		-0.404762, 0.892221, -0.200275,
		0.856363, 0.293060, -0.425158,
		3.465084, -0.015329, -0.002959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.640633, 0.211915, -0.239889>,  <2.865631, -0.220471, 0.294651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.640633, 0.211915, -0.239889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.009083, 0.084122, -0.328847>,  <3.230153, 0.007446, -0.382222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.009083, 0.084122, -0.328847>,  <2.640633, 0.211915, -0.239889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.009083, 0.084122, -0.328847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305690, -0.239967, -0.921395,
		0.241002, 0.916704, -0.318702,
		0.921125, -0.319482, -0.222395,
		3.285420, -0.011723, -0.395566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.862434, -0.449399, 3.619488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.253349, -0.468632, 3.536932>,  <3.487898, -0.480171, 3.487398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.253349, -0.468632, 3.536932>,  <2.862434, -0.449399, 3.619488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.253349, -0.468632, 3.536932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211850, 0.246036, 0.945826,
		0.005302, -0.968067, 0.250634,
		0.977288, -0.048082, -0.206390,
		3.546536, -0.483056, 3.475015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.217159, -1.004426, 4.066123>,  <2.862434, -0.449399, 3.619488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.217159, -1.004426, 4.066123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.443626, -0.706532, 3.924801>,  <3.579507, -0.527795, 3.840008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.443626, -0.706532, 3.924801>,  <3.217159, -1.004426, 4.066123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.443626, -0.706532, 3.924801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134032, 0.339736, 0.930921,
		0.813320, -0.574412, 0.092530,
		0.566168, 0.744735, -0.353304,
		3.613477, -0.483111, 3.818810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.858323, -0.879392, 4.309940>,  <3.217159, -1.004426, 4.066123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.858323, -0.879392, 4.309940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.743370, -0.520691, 4.175331>,  <3.674398, -0.305470, 4.094565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.743370, -0.520691, 4.175331>,  <3.858323, -0.879392, 4.309940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.743370, -0.520691, 4.175331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274847, 0.413776, 0.867899,
		0.917535, 0.156926, -0.365381,
		-0.287382, 0.896752, -0.336523,
		3.657156, -0.251665, 4.074374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.393430, -0.409497, 4.187346>,  <3.858323, -0.879392, 4.309940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.393430, -0.409497, 4.187346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.056664, -0.226040, 4.301064>,  <3.854604, -0.115966, 4.369294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.056664, -0.226040, 4.301064>,  <4.393430, -0.409497, 4.187346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.056664, -0.226040, 4.301064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487030, 0.419021, 0.766305,
		0.232335, 0.783625, -0.576154,
		-0.841916, 0.458643, 0.284295,
		3.804089, -0.088447, 4.386352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.490680, 0.338141, 4.328416>,  <4.393430, -0.409497, 4.187346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.490680, 0.338141, 4.328416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.168022, 0.249882, 4.547739>,  <3.974428, 0.196926, 4.679333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.168022, 0.249882, 4.547739>,  <4.490680, 0.338141, 4.328416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.168022, 0.249882, 4.547739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376213, 0.523808, 0.764257,
		-0.455839, 0.822764, -0.339516,
		-0.806644, -0.220647, 0.548307,
		3.926029, 0.183688, 4.712231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.230042, 0.997145, 4.601802>,  <4.490680, 0.338141, 4.328416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.230042, 0.997145, 4.601802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.078392, 0.712318, 4.838184>,  <3.987402, 0.541423, 4.980013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.078392, 0.712318, 4.838184>,  <4.230042, 0.997145, 4.601802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.078392, 0.712318, 4.838184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366536, 0.470833, 0.802476,
		-0.849656, 0.520845, 0.082493,
		-0.379125, -0.712065, 0.590955,
		3.964655, 0.498699, 5.015471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.855014, 1.319420, 5.054684>,  <4.230042, 0.997145, 4.601802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.855014, 1.319420, 5.054684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.918060, 0.970715, 5.240236>,  <3.955888, 0.761491, 5.351568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.918060, 0.970715, 5.240236>,  <3.855014, 1.319420, 5.054684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.918060, 0.970715, 5.240236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408303, 0.485248, 0.773190,
		-0.899136, 0.067538, 0.432426,
		0.157615, -0.871764, 0.463880,
		3.965345, 0.709185, 5.379400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.533389, 1.430374, 5.686667>,  <3.855014, 1.319420, 5.054684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.533389, 1.430374, 5.686667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.799797, 1.135189, 5.730171>,  <3.959642, 0.958078, 5.756274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.799797, 1.135189, 5.730171>,  <3.533389, 1.430374, 5.686667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.799797, 1.135189, 5.730171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336622, 0.427459, 0.839026,
		-0.665661, -0.522196, 0.533111,
		0.666019, -0.737963, 0.108760,
		3.999603, 0.913800, 5.762799>
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
