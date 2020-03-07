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
	<1.580647, 2.077792, 2.878345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.536278, 2.409378, 2.659069>,  <1.509656, 2.608330, 2.527503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.536278, 2.409378, 2.659069>,  <1.580647, 2.077792, 2.878345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.536278, 2.409378, 2.659069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096317, -0.557964, -0.824257,
		-0.989151, -0.038630, 0.141735,
		-0.110924, 0.828965, -0.548190,
		1.503000, 2.658068, 2.494612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.035745, 2.007018, 2.344887>,  <1.580647, 2.077792, 2.878345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.035745, 2.007018, 2.344887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.314728, 2.270378, 2.231705>,  <1.482117, 2.428394, 2.163795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.314728, 2.270378, 2.231705>,  <1.035745, 2.007018, 2.344887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.314728, 2.270378, 2.231705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055506, -0.443291, -0.894658,
		-0.714475, 0.608279, -0.345721,
		0.697456, 0.658400, -0.282957,
		1.523965, 2.467898, 2.146818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.810940, 2.277587, 1.781716>,  <1.035745, 2.007018, 2.344887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.810940, 2.277587, 1.781716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.208405, 2.320251, 1.767529>,  <1.446884, 2.345850, 1.759016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.208405, 2.320251, 1.767529>,  <0.810940, 2.277587, 1.781716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.208405, 2.320251, 1.767529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015008, -0.186837, -0.982276,
		-0.111399, 0.976583, -0.184052,
		0.993662, 0.106662, -0.035470,
		1.506503, 2.352250, 1.756888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.892736, 2.841189, 1.326159>,  <0.810940, 2.277587, 1.781716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.892736, 2.841189, 1.326159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.214561, 2.605293, 1.354111>,  <1.407657, 2.463756, 1.370882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.214561, 2.605293, 1.354111>,  <0.892736, 2.841189, 1.326159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.214561, 2.605293, 1.354111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079062, -0.222991, -0.971609,
		0.588580, 0.776197, -0.226037,
		0.804564, -0.589740, 0.069880,
		1.455931, 2.428371, 1.375075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.318640, 3.023566, 0.818210>,  <0.892736, 2.841189, 1.326159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.318640, 3.023566, 0.818210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.380394, 2.639397, 0.910946>,  <1.417446, 2.408895, 0.966587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.380394, 2.639397, 0.910946>,  <1.318640, 3.023566, 0.818210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.380394, 2.639397, 0.910946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243700, -0.264420, -0.933109,
		0.957484, 0.087558, -0.274877,
		0.154384, -0.960425, 0.231840,
		1.426709, 2.351269, 0.980498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.657266, 2.644197, 0.262040>,  <1.318640, 3.023566, 0.818210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.657266, 2.644197, 0.262040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.562164, 2.301682, 0.445450>,  <1.505103, 2.096172, 0.555496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.562164, 2.301682, 0.445450>,  <1.657266, 2.644197, 0.262040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.562164, 2.301682, 0.445450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015393, -0.475322, -0.879677,
		0.971204, -0.202088, 0.126190,
		-0.237754, -0.856288, 0.458524,
		1.490838, 2.044795, 0.583007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.187502, 2.060923, 0.170501>,  <1.657266, 2.644197, 0.262040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.187502, 2.060923, 0.170501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.842621, 1.880173, 0.262077>,  <1.635692, 1.771723, 0.317023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.842621, 1.880173, 0.262077>,  <2.187502, 2.060923, 0.170501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.842621, 1.880173, 0.262077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018105, -0.479151, -0.877546,
		0.506238, -0.752478, 0.421307,
		-0.862203, -0.451875, 0.228941,
		1.583960, 1.744610, 0.330760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.232490, 1.401574, 0.051419>,  <2.187502, 2.060923, 0.170501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.232490, 1.401574, 0.051419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.835320, 1.442818, 0.027863>,  <1.597017, 1.467564, 0.013729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.835320, 1.442818, 0.027863>,  <2.232490, 1.401574, 0.051419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.835320, 1.442818, 0.027863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005806, -0.537520, -0.843231,
		-0.118599, -0.836924, 0.534316,
		-0.992926, 0.103108, -0.058890,
		1.537442, 1.473750, 0.010195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.206882, 1.536864, -1.591442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.173595, 1.192924, -1.389954>,  <1.153624, 0.986561, -1.269060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.173595, 1.192924, -1.389954>,  <1.206882, 1.536864, -1.591442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.173595, 1.192924, -1.389954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128987, 0.510516, 0.850138,
		-0.988148, 0.005772, -0.153393,
		-0.083216, -0.859849, 0.503722,
		1.148631, 0.934970, -1.238837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.597202, 1.511808, -1.222211>,  <1.206882, 1.536864, -1.591442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.597202, 1.511808, -1.222211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.854771, 1.304665, -0.996933>,  <1.009312, 1.180379, -0.861766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.854771, 1.304665, -0.996933>,  <0.597202, 1.511808, -1.222211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.854771, 1.304665, -0.996933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268167, 0.536651, 0.800058,
		-0.716555, -0.666204, 0.206688,
		0.643921, -0.517859, 0.563194,
		1.047947, 1.149307, -0.827975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.402425, 1.553409, -0.579309>,  <0.597202, 1.511808, -1.222211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.402425, 1.553409, -0.579309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.727444, 1.366814, -0.439507>,  <0.922455, 1.254857, -0.355625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.727444, 1.366814, -0.439507>,  <0.402425, 1.553409, -0.579309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.727444, 1.366814, -0.439507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076440, 0.509151, 0.857276,
		-0.577861, -0.723294, 0.378051,
		0.812548, -0.466488, 0.349507,
		0.971208, 1.226867, -0.334654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.254160, 1.326803, 0.079232>,  <0.402425, 1.553409, -0.579309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.254160, 1.326803, 0.079232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.653458, 1.349007, 0.070938>,  <0.893036, 1.362329, 0.065962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.653458, 1.349007, 0.070938>,  <0.254160, 1.326803, 0.079232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.653458, 1.349007, 0.070938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006175, 0.445486, 0.895268,
		0.058932, -0.893566, 0.445046,
		0.998243, 0.055508, -0.020735,
		0.952931, 1.365659, 0.064717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.435956, 1.198128, 0.700022>,  <0.254160, 1.326803, 0.079232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.435956, 1.198128, 0.700022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.780766, 1.360909, 0.579155>,  <0.987651, 1.458577, 0.506635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.780766, 1.360909, 0.579155>,  <0.435956, 1.198128, 0.700022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.780766, 1.360909, 0.579155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127955, 0.402124, 0.906600,
		0.490454, -0.820173, 0.294569,
		0.862022, 0.406954, -0.302168,
		1.039373, 1.482994, 0.488505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.885009, 1.020279, 1.180134>,  <0.435956, 1.198128, 0.700022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.885009, 1.020279, 1.180134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.065014, 1.333702, 1.008774>,  <1.173017, 1.521756, 0.905958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.065014, 1.333702, 1.008774>,  <0.885009, 1.020279, 1.180134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.065014, 1.333702, 1.008774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197434, 0.380553, 0.903437,
		0.870925, -0.491138, 0.016552,
		0.450011, 0.783558, -0.428401,
		1.200017, 1.568769, 0.880254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.582553, 1.103791, 1.450900>,  <0.885009, 1.020279, 1.180134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.582553, 1.103791, 1.450900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.483635, 1.462265, 1.303551>,  <1.424284, 1.677349, 1.215141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.483635, 1.462265, 1.303551>,  <1.582553, 1.103791, 1.450900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.483635, 1.462265, 1.303551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217674, 0.421847, 0.880149,
		0.944173, 0.137472, -0.299397,
		-0.247296, 0.896184, -0.368373,
		1.409446, 1.731120, 1.193039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.097672, 1.595230, 1.738773>,  <1.582553, 1.103791, 1.450900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.097672, 1.595230, 1.738773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.754292, 1.786469, 1.664490>,  <1.548264, 1.901212, 1.619920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.754292, 1.786469, 1.664490>,  <2.097672, 1.595230, 1.738773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.754292, 1.786469, 1.664490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117956, 0.536402, 0.835679,
		0.499149, 0.695483, -0.516869,
		-0.858450, 0.478096, -0.185708,
		1.496757, 1.929897, 1.608777>
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
