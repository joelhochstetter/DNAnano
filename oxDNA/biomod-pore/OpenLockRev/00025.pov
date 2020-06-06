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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 92.5046, 58.4545>
	look_at <35, 26.874, 46.4577>
	direction <0, -65.6306, -11.9968>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 92.5046, 58.4545>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<40.295235, 34.075916, 49.087868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.215054, 33.727448, 49.267151>,  <40.166946, 33.518368, 49.374722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.215054, 33.727448, 49.267151>,  <40.295235, 34.075916, 49.087868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215054, 33.727448, 49.267151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678396, 0.206638, 0.705038,
		-0.706822, 0.445386, 0.549576,
		-0.200451, -0.871167, 0.448204,
		40.154919, 33.466099, 49.401611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333084, 34.142334, 49.896172>,  <40.295235, 34.075916, 49.087868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333084, 34.142334, 49.896172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437805, 33.765377, 49.812889>,  <40.500637, 33.539204, 49.762920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437805, 33.765377, 49.812889>,  <40.333084, 34.142334, 49.896172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437805, 33.765377, 49.812889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737874, 0.056392, 0.672578,
		-0.622092, -0.329718, 0.710132,
		0.261806, -0.942394, -0.208209,
		40.516346, 33.482658, 49.750427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555641, 33.920143, 50.479233>,  <40.333084, 34.142334, 49.896172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555641, 33.920143, 50.479233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708641, 33.642189, 50.235649>,  <40.800442, 33.475418, 50.089500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708641, 33.642189, 50.235649>,  <40.555641, 33.920143, 50.479233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708641, 33.642189, 50.235649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830561, -0.030157, 0.556111,
		-0.404797, -0.718489, 0.565609,
		0.382503, -0.694884, -0.608956,
		40.823391, 33.433723, 50.052963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751659, 33.261585, 50.913418>,  <40.555641, 33.920143, 50.479233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751659, 33.261585, 50.913418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.985092, 33.249496, 50.588821>,  <41.125153, 33.242245, 50.394062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.985092, 33.249496, 50.588821>,  <40.751659, 33.261585, 50.913418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.985092, 33.249496, 50.588821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805215, -0.107866, 0.583090,
		-0.105149, -0.993706, -0.038622,
		0.583586, -0.030212, -0.811489,
		41.160168, 33.240429, 50.345375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221630, 32.848957, 51.098976>,  <40.751659, 33.261585, 50.913418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221630, 32.848957, 51.098976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391083, 32.989346, 50.764946>,  <41.492756, 33.073578, 50.564526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391083, 32.989346, 50.764946>,  <41.221630, 32.848957, 51.098976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.391083, 32.989346, 50.764946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904693, -0.210203, 0.370601,
		-0.045465, -0.912487, -0.406571,
		0.423631, 0.350973, -0.835077,
		41.518173, 33.094639, 50.514423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915665, 32.376614, 50.937447>,  <41.221630, 32.848957, 51.098976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.915665, 32.376614, 50.937447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.955757, 32.723812, 50.742908>,  <41.979813, 32.932133, 50.626186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.955757, 32.723812, 50.742908>,  <41.915665, 32.376614, 50.937447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.955757, 32.723812, 50.742908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965828, 0.032549, 0.257132,
		0.239020, -0.495500, -0.835075,
		0.100228, 0.867998, -0.486347,
		41.985825, 32.984211, 50.597004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547890, 32.282864, 50.554852>,  <41.915665, 32.376614, 50.937447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547890, 32.282864, 50.554852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.487625, 32.678165, 50.565105>,  <42.451466, 32.915344, 50.571259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.487625, 32.678165, 50.565105>,  <42.547890, 32.282864, 50.554852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.487625, 32.678165, 50.565105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987935, 0.149574, 0.040150,
		0.035845, 0.031370, -0.998865,
		-0.150664, 0.988253, 0.025630,
		42.442425, 32.974640, 50.572796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185272, 32.545937, 50.385788>,  <42.547890, 32.282864, 50.554852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.185272, 32.545937, 50.385788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005566, 32.849190, 50.574848>,  <42.897743, 33.031143, 50.688286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005566, 32.849190, 50.574848>,  <43.185272, 32.545937, 50.385788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.005566, 32.849190, 50.574848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891247, 0.343623, 0.295976,
		0.061975, 0.554220, -0.830060,
		-0.449264, 0.758131, 0.472651,
		42.870785, 33.076630, 50.716644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.697449, 33.118042, 50.398869>,  <43.185272, 32.545937, 50.385788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.697449, 33.118042, 50.398869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.429253, 33.199444, 50.684254>,  <43.268337, 33.248283, 50.855484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.429253, 33.199444, 50.684254>,  <43.697449, 33.118042, 50.398869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.429253, 33.199444, 50.684254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727622, 0.368252, 0.578754,
		-0.144959, 0.907181, -0.394980,
		-0.670487, 0.203501, 0.713466,
		43.228107, 33.260494, 50.898293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.656071, 33.815609, 50.377136>,  <43.697449, 33.118042, 50.398869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.656071, 33.815609, 50.377136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.531075, 33.693279, 50.736874>,  <43.456078, 33.619881, 50.952717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.531075, 33.693279, 50.736874>,  <43.656071, 33.815609, 50.377136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.531075, 33.693279, 50.736874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863225, 0.303734, 0.403223,
		-0.396478, 0.902339, 0.169084,
		-0.312487, -0.305827, 0.899345,
		43.437328, 33.601532, 51.006676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.816269, 34.419388, 50.809120>,  <43.656071, 33.815609, 50.377136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.816269, 34.419388, 50.809120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.790070, 34.116409, 51.068958>,  <43.774349, 33.934620, 51.224861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.790070, 34.116409, 51.068958>,  <43.816269, 34.419388, 50.809120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.790070, 34.116409, 51.068958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740272, 0.399641, 0.540633,
		-0.669109, 0.516291, 0.534543,
		-0.065499, -0.757450, 0.649599,
		43.770420, 33.889175, 51.263840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.998135, 34.754192, 51.401497>,  <43.816269, 34.419388, 50.809120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.998135, 34.754192, 51.401497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.062077, 34.368313, 51.485210>,  <44.100441, 34.136784, 51.535439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.062077, 34.368313, 51.485210>,  <43.998135, 34.754192, 51.401497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.062077, 34.368313, 51.485210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754764, 0.256092, 0.603944,
		-0.636221, 0.061418, 0.769058,
		0.159857, -0.964699, 0.209287,
		44.110035, 34.078903, 51.547997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.155186, 34.711460, 52.082478>,  <43.998135, 34.754192, 51.401497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.155186, 34.711460, 52.082478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.295685, 34.355145, 51.967159>,  <44.379986, 34.141354, 51.897968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.295685, 34.355145, 51.967159>,  <44.155186, 34.711460, 52.082478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.295685, 34.355145, 51.967159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748265, 0.081990, 0.658314,
		-0.562781, -0.446957, 0.695346,
		0.351250, -0.890790, -0.288300,
		44.401058, 34.087906, 51.880669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.395283, 34.317066, 52.692875>,  <44.155186, 34.711460, 52.082478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.395283, 34.317066, 52.692875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.600529, 34.200756, 52.369846>,  <44.723675, 34.130970, 52.176029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.600529, 34.200756, 52.369846>,  <44.395283, 34.317066, 52.692875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.600529, 34.200756, 52.369846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840811, -0.018798, 0.541002,
		-0.172489, -0.956607, 0.234841,
		0.513112, -0.290774, -0.807568,
		44.754463, 34.113525, 52.127575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.976475, 33.817951, 52.991810>,  <44.395283, 34.317066, 52.692875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.976475, 33.817951, 52.991810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.083115, 33.909096, 52.617214>,  <45.147099, 33.963783, 52.392456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.083115, 33.909096, 52.617214>,  <44.976475, 33.817951, 52.991810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.083115, 33.909096, 52.617214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961815, -0.125351, 0.243307,
		-0.061950, -0.965592, -0.252576,
		0.266596, 0.227859, -0.936486,
		45.163094, 33.977455, 52.336269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.386822, 33.249714, 52.704227>,  <44.976475, 33.817951, 52.991810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.386822, 33.249714, 52.704227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.478313, 33.582111, 52.501392>,  <45.533207, 33.781551, 52.379692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.478313, 33.582111, 52.501392>,  <45.386822, 33.249714, 52.704227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.478313, 33.582111, 52.501392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955789, -0.092813, 0.279021,
		0.184801, -0.548486, -0.815483,
		0.228727, 0.830993, -0.507085,
		45.546932, 33.831409, 52.349266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.010677, 33.107578, 52.368572>,  <45.386822, 33.249714, 52.704227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.010677, 33.107578, 52.368572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.009819, 33.507175, 52.350647>,  <46.009304, 33.746933, 52.339893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.009819, 33.507175, 52.350647>,  <46.010677, 33.107578, 52.368572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.009819, 33.507175, 52.350647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975392, 0.011973, 0.220151,
		0.220466, -0.043233, -0.974436,
		-0.002149, 0.998993, -0.044809,
		46.009174, 33.806873, 52.337204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.682041, 33.187622, 52.413944>,  <46.010677, 33.107578, 52.368572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.682041, 33.187622, 52.413944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.582905, 33.574638, 52.394203>,  <46.523422, 33.806850, 52.382359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.582905, 33.574638, 52.394203>,  <46.682041, 33.187622, 52.413944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.582905, 33.574638, 52.394203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964732, 0.251141, 0.078867,
		0.088702, -0.028067, -0.995663,
		-0.247839, 0.967543, -0.049354,
		46.508553, 33.864902, 52.379398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.067657, 33.604580, 51.834824>,  <46.682041, 33.187622, 52.413944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.067657, 33.604580, 51.834824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.965427, 33.849426, 52.134155>,  <46.904087, 33.996334, 52.313755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.965427, 33.849426, 52.134155>,  <47.067657, 33.604580, 51.834824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.965427, 33.849426, 52.134155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943318, 0.327406, 0.054365,
		-0.211731, 0.719809, -0.661094,
		-0.255579, 0.612111, 0.748331,
		46.888752, 34.033058, 52.358654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.507389, 34.240612, 51.600353>,  <47.067657, 33.604580, 51.834824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.507389, 34.240612, 51.600353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.379543, 34.325066, 51.969845>,  <47.302834, 34.375736, 52.191540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.379543, 34.325066, 51.969845>,  <47.507389, 34.240612, 51.600353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.379543, 34.325066, 51.969845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865085, 0.462779, 0.193553,
		-0.386616, 0.860964, -0.330560,
		-0.319618, 0.211132, 0.923725,
		47.283657, 34.388405, 52.246964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.633736, 35.005981, 51.622040>,  <47.507389, 34.240612, 51.600353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.633736, 35.005981, 51.622040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.648071, 34.799812, 51.964516>,  <47.656673, 34.676113, 52.170002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.648071, 34.799812, 51.964516>,  <47.633736, 35.005981, 51.622040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.648071, 34.799812, 51.964516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819311, 0.505718, 0.270144,
		-0.572228, 0.691804, 0.440411,
		0.035837, -0.515418, 0.856189,
		47.658821, 34.645187, 52.221371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.582069, 35.385559, 52.202595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.546139, 35.042065, 52.000805>,  <24.524580, 34.835968, 51.879730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.546139, 35.042065, 52.000805>,  <24.582069, 35.385559, 52.202595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.546139, 35.042065, 52.000805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920127, 0.122304, -0.372032,
		0.381178, -0.497600, 0.779165,
		-0.089828, -0.858741, -0.504475,
		24.519190, 34.784443, 51.849461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.036226, 34.931515, 52.528236>,  <24.582069, 35.385559, 52.202595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.036226, 34.931515, 52.528236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.997787, 34.812740, 52.148216>,  <24.974724, 34.741478, 51.920204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.997787, 34.812740, 52.148216>,  <25.036226, 34.931515, 52.528236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.997787, 34.812740, 52.148216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994679, -0.064273, -0.080523,
		-0.037153, -0.952733, 0.301529,
		-0.096098, -0.296933, -0.950051,
		24.968958, 34.723660, 51.863201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.512325, 34.287186, 52.431839>,  <25.036226, 34.931515, 52.528236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.512325, 34.287186, 52.431839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.452532, 34.435558, 52.065220>,  <25.416656, 34.524582, 51.845249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.452532, 34.435558, 52.065220>,  <25.512325, 34.287186, 52.431839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.452532, 34.435558, 52.065220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975356, -0.096819, -0.198256,
		-0.162280, -0.923598, -0.347320,
		-0.149482, 0.370934, -0.916550,
		25.407686, 34.546837, 51.790257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.918999, 33.925026, 52.036766>,  <25.512325, 34.287186, 52.431839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.918999, 33.925026, 52.036766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.844517, 34.252060, 51.818821>,  <25.799828, 34.448280, 51.688053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.844517, 34.252060, 51.818821>,  <25.918999, 33.925026, 52.036766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.844517, 34.252060, 51.818821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960856, 0.035744, -0.274732,
		-0.205142, -0.574691, -0.792242,
		-0.186203, 0.817590, -0.544863,
		25.788656, 34.497337, 51.655361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.216921, 33.727558, 51.490540>,  <25.918999, 33.925026, 52.036766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.216921, 33.727558, 51.490540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.180456, 34.122360, 51.437614>,  <26.158577, 34.359241, 51.405857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.180456, 34.122360, 51.437614>,  <26.216921, 33.727558, 51.490540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.180456, 34.122360, 51.437614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846008, 0.006668, -0.533129,
		-0.525320, -0.160541, -0.835623,
		-0.091161, 0.987007, -0.132316,
		26.153109, 34.418461, 51.397919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.240641, 33.854687, 50.794048>,  <26.216921, 33.727558, 51.490540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.240641, 33.854687, 50.794048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.350945, 34.195515, 50.972012>,  <26.417126, 34.400009, 51.078789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.350945, 34.195515, 50.972012>,  <26.240641, 33.854687, 50.794048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.350945, 34.195515, 50.972012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867814, -0.021651, -0.496418,
		-0.413349, 0.522985, -0.745405,
		0.275758, 0.852067, 0.444904,
		26.433672, 34.451134, 51.105484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.555172, 34.433750, 50.265972>,  <26.240641, 33.854687, 50.794048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.555172, 34.433750, 50.265972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.674948, 34.539299, 50.632732>,  <26.746813, 34.602631, 50.852787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.674948, 34.539299, 50.632732>,  <26.555172, 34.433750, 50.265972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.674948, 34.539299, 50.632732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885579, 0.280782, -0.370015,
		-0.355087, 0.922784, -0.149607,
		0.299437, 0.263876, 0.916901,
		26.764778, 34.618462, 50.907803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.983700, 34.983124, 50.098946>,  <26.555172, 34.433750, 50.265972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.983700, 34.983124, 50.098946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.071268, 34.871391, 50.472908>,  <27.123810, 34.804352, 50.697285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.071268, 34.871391, 50.472908>,  <26.983700, 34.983124, 50.098946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.071268, 34.871391, 50.472908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974793, 0.020361, -0.222178,
		0.043026, 0.959979, 0.276749,
		0.218922, -0.279333, 0.934905,
		27.136944, 34.787590, 50.753380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.596180, 35.427456, 50.233959>,  <26.983700, 34.983124, 50.098946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.596180, 35.427456, 50.233959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.593700, 35.143162, 50.515335>,  <27.592213, 34.972588, 50.684158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.593700, 35.143162, 50.515335>,  <27.596180, 35.427456, 50.233959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.593700, 35.143162, 50.515335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996436, 0.054786, 0.064137,
		-0.084122, 0.701327, 0.707859,
		-0.006200, -0.710732, 0.703436,
		27.591841, 34.929943, 50.726364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.972490, 35.695065, 50.806072>,  <27.596180, 35.427456, 50.233959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.972490, 35.695065, 50.806072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.978806, 35.295170, 50.799393>,  <27.982594, 35.055233, 50.795383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.978806, 35.295170, 50.799393>,  <27.972490, 35.695065, 50.806072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.978806, 35.295170, 50.799393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997907, 0.014705, 0.062974,
		-0.062712, -0.017659, 0.997876,
		0.015786, -0.999736, -0.016699,
		27.983541, 34.995251, 50.794384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474037, 35.641357, 51.182335>,  <27.972490, 35.695065, 50.806072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.474037, 35.641357, 51.182335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.450741, 35.282696, 51.006779>,  <28.436764, 35.067501, 50.901443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.450741, 35.282696, 51.006779>,  <28.474037, 35.641357, 51.182335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.450741, 35.282696, 51.006779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989655, -0.109599, 0.092585,
		-0.131118, -0.428957, 0.893758,
		-0.058240, -0.896652, -0.438889,
		28.433270, 35.013699, 50.875111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.840717, 35.225124, 51.612411>,  <28.474037, 35.641357, 51.182335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.840717, 35.225124, 51.612411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.821833, 35.048130, 51.254200>,  <28.810503, 34.941933, 51.039272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.821833, 35.048130, 51.254200>,  <28.840717, 35.225124, 51.612411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.821833, 35.048130, 51.254200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996454, -0.083374, -0.011334,
		-0.069649, -0.892889, 0.444857,
		-0.047210, -0.442490, -0.895530,
		28.807671, 34.915382, 50.985542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.247225, 34.642956, 51.619228>,  <28.840717, 35.225124, 51.612411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.247225, 34.642956, 51.619228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.235319, 34.748436, 51.233570>,  <29.228176, 34.811726, 51.002174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.235319, 34.748436, 51.233570>,  <29.247225, 34.642956, 51.619228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.235319, 34.748436, 51.233570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997874, -0.048113, -0.043963,
		-0.057981, -0.963403, -0.261710,
		-0.029763, 0.263703, -0.964145,
		29.226391, 34.827545, 50.944328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.767107, 34.120625, 51.426823>,  <29.247225, 34.642956, 51.619228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.767107, 34.120625, 51.426823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.718884, 34.392853, 51.137745>,  <29.689949, 34.556190, 50.964298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.718884, 34.392853, 51.137745>,  <29.767107, 34.120625, 51.426823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.718884, 34.392853, 51.137745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986049, -0.002071, -0.166442,
		-0.114773, -0.732677, -0.670829,
		-0.120560, 0.680573, -0.722693,
		29.682716, 34.597023, 50.920937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346973, 33.998753, 51.015121>,  <29.767107, 34.120625, 51.426823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346973, 33.998753, 51.015121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.230246, 34.359684, 50.888229>,  <30.160208, 34.576244, 50.812092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.230246, 34.359684, 50.888229>,  <30.346973, 33.998753, 51.015121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.230246, 34.359684, 50.888229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955118, 0.257266, -0.146848,
		-0.050893, -0.345847, -0.936910,
		-0.291822, 0.902333, -0.317232,
		30.142698, 34.630383, 50.793060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.706936, 34.174271, 50.337219>,  <30.346973, 33.998753, 51.015121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.706936, 34.174271, 50.337219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.581694, 34.527058, 50.478130>,  <30.506548, 34.738731, 50.562675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.581694, 34.527058, 50.478130>,  <30.706936, 34.174271, 50.337219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.581694, 34.527058, 50.478130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885383, 0.405270, -0.227715,
		-0.343604, 0.240601, -0.907771,
		-0.313104, 0.881968, 0.352277,
		30.487762, 34.791649, 50.583813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826714, 34.568279, 49.804668>,  <30.706936, 34.174271, 50.337219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826714, 34.568279, 49.804668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.822842, 34.748810, 50.161591>,  <30.820518, 34.857128, 50.375744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.822842, 34.748810, 50.161591>,  <30.826714, 34.568279, 49.804668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.822842, 34.748810, 50.161591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885228, 0.418880, -0.202263,
		-0.465056, 0.787938, -0.403578,
		-0.009680, 0.451323, 0.892308,
		30.819937, 34.884205, 50.429283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.091932, 35.247059, 49.651890>,  <30.826714, 34.568279, 49.804668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.091932, 35.247059, 49.651890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.121244, 35.202042, 50.048267>,  <31.138832, 35.175030, 50.286095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.121244, 35.202042, 50.048267>,  <31.091932, 35.247059, 49.651890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121244, 35.202042, 50.048267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994951, 0.076577, -0.064879,
		-0.068581, 0.990691, 0.117589,
		0.073279, -0.112545, 0.990941,
		31.143229, 35.168278, 50.345551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600264, 35.807800, 49.821476>,  <31.091932, 35.247059, 49.651890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600264, 35.807800, 49.821476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.564777, 35.541721, 50.118027>,  <31.543486, 35.382072, 50.295956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.564777, 35.541721, 50.118027>,  <31.600264, 35.807800, 49.821476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564777, 35.541721, 50.118027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993971, -0.107266, 0.022695,
		0.064427, 0.738918, 0.670708,
		-0.088714, -0.665202, 0.741375,
		31.538164, 35.342159, 50.340439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110630, 36.028759, 50.359982>,  <31.600264, 35.807800, 49.821476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110630, 36.028759, 50.359982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.018398, 35.643551, 50.415737>,  <31.963060, 35.412426, 50.449192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.018398, 35.643551, 50.415737>,  <32.110630, 36.028759, 50.359982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018398, 35.643551, 50.415737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966885, -0.210648, 0.144084,
		-0.109392, 0.168000, 0.979699,
		-0.230578, -0.963018, 0.139393,
		31.949224, 35.354645, 50.457554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449322, 35.898487, 50.965549>,  <32.110630, 36.028759, 50.359982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449322, 35.898487, 50.965549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.394199, 35.554279, 50.769382>,  <32.361126, 35.347755, 50.651680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.394199, 35.554279, 50.769382>,  <32.449322, 35.898487, 50.965549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394199, 35.554279, 50.769382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989048, -0.145981, -0.021767,
		-0.052861, -0.488048, 0.871215,
		-0.137804, -0.860523, -0.490419,
		32.352859, 35.296124, 50.622257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.242599, 34.532772, 34.782234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.420830, 34.855423, 34.937572>,  <24.527769, 35.049015, 35.030777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.420830, 34.855423, 34.937572>,  <24.242599, 34.532772, 34.782234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.420830, 34.855423, 34.937572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608803, -0.591061, 0.529155,
		0.656369, 0.000648, -0.754440,
		0.445577, 0.806626, 0.388349,
		24.554502, 35.097412, 35.054077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.905291, 34.383095, 34.755032>,  <24.242599, 34.532772, 34.782234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.905291, 34.383095, 34.755032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.853476, 34.630733, 35.064854>,  <24.822386, 34.779316, 35.250748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.853476, 34.630733, 35.064854>,  <24.905291, 34.383095, 34.755032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.853476, 34.630733, 35.064854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692295, -0.502768, 0.517640,
		0.709892, 0.603277, -0.363470,
		-0.129540, 0.619097, 0.774557,
		24.814613, 34.816463, 35.297222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.474289, 34.266579, 35.121445>,  <24.905291, 34.383095, 34.755032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.474289, 34.266579, 35.121445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.267752, 34.423725, 35.425823>,  <25.143829, 34.518013, 35.608452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.267752, 34.423725, 35.425823>,  <25.474289, 34.266579, 35.121445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.267752, 34.423725, 35.425823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674609, -0.360759, 0.644015,
		0.527533, 0.845876, -0.078757,
		-0.516345, 0.392869, 0.760948,
		25.112848, 34.541584, 35.654106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.909214, 34.694992, 35.516312>,  <25.474289, 34.266579, 35.121445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.909214, 34.694992, 35.516312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.619158, 34.504719, 35.715469>,  <25.445124, 34.390556, 35.834965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.619158, 34.504719, 35.715469>,  <25.909214, 34.694992, 35.516312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.619158, 34.504719, 35.715469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677447, -0.363211, 0.639643,
		-0.123427, 0.801127, 0.585629,
		-0.725142, -0.475682, 0.497891,
		25.401615, 34.362015, 35.864838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.050285, 34.754681, 36.185879>,  <25.909214, 34.694992, 35.516312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.050285, 34.754681, 36.185879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.824211, 34.426556, 36.150883>,  <25.688566, 34.229679, 36.129883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.824211, 34.426556, 36.150883>,  <26.050285, 34.754681, 36.185879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.824211, 34.426556, 36.150883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580538, -0.470836, 0.664296,
		-0.586125, 0.324656, 0.742331,
		-0.565184, -0.820312, -0.087494,
		25.654655, 34.180462, 36.124634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.986500, 34.347313, 36.900009>,  <26.050285, 34.754681, 36.185879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.986500, 34.347313, 36.900009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.003311, 34.102535, 36.584095>,  <26.013397, 33.955669, 36.394547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.003311, 34.102535, 36.584095>,  <25.986500, 34.347313, 36.900009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.003311, 34.102535, 36.584095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661181, -0.575599, 0.481172,
		-0.749049, -0.542412, 0.380415,
		0.042027, -0.611944, -0.789783,
		26.015919, 33.918953, 36.347160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.971096, 33.619057, 37.100296>,  <25.986500, 34.347313, 36.900009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.971096, 33.619057, 37.100296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.205751, 33.649162, 36.777760>,  <26.346544, 33.667225, 36.584236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.205751, 33.649162, 36.777760>,  <25.971096, 33.619057, 37.100296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.205751, 33.649162, 36.777760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652040, -0.634416, 0.415163,
		-0.480313, -0.769319, -0.421245,
		0.586637, 0.075261, -0.806345,
		26.381742, 33.671741, 36.535854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.165964, 32.930084, 36.835934>,  <25.971096, 33.619057, 37.100296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.165964, 32.930084, 36.835934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.454464, 33.203037, 36.788353>,  <26.627563, 33.366810, 36.759804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.454464, 33.203037, 36.788353>,  <26.165964, 32.930084, 36.835934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.454464, 33.203037, 36.788353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582645, -0.504794, 0.636952,
		0.374602, -0.528707, -0.761671,
		0.721248, 0.682387, -0.118952,
		26.670839, 33.407753, 36.752666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.756180, 32.640179, 36.802162>,  <26.165964, 32.930084, 36.835934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.756180, 32.640179, 36.802162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.864141, 32.997482, 36.945965>,  <26.928919, 33.211864, 37.032246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.864141, 32.997482, 36.945965>,  <26.756180, 32.640179, 36.802162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.864141, 32.997482, 36.945965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546929, -0.449509, 0.706265,
		0.792477, 0.006002, -0.609872,
		0.269904, 0.893256, 0.359508,
		26.945112, 33.265457, 37.053818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.309122, 32.392395, 37.169239>,  <26.756180, 32.640179, 36.802162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.309122, 32.392395, 37.169239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.267096, 32.770744, 37.292065>,  <27.241880, 32.997753, 37.365761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.267096, 32.770744, 37.292065>,  <27.309122, 32.392395, 37.169239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.267096, 32.770744, 37.292065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395733, -0.243509, 0.885493,
		0.912336, 0.214551, -0.348728,
		-0.105065, 0.945871, 0.307067,
		27.235577, 33.054504, 37.384186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.967079, 32.558323, 37.566910>,  <27.309122, 32.392395, 37.169239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.967079, 32.558323, 37.566910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.661818, 32.791328, 37.678822>,  <27.478661, 32.931129, 37.745968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.661818, 32.791328, 37.678822>,  <27.967079, 32.558323, 37.566910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.661818, 32.791328, 37.678822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386797, 0.064922, 0.919877,
		0.517675, 0.810225, -0.274859,
		-0.763152, 0.582512, 0.279783,
		27.432873, 32.966084, 37.762756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.125994, 33.273895, 37.699970>,  <27.967079, 32.558323, 37.566910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.125994, 33.273895, 37.699970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.861736, 33.095966, 37.941856>,  <27.703182, 32.989208, 38.086990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.861736, 33.095966, 37.941856>,  <28.125994, 33.273895, 37.699970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.861736, 33.095966, 37.941856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669748, 0.014622, 0.742444,
		-0.339095, 0.895501, 0.288257,
		-0.660645, -0.444819, 0.604719,
		27.663544, 32.962521, 38.123272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.117781, 33.598091, 38.415287>,  <28.125994, 33.273895, 37.699970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.117781, 33.598091, 38.415287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.026384, 33.212990, 38.473099>,  <27.971546, 32.981930, 38.507786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.026384, 33.212990, 38.473099>,  <28.117781, 33.598091, 38.415287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.026384, 33.212990, 38.473099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752863, -0.080615, 0.653222,
		-0.617243, 0.258069, 0.743245,
		-0.228493, -0.962757, 0.144531,
		27.957836, 32.924164, 38.516457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.018316, 33.352512, 39.164646>,  <28.117781, 33.598091, 38.415287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.018316, 33.352512, 39.164646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.137896, 33.027214, 38.964943>,  <28.209642, 32.832035, 38.845119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.137896, 33.027214, 38.964943>,  <28.018316, 33.352512, 39.164646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.137896, 33.027214, 38.964943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704669, -0.164663, 0.690165,
		-0.643484, -0.558135, 0.523845,
		0.298947, -0.813247, -0.499259,
		28.227579, 32.783241, 38.815166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.876020, 32.601677, 39.544899>,  <28.018316, 33.352512, 39.164646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.876020, 32.601677, 39.544899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.191313, 32.668892, 39.308102>,  <28.380487, 32.709221, 39.166023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.191313, 32.668892, 39.308102>,  <27.876020, 32.601677, 39.544899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.191313, 32.668892, 39.308102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615027, -0.182484, 0.767099,
		0.020873, -0.968743, -0.247188,
		0.788230, 0.168039, -0.591994,
		28.427782, 32.719303, 39.130505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.309771, 31.925190, 39.532211>,  <27.876020, 32.601677, 39.544899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.309771, 31.925190, 39.532211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.543280, 32.236492, 39.439663>,  <28.683384, 32.423271, 39.384132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.543280, 32.236492, 39.439663>,  <28.309771, 31.925190, 39.532211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.543280, 32.236492, 39.439663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587902, -0.208629, 0.781566,
		0.559985, -0.592280, -0.579328,
		0.583771, 0.778253, -0.231374,
		28.718410, 32.469967, 39.370251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888443, 31.678768, 40.007362>,  <28.309771, 31.925190, 39.532211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888443, 31.678768, 40.007362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.966906, 32.051685, 39.885803>,  <29.013983, 32.275436, 39.812866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.966906, 32.051685, 39.885803>,  <28.888443, 31.678768, 40.007362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.966906, 32.051685, 39.885803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563118, 0.146617, 0.813265,
		0.802758, -0.330657, -0.496231,
		0.196156, 0.932293, -0.303897,
		29.025753, 32.331371, 39.794636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.674923, 31.939590, 40.141129>,  <28.888443, 31.678768, 40.007362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.674923, 31.939590, 40.141129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.448664, 32.269447, 40.141644>,  <29.312908, 32.467361, 40.141953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.448664, 32.269447, 40.141644>,  <29.674923, 31.939590, 40.141129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448664, 32.269447, 40.141644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578720, 0.395851, 0.713011,
		0.587471, 0.404059, -0.701151,
		-0.565650, 0.824644, 0.001286,
		29.278969, 32.516842, 40.142029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093933, 32.579193, 40.125229>,  <29.674923, 31.939590, 40.141129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093933, 32.579193, 40.125229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.752602, 32.645802, 40.322853>,  <29.547802, 32.685768, 40.441429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.752602, 32.645802, 40.322853>,  <30.093933, 32.579193, 40.125229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.752602, 32.645802, 40.322853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521222, 0.295094, 0.800779,
		-0.012449, 0.940846, -0.338607,
		-0.853330, 0.166521, 0.494063,
		29.496603, 32.695759, 40.471073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.015259, 33.220703, 40.441460>,  <30.093933, 32.579193, 40.125229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.015259, 33.220703, 40.441460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.814339, 32.950302, 40.657131>,  <29.693787, 32.788059, 40.786533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.814339, 32.950302, 40.657131>,  <30.015259, 33.220703, 40.441460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814339, 32.950302, 40.657131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533841, 0.248085, 0.808373,
		-0.680226, 0.693882, 0.236266,
		-0.502301, -0.676004, 0.539177,
		29.663649, 32.747501, 40.818886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.678450, 33.552170, 41.042233>,  <30.015259, 33.220703, 40.441460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.678450, 33.552170, 41.042233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.743885, 33.163429, 41.110058>,  <29.783146, 32.930187, 41.150753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.743885, 33.163429, 41.110058>,  <29.678450, 33.552170, 41.042233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.743885, 33.163429, 41.110058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476772, 0.228354, 0.848848,
		-0.863670, -0.058022, 0.500706,
		0.163590, -0.971847, 0.169559,
		29.792963, 32.871876, 41.160927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.492563, 33.287014, 41.807652>,  <29.678450, 33.552170, 41.042233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.492563, 33.287014, 41.807652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.797907, 33.112682, 41.616932>,  <29.981113, 33.008083, 41.502499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.797907, 33.112682, 41.616932>,  <29.492563, 33.287014, 41.807652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.797907, 33.112682, 41.616932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595573, 0.189010, 0.780748,
		-0.250150, -0.879961, 0.403849,
		0.763359, -0.435826, -0.476800,
		30.026915, 32.981934, 41.473892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.853998, 32.735374, 42.201591>,  <29.492563, 33.287014, 41.807652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.853998, 32.735374, 42.201591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.072624, 32.955021, 41.948692>,  <30.203800, 33.086807, 41.796951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.072624, 32.955021, 41.948692>,  <29.853998, 32.735374, 42.201591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072624, 32.955021, 41.948692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706328, 0.103282, 0.700310,
		0.449852, -0.829338, -0.331407,
		0.546565, 0.549118, -0.632246,
		30.236593, 33.119755, 41.759018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459753, 32.794006, 42.620018>,  <29.853998, 32.735374, 42.201591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459753, 32.794006, 42.620018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.563810, 33.009090, 42.299221>,  <30.626245, 33.138142, 42.106743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.563810, 33.009090, 42.299221>,  <30.459753, 32.794006, 42.620018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.563810, 33.009090, 42.299221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785240, 0.365531, 0.499785,
		0.561892, -0.759774, -0.327140,
		0.260144, 0.537709, -0.801994,
		30.641853, 33.170403, 42.058624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265118, 33.029835, 42.635208>,  <30.459753, 32.794006, 42.620018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265118, 33.029835, 42.635208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.112471, 33.265324, 42.350178>,  <31.020882, 33.406616, 42.179157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.112471, 33.265324, 42.350178>,  <31.265118, 33.029835, 42.635208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.112471, 33.265324, 42.350178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757133, 0.641312, 0.124369,
		0.530206, -0.492057, -0.690480,
		-0.381617, 0.588726, -0.712580,
		30.997986, 33.441940, 42.136402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595190, 33.054771, 41.914734>,  <31.265118, 33.029835, 42.635208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595190, 33.054771, 41.914734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.413416, 33.400677, 42.000214>,  <31.304352, 33.608219, 42.051502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.413416, 33.400677, 42.000214>,  <31.595190, 33.054771, 41.914734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413416, 33.400677, 42.000214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883869, 0.407914, 0.228870,
		0.110748, 0.292889, -0.949711,
		-0.454434, 0.864767, 0.213700,
		31.277086, 33.660107, 42.064323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007015, 33.620731, 41.565411>,  <31.595190, 33.054771, 41.914734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007015, 33.620731, 41.565411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.827829, 33.755268, 41.896759>,  <31.720316, 33.835991, 42.095570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.827829, 33.755268, 41.896759>,  <32.007015, 33.620731, 41.565411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827829, 33.755268, 41.896759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865209, 0.396522, 0.306893,
		-0.225248, 0.854194, -0.468632,
		-0.447969, 0.336338, 0.828372,
		31.693439, 33.856171, 42.145271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097088, 34.388889, 41.601574>,  <32.007015, 33.620731, 41.565411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097088, 34.388889, 41.601574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.056629, 34.209446, 41.956768>,  <32.032356, 34.101780, 42.169884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.056629, 34.209446, 41.956768>,  <32.097088, 34.388889, 41.601574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056629, 34.209446, 41.956768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851124, 0.423139, 0.310713,
		-0.515130, 0.787213, 0.339023,
		-0.101143, -0.448608, 0.887987,
		32.026287, 34.074863, 42.223164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291340, 34.851410, 42.178017>,  <32.097088, 34.388889, 41.601574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291340, 34.851410, 42.178017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.369835, 34.475845, 42.291111>,  <32.416931, 34.250507, 42.358967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.369835, 34.475845, 42.291111>,  <32.291340, 34.851410, 42.178017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369835, 34.475845, 42.291111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749647, 0.329524, 0.573972,
		-0.632076, 0.099320, 0.768515,
		0.196237, -0.938909, 0.282739,
		32.428707, 34.194172, 42.375935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178135, 34.458008, 42.821144>,  <32.291340, 34.851410, 42.178017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178135, 34.458008, 42.821144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.505859, 34.355392, 42.616043>,  <32.702496, 34.293823, 42.492981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.505859, 34.355392, 42.616043>,  <32.178135, 34.458008, 42.821144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505859, 34.355392, 42.616043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573106, 0.340616, 0.745339,
		-0.016555, -0.904528, 0.426094,
		0.819314, -0.256536, -0.512751,
		32.751652, 34.278431, 42.462219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632027, 33.816746, 43.081947>,  <32.178135, 34.458008, 42.821144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632027, 33.816746, 43.081947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.836414, 34.108059, 42.899292>,  <32.959045, 34.282848, 42.789700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.836414, 34.108059, 42.899292>,  <32.632027, 33.816746, 43.081947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836414, 34.108059, 42.899292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538231, 0.143134, 0.830554,
		0.670237, -0.670163, -0.318847,
		0.510969, 0.728282, -0.456637,
		32.989704, 34.326542, 42.762302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326988, 33.750404, 43.063110>,  <32.632027, 33.816746, 43.081947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326988, 33.750404, 43.063110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.224339, 34.136364, 43.085449>,  <33.162746, 34.367939, 43.098854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.224339, 34.136364, 43.085449>,  <33.326988, 33.750404, 43.063110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224339, 34.136364, 43.085449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461577, 0.071585, 0.884207,
		0.849169, 0.252690, -0.463744,
		-0.256628, 0.964895, 0.055848,
		33.147350, 34.425831, 43.102203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952137, 34.149776, 43.254303>,  <33.326988, 33.750404, 43.063110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952137, 34.149776, 43.254303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.628983, 34.364620, 43.351330>,  <33.435089, 34.493526, 43.409546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.628983, 34.364620, 43.351330>,  <33.952137, 34.149776, 43.254303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628983, 34.364620, 43.351330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363386, 0.129963, 0.922529,
		0.463971, 0.833444, -0.300171,
		-0.807887, 0.537105, 0.242563,
		33.386616, 34.525753, 43.424099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160233, 34.794231, 43.476917>,  <33.952137, 34.149776, 43.254303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160233, 34.794231, 43.476917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.815189, 34.716980, 43.663937>,  <33.608162, 34.670628, 43.776150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.815189, 34.716980, 43.663937>,  <34.160233, 34.794231, 43.476917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815189, 34.716980, 43.663937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470134, 0.035153, 0.881895,
		-0.186754, 0.980544, 0.060472,
		-0.862611, -0.193127, 0.467552,
		33.556408, 34.659042, 43.804203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109631, 35.220718, 44.016857>,  <34.160233, 34.794231, 43.476917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109631, 35.220718, 44.016857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.892002, 34.899490, 44.114067>,  <33.761425, 34.706753, 44.172394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.892002, 34.899490, 44.114067>,  <34.109631, 35.220718, 44.016857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892002, 34.899490, 44.114067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528088, -0.102678, 0.842959,
		-0.652002, 0.586971, 0.479956,
		-0.544073, -0.803071, 0.243026,
		33.728779, 34.658569, 44.186974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723541, 35.307091, 44.686657>,  <34.109631, 35.220718, 44.016857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723541, 35.307091, 44.686657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.800747, 34.919266, 44.626392>,  <33.847069, 34.686569, 44.590233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.800747, 34.919266, 44.626392>,  <33.723541, 35.307091, 44.686657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800747, 34.919266, 44.626392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449035, -0.049240, 0.892156,
		-0.872419, -0.239846, 0.425864,
		0.193010, -0.969562, -0.150657,
		33.858650, 34.628399, 44.581196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448246, 34.917194, 45.234718>,  <33.723541, 35.307091, 44.686657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448246, 34.917194, 45.234718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.776886, 34.747570, 45.082325>,  <33.974068, 34.645794, 44.990891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.776886, 34.747570, 45.082325>,  <33.448246, 34.917194, 45.234718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776886, 34.747570, 45.082325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384626, -0.080917, 0.919519,
		-0.420764, -0.902010, 0.096625,
		0.821596, -0.424064, -0.380983,
		34.023365, 34.620350, 44.968029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495831, 34.254417, 45.563416>,  <33.448246, 34.917194, 45.234718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495831, 34.254417, 45.563416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.836369, 34.446259, 45.478378>,  <34.040691, 34.561363, 45.427357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.836369, 34.446259, 45.478378>,  <33.495831, 34.254417, 45.563416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836369, 34.446259, 45.478378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236912, 0.010085, 0.971479,
		0.468065, -0.877429, -0.105037,
		0.851345, 0.479600, -0.212594,
		34.091770, 34.590137, 45.414600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811741, 33.621952, 45.747982>,  <33.495831, 34.254417, 45.563416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811741, 33.621952, 45.747982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.205593, 33.557682, 45.775364>,  <34.441906, 33.519119, 45.791794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.205593, 33.557682, 45.775364>,  <33.811741, 33.621952, 45.747982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205593, 33.557682, 45.775364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011347, 0.449958, 0.892978,
		-0.174279, -0.878477, 0.444866,
		0.984631, -0.160675, 0.068450,
		34.500984, 33.509480, 45.795898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520969, 33.960003, 46.300091>,  <33.811741, 33.621952, 45.747982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520969, 33.960003, 46.300091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.534870, 33.592079, 46.456417>,  <33.543209, 33.371323, 46.550213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.534870, 33.592079, 46.456417>,  <33.520969, 33.960003, 46.300091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534870, 33.592079, 46.456417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788371, 0.215106, 0.576369,
		-0.614218, -0.328138, -0.717678,
		0.034752, -0.919813, 0.390816,
		33.545296, 33.316135, 46.573662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276318, 34.119007, 46.932808>,  <33.520969, 33.960003, 46.300091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276318, 34.119007, 46.932808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.319202, 34.456612, 46.722607>,  <33.344933, 34.659176, 46.596485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.319202, 34.456612, 46.722607>,  <33.276318, 34.119007, 46.932808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319202, 34.456612, 46.722607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841042, 0.358870, 0.404798,
		0.530240, 0.398569, 0.748323,
		0.107211, 0.844012, -0.525501,
		33.351364, 34.709816, 46.564957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565399, 33.798820, 47.640015>,  <33.276318, 34.119007, 46.932808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565399, 33.798820, 47.640015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.654430, 33.890057, 48.019157>,  <33.707848, 33.944798, 48.246643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.654430, 33.890057, 48.019157>,  <33.565399, 33.798820, 47.640015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654430, 33.890057, 48.019157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972783, 0.012301, -0.231392,
		-0.064438, 0.973562, -0.219146,
		0.222578, 0.228092, 0.947857,
		33.721203, 33.958485, 48.303516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254379, 34.083195, 47.673607>,  <33.565399, 33.798820, 47.640015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254379, 34.083195, 47.673607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.219921, 34.002029, 48.063766>,  <34.199245, 33.953331, 48.297863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.219921, 34.002029, 48.063766>,  <34.254379, 34.083195, 47.673607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219921, 34.002029, 48.063766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995744, -0.049738, 0.077591,
		0.032771, 0.977933, 0.206335,
		-0.086142, -0.202914, 0.975400,
		34.194080, 33.941154, 48.356388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689243, 34.455803, 47.951855>,  <34.254379, 34.083195, 47.673607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689243, 34.455803, 47.951855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.650906, 34.177349, 48.236450>,  <34.627903, 34.010277, 48.407207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.650906, 34.177349, 48.236450>,  <34.689243, 34.455803, 47.951855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650906, 34.177349, 48.236450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994609, -0.095395, 0.040643,
		0.039580, 0.711548, 0.701522,
		-0.095841, -0.696132, 0.711488,
		34.622154, 33.968510, 48.449898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199474, 34.605724, 48.381924>,  <34.689243, 34.455803, 47.951855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199474, 34.605724, 48.381924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.133266, 34.220909, 48.468716>,  <35.093544, 33.990021, 48.520790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.133266, 34.220909, 48.468716>,  <35.199474, 34.605724, 48.381924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133266, 34.220909, 48.468716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981905, -0.140227, 0.127278,
		-0.092020, 0.234122, 0.967842,
		-0.165517, -0.962041, 0.216982,
		35.083611, 33.932297, 48.533810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663754, 34.432739, 48.968758>,  <35.199474, 34.605724, 48.381924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663754, 34.432739, 48.968758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.552513, 34.093422, 48.788509>,  <35.485767, 33.889832, 48.680359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.552513, 34.093422, 48.788509>,  <35.663754, 34.432739, 48.968758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552513, 34.093422, 48.788509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945567, -0.324309, 0.026946,
		-0.168999, -0.418598, 0.892309,
		-0.278104, -0.848292, -0.450621,
		35.469082, 33.838936, 48.653324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099262, 33.930576, 49.304863>,  <35.663754, 34.432739, 48.968758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099262, 33.930576, 49.304863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.984314, 33.763054, 48.960300>,  <35.915344, 33.662540, 48.753563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.984314, 33.763054, 48.960300>,  <36.099262, 33.930576, 49.304863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984314, 33.763054, 48.960300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864799, -0.500063, -0.045378,
		-0.411753, -0.757984, 0.505884,
		-0.287370, -0.418804, -0.861407,
		35.898102, 33.637413, 48.701878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224148, 33.251694, 49.404655>,  <36.099262, 33.930576, 49.304863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224148, 33.251694, 49.404655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.187241, 33.279594, 49.007339>,  <36.165096, 33.296337, 48.768951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.187241, 33.279594, 49.007339>,  <36.224148, 33.251694, 49.404655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187241, 33.279594, 49.007339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927006, -0.358162, -0.111260,
		-0.363519, -0.931050, -0.031617,
		-0.092264, 0.069754, -0.993288,
		36.159561, 33.300522, 48.709354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541412, 32.686447, 49.197357>,  <36.224148, 33.251694, 49.404655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541412, 32.686447, 49.197357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.522308, 32.922150, 48.874744>,  <36.510845, 33.063572, 48.681175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.522308, 32.922150, 48.874744>,  <36.541412, 32.686447, 49.197357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522308, 32.922150, 48.874744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808142, -0.451763, -0.377913,
		-0.587049, -0.669841, -0.454628,
		-0.047758, 0.589257, -0.806533,
		36.507980, 33.098927, 48.632786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617069, 32.215900, 48.510151>,  <36.541412, 32.686447, 49.197357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617069, 32.215900, 48.510151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.755440, 32.588181, 48.462589>,  <36.838463, 32.811546, 48.434052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.755440, 32.588181, 48.462589>,  <36.617069, 32.215900, 48.510151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755440, 32.588181, 48.462589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892366, -0.365501, -0.264748,
		-0.289861, -0.014526, -0.956959,
		0.345924, 0.930697, -0.118907,
		36.859219, 32.867390, 48.426918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057323, 32.253952, 47.912399>,  <36.617069, 32.215900, 48.510151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057323, 32.253952, 47.912399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.166317, 32.595253, 48.090260>,  <37.231712, 32.800034, 48.196976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.166317, 32.595253, 48.090260>,  <37.057323, 32.253952, 47.912399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166317, 32.595253, 48.090260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961777, -0.254575, -0.100881,
		0.027120, 0.455144, -0.890005,
		0.272488, 0.853250, 0.444651,
		37.248062, 32.851227, 48.223656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640942, 32.339359, 47.652462>,  <37.057323, 32.253952, 47.912399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640942, 32.339359, 47.652462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.659431, 32.586956, 47.966076>,  <37.670525, 32.735512, 48.154243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.659431, 32.586956, 47.966076>,  <37.640942, 32.339359, 47.652462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659431, 32.586956, 47.966076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976758, -0.192457, 0.094361,
		0.209302, 0.761455, -0.613497,
		0.046220, 0.618988, 0.784039,
		37.673298, 32.772652, 48.201286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106834, 32.843048, 47.514149>,  <37.640942, 32.339359, 47.652462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106834, 32.843048, 47.514149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.080059, 32.824203, 47.912807>,  <38.063995, 32.812897, 48.152000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.080059, 32.824203, 47.912807>,  <38.106834, 32.843048, 47.514149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080059, 32.824203, 47.912807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990106, -0.126601, 0.060510,
		0.123326, 0.990834, 0.055123,
		-0.066934, -0.047115, 0.996644,
		38.059978, 32.810070, 48.211800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620953, 33.245022, 47.730652>,  <38.106834, 32.843048, 47.514149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620953, 33.245022, 47.730652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.559715, 32.968475, 48.013092>,  <38.522972, 32.802547, 48.182556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.559715, 32.968475, 48.013092>,  <38.620953, 33.245022, 47.730652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559715, 32.968475, 48.013092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952994, -0.292343, -0.079614,
		0.261465, 0.660720, 0.703623,
		-0.153096, -0.691364, 0.706100,
		38.513786, 32.761066, 48.224922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267967, 33.126270, 47.938244>,  <38.620953, 33.245022, 47.730652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267967, 33.126270, 47.938244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.049923, 32.855347, 48.135872>,  <38.919098, 32.692791, 48.254448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.049923, 32.855347, 48.135872>,  <39.267967, 33.126270, 47.938244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049923, 32.855347, 48.135872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837782, -0.462068, 0.290885,
		0.031274, 0.572487, 0.819317,
		-0.545108, -0.677312, 0.494070,
		38.886391, 32.652153, 48.284092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778160, 32.637936, 48.065247>,  <39.267967, 33.126270, 47.938244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778160, 32.637936, 48.065247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.482643, 32.430416, 48.237309>,  <39.305332, 32.305904, 48.340546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.482643, 32.430416, 48.237309>,  <39.778160, 32.637936, 48.065247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482643, 32.430416, 48.237309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665949, -0.659951, 0.347817,
		0.103435, 0.543426, 0.833060,
		-0.738791, -0.518799, 0.430156,
		39.261005, 32.274776, 48.366356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029934, 32.504429, 48.729332>,  <39.778160, 32.637936, 48.065247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029934, 32.504429, 48.729332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.760983, 32.242939, 48.590450>,  <39.599613, 32.086044, 48.507122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.760983, 32.242939, 48.590450>,  <40.029934, 32.504429, 48.729332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760983, 32.242939, 48.590450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612971, -0.754687, 0.233908,
		-0.414942, -0.055550, 0.908150,
		-0.672376, -0.653728, -0.347202,
		39.559269, 32.046822, 48.486290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851154, 31.947111, 49.274212>,  <40.029934, 32.504429, 48.729332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851154, 31.947111, 49.274212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.844086, 31.838692, 48.889252>,  <39.839844, 31.773640, 48.658276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.844086, 31.838692, 48.889252>,  <39.851154, 31.947111, 49.274212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844086, 31.838692, 48.889252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567557, -0.795165, 0.213522,
		-0.823144, -0.542445, 0.167890,
		-0.017676, -0.271047, -0.962404,
		39.838783, 31.757378, 48.600529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300579, 31.892193, 49.776478>,  <39.851154, 31.947111, 49.274212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300579, 31.892193, 49.776478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.422073, 32.035149, 50.129753>,  <39.494968, 32.120922, 50.341717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.422073, 32.035149, 50.129753>,  <39.300579, 31.892193, 49.776478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422073, 32.035149, 50.129753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911264, -0.161616, 0.378786,
		0.278111, -0.919866, 0.276588,
		0.303731, 0.357389, 0.883188,
		39.513191, 32.142365, 50.394711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797939, 31.612146, 50.263290>,  <39.300579, 31.892193, 49.776478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797939, 31.612146, 50.263290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.971359, 31.889925, 50.492996>,  <39.075409, 32.056591, 50.630821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.971359, 31.889925, 50.492996>,  <38.797939, 31.612146, 50.263290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971359, 31.889925, 50.492996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789881, -0.013871, 0.613103,
		0.433733, -0.719411, 0.542516,
		0.433548, 0.694446, 0.574266,
		39.101425, 32.098259, 50.665276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895844, 31.276703, 50.899532>,  <38.797939, 31.612146, 50.263290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895844, 31.276703, 50.899532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.845657, 31.673389, 50.910549>,  <38.815548, 31.911402, 50.917160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.845657, 31.673389, 50.910549>,  <38.895844, 31.276703, 50.899532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845657, 31.673389, 50.910549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900024, -0.125455, 0.417395,
		0.417393, 0.027574, 0.908307,
		-0.125461, 0.991716, 0.027546,
		38.808018, 31.970903, 50.918812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802467, 31.475458, 51.588390>,  <38.895844, 31.276703, 50.899532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802467, 31.475458, 51.588390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.607948, 31.698296, 51.319122>,  <38.491238, 31.831997, 51.157562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.607948, 31.698296, 51.319122>,  <38.802467, 31.475458, 51.588390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607948, 31.698296, 51.319122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862715, -0.183815, 0.471100,
		0.138707, 0.809852, 0.570000,
		-0.486296, 0.557093, -0.673175,
		38.462059, 31.865423, 51.117168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652462, 32.166084, 51.908508>,  <38.802467, 31.475458, 51.588390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652462, 32.166084, 51.908508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.397533, 32.160843, 51.600311>,  <38.244576, 32.157700, 51.415394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.397533, 32.160843, 51.600311>,  <38.652462, 32.166084, 51.908508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397533, 32.160843, 51.600311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735456, 0.308846, 0.603091,
		0.230062, 0.951022, -0.206468,
		-0.637320, -0.013099, -0.770488,
		38.206337, 32.156914, 51.369164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323864, 32.744820, 52.020504>,  <38.652462, 32.166084, 51.908508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323864, 32.744820, 52.020504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.086369, 32.528576, 51.782104>,  <37.943871, 32.398830, 51.639065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.086369, 32.528576, 51.782104>,  <38.323864, 32.744820, 52.020504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086369, 32.528576, 51.782104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794318, 0.275427, 0.541479,
		-0.128576, 0.794908, -0.592950,
		-0.593741, -0.540612, -0.595996,
		37.908245, 32.366394, 51.603306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770237, 33.238419, 51.769001>,  <38.323864, 32.744820, 52.020504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770237, 33.238419, 51.769001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.630608, 32.864178, 51.747845>,  <37.546829, 32.639633, 51.735149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.630608, 32.864178, 51.747845>,  <37.770237, 33.238419, 51.769001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630608, 32.864178, 51.747845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902233, 0.320297, 0.288764,
		-0.253228, 0.148518, -0.955938,
		-0.349071, -0.935602, -0.052890,
		37.525887, 32.583496, 51.731979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109589, 33.393730, 51.835255>,  <37.770237, 33.238419, 51.769001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109589, 33.393730, 51.835255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.112469, 32.994141, 51.853100>,  <37.114197, 32.754387, 51.863808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.112469, 32.994141, 51.853100>,  <37.109589, 33.393730, 51.835255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112469, 32.994141, 51.853100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885954, 0.014316, 0.463553,
		-0.463718, -0.042861, -0.884946,
		0.007199, -0.998979, 0.044612,
		37.114628, 32.694447, 51.866482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538696, 33.192444, 51.429367>,  <37.109589, 33.393730, 51.835255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538696, 33.192444, 51.429367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.616306, 32.902546, 51.693821>,  <36.662872, 32.728607, 51.852493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.616306, 32.902546, 51.693821>,  <36.538696, 33.192444, 51.429367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616306, 32.902546, 51.693821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924661, 0.089990, 0.370006,
		-0.327656, -0.683114, -0.652684,
		0.194022, -0.724746, 0.661134,
		36.674515, 32.685123, 51.892162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900803, 32.863808, 51.483440>,  <36.538696, 33.192444, 51.429367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900803, 32.863808, 51.483440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.094124, 32.743412, 51.812275>,  <36.210117, 32.671173, 52.009575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.094124, 32.743412, 51.812275>,  <35.900803, 32.863808, 51.483440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094124, 32.743412, 51.812275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838030, 0.112551, 0.533890,
		-0.253223, -0.946962, -0.197843,
		0.483306, -0.300992, 0.822082,
		36.239117, 32.653114, 52.058899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411011, 32.422443, 51.744888>,  <35.900803, 32.863808, 51.483440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411011, 32.422443, 51.744888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.663635, 32.500626, 52.045002>,  <35.815212, 32.547535, 52.225071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.663635, 32.500626, 52.045002>,  <35.411011, 32.422443, 51.744888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663635, 32.500626, 52.045002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774349, 0.110538, 0.623029,
		0.038841, -0.974463, 0.221165,
		0.631565, 0.195458, 0.750281,
		35.853104, 32.559261, 52.270084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027931, 32.146614, 52.338989>,  <35.411011, 32.422443, 51.744888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027931, 32.146614, 52.338989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.275555, 32.425831, 52.482933>,  <35.424129, 32.593361, 52.569298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.275555, 32.425831, 52.482933>,  <35.027931, 32.146614, 52.338989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275555, 32.425831, 52.482933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621882, 0.155881, 0.767440,
		0.479610, -0.698883, 0.530600,
		0.619061, 0.698043, 0.359861,
		35.461273, 32.635242, 52.590893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955559, 32.009750, 52.980953>,  <35.027931, 32.146614, 52.338989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955559, 32.009750, 52.980953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.112835, 32.376869, 53.003059>,  <35.207199, 32.597141, 53.016323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.112835, 32.376869, 53.003059>,  <34.955559, 32.009750, 52.980953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112835, 32.376869, 53.003059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712440, 0.266118, 0.649315,
		0.581231, -0.294677, 0.758509,
		0.393192, 0.917795, 0.055263,
		35.230793, 32.652206, 53.019638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964062, 32.065826, 53.686581>,  <34.955559, 32.009750, 52.980953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964062, 32.065826, 53.686581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.992527, 32.428806, 53.520943>,  <35.009605, 32.646595, 53.421562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.992527, 32.428806, 53.520943>,  <34.964062, 32.065826, 53.686581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992527, 32.428806, 53.520943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713096, 0.336562, 0.614996,
		0.697445, 0.251522, 0.671050,
		0.071165, 0.907449, -0.414093,
		35.013878, 32.701042, 53.396713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101971, 32.559822, 54.198399>,  <34.964062, 32.065826, 53.686581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101971, 32.559822, 54.198399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.912285, 32.761429, 53.909653>,  <34.798473, 32.882393, 53.736404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.912285, 32.761429, 53.909653>,  <35.101971, 32.559822, 54.198399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912285, 32.761429, 53.909653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553362, 0.467094, 0.689647,
		0.684772, 0.726493, 0.057401,
		-0.474212, 0.504015, -0.721867,
		34.770020, 32.912632, 53.693092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078789, 33.277222, 54.440689>,  <35.101971, 32.559822, 54.198399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078789, 33.277222, 54.440689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.825024, 33.298553, 54.132229>,  <34.672764, 33.311352, 53.947151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.825024, 33.298553, 54.132229>,  <35.078789, 33.277222, 54.440689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825024, 33.298553, 54.132229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432359, 0.802488, 0.411192,
		0.640768, 0.594281, -0.486053,
		-0.634415, 0.053329, -0.771151,
		34.634701, 33.314552, 53.900883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140911, 34.003006, 54.164814>,  <35.078789, 33.277222, 54.440689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140911, 34.003006, 54.164814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.799316, 33.865269, 54.008801>,  <34.594360, 33.782627, 53.915192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.799316, 33.865269, 54.008801>,  <35.140911, 34.003006, 54.164814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799316, 33.865269, 54.008801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445978, 0.870563, 0.207903,
		0.267962, 0.351495, -0.897022,
		-0.853991, -0.344342, -0.390037,
		34.543118, 33.761967, 53.891788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916969, 34.545147, 53.814556>,  <35.140911, 34.003006, 54.164814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916969, 34.545147, 53.814556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.605019, 34.312973, 53.908268>,  <34.417847, 34.173668, 53.964493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.605019, 34.312973, 53.908268>,  <34.916969, 34.545147, 53.814556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605019, 34.312973, 53.908268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494166, 0.800678, 0.338695,
		-0.384169, 0.148371, -0.911263,
		-0.779881, -0.580431, 0.234276,
		34.371056, 34.138844, 53.978550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304298, 34.910381, 53.519539>,  <34.916969, 34.545147, 53.814556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304298, 34.910381, 53.519539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.198284, 34.663403, 53.815784>,  <34.134674, 34.515213, 53.993534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.198284, 34.663403, 53.815784>,  <34.304298, 34.910381, 53.519539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198284, 34.663403, 53.815784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589504, 0.711579, 0.382283,
		-0.763048, -0.335277, -0.552583,
		-0.265036, -0.617450, 0.740615,
		34.118774, 34.478168, 54.037968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506462, 35.052219, 53.570389>,  <34.304298, 34.910381, 53.519539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506462, 35.052219, 53.570389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.639446, 34.844864, 53.885536>,  <33.719238, 34.720451, 54.074627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.639446, 34.844864, 53.885536>,  <33.506462, 35.052219, 53.570389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639446, 34.844864, 53.885536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545849, 0.575490, 0.608983,
		-0.769102, -0.632523, -0.091633,
		0.332462, -0.518388, 0.787872,
		33.739185, 34.689346, 54.121899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927254, 35.065235, 53.965553>,  <33.506462, 35.052219, 53.570389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927254, 35.065235, 53.965553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.211899, 34.951660, 54.222607>,  <33.382687, 34.883514, 54.376839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.211899, 34.951660, 54.222607>,  <32.927254, 35.065235, 53.965553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211899, 34.951660, 54.222607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472850, 0.482962, 0.736994,
		-0.519629, -0.828328, 0.209425,
		0.711617, -0.283937, 0.642636,
		33.425385, 34.866478, 54.415398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610104, 34.670830, 54.550648>,  <32.927254, 35.065235, 53.965553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610104, 34.670830, 54.550648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.941437, 34.855656, 54.677368>,  <33.140236, 34.966553, 54.753399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.941437, 34.855656, 54.677368>,  <32.610104, 34.670830, 54.550648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941437, 34.855656, 54.677368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544270, 0.529665, 0.650558,
		0.132804, -0.711301, 0.690227,
		0.828331, 0.462067, 0.316798,
		33.189938, 34.994274, 54.772408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467110, 34.598618, 55.252663>,  <32.610104, 34.670830, 54.550648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467110, 34.598618, 55.252663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.725765, 34.888756, 55.158230>,  <32.880959, 35.062840, 55.101570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.725765, 34.888756, 55.158230>,  <32.467110, 34.598618, 55.252663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725765, 34.888756, 55.158230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495062, 0.634526, 0.593540,
		0.580316, -0.266936, 0.769402,
		0.646643, 0.725342, -0.236076,
		32.919758, 35.106358, 55.087406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612892, 34.835060, 55.877296>,  <32.467110, 34.598618, 55.252663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612892, 34.835060, 55.877296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.738087, 35.126648, 55.633778>,  <32.813206, 35.301601, 55.487667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.738087, 35.126648, 55.633778>,  <32.612892, 34.835060, 55.877296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738087, 35.126648, 55.633778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379304, 0.683609, 0.623544,
		0.870727, 0.035757, 0.490465,
		0.312990, 0.728972, -0.608800,
		32.831985, 35.345341, 55.451138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736225, 35.379597, 56.321468>,  <32.612892, 34.835060, 55.877296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736225, 35.379597, 56.321468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.697029, 35.547039, 55.960320>,  <32.673512, 35.647503, 55.743629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.697029, 35.547039, 55.960320>,  <32.736225, 35.379597, 56.321468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697029, 35.547039, 55.960320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216478, 0.876544, 0.429893,
		0.971358, 0.237575, 0.004727,
		-0.097989, 0.418603, -0.902868,
		32.667633, 35.672619, 55.689461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070900, 36.090485, 56.373016>,  <32.736225, 35.379597, 56.321468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070900, 36.090485, 56.373016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.849411, 36.097439, 56.040009>,  <32.716518, 36.101612, 55.840202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.849411, 36.097439, 56.040009>,  <33.070900, 36.090485, 56.373016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849411, 36.097439, 56.040009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362663, 0.894947, 0.259896,
		0.749580, 0.445834, -0.489246,
		-0.553719, 0.017381, -0.832522,
		32.683296, 36.102654, 55.790253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118210, 36.698586, 56.207798>,  <33.070900, 36.090485, 56.373016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118210, 36.698586, 56.207798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.773006, 36.588665, 56.038239>,  <32.565884, 36.522713, 55.936504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.773006, 36.588665, 56.038239>,  <33.118210, 36.698586, 56.207798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773006, 36.588665, 56.038239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413102, 0.866878, 0.279049,
		0.290786, 0.415937, -0.861650,
		-0.863013, -0.274806, -0.423900,
		32.514103, 36.506222, 55.911068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720131, 37.314289, 56.023201>,  <33.118210, 36.698586, 56.207798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720131, 37.314289, 56.023201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.445290, 37.025166, 55.993694>,  <32.280384, 36.851692, 55.975990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.445290, 37.025166, 55.993694>,  <32.720131, 37.314289, 56.023201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445290, 37.025166, 55.993694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711386, 0.648638, 0.270553,
		-0.147712, 0.238371, -0.959875,
		-0.687103, -0.722806, -0.073762,
		32.239159, 36.808323, 55.971565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070026, 37.555725, 55.588470>,  <32.720131, 37.314289, 56.023201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070026, 37.555725, 55.588470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.963058, 37.262119, 55.838177>,  <31.898878, 37.085957, 55.988003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.963058, 37.262119, 55.838177>,  <32.070026, 37.555725, 55.588470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963058, 37.262119, 55.838177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682162, 0.601779, 0.415352,
		-0.680546, -0.314780, -0.661642,
		-0.267418, -0.734013, 0.624270,
		31.882833, 37.041916, 56.025459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254755, 37.528378, 55.515739>,  <32.070026, 37.555725, 55.588470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254755, 37.528378, 55.515739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.374014, 37.391357, 55.872116>,  <31.445568, 37.309147, 56.085941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.374014, 37.391357, 55.872116>,  <31.254755, 37.528378, 55.515739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374014, 37.391357, 55.872116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724369, 0.526650, 0.444892,
		-0.621610, -0.778010, -0.091114,
		0.298146, -0.342549, 0.890937,
		31.463457, 37.288593, 56.139397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687155, 37.420765, 55.876762>,  <31.254755, 37.528378, 55.515739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687155, 37.420765, 55.876762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.955221, 37.387798, 56.171810>,  <31.116060, 37.368019, 56.348839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.955221, 37.387798, 56.171810>,  <30.687155, 37.420765, 55.876762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955221, 37.387798, 56.171810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650385, 0.413619, 0.637117,
		-0.357602, -0.906712, 0.223592,
		0.670164, -0.082414, 0.737623,
		31.156271, 37.363075, 56.393097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.320066, 37.135426, 56.312645>,  <30.687155, 37.420765, 55.876762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.320066, 37.135426, 56.312645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.632130, 37.273079, 56.521614>,  <30.819368, 37.355671, 56.646996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.632130, 37.273079, 56.521614>,  <30.320066, 37.135426, 56.312645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632130, 37.273079, 56.521614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621734, 0.334059, 0.708415,
		0.069267, -0.877484, 0.474577,
		0.780160, 0.344131, 0.522422,
		30.866177, 37.376320, 56.678341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258434, 36.921001, 57.126549>,  <30.320066, 37.135426, 56.312645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258434, 36.921001, 57.126549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.443674, 37.267483, 57.051460>,  <30.554817, 37.475372, 57.006409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.443674, 37.267483, 57.051460>,  <30.258434, 36.921001, 57.126549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443674, 37.267483, 57.051460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477560, 0.422289, 0.770460,
		0.746643, -0.267152, 0.609224,
		0.463098, 0.866200, -0.187718,
		30.582603, 37.527344, 56.995144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.424816, 37.190845, 57.781612>,  <30.258434, 36.921001, 57.126549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.424816, 37.190845, 57.781612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.456575, 37.520500, 57.557293>,  <30.475630, 37.718292, 57.422703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.456575, 37.520500, 57.557293>,  <30.424816, 37.190845, 57.781612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.456575, 37.520500, 57.557293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247355, 0.561264, 0.789809,
		0.965666, 0.076008, 0.248417,
		0.079396, 0.824139, -0.560795,
		30.480394, 37.767742, 57.389053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.641413, 37.602585, 58.235786>,  <30.424816, 37.190845, 57.781612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.641413, 37.602585, 58.235786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.534830, 37.841175, 57.932941>,  <30.470881, 37.984329, 57.751236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.534830, 37.841175, 57.932941>,  <30.641413, 37.602585, 58.235786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534830, 37.841175, 57.932941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374471, 0.659733, 0.651555,
		0.888128, 0.457127, 0.047573,
		-0.266458, 0.596479, -0.757109,
		30.454893, 38.020119, 57.705811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836229, 38.269184, 58.447716>,  <30.641413, 37.602585, 58.235786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836229, 38.269184, 58.447716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.552017, 38.325512, 58.171944>,  <30.381491, 38.359306, 58.006481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.552017, 38.325512, 58.171944>,  <30.836229, 38.269184, 58.447716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552017, 38.325512, 58.171944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386926, 0.740170, 0.549942,
		0.587739, 0.657510, -0.471427,
		-0.710529, 0.140815, -0.689434,
		30.338858, 38.367756, 57.965115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760405, 38.918541, 58.386879>,  <30.836229, 38.269184, 58.447716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760405, 38.918541, 58.386879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.414303, 38.801479, 58.224060>,  <30.206642, 38.731243, 58.126369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.414303, 38.801479, 58.224060>,  <30.760405, 38.918541, 58.386879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.414303, 38.801479, 58.224060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459790, 0.786850, 0.411654,
		0.199817, 0.543343, -0.815384,
		-0.865255, -0.292651, -0.407050,
		30.154726, 38.713684, 58.101944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566542, 39.510506, 58.185696>,  <30.760405, 38.918541, 58.386879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566542, 39.510506, 58.185696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.235304, 39.288040, 58.157566>,  <30.036562, 39.154560, 58.140686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.235304, 39.288040, 58.157566>,  <30.566542, 39.510506, 58.185696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235304, 39.288040, 58.157566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540691, 0.759259, 0.362185,
		-0.148038, 0.337948, -0.929449,
		-0.828093, -0.556162, -0.070327,
		29.986876, 39.121193, 58.136467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.095821, 39.958549, 57.801815>,  <30.566542, 39.510506, 58.185696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.095821, 39.958549, 57.801815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.914705, 39.679733, 58.024204>,  <29.806036, 39.512444, 58.157639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.914705, 39.679733, 58.024204>,  <30.095821, 39.958549, 57.801815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.914705, 39.679733, 58.024204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606895, 0.697758, 0.380542,
		-0.653192, -0.165114, -0.738970,
		-0.452790, -0.697044, 0.555977,
		29.778868, 39.470619, 58.190998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297417, 40.087902, 57.787254>,  <30.095821, 39.958549, 57.801815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.297417, 40.087902, 57.787254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.353922, 39.847733, 58.102097>,  <29.387825, 39.703629, 58.291000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.353922, 39.847733, 58.102097>,  <29.297417, 40.087902, 57.787254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.353922, 39.847733, 58.102097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623340, 0.563728, 0.541902,
		-0.769085, -0.567183, -0.294637,
		0.141262, -0.600428, 0.787103,
		29.396301, 39.667603, 58.338226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.590210, 40.015167, 58.115765>,  <29.297417, 40.087902, 57.787254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.590210, 40.015167, 58.115765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.860701, 39.889843, 58.382465>,  <29.022995, 39.814648, 58.542484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.860701, 39.889843, 58.382465>,  <28.590210, 40.015167, 58.115765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860701, 39.889843, 58.382465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522909, 0.433392, 0.733988,
		-0.518928, -0.844991, 0.129240,
		0.676225, -0.313307, 0.666753,
		29.063568, 39.795853, 58.582493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217575, 39.823742, 58.583679>,  <28.590210, 40.015167, 58.115765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217575, 39.823742, 58.583679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.573116, 39.884628, 58.756546>,  <28.786442, 39.921162, 58.860268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.573116, 39.884628, 58.756546>,  <28.217575, 39.823742, 58.583679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.573116, 39.884628, 58.756546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456933, 0.364348, 0.811457,
		-0.033940, -0.918738, 0.393406,
		0.888853, 0.152219, 0.432167,
		28.839773, 39.930294, 58.886196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.157581, 39.800587, 59.212040>,  <28.217575, 39.823742, 58.583679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.157581, 39.800587, 59.212040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.492805, 40.018818, 59.211716>,  <28.693939, 40.149757, 59.211521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.492805, 40.018818, 59.211716>,  <28.157581, 39.800587, 59.212040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.492805, 40.018818, 59.211716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340689, 0.524485, 0.780286,
		0.426131, -0.653651, 0.625422,
		0.838059, 0.545578, -0.000807,
		28.744223, 40.182491, 59.211472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.252924, 39.910042, 59.889992>,  <28.157581, 39.800587, 59.212040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.252924, 39.910042, 59.889992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.481993, 40.191444, 59.721645>,  <28.619434, 40.360287, 59.620636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.481993, 40.191444, 59.721645>,  <28.252924, 39.910042, 59.889992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.481993, 40.191444, 59.721645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260581, 0.642974, 0.720195,
		0.777269, -0.302764, 0.551532,
		0.572670, 0.703504, -0.420869,
		28.653793, 40.402496, 59.595383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.704546, 40.255112, 60.442108>,  <28.252924, 39.910042, 59.889992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.704546, 40.255112, 60.442108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.665770, 40.509426, 60.135807>,  <28.642504, 40.662014, 59.952026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.665770, 40.509426, 60.135807>,  <28.704546, 40.255112, 60.442108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.665770, 40.509426, 60.135807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417741, 0.672341, 0.611105,
		0.903380, 0.379129, 0.200415,
		-0.096941, 0.635782, -0.765757,
		28.636688, 40.700161, 59.906078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.097769, 40.924191, 60.539219>,  <28.704546, 40.255112, 60.442108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.097769, 40.924191, 60.539219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.767591, 40.943893, 60.314289>,  <28.569485, 40.955715, 60.179329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.767591, 40.943893, 60.314289>,  <29.097769, 40.924191, 60.539219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767591, 40.943893, 60.314289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351145, 0.735174, 0.579841,
		0.441970, 0.676086, -0.589550,
		-0.825445, 0.049255, -0.562329,
		28.519958, 40.958672, 60.145592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.923092, 41.726288, 60.492794>,  <29.097769, 40.924191, 60.539219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.923092, 41.726288, 60.492794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.614828, 41.476055, 60.444248>,  <28.429871, 41.325916, 60.415119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.614828, 41.476055, 60.444248>,  <28.923092, 41.726288, 60.492794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.614828, 41.476055, 60.444248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590365, 0.629196, 0.505551,
		-0.239903, 0.461256, -0.854219,
		-0.770660, -0.625584, -0.121363,
		28.383631, 41.288380, 60.407841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.420153, 42.204144, 60.573658>,  <28.923092, 41.726288, 60.492794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.420153, 42.204144, 60.573658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.244728, 41.849682, 60.513805>,  <28.139473, 41.637005, 60.477894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.244728, 41.849682, 60.513805>,  <28.420153, 42.204144, 60.573658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.244728, 41.849682, 60.513805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889467, 0.404192, 0.213254,
		-0.128497, 0.226618, -0.965470,
		-0.438563, -0.886156, -0.149631,
		28.113159, 41.583836, 60.468918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.865971, 42.685898, 60.941311>,  <28.420153, 42.204144, 60.573658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.865971, 42.685898, 60.941311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.671822, 42.973911, 60.742931>,  <27.555332, 43.146721, 60.623905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.671822, 42.973911, 60.742931>,  <27.865971, 42.685898, 60.941311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.671822, 42.973911, 60.742931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302981, -0.393577, -0.867928,
		-0.820131, -0.571532, -0.027125,
		-0.485373, 0.720033, -0.495949,
		27.526209, 43.189922, 60.594147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.339493, 42.462845, 60.430923>,  <27.865971, 42.685898, 60.941311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.339493, 42.462845, 60.430923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.550728, 42.788219, 60.333405>,  <27.677469, 42.983444, 60.274891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.550728, 42.788219, 60.333405>,  <27.339493, 42.462845, 60.430923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.550728, 42.788219, 60.333405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241651, -0.419177, -0.875155,
		-0.814082, 0.403243, -0.417931,
		0.528087, 0.813441, -0.243800,
		27.709154, 43.032253, 60.260265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.143602, 42.784603, 59.847618>,  <27.339493, 42.462845, 60.430923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.143602, 42.784603, 59.847618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.537491, 42.837921, 59.892441>,  <27.773825, 42.869911, 59.919334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.537491, 42.837921, 59.892441>,  <27.143602, 42.784603, 59.847618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.537491, 42.837921, 59.892441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161302, -0.455684, -0.875405,
		-0.065629, 0.880104, -0.470222,
		0.984721, 0.133299, 0.112057,
		27.832907, 42.877911, 59.926056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.491215, 42.268097, 59.299610>,  <27.143602, 42.784603, 59.847618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.491215, 42.268097, 59.299610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.803833, 42.480103, 59.431232>,  <27.991404, 42.607307, 59.510204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.803833, 42.480103, 59.431232>,  <27.491215, 42.268097, 59.299610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.803833, 42.480103, 59.431232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540416, -0.311672, -0.781544,
		-0.311672, 0.788636, -0.530013,
		0.781544, 0.530013, 0.329052,
		28.038296, 42.639107, 59.529949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.760826, 42.536083, 58.739056>,  <27.491215, 42.268097, 59.299610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.760826, 42.536083, 58.739056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.041853, 42.510170, 59.022522>,  <28.210470, 42.494621, 59.192600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.041853, 42.510170, 59.022522>,  <27.760826, 42.536083, 58.739056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.041853, 42.510170, 59.022522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695911, -0.145521, -0.703229,
		0.148680, 0.987232, -0.057157,
		0.702568, -0.064780, 0.708662,
		28.252623, 42.490738, 59.235119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.304968, 42.932281, 58.593906>,  <27.760826, 42.536083, 58.739056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.304968, 42.932281, 58.593906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.428137, 42.614071, 58.802643>,  <28.502039, 42.423145, 58.927883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.428137, 42.614071, 58.802643>,  <28.304968, 42.932281, 58.593906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.428137, 42.614071, 58.802643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763171, -0.120987, -0.634770,
		0.568114, 0.593711, 0.569871,
		0.307923, -0.795530, 0.521838,
		28.520514, 42.375412, 58.959194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.997520, 42.987171, 58.897343>,  <28.304968, 42.932281, 58.593906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.997520, 42.987171, 58.897343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.912954, 42.600811, 58.837566>,  <28.862215, 42.368996, 58.801701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.912954, 42.600811, 58.837566>,  <28.997520, 42.987171, 58.897343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.912954, 42.600811, 58.837566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808095, -0.086733, -0.582632,
		0.549806, -0.243938, 0.798879,
		-0.211415, -0.965905, -0.149439,
		28.849529, 42.311039, 58.792736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617476, 42.770412, 58.695255>,  <28.997520, 42.987171, 58.897343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617476, 42.770412, 58.695255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.370731, 42.465382, 58.617313>,  <29.222685, 42.282364, 58.570549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.370731, 42.465382, 58.617313>,  <29.617476, 42.770412, 58.695255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.370731, 42.465382, 58.617313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595329, -0.290119, -0.749276,
		0.514849, -0.578197, 0.632945,
		-0.616858, -0.762574, -0.194850,
		29.185675, 42.236610, 58.558857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978571, 42.188095, 58.740871>,  <29.617476, 42.770412, 58.695255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.978571, 42.188095, 58.740871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.667542, 42.100407, 58.505135>,  <29.480925, 42.047794, 58.363693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.667542, 42.100407, 58.505135>,  <29.978571, 42.188095, 58.740871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.667542, 42.100407, 58.505135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626405, -0.351673, -0.695660,
		-0.054756, -0.910093, 0.410770,
		-0.777573, -0.219217, -0.589343,
		29.434269, 42.034641, 58.328331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111044, 41.472103, 58.376965>,  <29.978571, 42.188095, 58.740871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111044, 41.472103, 58.376965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.849220, 41.670597, 58.148823>,  <29.692125, 41.789696, 58.011940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.849220, 41.670597, 58.148823>,  <30.111044, 41.472103, 58.376965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.849220, 41.670597, 58.148823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392976, -0.421160, -0.817432,
		-0.645850, -0.759192, 0.080664,
		-0.654559, 0.496239, -0.570350,
		29.652853, 41.819469, 57.977718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.862381, 41.033672, 57.848042>,  <30.111044, 41.472103, 58.376965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.862381, 41.033672, 57.848042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.779350, 41.396255, 57.700939>,  <29.729532, 41.613808, 57.612679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.779350, 41.396255, 57.700939>,  <29.862381, 41.033672, 57.848042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.779350, 41.396255, 57.700939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315716, -0.293743, -0.902241,
		-0.925869, -0.303392, -0.225209,
		-0.207579, 0.906459, -0.367753,
		29.717077, 41.668194, 57.590614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529165, 40.919437, 57.280033>,  <29.862381, 41.033672, 57.848042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.529165, 40.919437, 57.280033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.667942, 41.289993, 57.221481>,  <29.751207, 41.512329, 57.186348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.667942, 41.289993, 57.221481>,  <29.529165, 40.919437, 57.280033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.667942, 41.289993, 57.221481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110257, -0.195283, -0.974530,
		-0.931383, 0.321966, -0.169893,
		0.346942, 0.926392, -0.146384,
		29.772024, 41.567909, 57.177567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424103, 40.977650, 56.634403>,  <29.529165, 40.919437, 57.280033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424103, 40.977650, 56.634403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.662472, 41.285358, 56.726570>,  <29.805494, 41.469986, 56.781872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.662472, 41.285358, 56.726570>,  <29.424103, 40.977650, 56.634403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.662472, 41.285358, 56.726570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366877, -0.005569, -0.930253,
		-0.714336, 0.638895, -0.285547,
		0.595924, 0.769274, 0.230418,
		29.841249, 41.516140, 56.795696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.227337, 41.445007, 56.115791>,  <29.424103, 40.977650, 56.634403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.227337, 41.445007, 56.115791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.594568, 41.555763, 56.229259>,  <29.814907, 41.622215, 56.297340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.594568, 41.555763, 56.229259>,  <29.227337, 41.445007, 56.115791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.594568, 41.555763, 56.229259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315652, -0.077758, -0.945684,
		-0.239791, 0.957751, -0.158788,
		0.918076, 0.276888, 0.283671,
		29.869991, 41.638828, 56.314362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289961, 42.052479, 55.739616>,  <29.227337, 41.445007, 56.115791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289961, 42.052479, 55.739616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.640205, 41.887920, 55.840858>,  <29.850351, 41.789185, 55.901604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.640205, 41.887920, 55.840858>,  <29.289961, 42.052479, 55.739616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640205, 41.887920, 55.840858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242604, -0.078532, -0.966942,
		0.417669, 0.908069, 0.031042,
		0.875612, -0.411392, 0.253101,
		29.902889, 41.764503, 55.916790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.740168, 42.309471, 55.269516>,  <29.289961, 42.052479, 55.739616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.740168, 42.309471, 55.269516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.954117, 42.002995, 55.411987>,  <30.082487, 41.819107, 55.497471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.954117, 42.002995, 55.411987>,  <29.740168, 42.309471, 55.269516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.954117, 42.002995, 55.411987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303529, -0.219166, -0.927274,
		0.788531, 0.604083, 0.115335,
		0.534873, -0.766191, 0.356176,
		30.114578, 41.773136, 55.518841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412203, 42.418243, 55.035839>,  <29.740168, 42.309471, 55.269516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412203, 42.418243, 55.035839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.365330, 42.027771, 55.108879>,  <30.337206, 41.793488, 55.152702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.365330, 42.027771, 55.108879>,  <30.412203, 42.418243, 55.035839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.365330, 42.027771, 55.108879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410686, -0.215040, -0.886056,
		0.904215, -0.028838, 0.426102,
		-0.117181, -0.976179, 0.182599,
		30.330175, 41.734917, 55.163658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972795, 42.061077, 54.772903>,  <30.412203, 42.418243, 55.035839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972795, 42.061077, 54.772903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.714050, 41.758099, 54.808323>,  <30.558804, 41.576309, 54.829575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.714050, 41.758099, 54.808323>,  <30.972795, 42.061077, 54.772903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.714050, 41.758099, 54.808323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299695, -0.359266, -0.883805,
		0.701250, -0.545161, 0.459399,
		-0.646863, -0.757448, 0.088553,
		30.519991, 41.530865, 54.834888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445213, 41.515705, 54.669598>,  <30.972795, 42.061077, 54.772903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445213, 41.515705, 54.669598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.079456, 41.362621, 54.616802>,  <30.860003, 41.270771, 54.585125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.079456, 41.362621, 54.616802>,  <31.445213, 41.515705, 54.669598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079456, 41.362621, 54.616802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346028, -0.569642, -0.745501,
		0.210122, -0.727353, 0.653304,
		-0.914392, -0.382708, -0.131990,
		30.805140, 41.247810, 54.577206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573677, 40.840622, 54.587315>,  <31.445213, 41.515705, 54.669598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573677, 40.840622, 54.587315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.226252, 40.917507, 54.404602>,  <31.017796, 40.963638, 54.294975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.226252, 40.917507, 54.404602>,  <31.573677, 40.840622, 54.587315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226252, 40.917507, 54.404602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277912, -0.574227, -0.770084,
		-0.410316, -0.795813, 0.445335,
		-0.868566, 0.192214, -0.456780,
		30.965683, 40.975170, 54.267567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227819, 40.250851, 54.401867>,  <31.573677, 40.840622, 54.587315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227819, 40.250851, 54.401867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.132444, 40.539665, 54.142078>,  <31.075218, 40.712955, 53.986206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.132444, 40.539665, 54.142078>,  <31.227819, 40.250851, 54.401867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132444, 40.539665, 54.142078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436967, -0.517474, -0.735718,
		-0.867299, -0.459219, -0.192120,
		-0.238438, 0.722037, -0.649468,
		31.060913, 40.756275, 53.947239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884420, 39.967304, 53.768974>,  <31.227819, 40.250851, 54.401867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884420, 39.967304, 53.768974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.036812, 40.323853, 53.670731>,  <31.128246, 40.537781, 53.611786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.036812, 40.323853, 53.670731>,  <30.884420, 39.967304, 53.768974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036812, 40.323853, 53.670731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559219, -0.433691, -0.706531,
		-0.736295, 0.131825, -0.663695,
		0.380977, 0.891367, -0.245605,
		31.151104, 40.591263, 53.597050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878492, 39.943733, 53.026970>,  <30.884420, 39.967304, 53.768974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878492, 39.943733, 53.026970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.128094, 40.251728, 53.080235>,  <31.277855, 40.436527, 53.112194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.128094, 40.251728, 53.080235>,  <30.878492, 39.943733, 53.026970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128094, 40.251728, 53.080235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641954, -0.407975, -0.649193,
		-0.445548, 0.490581, -0.748878,
		0.624005, 0.769991, 0.133157,
		31.315296, 40.482727, 53.120182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106234, 39.893970, 52.319157>,  <30.878492, 39.943733, 53.026970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106234, 39.893970, 52.319157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.351553, 40.122353, 52.537472>,  <31.498745, 40.259380, 52.668461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.351553, 40.122353, 52.537472>,  <31.106234, 39.893970, 52.319157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.351553, 40.122353, 52.537472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789574, -0.424848, -0.442805,
		-0.020945, 0.702509, -0.711367,
		0.613297, 0.570951, 0.545785,
		31.535542, 40.293636, 52.701206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.526293, 40.306396, 51.932678>,  <31.106234, 39.893970, 52.319157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.526293, 40.306396, 51.932678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.717394, 40.257252, 52.280621>,  <31.832054, 40.227764, 52.489388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.717394, 40.257252, 52.280621>,  <31.526293, 40.306396, 51.932678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717394, 40.257252, 52.280621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706032, -0.535508, -0.463411,
		0.522754, 0.835545, -0.169093,
		0.477752, -0.122865, 0.869861,
		31.860720, 40.220394, 52.541580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285950, 40.249031, 51.702091>,  <31.526293, 40.306396, 51.932678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285950, 40.249031, 51.702091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.291481, 40.127377, 52.083103>,  <32.294800, 40.054382, 52.311710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.291481, 40.127377, 52.083103>,  <32.285950, 40.249031, 51.702091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291481, 40.127377, 52.083103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800406, -0.567590, -0.192854,
		0.599299, 0.765075, 0.235585,
		0.013832, -0.304140, 0.952527,
		32.295631, 40.036133, 52.368862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949177, 40.469177, 51.998016>,  <32.285950, 40.249031, 51.702091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949177, 40.469177, 51.998016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.807110, 40.158382, 52.205917>,  <32.721870, 39.971905, 52.330658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.807110, 40.158382, 52.205917>,  <32.949177, 40.469177, 51.998016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807110, 40.158382, 52.205917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802536, -0.538555, -0.256698,
		0.479369, 0.325953, 0.814837,
		-0.355163, -0.776989, 0.519756,
		32.700562, 39.925285, 52.361843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444595, 40.243008, 52.596424>,  <32.949177, 40.469177, 51.998016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444595, 40.243008, 52.596424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.216316, 39.930477, 52.495365>,  <33.079350, 39.742958, 52.434731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.216316, 39.930477, 52.495365>,  <33.444595, 40.243008, 52.596424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216316, 39.930477, 52.495365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811295, -0.584039, -0.026438,
		-0.126897, -0.220057, 0.967198,
		-0.570699, -0.781328, -0.252644,
		33.045105, 39.696079, 52.419571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793686, 39.785877, 52.916325>,  <33.444595, 40.243008, 52.596424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793686, 39.785877, 52.916325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.570438, 39.577339, 52.658115>,  <33.436489, 39.452217, 52.503189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.570438, 39.577339, 52.658115>,  <33.793686, 39.785877, 52.916325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570438, 39.577339, 52.658115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769702, -0.615879, -0.168084,
		-0.309935, -0.590671, 0.745015,
		-0.558122, -0.521345, -0.645523,
		33.403004, 39.420937, 52.464458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134830, 39.095970, 52.955338>,  <33.793686, 39.785877, 52.916325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134830, 39.095970, 52.955338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.903969, 39.082966, 52.628941>,  <33.765453, 39.075161, 52.433102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.903969, 39.082966, 52.628941>,  <34.134830, 39.095970, 52.955338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903969, 39.082966, 52.628941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683317, -0.566386, -0.460744,
		-0.447183, -0.823498, 0.349109,
		-0.577153, -0.032515, -0.815988,
		33.730824, 39.073212, 52.384144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205807, 38.414463, 52.655132>,  <34.134830, 39.095970, 52.955338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205807, 38.414463, 52.655132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.074188, 38.649544, 52.359474>,  <33.995216, 38.790592, 52.182079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.074188, 38.649544, 52.359474>,  <34.205807, 38.414463, 52.655132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074188, 38.649544, 52.359474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678303, -0.397473, -0.617997,
		-0.656988, -0.704714, -0.267853,
		-0.329046, 0.587702, -0.739145,
		33.975475, 38.825855, 52.137730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094509, 37.979862, 52.053310>,  <34.205807, 38.414463, 52.655132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094509, 37.979862, 52.053310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.129738, 38.350025, 51.905872>,  <34.150875, 38.572124, 51.817410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.129738, 38.350025, 51.905872>,  <34.094509, 37.979862, 52.053310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129738, 38.350025, 51.905872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569513, -0.350373, -0.743569,
		-0.817251, -0.144432, -0.557890,
		0.088074, 0.925407, -0.368598,
		34.156158, 38.627647, 51.795292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841419, 38.001339, 51.366730>,  <34.094509, 37.979862, 52.053310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841419, 38.001339, 51.366730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.098297, 38.307518, 51.383064>,  <34.252426, 38.491226, 51.392864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.098297, 38.307518, 51.383064>,  <33.841419, 38.001339, 51.366730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098297, 38.307518, 51.383064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520951, -0.396743, -0.755782,
		-0.562310, 0.506637, -0.653549,
		0.642198, 0.765450, 0.040841,
		34.290955, 38.537151, 51.395317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950359, 38.099701, 50.768734>,  <33.841419, 38.001339, 51.366730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950359, 38.099701, 50.768734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.248695, 38.315235, 50.925385>,  <34.427696, 38.444557, 51.019375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.248695, 38.315235, 50.925385>,  <33.950359, 38.099701, 50.768734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248695, 38.315235, 50.925385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622843, -0.355659, -0.696831,
		-0.236194, 0.763648, -0.600878,
		0.745841, 0.538840, 0.391628,
		34.472446, 38.476887, 51.042873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401344, 38.533165, 50.191570>,  <33.950359, 38.099701, 50.768734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401344, 38.533165, 50.191570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.622257, 38.444824, 50.513119>,  <34.754807, 38.391819, 50.706047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.622257, 38.444824, 50.513119>,  <34.401344, 38.533165, 50.191570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622257, 38.444824, 50.513119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691907, -0.416454, -0.589773,
		0.465028, 0.881924, -0.077190,
		0.552281, -0.220853, 0.803872,
		34.787941, 38.378567, 50.754280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084015, 38.564610, 49.974670>,  <34.401344, 38.533165, 50.191570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084015, 38.564610, 49.974670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.183502, 38.438316, 50.340939>,  <35.243195, 38.362541, 50.560699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.183502, 38.438316, 50.340939>,  <35.084015, 38.564610, 49.974670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183502, 38.438316, 50.340939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889634, -0.299360, -0.344869,
		0.383001, 0.900387, 0.206428,
		0.248720, -0.315731, 0.915671,
		35.258118, 38.343597, 50.615639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770294, 38.735580, 50.081604>,  <35.084015, 38.564610, 49.974670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770294, 38.735580, 50.081604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.684757, 38.434361, 50.330502>,  <35.633434, 38.253628, 50.479839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.684757, 38.434361, 50.330502>,  <35.770294, 38.735580, 50.081604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684757, 38.434361, 50.330502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766396, -0.524300, -0.371142,
		0.605731, 0.397519, 0.689252,
		-0.213839, -0.753053, 0.622242,
		35.620605, 38.208447, 50.517174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402576, 38.521198, 50.339764>,  <35.770294, 38.735580, 50.081604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402576, 38.521198, 50.339764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.159664, 38.211609, 50.411514>,  <36.013916, 38.025856, 50.454563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.159664, 38.211609, 50.411514>,  <36.402576, 38.521198, 50.339764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159664, 38.211609, 50.411514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676586, -0.622156, -0.393896,
		0.416465, -0.117842, 0.901482,
		-0.607280, -0.773974, 0.179376,
		35.977482, 37.979416, 50.465328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781342, 37.940300, 50.558807>,  <36.402576, 38.521198, 50.339764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781342, 37.940300, 50.558807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.444427, 37.761837, 50.437813>,  <36.242279, 37.654758, 50.365215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.444427, 37.761837, 50.437813>,  <36.781342, 37.940300, 50.558807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444427, 37.761837, 50.437813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529931, -0.788086, -0.313198,
		-0.098650, -0.424099, 0.900227,
		-0.842283, -0.446161, -0.302488,
		36.191742, 37.627987, 50.347065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829021, 37.274178, 50.819504>,  <36.781342, 37.940300, 50.558807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829021, 37.274178, 50.819504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.565044, 37.262070, 50.519222>,  <36.406658, 37.254803, 50.339054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.565044, 37.262070, 50.519222>,  <36.829021, 37.274178, 50.819504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565044, 37.262070, 50.519222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465596, -0.800674, -0.377016,
		-0.589657, -0.598335, 0.542495,
		-0.659943, -0.030273, -0.750705,
		36.367062, 37.252987, 50.294010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608887, 36.589840, 50.763626>,  <36.829021, 37.274178, 50.819504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608887, 36.589840, 50.763626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.525932, 36.759228, 50.410885>,  <36.476158, 36.860859, 50.199242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.525932, 36.759228, 50.410885>,  <36.608887, 36.589840, 50.763626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525932, 36.759228, 50.410885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406746, -0.782511, -0.471417,
		-0.889690, -0.456457, -0.009959,
		-0.207389, 0.423466, -0.881854,
		36.463715, 36.886269, 50.146328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332016, 36.066730, 50.380413>,  <36.608887, 36.589840, 50.763626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332016, 36.066730, 50.380413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.395092, 36.333244, 50.088879>,  <36.432938, 36.493153, 49.913960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.395092, 36.333244, 50.088879>,  <36.332016, 36.066730, 50.380413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395092, 36.333244, 50.088879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468976, -0.700052, -0.538506,
		-0.869020, -0.256891, -0.422860,
		0.157687, 0.666284, -0.728836,
		36.442398, 36.533131, 49.870228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090424, 35.802399, 49.764080>,  <36.332016, 36.066730, 50.380413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090424, 35.802399, 49.764080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.377865, 36.060074, 49.659290>,  <36.550331, 36.214680, 49.596416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.377865, 36.060074, 49.659290>,  <36.090424, 35.802399, 49.764080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377865, 36.060074, 49.659290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409848, -0.696652, -0.588812,
		-0.561812, 0.315752, -0.764636,
		0.718604, 0.644186, -0.261977,
		36.593445, 36.253330, 49.580696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065578, 35.865551, 49.049553>,  <36.090424, 35.802399, 49.764080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065578, 35.865551, 49.049553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.433701, 35.961155, 49.173435>,  <36.654572, 36.018517, 49.247765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.433701, 35.961155, 49.173435>,  <36.065578, 35.865551, 49.049553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433701, 35.961155, 49.173435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380224, -0.732757, -0.564356,
		0.092055, 0.637136, -0.765234,
		0.920302, 0.239008, 0.309709,
		36.709789, 36.032856, 49.266346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389286, 35.916893, 48.442654>,  <36.065578, 35.865551, 49.049553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389286, 35.916893, 48.442654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.610958, 35.850479, 48.768921>,  <36.743961, 35.810631, 48.964684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.610958, 35.850479, 48.768921>,  <36.389286, 35.916893, 48.442654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610958, 35.850479, 48.768921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320805, -0.861606, -0.393343,
		0.768095, 0.479654, -0.424220,
		0.554179, -0.166033, 0.815671,
		36.777210, 35.800671, 49.013622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729103, 36.440052, 48.423283>,  <36.389286, 35.916893, 48.442654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729103, 36.440052, 48.423283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.826790, 36.553928, 48.052486>,  <35.885403, 36.622253, 47.830009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.826790, 36.553928, 48.052486>,  <35.729103, 36.440052, 48.423283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826790, 36.553928, 48.052486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846723, 0.528556, -0.060739,
		0.472675, 0.799736, 0.370135,
		0.244212, 0.284692, -0.926990,
		35.900055, 36.639336, 47.774391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642803, 37.228920, 48.400955>,  <35.729103, 36.440052, 48.423283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642803, 37.228920, 48.400955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.571259, 37.055038, 48.047901>,  <35.528332, 36.950710, 47.836067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.571259, 37.055038, 48.047901>,  <35.642803, 37.228920, 48.400955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571259, 37.055038, 48.047901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913242, 0.407125, -0.015450,
		0.366059, 0.803296, -0.469804,
		-0.178858, -0.434700, -0.882635,
		35.517601, 36.924629, 47.783112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447918, 37.766323, 47.939095>,  <35.642803, 37.228920, 48.400955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447918, 37.766323, 47.939095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.297581, 37.426392, 47.791294>,  <35.207378, 37.222431, 47.702614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.297581, 37.426392, 47.791294>,  <35.447918, 37.766323, 47.939095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297581, 37.426392, 47.791294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868589, 0.462022, -0.179133,
		0.322950, 0.253619, -0.911801,
		-0.375840, -0.849831, -0.369501,
		35.184830, 37.171444, 47.680443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293236, 37.781910, 47.168209>,  <35.447918, 37.766323, 47.939095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293236, 37.781910, 47.168209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.056072, 37.533802, 47.373627>,  <34.913776, 37.384937, 47.496876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.056072, 37.533802, 47.373627>,  <35.293236, 37.781910, 47.168209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056072, 37.533802, 47.373627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774725, 0.613352, -0.153624,
		-0.219694, -0.488938, -0.844200,
		-0.592905, -0.620273, 0.513542,
		34.878201, 37.347721, 47.527691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683670, 38.027908, 46.921024>,  <35.293236, 37.781910, 47.168209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683670, 38.027908, 46.921024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.597603, 37.796089, 47.235432>,  <34.545963, 37.656998, 47.424076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.597603, 37.796089, 47.235432>,  <34.683670, 38.027908, 46.921024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597603, 37.796089, 47.235432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805477, 0.560420, 0.192709,
		-0.552185, -0.591654, -0.587398,
		-0.215172, -0.579547, 0.786019,
		34.533051, 37.622227, 47.471237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008316, 37.842991, 46.857155>,  <34.683670, 38.027908, 46.921024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008316, 37.842991, 46.857155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.058182, 37.797718, 47.251446>,  <34.088100, 37.770554, 47.488018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.058182, 37.797718, 47.251446>,  <34.008316, 37.842991, 46.857155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058182, 37.797718, 47.251446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898630, 0.408285, 0.160526,
		-0.420624, -0.905811, -0.050814,
		0.124660, -0.113184, 0.985723,
		34.095581, 37.763763, 47.547161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355881, 37.618954, 47.079159>,  <34.008316, 37.842991, 46.857155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355881, 37.618954, 47.079159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.539070, 37.707535, 47.423534>,  <33.648983, 37.760685, 47.630161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.539070, 37.707535, 47.423534>,  <33.355881, 37.618954, 47.079159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539070, 37.707535, 47.423534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862331, 0.345969, 0.369716,
		-0.215984, -0.911736, 0.349411,
		0.457969, 0.221455, 0.860943,
		33.676460, 37.773972, 47.681816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963970, 37.300850, 47.485188>,  <33.355881, 37.618954, 47.079159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963970, 37.300850, 47.485188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.152199, 37.576675, 47.705395>,  <33.265137, 37.742168, 47.837521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.152199, 37.576675, 47.705395>,  <32.963970, 37.300850, 47.485188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152199, 37.576675, 47.705395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880177, 0.322933, 0.347855,
		0.062087, -0.648242, 0.758898,
		0.470568, 0.689562, 0.550518,
		33.293369, 37.783543, 47.870552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776890, 37.121689, 48.207817>,  <32.963970, 37.300850, 47.485188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776890, 37.121689, 48.207817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.868904, 37.510178, 48.183105>,  <32.924110, 37.743271, 48.168278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.868904, 37.510178, 48.183105>,  <32.776890, 37.121689, 48.207817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868904, 37.510178, 48.183105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841432, 0.230388, 0.488788,
		0.488955, -0.060451, 0.870212,
		0.230034, 0.971220, -0.061784,
		32.937916, 37.801544, 48.164570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565125, 37.332787, 48.834206>,  <32.776890, 37.121689, 48.207817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565125, 37.332787, 48.834206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.581985, 37.675846, 48.629204>,  <32.592102, 37.881683, 48.506203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.581985, 37.675846, 48.629204>,  <32.565125, 37.332787, 48.834206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581985, 37.675846, 48.629204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750335, 0.365882, 0.550570,
		0.659713, 0.361344, 0.658946,
		0.042151, 0.857648, -0.512506,
		32.594631, 37.933140, 48.475452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657154, 37.832958, 49.247059>,  <32.565125, 37.332787, 48.834206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657154, 37.832958, 49.247059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.501575, 38.038319, 48.941082>,  <32.408230, 38.161537, 48.757496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.501575, 38.038319, 48.941082>,  <32.657154, 37.832958, 49.247059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501575, 38.038319, 48.941082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815515, 0.194375, 0.545119,
		0.428552, 0.835843, 0.343088,
		-0.388946, 0.513405, -0.764942,
		32.384892, 38.192341, 48.711601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442146, 38.591362, 49.486416>,  <32.657154, 37.832958, 49.247059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442146, 38.591362, 49.486416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.253681, 38.523968, 49.140095>,  <32.140602, 38.483532, 48.932301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.253681, 38.523968, 49.140095>,  <32.442146, 38.591362, 49.486416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253681, 38.523968, 49.140095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818059, 0.450521, 0.357506,
		0.329828, 0.876723, -0.350102,
		-0.471162, -0.168488, -0.865805,
		32.112331, 38.473423, 48.880352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039780, 39.138412, 49.360954>,  <32.442146, 38.591362, 49.486416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039780, 39.138412, 49.360954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.857466, 38.896221, 49.099987>,  <31.748077, 38.750904, 48.943405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.857466, 38.896221, 49.099987>,  <32.039780, 39.138412, 49.360954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857466, 38.896221, 49.099987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884705, 0.388667, 0.257362,
		0.097746, 0.694500, -0.712822,
		-0.455789, -0.605481, -0.652418,
		31.720730, 38.714577, 48.904263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565491, 39.512806, 48.861950>,  <32.039780, 39.138412, 49.360954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565491, 39.512806, 48.861950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.435368, 39.134605, 48.856178>,  <31.357294, 38.907684, 48.852715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.435368, 39.134605, 48.856178>,  <31.565491, 39.512806, 48.861950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.435368, 39.134605, 48.856178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880992, 0.297500, 0.367896,
		-0.343553, 0.132389, -0.929755,
		-0.325308, -0.945498, -0.014427,
		31.337776, 38.850956, 48.851849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884125, 39.604351, 48.563805>,  <31.565491, 39.512806, 48.861950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884125, 39.604351, 48.563805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.883614, 39.241901, 48.733006>,  <30.883307, 39.024429, 48.834526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.883614, 39.241901, 48.733006>,  <30.884125, 39.604351, 48.563805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883614, 39.241901, 48.733006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799514, 0.255003, 0.543831,
		-0.600647, -0.337505, -0.724785,
		-0.001277, -0.906126, 0.423007,
		30.883230, 38.970062, 48.859909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.295311, 39.190872, 48.326061>,  <30.884125, 39.604351, 48.563805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.295311, 39.190872, 48.326061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.415497, 39.064980, 48.686207>,  <30.487608, 38.989445, 48.902294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.415497, 39.064980, 48.686207>,  <30.295311, 39.190872, 48.326061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415497, 39.064980, 48.686207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871204, 0.293677, 0.393392,
		-0.388231, -0.902606, -0.185956,
		0.300467, -0.314733, 0.900368,
		30.505636, 38.970558, 48.956318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.669537, 39.142483, 48.670979>,  <30.295311, 39.190872, 48.326061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.669537, 39.142483, 48.670979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.939327, 39.112103, 48.964729>,  <30.101202, 39.093876, 49.140980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.939327, 39.112103, 48.964729>,  <29.669537, 39.142483, 48.670979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.939327, 39.112103, 48.964729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656853, 0.392421, 0.643856,
		-0.337086, -0.916645, 0.214792,
		0.674476, -0.075948, 0.734380,
		30.141670, 39.089317, 49.185043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.337267, 38.877968, 49.321522>,  <29.669537, 39.142483, 48.670979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.337267, 38.877968, 49.321522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.676056, 39.019722, 49.480038>,  <29.879330, 39.104774, 49.575146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.676056, 39.019722, 49.480038>,  <29.337267, 38.877968, 49.321522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676056, 39.019722, 49.480038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529306, 0.492444, 0.690893,
		0.049690, -0.794929, 0.604665,
		0.846974, 0.354383, 0.396291,
		29.930149, 39.126038, 49.598927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.195505, 38.841007, 50.040504>,  <29.337267, 38.877968, 49.321522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.195505, 38.841007, 50.040504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.509903, 39.087967, 50.027691>,  <29.698542, 39.236141, 50.020004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.509903, 39.087967, 50.027691>,  <29.195505, 38.841007, 50.040504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.509903, 39.087967, 50.027691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277558, 0.398702, 0.874070,
		0.552423, -0.678125, 0.484743,
		0.785996, 0.617400, -0.032033,
		29.745703, 39.273186, 50.018082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622807, 38.645401, 50.623337>,  <29.195505, 38.841007, 50.040504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.622807, 38.645401, 50.623337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.712704, 39.020279, 50.516636>,  <29.766642, 39.245205, 50.452618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.712704, 39.020279, 50.516636>,  <29.622807, 38.645401, 50.623337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.712704, 39.020279, 50.516636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210249, 0.313944, 0.925870,
		0.951465, -0.151998, 0.267601,
		0.224742, 0.937195, -0.266749,
		29.780127, 39.301437, 50.436611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105080, 38.959564, 51.160763>,  <29.622807, 38.645401, 50.623337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105080, 38.959564, 51.160763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.942436, 39.271416, 50.970245>,  <29.844851, 39.458527, 50.855934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.942436, 39.271416, 50.970245>,  <30.105080, 38.959564, 51.160763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942436, 39.271416, 50.970245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356753, 0.344449, 0.868379,
		0.841068, 0.523009, 0.138078,
		-0.406609, 0.779626, -0.476291,
		29.820454, 39.505302, 50.827358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.243204, 39.624359, 51.595592>,  <30.105080, 38.959564, 51.160763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.243204, 39.624359, 51.595592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.947546, 39.720768, 51.344013>,  <29.770151, 39.778614, 51.193066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.947546, 39.720768, 51.344013>,  <30.243204, 39.624359, 51.595592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.947546, 39.720768, 51.344013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460358, 0.500846, 0.732955,
		0.491663, 0.831301, -0.259241,
		-0.739146, 0.241024, -0.628944,
		29.725801, 39.793076, 51.155331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.150267, 40.125088, 51.966637>,  <30.243204, 39.624359, 51.595592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.150267, 40.125088, 51.966637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.838928, 40.143345, 51.716167>,  <29.652124, 40.154297, 51.565887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.838928, 40.143345, 51.716167>,  <30.150267, 40.125088, 51.966637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.838928, 40.143345, 51.716167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454559, 0.646999, 0.612184,
		0.433072, 0.761124, -0.482844,
		-0.778347, 0.045639, -0.626173,
		29.605425, 40.157036, 51.528316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.963026, 40.864910, 51.971489>,  <30.150267, 40.125088, 51.966637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.963026, 40.864910, 51.971489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.637363, 40.676247, 51.836025>,  <29.441965, 40.563049, 51.754745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.637363, 40.676247, 51.836025>,  <29.963026, 40.864910, 51.971489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.637363, 40.676247, 51.836025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554760, 0.459655, 0.693512,
		-0.171432, 0.752502, -0.635886,
		-0.814157, -0.471654, -0.338658,
		29.393116, 40.534752, 51.734428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472589, 41.329197, 51.794048>,  <29.963026, 40.864910, 51.971489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472589, 41.329197, 51.794048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.290222, 40.985390, 51.886459>,  <29.180801, 40.779106, 51.941906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.290222, 40.985390, 51.886459>,  <29.472589, 41.329197, 51.794048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.290222, 40.985390, 51.886459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460553, 0.449953, 0.765136,
		-0.761596, 0.242442, -0.600994,
		-0.455920, -0.859514, 0.231025,
		29.153446, 40.727535, 51.955769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.770882, 41.531166, 51.986691>,  <29.472589, 41.329197, 51.794048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.770882, 41.531166, 51.986691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.808666, 41.164532, 52.142094>,  <28.831337, 40.944550, 52.235336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.808666, 41.164532, 52.142094>,  <28.770882, 41.531166, 51.986691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.808666, 41.164532, 52.142094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642061, 0.242154, 0.727405,
		-0.760812, -0.318159, -0.565633,
		0.094460, -0.916589, 0.388511,
		28.837004, 40.889553, 52.258648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.136272, 41.218433, 52.173340>,  <28.770882, 41.531166, 51.986691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.136272, 41.218433, 52.173340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.377518, 40.989754, 52.395844>,  <28.522264, 40.852547, 52.529346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.377518, 40.989754, 52.395844>,  <28.136272, 41.218433, 52.173340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.377518, 40.989754, 52.395844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579981, 0.164457, 0.797857,
		-0.547611, -0.803815, -0.232387,
		0.603111, -0.571696, 0.556256,
		28.558451, 40.818245, 52.562721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.641916, 40.836369, 52.511425>,  <28.136272, 41.218433, 52.173340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.641916, 40.836369, 52.511425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.978405, 40.781311, 52.720577>,  <28.180298, 40.748276, 52.846069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.978405, 40.781311, 52.720577>,  <27.641916, 40.836369, 52.511425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.978405, 40.781311, 52.720577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513294, 0.100621, 0.852294,
		-0.169922, -0.985358, 0.013995,
		0.841223, -0.137640, 0.522876,
		28.230772, 40.740021, 52.877441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.515339, 40.311405, 53.000702>,  <27.641916, 40.836369, 52.511425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.515339, 40.311405, 53.000702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.836460, 40.499474, 53.147373>,  <28.029133, 40.612316, 53.235374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.836460, 40.499474, 53.147373>,  <27.515339, 40.311405, 53.000702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.836460, 40.499474, 53.147373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472707, 0.127076, 0.872009,
		0.363398, -0.873379, 0.324270,
		0.802801, 0.470171, 0.366674,
		28.077301, 40.640526, 53.257374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.407698, 40.252041, 53.706604>,  <27.515339, 40.311405, 53.000702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.407698, 40.252041, 53.706604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.691608, 40.533516, 53.693729>,  <27.861956, 40.702400, 53.686005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.691608, 40.533516, 53.693729>,  <27.407698, 40.252041, 53.706604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.691608, 40.533516, 53.693729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315124, 0.358057, 0.878915,
		0.630009, -0.613692, 0.475890,
		0.709778, 0.703689, -0.032190,
		27.904543, 40.744621, 53.684074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.627089, 40.208130, 54.373547>,  <27.407698, 40.252041, 53.706604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.627089, 40.208130, 54.373547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.722757, 40.568920, 54.229748>,  <27.780159, 40.785393, 54.143467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.722757, 40.568920, 54.229748>,  <27.627089, 40.208130, 54.373547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.722757, 40.568920, 54.229748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157422, 0.401367, 0.902288,
		0.958131, -0.159207, 0.237986,
		0.239170, 0.901974, -0.359499,
		27.794508, 40.839512, 54.121899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175350, 40.506340, 54.827705>,  <27.627089, 40.208130, 54.373547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175350, 40.506340, 54.827705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.996405, 40.814217, 54.645519>,  <27.889038, 40.998943, 54.536209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.996405, 40.814217, 54.645519>,  <28.175350, 40.506340, 54.827705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.996405, 40.814217, 54.645519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196696, 0.412120, 0.889645,
		0.872454, 0.487583, -0.032973,
		-0.447364, 0.769688, -0.455461,
		27.862196, 41.045124, 54.508881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.510904, 41.015438, 55.167908>,  <28.175350, 40.506340, 54.827705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.510904, 41.015438, 55.167908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.169987, 41.156425, 55.013321>,  <27.965435, 41.241016, 54.920567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.169987, 41.156425, 55.013321>,  <28.510904, 41.015438, 55.167908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.169987, 41.156425, 55.013321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207243, 0.450838, 0.868214,
		0.480252, 0.820068, -0.311201,
		-0.852296, 0.352467, -0.386469,
		27.914297, 41.262165, 54.897381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.521908, 41.712894, 55.380325>,  <28.510904, 41.015438, 55.167908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.521908, 41.712894, 55.380325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.139751, 41.629303, 55.296848>,  <27.910458, 41.579147, 55.246761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.139751, 41.629303, 55.296848>,  <28.521908, 41.712894, 55.380325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.139751, 41.629303, 55.296848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294408, 0.617820, 0.729125,
		-0.023435, 0.758042, -0.651785,
		-0.955392, -0.208978, -0.208695,
		27.853134, 41.566608, 55.234241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.059406, 42.243855, 55.457603>,  <28.521908, 41.712894, 55.380325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.059406, 42.243855, 55.457603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.793203, 41.947220, 55.491428>,  <27.633482, 41.769238, 55.511723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.793203, 41.947220, 55.491428>,  <28.059406, 42.243855, 55.457603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.793203, 41.947220, 55.491428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380845, 0.434827, 0.816017,
		-0.641917, 0.510859, -0.571810,
		-0.665507, -0.741586, 0.084564,
		27.593552, 41.724743, 55.516796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.422985, 42.590034, 55.724106>,  <28.059406, 42.243855, 55.457603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.422985, 42.590034, 55.724106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.373646, 42.199348, 55.794315>,  <27.344042, 41.964935, 55.836441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.373646, 42.199348, 55.794315>,  <27.422985, 42.590034, 55.724106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.373646, 42.199348, 55.794315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619599, 0.213961, 0.755194,
		-0.775166, -0.015599, -0.631565,
		-0.123350, -0.976718, 0.175520,
		27.336641, 41.906334, 55.846970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.728687, 42.583397, 55.743217>,  <27.422985, 42.590034, 55.724106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.728687, 42.583397, 55.743217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.860596, 42.249229, 55.919094>,  <26.939741, 42.048729, 56.024620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.860596, 42.249229, 55.919094>,  <26.728687, 42.583397, 55.743217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.860596, 42.249229, 55.919094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626482, 0.154767, 0.763916,
		-0.706238, -0.527378, -0.472335,
		0.329771, -0.835416, 0.439695,
		26.959528, 41.998604, 56.051003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.181414, 42.225128, 55.930248>,  <26.728687, 42.583397, 55.743217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.181414, 42.225128, 55.930248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.468245, 42.091297, 56.174824>,  <26.640343, 42.010998, 56.321568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.468245, 42.091297, 56.174824>,  <26.181414, 42.225128, 55.930248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.468245, 42.091297, 56.174824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657106, -0.032002, 0.753119,
		-0.232414, -0.941823, -0.242804,
		0.717075, -0.334583, 0.611440,
		26.683367, 41.990921, 56.358257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.811689, 41.443165, 56.119022>,  <26.181414, 42.225128, 55.930248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.811689, 41.443165, 56.119022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.743904, 41.303978, 55.750198>,  <25.703232, 41.220467, 55.528904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.743904, 41.303978, 55.750198>,  <25.811689, 41.443165, 56.119022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.743904, 41.303978, 55.750198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678420, -0.719826, 0.146959,
		-0.714862, -0.600643, 0.358051,
		-0.169465, -0.347964, -0.922064,
		25.693066, 41.199589, 55.473579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.261629, 40.905460, 56.268215>,  <25.811689, 41.443165, 56.119022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.261629, 40.905460, 56.268215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.941362, 40.667538, 56.296864>,  <25.749203, 40.524784, 56.314053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.941362, 40.667538, 56.296864>,  <26.261629, 40.905460, 56.268215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.941362, 40.667538, 56.296864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349935, -0.561344, -0.749959,
		0.486287, -0.575406, 0.657596,
		-0.800669, -0.594811, 0.071620,
		25.701162, 40.489094, 56.318348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549458, 40.189564, 56.356659>,  <26.261629, 40.905460, 56.268215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.549458, 40.189564, 56.356659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.185581, 40.223598, 56.194069>,  <25.967255, 40.244019, 56.096516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.185581, 40.223598, 56.194069>,  <26.549458, 40.189564, 56.356659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.185581, 40.223598, 56.194069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189602, -0.785729, -0.588796,
		-0.369479, -0.612691, 0.698638,
		-0.909690, 0.085084, -0.406478,
		25.912674, 40.249123, 56.072124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.318975, 39.519257, 56.334709>,  <26.549458, 40.189564, 56.356659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.318975, 39.519257, 56.334709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.094330, 39.683319, 56.047276>,  <25.959541, 39.781757, 55.874817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.094330, 39.683319, 56.047276>,  <26.318975, 39.519257, 56.334709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.094330, 39.683319, 56.047276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060861, -0.845656, -0.530248,
		-0.825154, -0.341531, 0.449975,
		-0.561619, 0.410150, -0.718582,
		25.925844, 39.806366, 55.831699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.861187, 38.891449, 56.121235>,  <26.318975, 39.519257, 56.334709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.861187, 38.891449, 56.121235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.870201, 39.186417, 55.851212>,  <25.875610, 39.363400, 55.689198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.870201, 39.186417, 55.851212>,  <25.861187, 38.891449, 56.121235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.870201, 39.186417, 55.851212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266178, -0.655279, -0.706935,
		-0.963660, -0.163752, -0.211054,
		0.022537, 0.737424, -0.675054,
		25.876963, 39.407642, 55.648697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.569441, 38.588604, 55.604782>,  <25.861187, 38.891449, 56.121235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.569441, 38.588604, 55.604782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.776892, 38.887577, 55.438713>,  <25.901363, 39.066959, 55.339073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.776892, 38.887577, 55.438713>,  <25.569441, 38.588604, 55.604782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.776892, 38.887577, 55.438713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275598, -0.605807, -0.746354,
		-0.809364, 0.272659, -0.520179,
		0.518628, 0.747432, -0.415174,
		25.932480, 39.111805, 55.314159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.468132, 38.399029, 54.874943>,  <25.569441, 38.588604, 55.604782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.468132, 38.399029, 54.874943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.773489, 38.653198, 54.921349>,  <25.956703, 38.805702, 54.949192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.773489, 38.653198, 54.921349>,  <25.468132, 38.399029, 54.874943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.773489, 38.653198, 54.921349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551736, -0.548070, -0.628654,
		-0.335880, 0.543921, -0.768983,
		0.763395, 0.635428, 0.116015,
		26.002508, 38.843826, 54.956154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.545595, 38.753788, 54.245975>,  <25.468132, 38.399029, 54.874943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.545595, 38.753788, 54.245975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.899147, 38.763409, 54.432812>,  <26.111279, 38.769180, 54.544914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.899147, 38.763409, 54.432812>,  <25.545595, 38.753788, 54.245975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.899147, 38.763409, 54.432812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445039, -0.350441, -0.824095,
		0.143865, 0.936276, -0.320453,
		0.883880, 0.024056, 0.467095,
		26.164310, 38.770626, 54.572941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.994148, 38.982597, 53.716789>,  <25.545595, 38.753788, 54.245975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.994148, 38.982597, 53.716789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.238634, 38.865101, 54.010765>,  <26.385326, 38.794605, 54.187149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.238634, 38.865101, 54.010765>,  <25.994148, 38.982597, 53.716789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.238634, 38.865101, 54.010765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753272, -0.069083, -0.654071,
		0.242897, 0.953386, 0.179040,
		0.611214, -0.293738, 0.734939,
		26.421999, 38.776981, 54.231247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.587095, 39.155106, 53.353428>,  <25.994148, 38.982597, 53.716789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.587095, 39.155106, 53.353428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.710382, 38.937599, 53.665665>,  <26.784355, 38.807095, 53.853004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.710382, 38.937599, 53.665665>,  <26.587095, 39.155106, 53.353428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.710382, 38.937599, 53.665665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814896, -0.272470, -0.511571,
		0.490862, 0.793775, 0.359132,
		0.308220, -0.543766, 0.780589,
		26.802849, 38.774467, 53.899841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.154861, 39.397644, 53.494465>,  <26.587095, 39.155106, 53.353428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.154861, 39.397644, 53.494465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.117563, 39.012817, 53.597019>,  <27.095184, 38.781921, 53.658550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.117563, 39.012817, 53.597019>,  <27.154861, 39.397644, 53.494465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.117563, 39.012817, 53.597019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710802, -0.244640, -0.659478,
		0.697184, 0.120745, 0.706651,
		-0.093247, -0.962066, 0.256385,
		27.089590, 38.724197, 53.673935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.920734, 39.067505, 53.398743>,  <27.154861, 39.397644, 53.494465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.920734, 39.067505, 53.398743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.647776, 38.775150, 53.403358>,  <27.484001, 38.599735, 53.406128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.647776, 38.775150, 53.403358>,  <27.920734, 39.067505, 53.398743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.647776, 38.775150, 53.403358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505854, -0.483573, -0.714331,
		0.527679, -0.481619, 0.699713,
		-0.682397, -0.730890, 0.011543,
		27.443056, 38.555882, 53.406822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.243912, 38.443089, 53.414948>,  <27.920734, 39.067505, 53.398743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.243912, 38.443089, 53.414948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.886986, 38.341587, 53.265610>,  <27.672831, 38.280685, 53.176006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.886986, 38.341587, 53.265610>,  <28.243912, 38.443089, 53.414948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.886986, 38.341587, 53.265610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451342, -0.486327, -0.748182,
		0.008285, -0.836120, 0.548484,
		-0.892313, -0.253753, -0.373346,
		27.619291, 38.265461, 53.153606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.406120, 37.815891, 53.209263>,  <28.243912, 38.443089, 53.414948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.406120, 37.815891, 53.209263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.071259, 37.893101, 53.004555>,  <27.870342, 37.939426, 52.881729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.071259, 37.893101, 53.004555>,  <28.406120, 37.815891, 53.209263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.071259, 37.893101, 53.004555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388561, -0.448649, -0.804819,
		-0.384952, -0.872615, 0.300590,
		-0.837157, 0.193020, -0.511773,
		27.820112, 37.951008, 52.851021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.163294, 37.164604, 52.827568>,  <28.406120, 37.815891, 53.209263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.163294, 37.164604, 52.827568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.978405, 37.442825, 52.607548>,  <27.867472, 37.609756, 52.475536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.978405, 37.442825, 52.607548>,  <28.163294, 37.164604, 52.827568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.978405, 37.442825, 52.607548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310828, -0.453856, -0.835105,
		-0.830504, -0.556976, -0.006415,
		-0.462222, 0.695552, -0.550053,
		27.839739, 37.651489, 52.442532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.005724, 36.761093, 52.263691>,  <28.163294, 37.164604, 52.827568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.005724, 36.761093, 52.263691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.937141, 37.131474, 52.129101>,  <27.895992, 37.353703, 52.048347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.937141, 37.131474, 52.129101>,  <28.005724, 36.761093, 52.263691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.937141, 37.131474, 52.129101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363538, -0.257967, -0.895150,
		-0.915666, -0.275799, -0.292389,
		-0.171455, 0.925953, -0.336475,
		27.885704, 37.409260, 52.028160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.698793, 36.622345, 51.604046>,  <28.005724, 36.761093, 52.263691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.698793, 36.622345, 51.604046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.832947, 36.999165, 51.607124>,  <27.913439, 37.225258, 51.608971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.832947, 36.999165, 51.607124>,  <27.698793, 36.622345, 51.604046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.832947, 36.999165, 51.607124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405438, -0.136962, -0.903804,
		-0.850375, 0.306239, -0.427878,
		0.335384, 0.942050, 0.007692,
		27.933561, 37.281780, 51.609432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.486280, 36.821651, 50.980762>,  <27.698793, 36.622345, 51.604046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.486280, 36.821651, 50.980762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.767866, 37.077728, 51.103779>,  <27.936817, 37.231377, 51.177589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.767866, 37.077728, 51.103779>,  <27.486280, 36.821651, 50.980762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.767866, 37.077728, 51.103779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350306, 0.063707, -0.934466,
		-0.617834, 0.765565, -0.179417,
		0.703965, 0.640196, 0.307543,
		27.979055, 37.269787, 51.196041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.576891, 37.364307, 50.499947>,  <27.486280, 36.821651, 50.980762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.576891, 37.364307, 50.499947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.926466, 37.343483, 50.693245>,  <28.136211, 37.330990, 50.809223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.926466, 37.343483, 50.693245>,  <27.576891, 37.364307, 50.499947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.926466, 37.343483, 50.693245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482737, -0.022717, -0.875471,
		0.056555, 0.998385, 0.005279,
		0.873938, -0.052060, 0.483242,
		28.188646, 37.327866, 50.838219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.035622, 37.689186, 50.038151>,  <27.576891, 37.364307, 50.499947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.035622, 37.689186, 50.038151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.289108, 37.500248, 50.283195>,  <28.441200, 37.386887, 50.430222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.289108, 37.500248, 50.283195>,  <28.035622, 37.689186, 50.038151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.289108, 37.500248, 50.283195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659747, -0.083475, -0.746837,
		0.403903, 0.877452, 0.258730,
		0.633716, -0.472346, 0.612612,
		28.479223, 37.358543, 50.466980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.726780, 38.055817, 50.001141>,  <28.035622, 37.689186, 50.038151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.726780, 38.055817, 50.001141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.805319, 37.693375, 50.151031>,  <28.852442, 37.475910, 50.240967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.805319, 37.693375, 50.151031>,  <28.726780, 38.055817, 50.001141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.805319, 37.693375, 50.151031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575822, -0.202777, -0.792030,
		0.793648, 0.371290, 0.481940,
		0.196347, -0.906104, 0.374730,
		28.864223, 37.421543, 50.263451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.411774, 37.992271, 50.035320>,  <28.726780, 38.055817, 50.001141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.411774, 37.992271, 50.035320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.294670, 37.609932, 50.025108>,  <29.224407, 37.380527, 50.018982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.294670, 37.609932, 50.025108>,  <29.411774, 37.992271, 50.035320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.294670, 37.609932, 50.025108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657906, -0.181990, -0.730780,
		0.693867, -0.230737, 0.682135,
		-0.292760, -0.955845, -0.025526,
		29.206842, 37.323177, 50.017452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009497, 37.484467, 50.038204>,  <29.411774, 37.992271, 50.035320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009497, 37.484467, 50.038204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.695372, 37.313435, 49.859112>,  <29.506897, 37.210815, 49.751656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.695372, 37.313435, 49.859112>,  <30.009497, 37.484467, 50.038204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695372, 37.313435, 49.859112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592781, -0.310689, -0.743023,
		0.178595, -0.848911, 0.497447,
		-0.785312, -0.427577, -0.447731,
		29.459778, 37.185162, 49.724792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.362484, 36.933735, 49.778809>,  <30.009497, 37.484467, 50.038204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.362484, 36.933735, 49.778809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.996384, 36.910168, 49.619389>,  <29.776724, 36.896027, 49.523735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.996384, 36.910168, 49.619389>,  <30.362484, 36.933735, 49.778809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.996384, 36.910168, 49.619389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382760, -0.435899, -0.814547,
		-0.125739, -0.898065, 0.421508,
		-0.915251, -0.058916, -0.398553,
		29.721807, 36.892494, 49.499825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331556, 36.298386, 49.557819>,  <30.362484, 36.933735, 49.778809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331556, 36.298386, 49.557819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.051321, 36.490669, 49.346882>,  <29.883181, 36.606041, 49.220318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.051321, 36.490669, 49.346882>,  <30.331556, 36.298386, 49.557819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.051321, 36.490669, 49.346882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334644, -0.431375, -0.837812,
		-0.630229, -0.763434, 0.141349,
		-0.700589, 0.480712, -0.527344,
		29.841145, 36.634884, 49.188679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995058, 35.851051, 49.146278>,  <30.331556, 36.298386, 49.557819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995058, 35.851051, 49.146278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.936096, 36.203251, 48.966061>,  <29.900719, 36.414570, 48.857929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.936096, 36.203251, 48.966061>,  <29.995058, 35.851051, 49.146278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.936096, 36.203251, 48.966061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324728, -0.387184, -0.862925,
		-0.934250, -0.273502, -0.228851,
		-0.147404, 0.880503, -0.450540,
		29.891874, 36.467403, 48.830898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665874, 35.660374, 48.494579>,  <29.995058, 35.851051, 49.146278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665874, 35.660374, 48.494579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.761190, 36.036472, 48.397289>,  <29.818380, 36.262131, 48.338913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.761190, 36.036472, 48.397289>,  <29.665874, 35.660374, 48.494579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761190, 36.036472, 48.397289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210518, -0.294494, -0.932178,
		-0.948103, 0.170925, -0.268113,
		0.238290, 0.940243, -0.243228,
		29.832678, 36.318546, 48.324322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.375813, 35.840111, 47.839176>,  <29.665874, 35.660374, 48.494579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.375813, 35.840111, 47.839176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.672026, 36.102924, 47.895618>,  <29.849754, 36.260612, 47.929485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.672026, 36.102924, 47.895618>,  <29.375813, 35.840111, 47.839176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672026, 36.102924, 47.895618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295756, -0.130094, -0.946363,
		-0.603439, 0.742547, -0.290662,
		0.740533, 0.657038, 0.141109,
		29.894186, 36.300037, 47.937950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.550808, 36.164673, 47.165646>,  <29.375813, 35.840111, 47.839176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.550808, 36.164673, 47.165646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.865423, 36.189030, 47.411457>,  <30.054192, 36.203644, 47.558945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.865423, 36.189030, 47.411457>,  <29.550808, 36.164673, 47.165646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.865423, 36.189030, 47.411457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604201, -0.281609, -0.745410,
		0.127665, 0.957595, -0.258290,
		0.786538, 0.060896, 0.614532,
		30.101385, 36.207298, 47.595818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.089714, 36.349686, 46.729084>,  <29.550808, 36.164673, 47.165646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.089714, 36.349686, 46.729084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.239704, 36.189861, 47.063686>,  <30.329699, 36.093967, 47.264446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.239704, 36.189861, 47.063686>,  <30.089714, 36.349686, 46.729084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.239704, 36.189861, 47.063686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684128, -0.489658, -0.540559,
		0.625588, 0.774975, 0.089741,
		0.374977, -0.399562, 0.836506,
		30.352198, 36.069992, 47.314640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582148, 36.037235, 46.388844>,  <30.089714, 36.349686, 46.729084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582148, 36.037235, 46.388844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.644613, 35.894634, 46.757305>,  <30.682093, 35.809074, 46.978382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.644613, 35.894634, 46.757305>,  <30.582148, 36.037235, 46.388844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644613, 35.894634, 46.757305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607730, -0.700491, -0.374133,
		0.778637, 0.618238, 0.107264,
		0.156166, -0.356501, 0.921151,
		30.691463, 35.787685, 47.033649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257669, 35.739616, 46.456039>,  <30.582148, 36.037235, 46.388844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257669, 35.739616, 46.456039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.066298, 35.540161, 46.745167>,  <30.951475, 35.420486, 46.918644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.066298, 35.540161, 46.745167>,  <31.257669, 35.739616, 46.456039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066298, 35.540161, 46.745167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579507, -0.797727, -0.166746,
		0.659757, 0.339101, 0.670620,
		-0.478428, -0.498641, 0.722817,
		30.922770, 35.390568, 46.962013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751362, 35.476551, 46.882851>,  <31.257669, 35.739616, 46.456039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751362, 35.476551, 46.882851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.417978, 35.257881, 46.915081>,  <31.217949, 35.126678, 46.934422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.417978, 35.257881, 46.915081>,  <31.751362, 35.476551, 46.882851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417978, 35.257881, 46.915081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532901, -0.833750, -0.144491,
		0.146172, -0.077487, 0.986220,
		-0.833457, -0.546678, 0.080578,
		31.167942, 35.093880, 46.939255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938803, 34.912766, 47.023048>,  <31.751362, 35.476551, 46.882851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938803, 34.912766, 47.023048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.566637, 34.768917, 46.994747>,  <31.343338, 34.682610, 46.977768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.566637, 34.768917, 46.994747>,  <31.938803, 34.912766, 47.023048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566637, 34.768917, 46.994747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365257, -0.925760, -0.097750,
		-0.030343, -0.116789, 0.992693,
		-0.930412, -0.359622, -0.070748,
		31.287514, 34.661030, 46.973522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.808382, 34.444008, 47.579334>,  <31.938803, 34.912766, 47.023048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.808382, 34.444008, 47.579334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.576471, 34.351234, 47.266907>,  <31.437325, 34.295570, 47.079453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.576471, 34.351234, 47.266907>,  <31.808382, 34.444008, 47.579334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576471, 34.351234, 47.266907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482819, -0.869985, -0.100056,
		-0.656310, -0.435125, 0.616379,
		-0.579778, -0.231932, -0.781067,
		31.402538, 34.281654, 47.032585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558104, 33.696045, 47.728363>,  <31.808382, 34.444008, 47.579334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558104, 33.696045, 47.728363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.438560, 33.718212, 47.347286>,  <31.366835, 33.731510, 47.118641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.438560, 33.718212, 47.347286>,  <31.558104, 33.696045, 47.728363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438560, 33.718212, 47.347286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176831, -0.977808, -0.112348,
		-0.937772, -0.202040, 0.282425,
		-0.298856, 0.055416, -0.952688,
		31.348904, 33.734837, 47.061481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.134211, 33.035763, 47.528774>,  <31.558104, 33.696045, 47.728363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.134211, 33.035763, 47.528774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.278368, 33.167133, 47.179546>,  <31.364862, 33.245956, 46.970009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.278368, 33.167133, 47.179546>,  <31.134211, 33.035763, 47.528774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278368, 33.167133, 47.179546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119946, -0.944514, -0.305788,
		-0.925057, 0.005483, -0.379790,
		0.360393, 0.328426, -0.873071,
		31.386486, 33.265659, 46.917625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768257, 32.605736, 47.094212>,  <31.134211, 33.035763, 47.528774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768257, 32.605736, 47.094212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.069103, 32.726093, 46.859680>,  <31.249611, 32.798309, 46.718960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.069103, 32.726093, 46.859680>,  <30.768257, 32.605736, 47.094212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.069103, 32.726093, 46.859680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180067, -0.949659, -0.256367,
		-0.633953, 0.087240, -0.768436,
		0.752117, 0.300894, -0.586330,
		31.294739, 32.816360, 46.683781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.771404, 32.166653, 46.456646>,  <30.768257, 32.605736, 47.094212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.771404, 32.166653, 46.456646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.127239, 32.348995, 46.445126>,  <31.340740, 32.458401, 46.438213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.127239, 32.348995, 46.445126>,  <30.771404, 32.166653, 46.456646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127239, 32.348995, 46.445126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402755, -0.812582, -0.421305,
		-0.215459, 0.363188, -0.906461,
		0.889587, 0.455856, -0.028802,
		31.394115, 32.485752, 46.436485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.032835, 32.056007, 45.767540>,  <30.771404, 32.166653, 46.456646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.032835, 32.056007, 45.767540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.361629, 32.136066, 45.980812>,  <31.558907, 32.184101, 46.108776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.361629, 32.136066, 45.980812>,  <31.032835, 32.056007, 45.767540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361629, 32.136066, 45.980812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451419, -0.799765, -0.395723,
		0.347216, 0.565966, -0.747746,
		0.821987, 0.200145, 0.533179,
		31.608225, 32.196110, 46.140766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549711, 31.983980, 45.349434>,  <31.032835, 32.056007, 45.767540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549711, 31.983980, 45.349434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.725183, 31.939125, 45.706081>,  <31.830467, 31.912212, 45.920071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.725183, 31.939125, 45.706081>,  <31.549711, 31.983980, 45.349434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725183, 31.939125, 45.706081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476311, -0.812333, -0.336515,
		0.762028, 0.572310, -0.302943,
		0.438682, -0.112139, 0.891618,
		31.856789, 31.905483, 45.973568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252392, 31.822117, 45.284798>,  <31.549711, 31.983980, 45.349434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252392, 31.822117, 45.284798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.183632, 31.708445, 45.662090>,  <32.142376, 31.640242, 45.888466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.183632, 31.708445, 45.662090>,  <32.252392, 31.822117, 45.284798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183632, 31.708445, 45.662090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579339, -0.803572, -0.136519,
		0.796753, 0.522985, 0.302773,
		-0.171903, -0.284180, 0.943234,
		32.132061, 31.623190, 45.945061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816444, 31.919149, 45.715679>,  <32.252392, 31.822117, 45.284798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816444, 31.919149, 45.715679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.596283, 31.600721, 45.816338>,  <32.464188, 31.409664, 45.876732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.596283, 31.600721, 45.816338>,  <32.816444, 31.919149, 45.715679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596283, 31.600721, 45.816338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774018, -0.599525, -0.203630,
		0.312973, 0.082702, 0.946154,
		-0.550403, -0.796071, 0.251649,
		32.431164, 31.361900, 45.891830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327534, 31.412483, 45.970516>,  <32.816444, 31.919149, 45.715679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327534, 31.412483, 45.970516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.993279, 31.221315, 45.862221>,  <32.792725, 31.106615, 45.797245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.993279, 31.221315, 45.862221>,  <33.327534, 31.412483, 45.970516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993279, 31.221315, 45.862221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549011, -0.742026, -0.384689,
		-0.017043, -0.470098, 0.882450,
		-0.835642, -0.477918, -0.270735,
		32.742584, 31.077940, 45.781002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667477, 30.895061, 45.562080>,  <33.327534, 31.412483, 45.970516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667477, 30.895061, 45.562080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.296005, 30.760578, 45.624725>,  <33.073124, 30.679888, 45.662312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.296005, 30.760578, 45.624725>,  <33.667477, 30.895061, 45.562080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296005, 30.760578, 45.624725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281601, -0.913955, -0.292212,
		0.241378, -0.227269, 0.943444,
		-0.928675, -0.336208, 0.156609,
		33.017403, 30.659716, 45.671707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333912, 30.814293, 45.874969>,  <33.667477, 30.895061, 45.562080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333912, 30.814293, 45.874969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.390564, 30.463385, 45.691521>,  <34.424553, 30.252840, 45.581451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.390564, 30.463385, 45.691521>,  <34.333912, 30.814293, 45.874969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390564, 30.463385, 45.691521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949502, -0.010648, 0.313581,
		-0.279979, -0.479876, 0.831463,
		0.141627, -0.877271, -0.458625,
		34.433052, 30.200203, 45.553932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475616, 30.233921, 46.322346>,  <34.333912, 30.814293, 45.874969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475616, 30.233921, 46.322346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.684761, 30.153191, 45.991074>,  <34.810246, 30.104752, 45.792309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.684761, 30.153191, 45.991074>,  <34.475616, 30.233921, 46.322346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684761, 30.153191, 45.991074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845291, -0.002625, 0.534300,
		-0.110010, -0.979418, 0.169229,
		0.522859, -0.201826, -0.828182,
		34.841618, 30.092644, 45.742619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783356, 29.564024, 46.414402>,  <34.475616, 30.233921, 46.322346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783356, 29.564024, 46.414402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.011528, 29.802437, 46.188354>,  <35.148430, 29.945484, 46.052727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.011528, 29.802437, 46.188354>,  <34.783356, 29.564024, 46.414402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011528, 29.802437, 46.188354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714459, -0.020665, 0.699372,
		0.405170, -0.802695, -0.437628,
		0.570426, 0.596031, -0.565120,
		35.182655, 29.981247, 46.018818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444691, 29.349600, 46.242657>,  <34.783356, 29.564024, 46.414402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444691, 29.349600, 46.242657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.482624, 29.746988, 46.217293>,  <35.505383, 29.985422, 46.202076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.482624, 29.746988, 46.217293>,  <35.444691, 29.349600, 46.242657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482624, 29.746988, 46.217293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723749, -0.025071, 0.689607,
		0.683516, -0.111287, -0.721402,
		0.094831, 0.993472, -0.063408,
		35.511074, 30.045031, 46.198269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088123, 29.650648, 45.934101>,  <35.444691, 29.349600, 46.242657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088123, 29.650648, 45.934101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.951012, 29.906055, 46.209721>,  <35.868744, 30.059299, 46.375092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.951012, 29.906055, 46.209721>,  <36.088123, 29.650648, 45.934101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951012, 29.906055, 46.209721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936178, 0.171340, 0.306943,
		0.077926, 0.750290, -0.656500,
		-0.342781, 0.638519, 0.689053,
		35.848179, 30.097610, 46.416435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591152, 30.170462, 45.940998>,  <36.088123, 29.650648, 45.934101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591152, 30.170462, 45.940998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.395741, 30.265121, 46.276936>,  <36.278492, 30.321917, 46.478497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.395741, 30.265121, 46.276936>,  <36.591152, 30.170462, 45.940998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395741, 30.265121, 46.276936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855377, 0.319902, 0.407422,
		-0.172252, 0.917421, -0.358705,
		-0.488528, 0.236648, 0.839844,
		36.249184, 30.336117, 46.528889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683346, 30.923031, 46.079144>,  <36.591152, 30.170462, 45.940998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683346, 30.923031, 46.079144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.597984, 30.725729, 46.416466>,  <36.546768, 30.607347, 46.618858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.597984, 30.725729, 46.416466>,  <36.683346, 30.923031, 46.079144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597984, 30.725729, 46.416466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871425, 0.294134, 0.392560,
		-0.441676, 0.818649, 0.367065,
		-0.213403, -0.493254, 0.843303,
		36.533962, 30.577753, 46.669456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785000, 31.446222, 46.667313>,  <36.683346, 30.923031, 46.079144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785000, 31.446222, 46.667313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.790619, 31.082764, 46.834244>,  <36.793991, 30.864689, 46.934402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.790619, 31.082764, 46.834244>,  <36.785000, 31.446222, 46.667313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790619, 31.082764, 46.834244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861919, 0.222573, 0.455583,
		-0.506850, 0.353303, 0.786308,
		0.014052, -0.908647, 0.417329,
		36.794834, 30.810169, 46.959442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075935, 31.576267, 47.309078>,  <36.785000, 31.446222, 46.667313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075935, 31.576267, 47.309078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.088932, 31.177048, 47.287750>,  <37.096729, 30.937515, 47.274952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.088932, 31.177048, 47.287750>,  <37.075935, 31.576267, 47.309078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088932, 31.177048, 47.287750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861720, 0.000952, 0.507384,
		-0.506343, -0.062433, 0.860069,
		0.032496, -0.998049, -0.053318,
		37.098682, 30.877634, 47.271755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163845, 31.263641, 48.001816>,  <37.075935, 31.576267, 47.309078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163845, 31.263641, 48.001816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.305695, 30.991573, 47.745190>,  <37.390804, 30.828333, 47.591213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.305695, 30.991573, 47.745190>,  <37.163845, 31.263641, 48.001816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305695, 30.991573, 47.745190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875069, -0.000292, 0.483998,
		-0.329389, -0.733053, 0.595093,
		0.354622, -0.680171, -0.641568,
		37.412083, 30.787521, 47.552719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588940, 30.761374, 48.428921>,  <37.163845, 31.263641, 48.001816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588940, 30.761374, 48.428921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.692760, 30.684341, 48.050388>,  <37.755051, 30.638123, 47.823269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.692760, 30.684341, 48.050388>,  <37.588940, 30.761374, 48.428921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692760, 30.684341, 48.050388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942773, -0.161863, 0.291512,
		-0.209315, -0.967840, 0.139546,
		0.259549, -0.192578, -0.946334,
		37.770626, 30.626568, 47.766487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991116, 30.148571, 48.480770>,  <37.588940, 30.761374, 48.428921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991116, 30.148571, 48.480770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.093082, 30.338566, 48.143864>,  <38.154263, 30.452562, 47.941719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.093082, 30.338566, 48.143864>,  <37.991116, 30.148571, 48.480770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093082, 30.338566, 48.143864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947161, 0.052729, 0.316396,
		0.194695, -0.878412, -0.436447,
		0.254913, 0.474986, -0.842263,
		38.169556, 30.481062, 47.891186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577847, 29.797806, 48.157497>,  <37.991116, 30.148571, 48.480770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577847, 29.797806, 48.157497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.568382, 30.173372, 48.020164>,  <38.562702, 30.398712, 47.937763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.568382, 30.173372, 48.020164>,  <38.577847, 29.797806, 48.157497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568382, 30.173372, 48.020164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950089, 0.127986, 0.284516,
		0.311079, -0.319464, -0.895083,
		-0.023665, 0.938916, -0.343333,
		38.561283, 30.455048, 47.917164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044933, 29.803778, 47.607307>,  <38.577847, 29.797806, 48.157497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044933, 29.803778, 47.607307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.020973, 30.158377, 47.790844>,  <39.006596, 30.371136, 47.900967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.020973, 30.158377, 47.790844>,  <39.044933, 29.803778, 47.607307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020973, 30.158377, 47.790844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963880, -0.068135, 0.257472,
		0.259511, 0.457687, -0.850397,
		-0.059900, 0.886499, 0.458838,
		39.003002, 30.424326, 47.928493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564465, 30.085194, 47.357803>,  <39.044933, 29.803778, 47.607307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564465, 30.085194, 47.357803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.506943, 30.216478, 47.731239>,  <39.472431, 30.295250, 47.955303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.506943, 30.216478, 47.731239>,  <39.564465, 30.085194, 47.357803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506943, 30.216478, 47.731239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955904, -0.198037, 0.216859,
		0.256062, 0.923612, -0.285261,
		-0.143801, 0.328212, 0.933594,
		39.463802, 30.314941, 48.011318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828552, 30.163422, 46.544102>,  <39.564465, 30.085194, 47.357803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828552, 30.163422, 46.544102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.783092, 30.112654, 46.149948>,  <39.755817, 30.082193, 45.913456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.783092, 30.112654, 46.149948>,  <39.828552, 30.163422, 46.544102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783092, 30.112654, 46.149948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542081, 0.823247, -0.168559,
		0.832606, -0.553312, -0.024759,
		-0.113649, -0.126922, -0.985381,
		39.748997, 30.074577, 45.854336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473801, 29.927488, 46.298351>,  <39.828552, 30.163422, 46.544102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473801, 29.927488, 46.298351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.217155, 30.163712, 46.102566>,  <40.063168, 30.305447, 45.985092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.217155, 30.163712, 46.102566>,  <40.473801, 29.927488, 46.298351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217155, 30.163712, 46.102566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713999, 0.692996, -0.099809,
		0.280256, -0.413517, -0.866291,
		-0.641609, 0.590559, -0.489467,
		40.024673, 30.340879, 45.955727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629089, 30.050621, 45.576721>,  <40.473801, 29.927488, 46.298351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629089, 30.050621, 45.576721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.486759, 30.366293, 45.776955>,  <40.401360, 30.555696, 45.897095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.486759, 30.366293, 45.776955>,  <40.629089, 30.050621, 45.576721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486759, 30.366293, 45.776955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859180, 0.486988, -0.157014,
		-0.367690, 0.374220, -0.851330,
		-0.355830, 0.789178, 0.500583,
		40.380009, 30.603046, 45.927128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812748, 30.625704, 45.158882>,  <40.629089, 30.050621, 45.576721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.812748, 30.625704, 45.158882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.750881, 30.823080, 45.501247>,  <40.713760, 30.941505, 45.706669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.750881, 30.823080, 45.501247>,  <40.812748, 30.625704, 45.158882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.750881, 30.823080, 45.501247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752585, 0.620119, -0.221512,
		-0.640074, 0.609891, -0.467266,
		-0.154663, 0.493441, 0.855918,
		40.704483, 30.971113, 45.758022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697903, 31.176134, 45.019028>,  <40.812748, 30.625704, 45.158882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697903, 31.176134, 45.019028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.897411, 31.211359, 45.363926>,  <41.017117, 31.232494, 45.570866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.897411, 31.211359, 45.363926>,  <40.697903, 31.176134, 45.019028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897411, 31.211359, 45.363926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765300, 0.422256, -0.485815,
		-0.406871, 0.902189, 0.143216,
		0.498771, 0.088060, 0.862249,
		41.047043, 31.237778, 45.622601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971825, 31.839777, 45.130569>,  <40.697903, 31.176134, 45.019028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971825, 31.839777, 45.130569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.244530, 31.630556, 45.335159>,  <41.408154, 31.505024, 45.457912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.244530, 31.630556, 45.335159>,  <40.971825, 31.839777, 45.130569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244530, 31.630556, 45.335159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730908, 0.457282, -0.506622,
		0.031099, 0.719242, 0.694063,
		0.681767, -0.523052, 0.511479,
		41.449059, 31.473640, 45.488602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465500, 32.390869, 45.254143>,  <40.971825, 31.839777, 45.130569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.465500, 32.390869, 45.254143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.621857, 32.023380, 45.276585>,  <41.715672, 31.802885, 45.290051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.621857, 32.023380, 45.276585>,  <41.465500, 32.390869, 45.254143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.621857, 32.023380, 45.276585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758007, 0.286730, -0.585842,
		0.522142, 0.271527, 0.808481,
		0.390888, -0.918727, 0.056106,
		41.739124, 31.747763, 45.293415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.164349, 32.495483, 45.357735>,  <41.465500, 32.390869, 45.254143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.164349, 32.495483, 45.357735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.104908, 32.159218, 45.149429>,  <42.069244, 31.957458, 45.024445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.104908, 32.159218, 45.149429>,  <42.164349, 32.495483, 45.357735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104908, 32.159218, 45.149429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867658, 0.141813, -0.476507,
		0.474435, -0.522655, 0.708338,
		-0.148598, -0.840667, -0.520766,
		42.060329, 31.907017, 44.993198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.829464, 32.093689, 45.448017>,  <42.164349, 32.495483, 45.357735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.829464, 32.093689, 45.448017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.675751, 31.962543, 45.102802>,  <42.583523, 31.883858, 44.895672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.675751, 31.962543, 45.102802>,  <42.829464, 32.093689, 45.448017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.675751, 31.962543, 45.102802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842593, 0.257502, -0.473002,
		0.377312, -0.908956, 0.177299,
		-0.384283, -0.327860, -0.863038,
		42.560467, 31.864185, 44.843891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.529785, 32.326664, 45.191593>,  <42.829464, 32.093689, 45.448017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.529785, 32.326664, 45.191593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.320911, 32.131348, 44.911907>,  <43.195587, 32.014160, 44.744095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.320911, 32.131348, 44.911907>,  <43.529785, 32.326664, 45.191593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.320911, 32.131348, 44.911907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611043, 0.357728, -0.706157,
		0.594936, -0.795993, 0.111565,
		-0.522186, -0.488289, -0.699211,
		43.164257, 31.984861, 44.702145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.987087, 31.907076, 44.714909>,  <43.529785, 32.326664, 45.191593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.987087, 31.907076, 44.714909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.657249, 32.030552, 44.525276>,  <43.459347, 32.104637, 44.411499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.657249, 32.030552, 44.525276>,  <43.987087, 31.907076, 44.714909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.657249, 32.030552, 44.525276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533097, 0.143529, -0.833791,
		-0.189341, -0.940270, -0.282916,
		-0.824596, 0.308693, -0.474079,
		43.409870, 32.123158, 44.383053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.103001, 31.553448, 44.043312>,  <43.987087, 31.907076, 44.714909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.103001, 31.553448, 44.043312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.858990, 31.870001, 44.059246>,  <43.712585, 32.059933, 44.068806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.858990, 31.870001, 44.059246>,  <44.103001, 31.553448, 44.043312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.858990, 31.870001, 44.059246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555350, 0.462863, -0.690901,
		-0.565204, -0.399343, -0.721851,
		-0.610025, 0.791380, 0.039837,
		43.675983, 32.107414, 44.071198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.653851, 31.721060, 43.448643>,  <44.103001, 31.553448, 44.043312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.653851, 31.721060, 43.448643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.714401, 32.075439, 43.623997>,  <43.750732, 32.288067, 43.729210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.714401, 32.075439, 43.623997>,  <43.653851, 31.721060, 43.448643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.714401, 32.075439, 43.623997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450598, 0.332889, -0.828339,
		-0.879800, 0.322923, -0.348817,
		0.151372, 0.885949, 0.438384,
		43.759811, 32.341225, 43.755512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.452106, 32.153587, 43.015404>,  <43.653851, 31.721060, 43.448643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.452106, 32.153587, 43.015404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.709450, 32.373512, 43.228493>,  <43.863853, 32.505466, 43.356346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.709450, 32.373512, 43.228493>,  <43.452106, 32.153587, 43.015404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.709450, 32.373512, 43.228493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365234, 0.391133, -0.844760,
		-0.672829, 0.738050, 0.050826,
		0.643354, 0.549816, 0.532727,
		43.902454, 32.538456, 43.388309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.272926, 32.846134, 42.829514>,  <43.452106, 32.153587, 43.015404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.272926, 32.846134, 42.829514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.656761, 32.791569, 42.927963>,  <43.887062, 32.758831, 42.987034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.656761, 32.791569, 42.927963>,  <43.272926, 32.846134, 42.829514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.656761, 32.791569, 42.927963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257255, 0.070822, -0.963745,
		0.114034, 0.988118, 0.103053,
		0.959592, -0.136410, 0.246122,
		43.944637, 32.750645, 43.001801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.630882, 33.372959, 42.431858>,  <43.272926, 32.846134, 42.829514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.630882, 33.372959, 42.431858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.884007, 33.083332, 42.541611>,  <44.035881, 32.909557, 42.607460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.884007, 33.083332, 42.541611>,  <43.630882, 33.372959, 42.431858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.884007, 33.083332, 42.541611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540394, 0.159198, -0.826214,
		0.554554, 0.671106, 0.492023,
		0.632807, -0.724066, 0.274378,
		44.073849, 32.866112, 42.623924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.272331, 33.527889, 42.256104>,  <43.630882, 33.372959, 42.431858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.272331, 33.527889, 42.256104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.233284, 33.131474, 42.219627>,  <44.209854, 32.893623, 42.197742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.233284, 33.131474, 42.219627>,  <44.272331, 33.527889, 42.256104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.233284, 33.131474, 42.219627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459145, 0.036448, -0.887614,
		0.882982, -0.128518, 0.451471,
		-0.097619, -0.991037, -0.091191,
		44.203999, 32.834164, 42.192268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.897842, 33.266991, 42.200012>,  <44.272331, 33.527889, 42.256104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.897842, 33.266991, 42.200012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.629566, 33.038418, 42.010849>,  <44.468601, 32.901276, 41.897350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.629566, 33.038418, 42.010849>,  <44.897842, 33.266991, 42.200012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.629566, 33.038418, 42.010849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580564, -0.007604, -0.814179,
		0.461651, -0.820615, 0.336852,
		-0.670689, -0.571430, -0.472909,
		44.428360, 32.866989, 41.868977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.183899, 32.699955, 41.929806>,  <44.897842, 33.266991, 42.200012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.183899, 32.699955, 41.929806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.861443, 32.773598, 41.704865>,  <44.667969, 32.817783, 41.569901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.861443, 32.773598, 41.704865>,  <45.183899, 32.699955, 41.929806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.861443, 32.773598, 41.704865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563117, -0.053212, -0.824662,
		-0.181751, -0.981465, -0.060778,
		-0.806143, 0.184108, -0.562351,
		44.619598, 32.828831, 41.536160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.223660, 32.263664, 41.386913>,  <45.183899, 32.699955, 41.929806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.223660, 32.263664, 41.386913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.996262, 32.572163, 41.272377>,  <44.859821, 32.757263, 41.203655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.996262, 32.572163, 41.272377>,  <45.223660, 32.263664, 41.386913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.996262, 32.572163, 41.272377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442149, -0.007086, -0.896914,
		-0.693769, -0.636500, -0.336976,
		-0.568497, 0.771244, -0.286344,
		44.825714, 32.803535, 41.186474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.390968, 31.797033, 40.800060>,  <45.223660, 32.263664, 41.386913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.390968, 31.797033, 40.800060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.425053, 31.450203, 40.996395>,  <45.445503, 31.242105, 41.114197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.425053, 31.450203, 40.996395>,  <45.390968, 31.797033, 40.800060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.425053, 31.450203, 40.996395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163892, -0.473718, -0.865292,
		0.982791, 0.154177, 0.101741,
		0.085211, -0.867076, 0.490834,
		45.450615, 31.190081, 41.143646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.027187, 31.383408, 40.571712>,  <45.390968, 31.797033, 40.800060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.027187, 31.383408, 40.571712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.728661, 31.144997, 40.690216>,  <45.549545, 31.001951, 40.761318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.728661, 31.144997, 40.690216>,  <46.027187, 31.383408, 40.571712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.728661, 31.144997, 40.690216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132585, -0.569307, -0.811363,
		0.652254, -0.566253, 0.503907,
		-0.746315, -0.596025, 0.296256,
		45.504765, 30.966188, 40.779095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.203018, 30.847425, 39.960438>,  <46.027187, 31.383408, 40.571712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.203018, 30.847425, 39.960438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.349590, 31.200981, 40.076694>,  <46.437534, 31.413115, 40.146446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.349590, 31.200981, 40.076694>,  <46.203018, 30.847425, 39.960438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.349590, 31.200981, 40.076694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639482, -0.012343, -0.768707,
		-0.675863, 0.467537, -0.569753,
		0.366431, 0.883887, 0.290639,
		46.459518, 31.466148, 40.163887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.209366, 31.311617, 39.390690>,  <46.203018, 30.847425, 39.960438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.209366, 31.311617, 39.390690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.497189, 31.379288, 39.660091>,  <46.669884, 31.419891, 39.821732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.497189, 31.379288, 39.660091>,  <46.209366, 31.311617, 39.390690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.497189, 31.379288, 39.660091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679107, 0.031183, -0.733376,
		-0.145073, 0.985092, -0.092452,
		0.719560, 0.169178, 0.673507,
		46.713058, 31.430040, 39.862144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.550621, 32.015259, 39.326061>,  <46.209366, 31.311617, 39.390690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.550621, 32.015259, 39.326061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.768467, 31.710173, 39.465580>,  <46.899174, 31.527121, 39.549290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.768467, 31.710173, 39.465580>,  <46.550621, 32.015259, 39.326061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.768467, 31.710173, 39.465580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686757, 0.166841, -0.707481,
		0.481411, 0.624846, 0.614663,
		0.544618, -0.762713, 0.348798,
		46.931850, 31.481359, 39.570221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.317249, 32.156746, 39.553864>,  <46.550621, 32.015259, 39.326061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.317249, 32.156746, 39.553864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.258755, 31.789019, 39.407734>,  <47.223660, 31.568380, 39.320057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.258755, 31.789019, 39.407734>,  <47.317249, 32.156746, 39.553864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.258755, 31.789019, 39.407734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729890, 0.149004, -0.667126,
		0.667739, -0.364203, 0.649215,
		-0.146234, -0.919323, -0.365324,
		47.214886, 31.513222, 39.298138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.009392, 31.926132, 39.324745>,  <47.317249, 32.156746, 39.553864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.009392, 31.926132, 39.324745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.772560, 31.652500, 39.154343>,  <47.630463, 31.488321, 39.052101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.772560, 31.652500, 39.154343>,  <48.009392, 31.926132, 39.324745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.772560, 31.652500, 39.154343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647711, -0.089420, -0.756620,
		0.479495, -0.723906, 0.496029,
		-0.592077, -0.684079, -0.426006,
		47.594936, 31.447277, 39.026543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.457264, 31.385725, 39.141624>,  <48.009392, 31.926132, 39.324745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.457264, 31.385725, 39.141624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.117817, 31.396120, 38.930279>,  <47.914150, 31.402357, 38.803471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.117817, 31.396120, 38.930279>,  <48.457264, 31.385725, 39.141624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.117817, 31.396120, 38.930279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528517, -0.001328, -0.848922,
		-0.022757, -0.999662, -0.012605,
		-0.848617, 0.025981, -0.528369,
		47.863232, 31.403917, 38.771767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.561527, 30.966942, 38.647404>,  <48.457264, 31.385725, 39.141624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.561527, 30.966942, 38.647404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.264359, 31.184361, 38.491135>,  <48.086056, 31.314812, 38.397373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.264359, 31.184361, 38.491135>,  <48.561527, 30.966942, 38.647404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.264359, 31.184361, 38.491135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429115, -0.061200, -0.901174,
		-0.513738, -0.837146, -0.187777,
		-0.742922, 0.543545, -0.390672,
		48.041481, 31.347424, 38.373932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.325550, 30.776009, 37.970947>,  <48.561527, 30.966942, 38.647404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.325550, 30.776009, 37.970947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.199436, 31.153078, 37.927208>,  <48.123768, 31.379320, 37.900963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.199436, 31.153078, 37.927208>,  <48.325550, 30.776009, 37.970947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.199436, 31.153078, 37.927208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292285, -0.013168, -0.956240,
		-0.902864, -0.333451, -0.271379,
		-0.315286, 0.942675, -0.109352,
		48.104851, 31.435881, 37.894402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.795906, 31.009180, 37.392090>,  <48.325550, 30.776009, 37.970947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.795906, 31.009180, 37.392090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.028217, 31.330065, 37.447449>,  <48.167603, 31.522596, 37.480663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.028217, 31.330065, 37.447449>,  <47.795906, 31.009180, 37.392090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.028217, 31.330065, 37.447449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098451, 0.099540, -0.990151,
		-0.808088, 0.588681, -0.021168,
		0.580776, 0.802213, 0.138393,
		48.202450, 31.570728, 37.488968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.430164, 31.557785, 36.993324>,  <47.795906, 31.009180, 37.392090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.430164, 31.557785, 36.993324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.827675, 31.554689, 37.037762>,  <48.066181, 31.552832, 37.064423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.827675, 31.554689, 37.037762>,  <47.430164, 31.557785, 36.993324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.827675, 31.554689, 37.037762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111332, 0.092604, -0.989459,
		-0.002630, 0.995673, 0.092889,
		0.993780, -0.007739, 0.111093,
		48.125809, 31.552368, 37.071091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.807739, 32.004208, 37.022984>,  <47.430164, 31.557785, 36.993324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.807739, 32.004208, 37.022984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.726631, 32.383480, 36.925140>,  <46.677967, 32.611046, 36.866436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.726631, 32.383480, 36.925140>,  <46.807739, 32.004208, 37.022984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.726631, 32.383480, 36.925140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872794, 0.061747, -0.484167,
		-0.443975, -0.311667, -0.840089,
		-0.202772, 0.948183, -0.244606,
		46.665798, 32.667934, 36.851757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.056274, 32.061722, 36.295013>,  <46.807739, 32.004208, 37.022984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.056274, 32.061722, 36.295013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.065540, 32.437252, 36.432457>,  <47.071098, 32.662571, 36.514923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.065540, 32.437252, 36.432457>,  <47.056274, 32.061722, 36.295013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.065540, 32.437252, 36.432457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883062, 0.141917, -0.447282,
		-0.468685, 0.313786, -0.825756,
		0.023162, 0.938828, 0.343607,
		47.072491, 32.718899, 36.535538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.979782, 32.528271, 35.733063>,  <47.056274, 32.061722, 36.295013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.979782, 32.528271, 35.733063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.156250, 32.725304, 36.033123>,  <47.262131, 32.843525, 36.213158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.156250, 32.725304, 36.033123>,  <46.979782, 32.528271, 35.733063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.156250, 32.725304, 36.033123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813503, 0.133426, -0.566048,
		-0.378917, 0.859974, -0.341856,
		0.441174, 0.492586, 0.750149,
		47.288601, 32.873081, 36.258167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.545490, 32.910542, 35.195156>,  <46.979782, 32.528271, 35.733063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.545490, 32.910542, 35.195156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.459229, 32.890377, 34.805088>,  <46.407471, 32.878281, 34.571049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.459229, 32.890377, 34.805088>,  <46.545490, 32.910542, 35.195156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.459229, 32.890377, 34.805088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962251, 0.180778, 0.203449,
		0.166033, 0.982231, -0.087489,
		-0.215650, -0.050407, -0.975169,
		46.394535, 32.875256, 34.512539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.108421, 33.363209, 35.065773>,  <46.545490, 32.910542, 35.195156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.108421, 33.363209, 35.065773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.044914, 33.090851, 34.779785>,  <46.006809, 32.927437, 34.608192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.044914, 33.090851, 34.779785>,  <46.108421, 33.363209, 35.065773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.044914, 33.090851, 34.779785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981280, 0.028865, 0.190410,
		-0.109011, 0.731815, -0.672729,
		-0.158763, -0.680892, -0.714969,
		45.997284, 32.886581, 34.565296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.900852, 34.073689, 35.185135>,  <46.108421, 33.363209, 35.065773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.900852, 34.073689, 35.185135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.550171, 33.887253, 35.232719>,  <45.339764, 33.775391, 35.261269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.550171, 33.887253, 35.232719>,  <45.900852, 34.073689, 35.185135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.550171, 33.887253, 35.232719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102942, 0.423356, 0.900096,
		-0.469889, 0.776870, -0.419138,
		-0.876702, -0.466092, 0.118958,
		45.287159, 33.747425, 35.268406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.603275, 34.257408, 34.924648>,  <45.900852, 34.073689, 35.185135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.603275, 34.257408, 34.924648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.737926, 34.437263, 35.255589>,  <46.818718, 34.545177, 35.454151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.737926, 34.437263, 35.255589>,  <46.603275, 34.257408, 34.924648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.737926, 34.437263, 35.255589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884967, 0.149147, -0.441122,
		-0.321742, 0.880671, -0.347707,
		0.336624, 0.449637, 0.827352,
		46.838913, 34.572155, 35.503796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.960514, 35.017456, 34.800648>,  <46.603275, 34.257408, 34.924648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.960514, 35.017456, 34.800648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.123817, 34.864918, 35.132408>,  <47.221798, 34.773396, 35.331463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.123817, 34.864918, 35.132408>,  <46.960514, 35.017456, 34.800648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.123817, 34.864918, 35.132408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909540, 0.092402, -0.405216,
		0.077889, 0.919803, 0.384573,
		0.408254, -0.381346, 0.829400,
		47.246292, 34.750515, 35.381229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.656219, 35.439083, 35.139736>,  <46.960514, 35.017456, 34.800648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.656219, 35.439083, 35.139736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.615696, 35.042137, 35.167870>,  <47.591381, 34.803970, 35.184750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.615696, 35.042137, 35.167870>,  <47.656219, 35.439083, 35.139736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.615696, 35.042137, 35.167870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941700, -0.118459, -0.314911,
		0.320839, 0.034333, 0.946511,
		-0.101310, -0.992365, 0.070338,
		47.585304, 34.744427, 35.188972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<29.884926, 33.309776, 55.788456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.182451, 33.567001, 55.861355>,  <30.360966, 33.721336, 55.905094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.182451, 33.567001, 55.861355>,  <29.884926, 33.309776, 55.788456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182451, 33.567001, 55.861355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666968, -0.696338, -0.265079,
		-0.043558, 0.318721, -0.946847,
		0.743812, 0.643063, 0.182246,
		30.405596, 33.759922, 55.916027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.217054, 33.273075, 55.132847>,  <29.884926, 33.309776, 55.788456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.217054, 33.273075, 55.132847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.457691, 33.442230, 55.403919>,  <30.602074, 33.543724, 55.566563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.457691, 33.442230, 55.403919>,  <30.217054, 33.273075, 55.132847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.457691, 33.442230, 55.403919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798261, -0.349565, -0.490494,
		0.029473, 0.836046, -0.547867,
		0.601590, 0.422885, 0.677685,
		30.638168, 33.569096, 55.607224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666487, 33.629471, 54.803864>,  <30.217054, 33.273075, 55.132847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666487, 33.629471, 54.803864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.847246, 33.565296, 55.154873>,  <30.955702, 33.526791, 55.365479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.847246, 33.565296, 55.154873>,  <30.666487, 33.629471, 54.803864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.847246, 33.565296, 55.154873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801758, -0.358241, -0.478380,
		0.391113, 0.919741, -0.033259,
		0.451901, -0.160435, 0.877523,
		30.982817, 33.517166, 55.418129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311110, 33.935318, 54.753944>,  <30.666487, 33.629471, 54.803864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311110, 33.935318, 54.753944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.341936, 33.646660, 55.029125>,  <31.360432, 33.473465, 55.194233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.341936, 33.646660, 55.029125>,  <31.311110, 33.935318, 54.753944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341936, 33.646660, 55.029125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712022, -0.443167, -0.544635,
		0.697914, 0.531813, 0.479677,
		0.077068, -0.721649, 0.687955,
		31.365057, 33.430164, 55.235512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936426, 33.832973, 54.922897>,  <31.311110, 33.935318, 54.753944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936426, 33.832973, 54.922897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.818829, 33.469677, 55.042000>,  <31.748270, 33.251698, 55.113461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.818829, 33.469677, 55.042000>,  <31.936426, 33.832973, 54.922897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818829, 33.469677, 55.042000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724210, -0.414975, -0.550741,
		0.623768, 0.053723, 0.779761,
		-0.293993, -0.908246, 0.297755,
		31.730631, 33.197205, 55.131325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469425, 33.403461, 55.035366>,  <31.936426, 33.832973, 54.922897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469425, 33.403461, 55.035366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.228344, 33.087521, 54.989971>,  <32.083694, 32.897957, 54.962734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.228344, 33.087521, 54.989971>,  <32.469425, 33.403461, 55.035366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228344, 33.087521, 54.989971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754934, -0.518343, -0.401741,
		0.258493, -0.327805, 0.908694,
		-0.602708, -0.789851, -0.113483,
		32.047531, 32.850567, 54.955925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936565, 32.870354, 55.020874>,  <32.469425, 33.403461, 55.035366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936565, 32.870354, 55.020874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.594070, 32.727650, 54.871433>,  <32.388573, 32.642029, 54.781769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.594070, 32.727650, 54.871433>,  <32.936565, 32.870354, 55.020874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594070, 32.727650, 54.871433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515468, -0.637520, -0.572591,
		-0.033903, -0.682855, 0.729766,
		-0.856238, -0.356758, -0.373604,
		32.337200, 32.620621, 54.759354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117447, 32.154785, 54.938236>,  <32.936565, 32.870354, 55.020874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117447, 32.154785, 54.938236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.796902, 32.203846, 54.704044>,  <32.604576, 32.233280, 54.563530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.796902, 32.203846, 54.704044>,  <33.117447, 32.154785, 54.938236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796902, 32.203846, 54.704044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303448, -0.760122, -0.574573,
		-0.515504, -0.638100, 0.571912,
		-0.801359, 0.122649, -0.585476,
		32.556496, 32.240643, 54.528400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083344, 31.530676, 54.593578>,  <33.117447, 32.154785, 54.938236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083344, 31.530676, 54.593578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.817181, 31.736258, 54.377029>,  <32.657482, 31.859606, 54.247101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.817181, 31.736258, 54.377029>,  <33.083344, 31.530676, 54.593578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817181, 31.736258, 54.377029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259752, -0.520495, -0.813397,
		-0.699829, -0.681863, 0.212842,
		-0.665408, 0.513953, -0.541373,
		32.617558, 31.890444, 54.214619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661465, 31.019554, 54.181339>,  <33.083344, 31.530676, 54.593578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661465, 31.019554, 54.181339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.625233, 31.360336, 53.975052>,  <32.603493, 31.564806, 53.851280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.625233, 31.360336, 53.975052>,  <32.661465, 31.019554, 54.181339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625233, 31.360336, 53.975052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109652, -0.506169, -0.855435,
		-0.989835, -0.134031, -0.047572,
		-0.090576, 0.851956, -0.515720,
		32.598061, 31.615923, 53.820335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157284, 30.950237, 53.603508>,  <32.661465, 31.019554, 54.181339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157284, 30.950237, 53.603508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.416836, 31.239283, 53.508190>,  <32.572567, 31.412710, 53.451000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.416836, 31.239283, 53.508190>,  <32.157284, 30.950237, 53.603508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416836, 31.239283, 53.508190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112702, -0.400997, -0.909120,
		-0.752494, 0.563058, -0.341640,
		0.648884, 0.722611, -0.238290,
		32.611500, 31.456066, 53.436703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939148, 31.196989, 52.914665>,  <32.157284, 30.950237, 53.603508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939148, 31.196989, 52.914665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.287849, 31.391804, 52.935974>,  <32.497070, 31.508692, 52.948761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.287849, 31.391804, 52.935974>,  <31.939148, 31.196989, 52.914665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287849, 31.391804, 52.935974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070950, -0.017907, -0.997319,
		-0.484777, 0.873198, -0.050165,
		0.871755, 0.487037, 0.053273,
		32.549377, 31.537914, 52.951958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978113, 31.794931, 52.437729>,  <31.939148, 31.196989, 52.914665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978113, 31.794931, 52.437729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.353252, 31.662064, 52.477932>,  <32.578335, 31.582342, 52.502052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.353252, 31.662064, 52.477932>,  <31.978113, 31.794931, 52.437729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353252, 31.662064, 52.477932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119864, 0.038246, -0.992053,
		0.325687, 0.942444, 0.075684,
		0.937849, -0.332170, 0.100509,
		32.634605, 31.562412, 52.508083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319141, 32.080090, 51.880783>,  <31.978113, 31.794931, 52.437729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319141, 32.080090, 51.880783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.599949, 31.817923, 51.992203>,  <32.768433, 31.660622, 52.059055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.599949, 31.817923, 51.992203>,  <32.319141, 32.080090, 51.880783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599949, 31.817923, 51.992203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267410, -0.119906, -0.956093,
		0.660042, 0.745686, 0.091089,
		0.702023, -0.655420, 0.278547,
		32.810555, 31.621296, 52.075768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800808, 32.218369, 51.452068>,  <32.319141, 32.080090, 51.880783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800808, 32.218369, 51.452068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.913509, 31.852604, 51.568317>,  <32.981129, 31.633144, 51.638065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.913509, 31.852604, 51.568317>,  <32.800808, 32.218369, 51.452068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913509, 31.852604, 51.568317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184414, -0.245633, -0.951660,
		0.941598, 0.321727, 0.099423,
		0.281753, -0.914416, 0.290618,
		32.998035, 31.578279, 51.655502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411274, 32.143330, 51.237278>,  <32.800808, 32.218369, 51.452068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411274, 32.143330, 51.237278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.274349, 31.768597, 51.266037>,  <33.192196, 31.543756, 51.283291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.274349, 31.768597, 51.266037>,  <33.411274, 32.143330, 51.237278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274349, 31.768597, 51.266037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166557, -0.135808, -0.976634,
		0.924707, -0.322336, 0.202525,
		-0.342309, -0.936833, 0.071895,
		33.171658, 31.487547, 51.287605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869431, 31.807898, 50.867859>,  <33.411274, 32.143330, 51.237278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869431, 31.807898, 50.867859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.554657, 31.561310, 50.878445>,  <33.365791, 31.413357, 50.884796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.554657, 31.561310, 50.878445>,  <33.869431, 31.807898, 50.867859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554657, 31.561310, 50.878445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166434, -0.253368, -0.952945,
		0.594169, -0.745498, 0.301985,
		-0.786933, -0.616472, 0.026467,
		33.318577, 31.376368, 50.886383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156013, 31.119778, 50.588875>,  <33.869431, 31.807898, 50.867859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156013, 31.119778, 50.588875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.759846, 31.134718, 50.535698>,  <33.522144, 31.143682, 50.503792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.759846, 31.134718, 50.535698>,  <34.156013, 31.119778, 50.588875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759846, 31.134718, 50.535698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105282, -0.418694, -0.902004,
		-0.089352, -0.907359, 0.410751,
		-0.990420, 0.037352, -0.132940,
		33.462719, 31.145924, 50.495815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986416, 30.424023, 50.377617>,  <34.156013, 31.119778, 50.588875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986416, 30.424023, 50.377617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.646938, 30.601051, 50.261791>,  <33.443253, 30.707268, 50.192295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.646938, 30.601051, 50.261791>,  <33.986416, 30.424023, 50.377617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646938, 30.601051, 50.261791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131616, -0.353534, -0.926116,
		-0.512241, -0.824103, 0.241794,
		-0.848697, 0.442571, -0.289560,
		33.392330, 30.733822, 50.174923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524902, 29.942060, 49.957558>,  <33.986416, 30.424023, 50.377617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524902, 29.942060, 49.957558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.389362, 30.307041, 49.865807>,  <33.308041, 30.526030, 49.810757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.389362, 30.307041, 49.865807>,  <33.524902, 29.942060, 49.957558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389362, 30.307041, 49.865807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124771, -0.198068, -0.972215,
		-0.932531, -0.358052, -0.046733,
		-0.338848, 0.912451, -0.229379,
		33.287708, 30.580776, 49.796993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824566, 29.903254, 49.615887>,  <33.524902, 29.942060, 49.957558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824566, 29.903254, 49.615887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.982128, 30.256498, 49.513943>,  <33.076664, 30.468445, 49.452774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.982128, 30.256498, 49.513943>,  <32.824566, 29.903254, 49.615887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982128, 30.256498, 49.513943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238598, -0.169534, -0.956205,
		-0.887643, 0.437463, 0.143928,
		0.393904, 0.883110, -0.254864,
		33.100300, 30.521431, 49.437485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220245, 30.281961, 49.319878>,  <32.824566, 29.903254, 49.615887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220245, 30.281961, 49.319878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.571320, 30.415405, 49.182259>,  <32.781963, 30.495472, 49.099689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.571320, 30.415405, 49.182259>,  <32.220245, 30.281961, 49.319878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571320, 30.415405, 49.182259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391661, 0.085645, -0.916115,
		-0.276159, 0.938813, 0.205832,
		0.877689, 0.333610, -0.344045,
		32.834625, 30.515488, 49.079044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444572, 30.484245, 48.623920>,  <32.220245, 30.281961, 49.319878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444572, 30.484245, 48.623920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.226841, 30.480076, 48.288399>,  <32.096203, 30.477573, 48.087086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.226841, 30.480076, 48.288399>,  <32.444572, 30.484245, 48.623920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226841, 30.480076, 48.288399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733862, 0.490324, 0.470137,
		0.406385, 0.871478, -0.274551,
		-0.544333, -0.010426, -0.838805,
		32.063541, 30.476948, 48.036758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093452, 31.169910, 48.538803>,  <32.444572, 30.484245, 48.623920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093452, 31.169910, 48.538803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.865303, 30.913198, 48.333752>,  <31.728413, 30.759171, 48.210720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.865303, 30.913198, 48.333752>,  <32.093452, 31.169910, 48.538803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865303, 30.913198, 48.333752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807893, 0.325686, 0.491158,
		-0.148258, 0.694296, -0.704253,
		-0.570375, -0.641780, -0.512632,
		31.694191, 30.720665, 48.179962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475744, 31.540136, 48.529732>,  <32.093452, 31.169910, 48.538803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475744, 31.540136, 48.529732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.370989, 31.176691, 48.399605>,  <31.308136, 30.958624, 48.321529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.370989, 31.176691, 48.399605>,  <31.475744, 31.540136, 48.529732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.370989, 31.176691, 48.399605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918829, 0.131621, 0.372059,
		-0.295240, 0.396352, -0.869332,
		-0.261889, -0.908615, -0.325320,
		31.292421, 30.904106, 48.302010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.893806, 31.727083, 48.258415>,  <31.475744, 31.540136, 48.529732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.893806, 31.727083, 48.258415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.890800, 31.333580, 48.330151>,  <30.888996, 31.097479, 48.373192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.890800, 31.333580, 48.330151>,  <30.893806, 31.727083, 48.258415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890800, 31.333580, 48.330151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956298, 0.059495, 0.286276,
		-0.292296, -0.169354, -0.941213,
		-0.007515, -0.983758, 0.179343,
		30.888546, 31.038452, 48.383953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.233660, 31.540966, 48.228073>,  <30.893806, 31.727083, 48.258415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.233660, 31.540966, 48.228073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.380138, 31.220816, 48.417934>,  <30.468025, 31.028725, 48.531853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.380138, 31.220816, 48.417934>,  <30.233660, 31.540966, 48.228073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.380138, 31.220816, 48.417934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878275, -0.128745, 0.460497,
		-0.307461, -0.585511, -0.750097,
		0.366197, -0.800376, 0.474655,
		30.489998, 30.980703, 48.560329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.644152, 31.120554, 48.338127>,  <30.233660, 31.540966, 48.228073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.644152, 31.120554, 48.338127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.906170, 30.982447, 48.606964>,  <30.063381, 30.899582, 48.768265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.906170, 30.982447, 48.606964>,  <29.644152, 31.120554, 48.338127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906170, 30.982447, 48.606964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722841, -0.027311, 0.690475,
		-0.220045, -0.938106, -0.267465,
		0.655043, -0.345270, 0.672091,
		30.102682, 30.878866, 48.808590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.291018, 30.777538, 48.735538>,  <29.644152, 31.120554, 48.338127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.291018, 30.777538, 48.735538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.603966, 30.784679, 48.984562>,  <29.791735, 30.788963, 49.133976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.603966, 30.784679, 48.984562>,  <29.291018, 30.777538, 48.735538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.603966, 30.784679, 48.984562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617730, -0.105191, 0.779323,
		0.079401, -0.994292, -0.071270,
		0.782371, 0.017853, 0.622556,
		29.838676, 30.790035, 49.171329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.206215, 30.232603, 49.254932>,  <29.291018, 30.777538, 48.735538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.206215, 30.232603, 49.254932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.432817, 30.532484, 49.391766>,  <29.568779, 30.712412, 49.473866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.432817, 30.532484, 49.391766>,  <29.206215, 30.232603, 49.254932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432817, 30.532484, 49.391766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584909, 0.073408, 0.807770,
		0.580475, -0.657692, 0.480093,
		0.566507, 0.749701, 0.342079,
		29.602770, 30.757395, 49.494389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.393042, 30.048595, 49.966801>,  <29.206215, 30.232603, 49.254932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.393042, 30.048595, 49.966801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.415020, 30.446547, 49.932854>,  <29.428207, 30.685316, 49.912487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.415020, 30.446547, 49.932854>,  <29.393042, 30.048595, 49.966801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.415020, 30.446547, 49.932854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351919, 0.098834, 0.930798,
		0.934417, -0.021278, 0.355546,
		0.054946, 0.994876, -0.084864,
		29.431503, 30.745010, 49.907394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.492477, 30.167461, 50.674549>,  <29.393042, 30.048595, 49.966801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.492477, 30.167461, 50.674549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.450354, 30.525505, 50.501255>,  <29.425079, 30.740332, 50.397278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.450354, 30.525505, 50.501255>,  <29.492477, 30.167461, 50.674549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450354, 30.525505, 50.501255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266526, 0.394312, 0.879478,
		0.958057, 0.208085, 0.197045,
		-0.105309, 0.895108, -0.433234,
		29.418760, 30.794037, 50.371284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.832092, 30.638363, 51.090580>,  <29.492477, 30.167461, 50.674549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.832092, 30.638363, 51.090580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.566553, 30.848509, 50.877678>,  <29.407230, 30.974596, 50.749935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.566553, 30.848509, 50.877678>,  <29.832092, 30.638363, 51.090580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.566553, 30.848509, 50.877678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350148, 0.410535, 0.841937,
		0.660835, 0.745286, -0.088578,
		-0.663848, 0.525366, -0.532256,
		29.367399, 31.006119, 50.718002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.983740, 31.337725, 51.289021>,  <29.832092, 30.638363, 51.090580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.983740, 31.337725, 51.289021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.609299, 31.358519, 51.149872>,  <29.384634, 31.370995, 51.066383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.609299, 31.358519, 51.149872>,  <29.983740, 31.337725, 51.289021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.609299, 31.358519, 51.149872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257532, 0.572329, 0.778536,
		0.239567, 0.818375, -0.522370,
		-0.936101, 0.051984, -0.347868,
		29.328468, 31.374113, 51.045513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915741, 32.057678, 51.171654>,  <29.983740, 31.337725, 51.289021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915741, 32.057678, 51.171654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.565952, 31.869556, 51.219166>,  <29.356079, 31.756681, 51.247673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.565952, 31.869556, 51.219166>,  <29.915741, 32.057678, 51.171654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565952, 31.869556, 51.219166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265007, 0.668293, 0.695095,
		-0.406288, 0.576363, -0.709038,
		-0.874472, -0.470309, 0.118779,
		29.303610, 31.728464, 51.254799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.265715, 32.478035, 50.897488>,  <29.915741, 32.057678, 51.171654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.265715, 32.478035, 50.897488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.173033, 32.220039, 51.188774>,  <29.117424, 32.065243, 51.363544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.173033, 32.220039, 51.188774>,  <29.265715, 32.478035, 50.897488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.173033, 32.220039, 51.188774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352538, 0.753378, 0.555102,
		-0.906658, -0.128103, -0.401946,
		-0.231707, -0.644989, 0.728217,
		29.103521, 32.026543, 51.407238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.836193, 32.944824, 51.243214>,  <29.265715, 32.478035, 50.897488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.836193, 32.944824, 51.243214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.866615, 32.650276, 51.512127>,  <28.884869, 32.473545, 51.673477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.866615, 32.650276, 51.512127>,  <28.836193, 32.944824, 51.243214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.866615, 32.650276, 51.512127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277198, 0.632046, 0.723657,
		-0.957798, -0.241393, -0.156052,
		0.076054, -0.736374, 0.672286,
		28.889431, 32.429363, 51.713814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.215429, 32.901611, 51.627468>,  <28.836193, 32.944824, 51.243214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.215429, 32.901611, 51.627468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.485435, 32.714996, 51.856098>,  <28.647438, 32.603027, 51.993275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.485435, 32.714996, 51.856098>,  <28.215429, 32.901611, 51.627468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.485435, 32.714996, 51.856098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337167, 0.494015, 0.801416,
		-0.656259, -0.733683, 0.176166,
		0.675013, -0.466539, 0.571575,
		28.687939, 32.575035, 52.027569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.868494, 32.805397, 52.240002>,  <28.215429, 32.901611, 51.627468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.868494, 32.805397, 52.240002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.244600, 32.751698, 52.365143>,  <28.470264, 32.719479, 52.440228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.244600, 32.751698, 52.365143>,  <27.868494, 32.805397, 52.240002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.244600, 32.751698, 52.365143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211531, 0.489669, 0.845860,
		-0.266755, -0.861511, 0.432020,
		0.940264, -0.134252, 0.312857,
		28.526680, 32.711422, 52.459000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.773636, 32.599026, 52.840553>,  <27.868494, 32.805397, 52.240002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.773636, 32.599026, 52.840553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.139938, 32.759666, 52.836483>,  <28.359720, 32.856052, 52.834042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.139938, 32.759666, 52.836483>,  <27.773636, 32.599026, 52.840553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.139938, 32.759666, 52.836483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222464, 0.528039, 0.819564,
		0.334510, -0.748259, 0.572898,
		0.915758, 0.401601, -0.010173,
		28.414665, 32.880146, 52.833431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<28.067120, 32.537540, 53.680454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.300507, 32.811001, 53.505096>,  <28.440538, 32.975075, 53.399883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.300507, 32.811001, 53.505096>,  <28.067120, 32.537540, 53.680454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.300507, 32.811001, 53.505096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181331, 0.635841, 0.750217,
		0.791632, -0.358235, 0.494961,
		0.583470, 0.683647, -0.438393,
		28.475548, 33.016094, 53.373577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.510197, 32.753117, 54.187542>,  <28.067120, 32.537540, 53.680454>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.510197, 32.753117, 54.187542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.489616, 33.033485, 53.902988>,  <28.477268, 33.201706, 53.732258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.489616, 33.033485, 53.902988>,  <28.510197, 32.753117, 54.187542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.489616, 33.033485, 53.902988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230640, 0.684729, 0.691340,
		0.971678, 0.199643, 0.126430,
		-0.051451, 0.700920, -0.711382,
		28.474180, 33.243763, 53.689575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060127, 33.252014, 54.418259>,  <28.510197, 32.753117, 54.187542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.060127, 33.252014, 54.418259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.826052, 33.446697, 54.158825>,  <28.685606, 33.563507, 54.003162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.826052, 33.446697, 54.158825>,  <29.060127, 33.252014, 54.418259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.826052, 33.446697, 54.158825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140589, 0.726829, 0.672275,
		0.798616, 0.484593, -0.356907,
		-0.585190, 0.486712, -0.648586,
		28.650496, 33.592712, 53.964249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.120045, 33.965137, 54.538036>,  <29.060127, 33.252014, 54.418259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.120045, 33.965137, 54.538036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789806, 34.010235, 54.316883>,  <28.591663, 34.037292, 54.184193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789806, 34.010235, 54.316883>,  <29.120045, 33.965137, 54.538036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.789806, 34.010235, 54.316883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281479, 0.766925, 0.576710,
		0.489038, 0.631755, -0.601437,
		-0.825597, 0.112742, -0.552882,
		28.542128, 34.044056, 54.151020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.155359, 34.684956, 54.276543>,  <29.120045, 33.965137, 54.538036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.155359, 34.684956, 54.276543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789328, 34.526867, 54.308605>,  <28.569708, 34.432014, 54.327843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789328, 34.526867, 54.308605>,  <29.155359, 34.684956, 54.276543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.789328, 34.526867, 54.308605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288616, 0.780663, 0.554315,
		-0.281652, 0.484110, -0.828438,
		-0.915081, -0.395225, 0.080154,
		28.514803, 34.408298, 54.332653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817133, 35.294693, 54.182323>,  <29.155359, 34.684956, 54.276543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.817133, 35.294693, 54.182323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555691, 35.047440, 54.357002>,  <28.398825, 34.899086, 54.461811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555691, 35.047440, 54.357002>,  <28.817133, 35.294693, 54.182323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.555691, 35.047440, 54.357002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422301, 0.776695, 0.467340,
		-0.628061, 0.121038, -0.768693,
		-0.653607, -0.618138, 0.436697,
		28.359610, 34.862000, 54.488010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.256994, 35.608044, 54.214462>,  <28.817133, 35.294693, 54.182323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.256994, 35.608044, 54.214462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190491, 35.339947, 54.503773>,  <28.150589, 35.179089, 54.677361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190491, 35.339947, 54.503773>,  <28.256994, 35.608044, 54.214462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.190491, 35.339947, 54.503773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553888, 0.670316, 0.493847,
		-0.815823, -0.318510, -0.482685,
		-0.166257, -0.670245, 0.723277,
		28.140614, 35.138874, 54.720757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.590425, 35.725174, 54.371838>,  <28.256994, 35.608044, 54.214462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.590425, 35.725174, 54.371838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.726118, 35.514698, 54.683746>,  <27.807533, 35.388412, 54.870892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.726118, 35.514698, 54.683746>,  <27.590425, 35.725174, 54.371838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.726118, 35.514698, 54.683746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681060, 0.434423, 0.589435,
		-0.648906, -0.731028, -0.210996,
		0.339232, -0.526189, 0.779774,
		27.827888, 35.356842, 54.917679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.036297, 35.544312, 54.643627>,  <27.590425, 35.725174, 54.371838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.036297, 35.544312, 54.643627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.313166, 35.521080, 54.931385>,  <27.479286, 35.507141, 55.104038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.313166, 35.521080, 54.931385>,  <27.036297, 35.544312, 54.643627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.313166, 35.521080, 54.931385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601286, 0.504902, 0.619298,
		-0.399193, -0.861221, 0.314554,
		0.692171, -0.058083, 0.719393,
		27.520817, 35.503654, 55.147202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.653475, 35.175148, 55.207443>,  <27.036297, 35.544312, 54.643627>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.653475, 35.175148, 55.207443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.946033, 35.370457, 55.397873>,  <27.121569, 35.487640, 55.512131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.946033, 35.370457, 55.397873>,  <26.653475, 35.175148, 55.207443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.946033, 35.370457, 55.397873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669420, 0.380841, 0.637837,
		0.130125, -0.785210, 0.605403,
		0.731399, 0.488268, 0.476079,
		27.165453, 35.516937, 55.540695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.524994, 35.095123, 55.877705>,  <26.653475, 35.175148, 55.207443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.524994, 35.095123, 55.877705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.774660, 35.407055, 55.896812>,  <26.924459, 35.594215, 55.908279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.774660, 35.407055, 55.896812>,  <26.524994, 35.095123, 55.877705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.774660, 35.407055, 55.896812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622471, 0.459402, 0.633624,
		0.472182, -0.425211, 0.772165,
		0.624159, 0.779837, 0.047760,
		26.961910, 35.641003, 55.911144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.468035, 35.342453, 56.588261>,  <26.524994, 35.095123, 55.877705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.468035, 35.342453, 56.588261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.639902, 35.661308, 56.418575>,  <26.743023, 35.852623, 56.316765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.639902, 35.661308, 56.418575>,  <26.468035, 35.342453, 56.588261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.639902, 35.661308, 56.418575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584793, 0.603603, 0.541922,
		0.688043, 0.015230, 0.725510,
		0.429667, 0.797139, -0.424211,
		26.768803, 35.900452, 56.291313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.825890, 35.755959, 57.202347>,  <26.468035, 35.342453, 56.588261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.825890, 35.755959, 57.202347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.722477, 35.971825, 56.881866>,  <26.660429, 36.101345, 56.689579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.722477, 35.971825, 56.881866>,  <26.825890, 35.755959, 57.202347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.722477, 35.971825, 56.881866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323457, 0.733161, 0.598206,
		0.910241, 0.413808, -0.014986,
		-0.258530, 0.539664, -0.801202,
		26.644918, 36.133724, 56.641506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.837212, 36.439072, 57.480267>,  <26.825890, 35.755959, 57.202347>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.837212, 36.439072, 57.480267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.661636, 36.528866, 57.132259>,  <26.556292, 36.582745, 56.923454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.661636, 36.528866, 57.132259>,  <26.837212, 36.439072, 57.480267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.661636, 36.528866, 57.132259> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404470, 0.815265, 0.414423,
		0.802332, 0.533804, -0.267053,
		-0.438940, 0.224490, -0.870021,
		26.529955, 36.596214, 56.871254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.998438, 37.160969, 57.351238>,  <26.837212, 36.439072, 57.480267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.998438, 37.160969, 57.351238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.667507, 37.060699, 57.150162>,  <26.468948, 37.000538, 57.029518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.667507, 37.060699, 57.150162>,  <26.998438, 37.160969, 57.351238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.667507, 37.060699, 57.150162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471815, 0.795750, 0.379700,
		0.304834, 0.551312, -0.776615,
		-0.827325, -0.250673, -0.502689,
		26.419310, 36.985497, 56.999355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.773262, 37.759838, 57.132099>,  <26.998438, 37.160969, 57.351238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.773262, 37.759838, 57.132099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.444513, 37.533421, 57.106426>,  <26.247265, 37.397568, 57.091022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.444513, 37.533421, 57.106426>,  <26.773262, 37.759838, 57.132099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.444513, 37.533421, 57.106426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555288, 0.770852, 0.312157,
		-0.127218, 0.292194, -0.947860,
		-0.821871, -0.566047, -0.064185,
		26.197952, 37.363605, 57.087170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.321342, 38.201786, 56.781162>,  <26.773262, 37.759838, 57.132099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.321342, 38.201786, 56.781162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.076292, 37.913578, 56.911110>,  <25.929262, 37.740654, 56.989079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.076292, 37.913578, 56.911110>,  <26.321342, 38.201786, 56.781162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.076292, 37.913578, 56.911110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638524, 0.693424, 0.333841,
		-0.465810, -0.002915, -0.884880,
		-0.612624, -0.720524, 0.324866,
		25.892506, 37.697422, 57.008568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.641031, 38.283714, 56.423595>,  <26.321342, 38.201786, 56.781162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.641031, 38.283714, 56.423595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.581364, 38.103149, 56.775497>,  <25.545563, 37.994808, 56.986641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.581364, 38.103149, 56.775497>,  <25.641031, 38.283714, 56.423595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.581364, 38.103149, 56.775497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533719, 0.785734, 0.312674,
		-0.832402, -0.422903, -0.358134,
		-0.149168, -0.451414, 0.879758,
		25.536613, 37.967724, 57.039425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.964069, 38.518097, 56.672523>,  <25.641031, 38.283714, 56.423595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.964069, 38.518097, 56.672523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.072298, 38.370003, 57.027988>,  <25.137236, 38.281147, 57.241268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.072298, 38.370003, 57.027988>,  <24.964069, 38.518097, 56.672523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.072298, 38.370003, 57.027988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665140, 0.595445, 0.450593,
		-0.695974, -0.713000, -0.085149,
		0.270571, -0.370237, 0.888659,
		25.153469, 38.258930, 57.294586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.379780, 38.446934, 57.023815>,  <24.964069, 38.518097, 56.672523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.379780, 38.446934, 57.023815> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.671064, 38.450237, 57.297935>,  <24.845835, 38.452221, 57.462406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.671064, 38.450237, 57.297935>,  <24.379780, 38.446934, 57.023815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.671064, 38.450237, 57.297935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525338, 0.648901, 0.550407,
		-0.440145, -0.760828, 0.476878,
		0.728212, 0.008263, 0.685302,
		24.889528, 38.452717, 57.503525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.032373, 38.620750, 57.707794>,  <24.379780, 38.446934, 57.023815>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.032373, 38.620750, 57.707794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.416590, 38.720798, 57.756462>,  <24.647120, 38.780827, 57.785664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.416590, 38.720798, 57.756462>,  <24.032373, 38.620750, 57.707794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.416590, 38.720798, 57.756462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269998, 0.733366, 0.623920,
		0.066825, -0.632151, 0.771958,
		0.960539, 0.250121, 0.121673,
		24.704752, 38.795834, 57.792965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.219360, 38.722897, 58.463154>,  <24.032373, 38.620750, 57.707794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.219360, 38.722897, 58.463154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.478046, 38.939304, 58.248096>,  <24.633257, 39.069149, 58.119064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.478046, 38.939304, 58.248096>,  <24.219360, 38.722897, 58.463154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.478046, 38.939304, 58.248096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157252, 0.784317, 0.600099,
		0.746347, -0.303547, 0.592305,
		0.646713, 0.541023, -0.537639,
		24.672060, 39.101612, 58.086803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.798950, 39.089920, 58.937828>,  <24.219360, 38.722897, 58.463154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.798950, 39.089920, 58.937828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.730844, 39.275047, 58.589848>,  <24.689981, 39.386124, 58.381058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.730844, 39.275047, 58.589848>,  <24.798950, 39.089920, 58.937828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.730844, 39.275047, 58.589848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266296, 0.828381, 0.492819,
		0.948734, 0.315573, -0.017797,
		-0.170263, 0.462815, -0.869950,
		24.679766, 39.413891, 58.328861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.353540, 38.561237, 58.961868>,  <24.798950, 39.089920, 58.937828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.353540, 38.561237, 58.961868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.374229, 38.888176, 59.191395>,  <25.386642, 39.084339, 59.329109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.374229, 38.888176, 59.191395>,  <25.353540, 38.561237, 58.961868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.374229, 38.888176, 59.191395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103993, -0.567054, 0.817090,
		0.993232, -0.101936, 0.055668,
		0.051725, 0.817349, 0.573817,
		25.389748, 39.133381, 59.363541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.619917, 38.713955, 59.630043>,  <25.353540, 38.561237, 58.961868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.619917, 38.713955, 59.630043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.895756, 38.942642, 59.807850>,  <26.061258, 39.079853, 59.914536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.895756, 38.942642, 59.807850>,  <25.619917, 38.713955, 59.630043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.895756, 38.942642, 59.807850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724133, -0.536434, -0.433440,
		-0.009350, 0.620789, -0.783922,
		0.689597, 0.571716, 0.444518,
		26.102634, 39.114159, 59.941204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.071901, 39.034317, 59.101421>,  <25.619917, 38.713955, 59.630043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.071901, 39.034317, 59.101421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.263916, 39.025578, 59.452213>,  <26.379126, 39.020332, 59.662689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.263916, 39.025578, 59.452213>,  <26.071901, 39.034317, 59.101421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.263916, 39.025578, 59.452213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774999, -0.457830, -0.435624,
		0.411024, 0.888771, -0.202841,
		0.480037, -0.021851, 0.876976,
		26.407927, 39.019024, 59.715305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.727085, 39.383648, 59.038494>,  <26.071901, 39.034317, 59.101421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.727085, 39.383648, 59.038494> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.762072, 39.128620, 59.344658>,  <26.783064, 38.975605, 59.528358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.762072, 39.128620, 59.344658>,  <26.727085, 39.383648, 59.038494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.762072, 39.128620, 59.344658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776930, -0.437241, -0.452991,
		0.623482, 0.634293, 0.457102,
		0.087465, -0.637568, 0.765413,
		26.788311, 38.937351, 59.574284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.383669, 39.375084, 59.151253>,  <26.727085, 39.383648, 59.038494>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.383669, 39.375084, 59.151253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.261198, 39.027523, 59.306824>,  <27.187716, 38.818985, 59.400166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.261198, 39.027523, 59.306824>,  <27.383669, 39.375084, 59.151253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.261198, 39.027523, 59.306824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821017, -0.447810, -0.354114,
		0.481857, 0.210898, 0.850492,
		-0.306177, -0.868901, 0.388931,
		27.169344, 38.766853, 59.423504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.014215, 39.087097, 59.339756>,  <27.383669, 39.375084, 59.151253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.014215, 39.087097, 59.339756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.755293, 38.782261, 59.333839>,  <27.599939, 38.599361, 59.330292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.755293, 38.782261, 59.333839>,  <28.014215, 39.087097, 59.339756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.755293, 38.782261, 59.333839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677248, -0.566125, -0.469935,
		0.349758, -0.314207, 0.882578,
		-0.647306, -0.762087, -0.014789,
		27.561102, 38.553635, 59.329403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.374657, 38.450607, 59.339863>,  <28.014215, 39.087097, 59.339756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.374657, 38.450607, 59.339863> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.016193, 38.294468, 59.255455>,  <27.801115, 38.200783, 59.204811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.016193, 38.294468, 59.255455>,  <28.374657, 38.450607, 59.339863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.016193, 38.294468, 59.255455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440635, -0.726729, -0.526978,
		0.052356, -0.565236, 0.823266,
		-0.896158, -0.390350, -0.211015,
		27.747345, 38.177364, 59.192150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375772, 37.709797, 59.589710>,  <28.374657, 38.450607, 59.339863>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.375772, 37.709797, 59.589710> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.110794, 37.746811, 59.292362>,  <27.951807, 37.769020, 59.113953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.110794, 37.746811, 59.292362>,  <28.375772, 37.709797, 59.589710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.110794, 37.746811, 59.292362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486443, -0.701517, -0.520815,
		-0.569684, -0.706620, 0.419701,
		-0.662445, 0.092539, -0.743373,
		27.912060, 37.774574, 59.069351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.151964, 36.949886, 59.263699>,  <28.375772, 37.709797, 59.589710>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.151964, 36.949886, 59.263699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.969250, 37.152653, 58.971291>,  <27.859621, 37.274311, 58.795845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.969250, 37.152653, 58.971291>,  <28.151964, 36.949886, 59.263699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.969250, 37.152653, 58.971291> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302995, -0.683965, -0.663615,
		-0.836385, -0.524625, 0.158834,
		-0.456786, 0.506912, -0.731017,
		27.832214, 37.304726, 58.751984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.609388, 36.546448, 58.868225>,  <28.151964, 36.949886, 59.263699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.609388, 36.546448, 58.868225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.765087, 36.840420, 58.646103>,  <27.858507, 37.016804, 58.512829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.765087, 36.840420, 58.646103>,  <27.609388, 36.546448, 58.868225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.765087, 36.840420, 58.646103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266860, -0.666971, -0.695654,
		-0.881630, 0.122593, -0.455741,
		0.389248, 0.734929, -0.555307,
		27.881861, 37.060898, 58.479511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.420204, 36.473557, 58.258701>,  <27.609388, 36.546448, 58.868225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.420204, 36.473557, 58.258701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.735289, 36.709743, 58.188431>,  <27.924339, 36.851456, 58.146267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.735289, 36.709743, 58.188431>,  <27.420204, 36.473557, 58.258701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.735289, 36.709743, 58.188431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211054, -0.526576, -0.823513,
		-0.578763, 0.611613, -0.539410,
		0.787711, 0.590464, -0.175680,
		27.971601, 36.886883, 58.135727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.543102, 36.441765, 57.445034>,  <27.420204, 36.473557, 58.258701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.543102, 36.441765, 57.445034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875801, 36.605915, 57.594589>,  <28.075420, 36.704407, 57.684322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875801, 36.605915, 57.594589>,  <27.543102, 36.441765, 57.445034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.875801, 36.605915, 57.594589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547067, -0.491325, -0.677730,
		-0.094425, 0.768239, -0.633161,
		0.831746, 0.410376, 0.373885,
		28.125324, 36.729027, 57.706753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.871719, 36.744637, 56.899445>,  <27.543102, 36.441765, 57.445034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.871719, 36.744637, 56.899445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.125977, 36.643276, 57.191128>,  <28.278530, 36.582458, 57.366138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.125977, 36.643276, 57.191128>,  <27.871719, 36.744637, 56.899445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.125977, 36.643276, 57.191128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548417, -0.516581, -0.657559,
		0.543321, 0.817883, -0.189392,
		0.635642, -0.253399, 0.729210,
		28.316669, 36.567257, 57.409889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.437366, 36.707104, 56.535866>,  <27.871719, 36.744637, 56.899445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.437366, 36.707104, 56.535866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586760, 36.529537, 56.861675>,  <28.676395, 36.422997, 57.057159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586760, 36.529537, 56.861675>,  <28.437366, 36.707104, 56.535866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.586760, 36.529537, 56.861675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357005, -0.741649, -0.567895,
		0.856188, 0.502888, -0.118513,
		0.373482, -0.443915, 0.814525,
		28.698805, 36.396362, 57.106033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.168907, 36.453743, 56.351795>,  <28.437366, 36.707104, 56.535866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.168907, 36.453743, 56.351795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.079315, 36.250347, 56.684364>,  <29.025560, 36.128307, 56.883907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.079315, 36.250347, 56.684364>,  <29.168907, 36.453743, 56.351795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.079315, 36.250347, 56.684364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416927, -0.821089, -0.389853,
		0.880911, 0.259324, 0.395913,
		-0.223982, -0.508492, 0.831425,
		29.012121, 36.097801, 56.933792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.817209, 36.272442, 56.675056>,  <29.168907, 36.453743, 56.351795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.817209, 36.272442, 56.675056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540071, 36.012520, 56.800098>,  <29.373789, 35.856567, 56.875122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540071, 36.012520, 56.800098>,  <29.817209, 36.272442, 56.675056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.540071, 36.012520, 56.800098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625797, -0.757227, -0.187042,
		0.358254, 0.066037, 0.931286,
		-0.692843, -0.649805, 0.312605,
		29.332218, 35.817577, 56.893879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156166, 35.854111, 57.197468>,  <29.817209, 36.272442, 56.675056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156166, 35.854111, 57.197468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849035, 35.653606, 57.037880>,  <29.664757, 35.533302, 56.942127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849035, 35.653606, 57.037880>,  <30.156166, 35.854111, 57.197468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.849035, 35.653606, 57.037880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617252, -0.745611, -0.251128,
		-0.171597, -0.439089, 0.881904,
		-0.767825, -0.501264, -0.398973,
		29.618689, 35.503227, 56.918186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332657, 35.250778, 57.362782>,  <30.156166, 35.854111, 57.197468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332657, 35.250778, 57.362782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050705, 35.157440, 57.094841>,  <29.881535, 35.101437, 56.934078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050705, 35.157440, 57.094841>,  <30.332657, 35.250778, 57.362782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.050705, 35.157440, 57.094841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568465, -0.750653, -0.336699,
		-0.424256, -0.618118, 0.661768,
		-0.704878, -0.233345, -0.669848,
		29.839241, 35.087437, 56.893887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131760, 34.463722, 57.434822>,  <30.332657, 35.250778, 57.362782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131760, 34.463722, 57.434822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.021393, 34.583767, 57.069572>,  <29.955172, 34.655792, 56.850422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.021393, 34.583767, 57.069572>,  <30.131760, 34.463722, 57.434822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.021393, 34.583767, 57.069572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414160, -0.820170, -0.394705,
		-0.867376, -0.487087, 0.102006,
		-0.275918, 0.300111, -0.913128,
		29.938618, 34.673801, 56.795635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959799, 33.774067, 57.083759>,  <30.131760, 34.463722, 57.434822>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959799, 33.774067, 57.083759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.022062, 34.056805, 56.807747>,  <30.059422, 34.226448, 56.642139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.022062, 34.056805, 56.807747>,  <29.959799, 33.774067, 57.083759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022062, 34.056805, 56.807747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411616, -0.681423, -0.605173,
		-0.897966, -0.189826, -0.397019,
		0.155660, 0.706844, -0.690030,
		30.068760, 34.268856, 56.600739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.701738, 33.461639, 56.515289>,  <29.959799, 33.774067, 57.083759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.701738, 33.461639, 56.515289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957781, 33.737392, 56.379635>,  <30.111406, 33.902843, 56.298241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957781, 33.737392, 56.379635>,  <29.701738, 33.461639, 56.515289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957781, 33.737392, 56.379635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407499, -0.678856, -0.610818,
		-0.651312, 0.252792, -0.715464,
		0.640108, 0.689384, -0.339134,
		30.149813, 33.944206, 56.277893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.542629, 34.043530, 53.454441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.558113, 34.249023, 53.111610>,  <47.567406, 34.372318, 52.905910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.558113, 34.249023, 53.111610>,  <47.542629, 34.043530, 53.454441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.558113, 34.249023, 53.111610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997468, -0.031334, -0.063834,
		-0.059650, 0.857377, 0.511221,
		0.038711, 0.513734, -0.857075,
		47.569725, 34.403145, 52.854488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.048264, 34.595989, 53.534729>,  <47.542629, 34.043530, 53.454441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.048264, 34.595989, 53.534729> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.115223, 34.513042, 53.149193>,  <47.155399, 34.463276, 52.917873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.115223, 34.513042, 53.149193>,  <47.048264, 34.595989, 53.534729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.115223, 34.513042, 53.149193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985636, -0.057369, -0.158840,
		-0.022357, 0.976581, -0.213988,
		0.167396, -0.207363, -0.963836,
		47.165443, 34.450832, 52.860043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.529224, 34.927319, 53.237793>,  <47.048264, 34.595989, 53.534729>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.529224, 34.927319, 53.237793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.648521, 34.673244, 52.952812>,  <46.720100, 34.520798, 52.781826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.648521, 34.673244, 52.952812>,  <46.529224, 34.927319, 53.237793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.648521, 34.673244, 52.952812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930108, -0.025779, -0.366380,
		0.214354, 0.771927, -0.598483,
		0.298247, -0.635189, -0.712449,
		46.737995, 34.482689, 52.739079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.297203, 35.159908, 52.540062>,  <46.529224, 34.927319, 53.237793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.297203, 35.159908, 52.540062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.342552, 34.764397, 52.501167>,  <46.369762, 34.527088, 52.477829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.342552, 34.764397, 52.501167>,  <46.297203, 35.159908, 52.540062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.342552, 34.764397, 52.501167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927930, -0.070396, -0.366046,
		0.355095, 0.131729, -0.925503,
		0.113371, -0.988783, -0.097238,
		46.376564, 34.467762, 52.471996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.821781, 35.080421, 52.135677>,  <46.297203, 35.159908, 52.540062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.821781, 35.080421, 52.135677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.905140, 34.694283, 52.198513>,  <45.955154, 34.462601, 52.236214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.905140, 34.694283, 52.198513>,  <45.821781, 35.080421, 52.135677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.905140, 34.694283, 52.198513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786279, -0.260883, -0.560094,
		0.581667, -0.006795, -0.813398,
		0.208397, -0.965347, 0.157090,
		45.967659, 34.404678, 52.245640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.925503, 34.762482, 51.526310>,  <45.821781, 35.080421, 52.135677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.925503, 34.762482, 51.526310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.796745, 34.481541, 51.780266>,  <45.719490, 34.312977, 51.932640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.796745, 34.481541, 51.780266>,  <45.925503, 34.762482, 51.526310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.796745, 34.481541, 51.780266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808225, -0.145406, -0.570640,
		0.493108, -0.696816, -0.520856,
		-0.321895, -0.702356, 0.634885,
		45.700176, 34.270832, 51.970730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.648731, 34.159065, 51.141159>,  <45.925503, 34.762482, 51.526310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.648731, 34.159065, 51.141159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.500439, 34.101814, 51.508217>,  <45.411461, 34.067463, 51.728451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.500439, 34.101814, 51.508217>,  <45.648731, 34.159065, 51.141159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.500439, 34.101814, 51.508217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851761, -0.341460, -0.397376,
		0.370214, -0.928935, 0.004681,
		-0.370734, -0.143127, 0.917644,
		45.389217, 34.058876, 51.783508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.274246, 33.482063, 51.141125>,  <45.648731, 34.159065, 51.141159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.274246, 33.482063, 51.141125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.111393, 33.674786, 51.451508>,  <45.013680, 33.790421, 51.637737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.111393, 33.674786, 51.451508>,  <45.274246, 33.482063, 51.141125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.111393, 33.674786, 51.451508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909984, -0.287035, -0.299233,
		0.078554, -0.827935, 0.555296,
		-0.407134, 0.481804, 0.775955,
		44.989254, 33.819328, 51.684296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.904953, 32.968819, 51.506508>,  <45.274246, 33.482063, 51.141125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.904953, 32.968819, 51.506508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.757366, 33.330986, 51.590485>,  <44.668816, 33.548286, 51.640869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.757366, 33.330986, 51.590485>,  <44.904953, 32.968819, 51.506508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.757366, 33.330986, 51.590485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924373, -0.333910, -0.184498,
		-0.096948, -0.262135, 0.960149,
		-0.368967, 0.905422, 0.209938,
		44.646675, 33.602612, 51.653465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.280193, 32.822941, 51.756954>,  <44.904953, 32.968819, 51.506508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.280193, 32.822941, 51.756954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.209503, 33.215260, 51.723938>,  <44.167088, 33.450649, 51.704128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.209503, 33.215260, 51.723938>,  <44.280193, 32.822941, 51.756954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.209503, 33.215260, 51.723938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948026, -0.192169, -0.253610,
		-0.264600, 0.033432, 0.963779,
		-0.176730, 0.980792, -0.082542,
		44.156483, 33.509499, 51.699177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.764484, 32.978134, 52.131901>,  <44.280193, 32.822941, 51.756954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.764484, 32.978134, 52.131901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.750343, 33.247612, 51.836636>,  <43.741859, 33.409298, 51.659477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.750343, 33.247612, 51.836636>,  <43.764484, 32.978134, 52.131901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.750343, 33.247612, 51.836636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985915, -0.144329, -0.084502,
		-0.163467, 0.724783, 0.669304,
		-0.035354, 0.673690, -0.738168,
		43.739738, 33.449718, 51.615185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.028996, 33.151958, 52.183849>,  <43.764484, 32.978134, 52.131901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.028996, 33.151958, 52.183849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.148163, 33.267296, 51.819847>,  <43.219666, 33.336498, 51.601448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.148163, 33.267296, 51.819847>,  <43.028996, 33.151958, 52.183849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.148163, 33.267296, 51.819847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864748, -0.322223, -0.385205,
		-0.404294, 0.901683, 0.153345,
		0.297922, 0.288340, -0.910001,
		43.237541, 33.353798, 51.546848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.529110, 33.606544, 51.959705>,  <43.028996, 33.151958, 52.183849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.529110, 33.606544, 51.959705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.714043, 33.506790, 51.619339>,  <42.825001, 33.446938, 51.415119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.714043, 33.506790, 51.619339>,  <42.529110, 33.606544, 51.959705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.714043, 33.506790, 51.619339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884964, -0.069634, -0.460423,
		0.055569, 0.965898, -0.252888,
		0.462332, -0.249382, -0.850916,
		42.852741, 33.431976, 51.364063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.185890, 33.859573, 51.462246>,  <42.529110, 33.606544, 51.959705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.185890, 33.859573, 51.462246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.407066, 33.601677, 51.251125>,  <42.539772, 33.446941, 51.124454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.407066, 33.601677, 51.251125>,  <42.185890, 33.859573, 51.462246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.407066, 33.601677, 51.251125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730051, -0.069566, -0.679843,
		0.401604, 0.761231, -0.509158,
		0.552937, -0.644738, -0.527800,
		42.572948, 33.408257, 51.092785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.245647, 34.193996, 50.817501>,  <42.185890, 33.859573, 51.462246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.245647, 34.193996, 50.817501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.312649, 33.813450, 50.714077>,  <42.352848, 33.585121, 50.652023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.312649, 33.813450, 50.714077>,  <42.245647, 34.193996, 50.817501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.312649, 33.813450, 50.714077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811978, 0.015612, -0.583479,
		0.559137, 0.307677, -0.769871,
		0.167504, -0.951363, -0.258556,
		42.362900, 33.528042, 50.636509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.216640, 34.103069, 50.000469>,  <42.245647, 34.193996, 50.817501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.216640, 34.103069, 50.000469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.133045, 33.759422, 50.187336>,  <42.082886, 33.553234, 50.299458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.133045, 33.759422, 50.187336>,  <42.216640, 34.103069, 50.000469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133045, 33.759422, 50.187336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837117, -0.089785, -0.539605,
		0.505527, -0.503848, -0.700414,
		-0.208992, -0.859114, 0.467169,
		42.070347, 33.501690, 50.327488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.115631, 33.632008, 49.489784>,  <42.216640, 34.103069, 50.000469>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.115631, 33.632008, 49.489784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.927979, 33.478230, 49.807808>,  <41.815388, 33.385963, 49.998623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.927979, 33.478230, 49.807808>,  <42.115631, 33.632008, 49.489784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.927979, 33.478230, 49.807808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780507, -0.240720, -0.576943,
		0.413188, -0.891212, -0.187129,
		-0.469132, -0.384441, 0.795060,
		41.787239, 33.362896, 50.046326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.837326, 32.933079, 49.311199>,  <42.115631, 33.632008, 49.489784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.837326, 32.933079, 49.311199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.616543, 33.041138, 49.626759>,  <41.484074, 33.105972, 49.816093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.616543, 33.041138, 49.626759>,  <41.837326, 32.933079, 49.311199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.616543, 33.041138, 49.626759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830804, -0.097087, -0.548032,
		-0.071452, -0.957914, 0.278020,
		-0.551959, 0.270138, 0.788902,
		41.450954, 33.122181, 49.863430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293884, 32.442940, 49.316017>,  <41.837326, 32.933079, 49.311199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293884, 32.442940, 49.316017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.149078, 32.733559, 49.549625>,  <41.062195, 32.907928, 49.689789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.149078, 32.733559, 49.549625>,  <41.293884, 32.442940, 49.316017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.149078, 32.733559, 49.549625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908682, -0.135282, -0.394964,
		-0.207954, -0.673666, 0.709175,
		-0.362012, 0.726548, 0.584016,
		41.040474, 32.951523, 49.724831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648041, 32.252274, 49.510647>,  <41.293884, 32.442940, 49.316017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648041, 32.252274, 49.510647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.614243, 32.646034, 49.572372>,  <40.593964, 32.882290, 49.609409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.614243, 32.646034, 49.572372>,  <40.648041, 32.252274, 49.510647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614243, 32.646034, 49.572372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772026, 0.033232, -0.634721,
		-0.629949, -0.172768, 0.757176,
		-0.084497, 0.984401, 0.154316,
		40.588894, 32.941353, 49.618668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997761, 32.526661, 49.854259>,  <40.648041, 32.252274, 49.510647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997761, 32.526661, 49.854259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.158333, 32.799847, 49.610157>,  <40.254677, 32.963757, 49.463696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.158333, 32.799847, 49.610157>,  <39.997761, 32.526661, 49.854259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158333, 32.799847, 49.610157> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814100, -0.039212, -0.579400,
		-0.419637, 0.729401, 0.540259,
		0.401430, 0.682962, -0.610260,
		40.278763, 33.004734, 49.427078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461353, 32.599255, 49.317993>,  <39.997761, 32.526661, 49.854259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461353, 32.599255, 49.317993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.754166, 32.832588, 49.177227>,  <39.929855, 32.972588, 49.092770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.754166, 32.832588, 49.177227>,  <39.461353, 32.599255, 49.317993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754166, 32.832588, 49.177227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502544, 0.113607, -0.857055,
		-0.459973, 0.804245, 0.376318,
		0.732034, 0.583338, -0.351912,
		39.973778, 33.007591, 49.071651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178383, 31.979067, 48.965534>,  <39.461353, 32.599255, 49.317993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178383, 31.979067, 48.965534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.870827, 31.756212, 49.091015>,  <38.686295, 31.622499, 49.166302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.870827, 31.756212, 49.091015>,  <39.178383, 31.979067, 48.965534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870827, 31.756212, 49.091015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587205, 0.809436, -0.001680,
		-0.252987, -0.185500, -0.949519,
		-0.768887, -0.557138, 0.313703,
		38.640160, 31.589071, 49.185127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093315, 31.335983, 48.635426>,  <39.178383, 31.979067, 48.965534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093315, 31.335983, 48.635426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.312389, 31.276884, 48.306011>,  <39.443836, 31.241425, 48.108364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.312389, 31.276884, 48.306011>,  <39.093315, 31.335983, 48.635426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312389, 31.276884, 48.306011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834306, -0.022295, -0.550851,
		0.063026, 0.988774, -0.135477,
		0.547688, -0.147747, -0.823534,
		39.476696, 31.232559, 48.058952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853653, 31.745884, 48.011074>,  <39.093315, 31.335983, 48.635426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853653, 31.745884, 48.011074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.961769, 31.372267, 47.917683>,  <39.026638, 31.148096, 47.861649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.961769, 31.372267, 47.917683>,  <38.853653, 31.745884, 48.011074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961769, 31.372267, 47.917683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837302, -0.108339, -0.535900,
		0.475258, 0.340338, -0.811357,
		0.270289, -0.934041, -0.233477,
		39.042854, 31.092054, 47.847641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557610, 31.583376, 47.306049>,  <38.853653, 31.745884, 48.011074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557610, 31.583376, 47.306049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.570969, 31.223444, 47.480034>,  <38.578983, 31.007484, 47.584423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.570969, 31.223444, 47.480034>,  <38.557610, 31.583376, 47.306049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570969, 31.223444, 47.480034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795555, -0.287362, -0.533400,
		0.604960, -0.328222, -0.725461,
		0.033396, -0.899830, 0.434961,
		38.580986, 30.953495, 47.610523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427006, 31.080418, 46.789837>,  <38.557610, 31.583376, 47.306049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427006, 31.080418, 46.789837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.358212, 30.881838, 47.130180>,  <38.316936, 30.762690, 47.334385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.358212, 30.881838, 47.130180>,  <38.427006, 31.080418, 46.789837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358212, 30.881838, 47.130180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876325, -0.317433, -0.362340,
		0.449974, -0.807945, -0.380459,
		-0.171981, -0.496450, 0.850859,
		38.306618, 30.732903, 47.385437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177761, 30.456408, 46.568832>,  <38.427006, 31.080418, 46.789837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177761, 30.456408, 46.568832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.045853, 30.502769, 46.943600>,  <37.966705, 30.530586, 47.168461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.045853, 30.502769, 46.943600>,  <38.177761, 30.456408, 46.568832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045853, 30.502769, 46.943600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905263, -0.320405, -0.278996,
		0.267857, -0.940164, 0.210584,
		-0.329774, 0.115903, 0.936918,
		37.946922, 30.537540, 47.224674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795460, 29.794481, 46.776588>,  <38.177761, 30.456408, 46.568832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795460, 29.794481, 46.776588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.669159, 30.088369, 47.016750>,  <37.593376, 30.264702, 47.160847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.669159, 30.088369, 47.016750>,  <37.795460, 29.794481, 46.776588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669159, 30.088369, 47.016750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948172, -0.268078, -0.170599,
		0.035613, -0.623155, 0.781287,
		-0.315755, 0.734719, 0.600405,
		37.574432, 30.308784, 47.196873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233131, 29.619905, 47.089851>,  <37.795460, 29.794481, 46.776588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233131, 29.619905, 47.089851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.183037, 30.008564, 47.170067>,  <37.152981, 30.241760, 47.218197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.183037, 30.008564, 47.170067>,  <37.233131, 29.619905, 47.089851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183037, 30.008564, 47.170067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991725, -0.116847, -0.053191,
		-0.028251, -0.205542, 0.978241,
		-0.125237, 0.971648, 0.200540,
		37.145466, 30.300058, 47.230228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705482, 29.676310, 47.637825>,  <37.233131, 29.619905, 47.089851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705482, 29.676310, 47.637825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.710148, 30.036425, 47.463772>,  <36.712948, 30.252495, 47.359337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.710148, 30.036425, 47.463772>,  <36.705482, 29.676310, 47.637825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710148, 30.036425, 47.463772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896202, -0.183597, -0.403874,
		-0.443493, 0.394681, 0.804699,
		0.011661, 0.900288, -0.435138,
		36.713646, 30.306511, 47.333229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072964, 30.086040, 47.794674>,  <36.705482, 29.676310, 47.637825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072964, 30.086040, 47.794674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.219711, 30.209932, 47.443794>,  <36.307762, 30.284267, 47.233269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.219711, 30.209932, 47.443794>,  <36.072964, 30.086040, 47.794674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219711, 30.209932, 47.443794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920919, -0.012454, -0.389556,
		-0.131582, 0.950743, 0.280667,
		0.366872, 0.309729, -0.877196,
		36.329773, 30.302851, 47.180637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646744, 30.514753, 47.634998>,  <36.072964, 30.086040, 47.794674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646744, 30.514753, 47.634998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.843082, 30.470230, 47.289356>,  <35.960888, 30.443516, 47.081970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.843082, 30.470230, 47.289356>,  <35.646744, 30.514753, 47.634998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843082, 30.470230, 47.289356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832679, 0.231878, -0.502869,
		0.256340, 0.966356, 0.021134,
		0.490851, -0.111307, -0.864104,
		35.990337, 30.436838, 47.030125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374233, 30.953711, 47.256058>,  <35.646744, 30.514753, 47.634998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374233, 30.953711, 47.256058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.506294, 30.674673, 47.001701>,  <35.585529, 30.507250, 46.849087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.506294, 30.674673, 47.001701>,  <35.374233, 30.953711, 47.256058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506294, 30.674673, 47.001701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920718, -0.089521, -0.379822,
		0.208036, 0.710879, -0.671843,
		0.330151, -0.697594, -0.635896,
		35.605339, 30.465395, 46.810932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139076, 31.142683, 46.466183>,  <35.374233, 30.953711, 47.256058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139076, 31.142683, 46.466183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.191120, 30.760372, 46.571682>,  <35.222347, 30.530985, 46.634979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.191120, 30.760372, 46.571682>,  <35.139076, 31.142683, 46.466183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191120, 30.760372, 46.571682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873588, -0.236319, -0.425439,
		0.468953, -0.175052, -0.865702,
		0.130108, -0.955777, 0.263745,
		35.230152, 30.473639, 46.650806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<28.150286, 31.299795, 50.634270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.526894, 31.323956, 50.766869>,  <28.752859, 31.338451, 50.846428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.526894, 31.323956, 50.766869>,  <28.150286, 31.299795, 50.634270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.526894, 31.323956, 50.766869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336307, -0.229614, -0.913332,
		0.020951, 0.971406, -0.236500,
		0.941519, 0.060402, 0.331501,
		28.809349, 31.342075, 50.866318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.470785, 31.716337, 50.066555>,  <28.150286, 31.299795, 50.634270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.470785, 31.716337, 50.066555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.735304, 31.495718, 50.269920>,  <28.894014, 31.363346, 50.391941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.735304, 31.495718, 50.269920>,  <28.470785, 31.716337, 50.066555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.735304, 31.495718, 50.269920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456949, -0.241305, -0.856136,
		0.594883, 0.798477, 0.092456,
		0.661295, -0.551548, 0.508412,
		28.933693, 31.330254, 50.422443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.074341, 31.997877, 49.917465>,  <28.470785, 31.716337, 50.066555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.074341, 31.997877, 49.917465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.168943, 31.636408, 50.060261>,  <29.225706, 31.419527, 50.145939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.168943, 31.636408, 50.060261>,  <29.074341, 31.997877, 49.917465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.168943, 31.636408, 50.060261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585993, -0.160409, -0.794280,
		0.775033, 0.397046, 0.491608,
		0.236507, -0.903672, 0.356989,
		29.239895, 31.365307, 50.167358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.770803, 32.018967, 49.885437>,  <29.074341, 31.997877, 49.917465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.770803, 32.018967, 49.885437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.665001, 31.634008, 49.910198>,  <29.601519, 31.403034, 49.925056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.665001, 31.634008, 49.910198>,  <29.770803, 32.018967, 49.885437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.665001, 31.634008, 49.910198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659016, -0.227243, -0.716979,
		0.704084, -0.148850, 0.694341,
		-0.264507, -0.962395, 0.061903,
		29.585649, 31.345289, 49.928768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411354, 31.651636, 50.040611>,  <29.770803, 32.018967, 49.885437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411354, 31.651636, 50.040611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.162949, 31.383780, 49.877678>,  <30.013905, 31.223066, 49.779919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.162949, 31.383780, 49.877678>,  <30.411354, 31.651636, 50.040611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.162949, 31.383780, 49.877678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747596, -0.349937, -0.564486,
		0.235462, -0.655075, 0.717937,
		-0.621013, -0.669642, -0.407335,
		29.976645, 31.182886, 49.755478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796803, 31.049038, 49.979607>,  <30.411354, 31.651636, 50.040611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.796803, 31.049038, 49.979607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.511425, 30.956043, 49.715199>,  <30.340199, 30.900246, 49.556553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.511425, 30.956043, 49.715199>,  <30.796803, 31.049038, 49.979607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.511425, 30.956043, 49.715199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697253, -0.329155, -0.636786,
		-0.069533, -0.915209, 0.396936,
		-0.713445, -0.232487, -0.661019,
		30.297392, 30.886297, 49.516891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955093, 30.433289, 49.740170>,  <30.796803, 31.049038, 49.979607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955093, 30.433289, 49.740170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.722248, 30.573145, 49.446529>,  <30.582541, 30.657059, 49.270348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.722248, 30.573145, 49.446529>,  <30.955093, 30.433289, 49.740170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722248, 30.573145, 49.446529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634034, -0.370051, -0.679017,
		-0.509066, -0.860705, -0.006275,
		-0.582111, 0.349643, -0.734096,
		30.547615, 30.678038, 49.226299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848057, 29.920830, 49.193008>,  <30.955093, 30.433289, 49.740170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848057, 29.920830, 49.193008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.747520, 30.256861, 49.000717>,  <30.687199, 30.458479, 48.885342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.747520, 30.256861, 49.000717>,  <30.848057, 29.920830, 49.193008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747520, 30.256861, 49.000717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688929, -0.193594, -0.698497,
		-0.679857, -0.506748, -0.530095,
		-0.251339, 0.840076, -0.480730,
		30.672119, 30.508884, 48.856499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.854660, 29.752056, 48.507694>,  <30.848057, 29.920830, 49.193008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.854660, 29.752056, 48.507694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.890388, 30.150455, 48.508682>,  <30.911825, 30.389496, 48.509277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.890388, 30.150455, 48.508682>,  <30.854660, 29.752056, 48.507694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890388, 30.150455, 48.508682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778486, -0.068266, -0.623939,
		-0.621274, 0.057655, -0.781469,
		0.089321, 0.996000, 0.002472,
		30.917185, 30.449255, 48.509422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718172, 29.859209, 47.868904>,  <30.854660, 29.752056, 48.507694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718172, 29.859209, 47.868904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.922924, 30.163858, 48.027859>,  <31.045774, 30.346647, 48.123230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.922924, 30.163858, 48.027859>,  <30.718172, 29.859209, 47.868904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922924, 30.163858, 48.027859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663531, -0.056724, -0.745996,
		-0.545626, 0.645534, -0.534395,
		0.511879, 0.761622, 0.397382,
		31.076488, 30.392345, 48.147072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035366, 30.090559, 47.266930>,  <30.718172, 29.859209, 47.868904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.035366, 30.090559, 47.266930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.236269, 30.269989, 47.562637>,  <31.356810, 30.377647, 47.740063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.236269, 30.269989, 47.562637>,  <31.035366, 30.090559, 47.266930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236269, 30.269989, 47.562637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795168, 0.096339, -0.598688,
		-0.339776, 0.888538, -0.308305,
		0.502256, 0.448574, 0.739271,
		31.386946, 30.404562, 47.784420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430552, 30.464621, 46.889648>,  <31.035366, 30.090559, 47.266930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430552, 30.464621, 46.889648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.613037, 30.471313, 47.245533>,  <31.722528, 30.475328, 47.459064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.613037, 30.471313, 47.245533>,  <31.430552, 30.464621, 46.889648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613037, 30.471313, 47.245533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889582, -0.033997, -0.455508,
		0.022626, 0.999282, -0.030394,
		0.456214, 0.016732, 0.889713,
		31.749901, 30.476334, 47.512447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098171, 30.704185, 46.689514>,  <31.430552, 30.464621, 46.889648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098171, 30.704185, 46.689514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.297424, 30.984205, 46.484852>,  <32.416977, 31.152218, 46.362053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.297424, 30.984205, 46.484852>,  <32.098171, 30.704185, 46.689514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297424, 30.984205, 46.484852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712596, 0.666705, 0.218431,
		0.494038, 0.255798, 0.830959,
		0.498130, 0.700051, -0.511658,
		32.446865, 31.194221, 46.331356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164875, 31.180683, 47.143742>,  <32.098171, 30.704185, 46.689514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164875, 31.180683, 47.143742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.183407, 31.347923, 46.780853>,  <32.194527, 31.448267, 46.563122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.183407, 31.347923, 46.780853>,  <32.164875, 31.180683, 47.143742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183407, 31.347923, 46.780853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570501, 0.756584, 0.319547,
		0.819989, 0.502764, 0.273580,
		0.046330, 0.418103, -0.907218,
		32.197308, 31.473354, 46.508690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388905, 31.905035, 47.171478>,  <32.164875, 31.180683, 47.143742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388905, 31.905035, 47.171478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.220993, 31.886961, 46.808876>,  <32.120247, 31.876116, 46.591316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.220993, 31.886961, 46.808876>,  <32.388905, 31.905035, 47.171478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220993, 31.886961, 46.808876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316317, 0.943426, 0.099451,
		0.850723, 0.328490, -0.410322,
		-0.419778, -0.045186, -0.906502,
		32.095058, 31.873405, 46.536926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577877, 32.572392, 46.982281>,  <32.388905, 31.905035, 47.171478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577877, 32.572392, 46.982281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.285412, 32.438091, 46.744736>,  <32.109932, 32.357513, 46.602211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.285412, 32.438091, 46.744736>,  <32.577877, 32.572392, 46.982281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285412, 32.438091, 46.744736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478805, 0.872640, 0.096149,
		0.485943, 0.354644, -0.798804,
		-0.731167, -0.335748, -0.593859,
		32.066063, 32.337368, 46.566578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553104, 33.065865, 46.456062>,  <32.577877, 32.572392, 46.982281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553104, 33.065865, 46.456062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.198067, 32.883099, 46.479416>,  <31.985044, 32.773441, 46.493427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.198067, 32.883099, 46.479416>,  <32.553104, 33.065865, 46.456062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198067, 32.883099, 46.479416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459886, 0.886202, -0.056125,
		-0.026097, -0.076667, -0.996715,
		-0.887594, -0.456911, 0.058385,
		31.931789, 32.746025, 46.496933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179138, 33.236492, 45.868176>,  <32.553104, 33.065865, 46.456062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179138, 33.236492, 45.868176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.921608, 33.128716, 46.154644>,  <31.767090, 33.064049, 46.326523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.921608, 33.128716, 46.154644>,  <32.179138, 33.236492, 45.868176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921608, 33.128716, 46.154644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356558, 0.933766, 0.030765,
		-0.677022, -0.235548, -0.697251,
		-0.643823, -0.269439, 0.716167,
		31.728460, 33.047882, 46.369495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713140, 33.640884, 45.749367>,  <32.179138, 33.236492, 45.868176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713140, 33.640884, 45.749367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.613861, 33.525036, 46.119125>,  <31.554293, 33.455524, 46.340981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.613861, 33.525036, 46.119125>,  <31.713140, 33.640884, 45.749367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613861, 33.525036, 46.119125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385448, 0.904993, 0.180051,
		-0.888722, -0.311620, -0.336253,
		-0.248199, -0.289623, 0.924400,
		31.539402, 33.438148, 46.396446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181904, 34.039524, 45.808887>,  <31.713140, 33.640884, 45.749367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181904, 34.039524, 45.808887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.271553, 33.932171, 46.183640>,  <31.325342, 33.867760, 46.408489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.271553, 33.932171, 46.183640>,  <31.181904, 34.039524, 45.808887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271553, 33.932171, 46.183640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464801, 0.815518, 0.344805,
		-0.856580, -0.512740, 0.058032,
		0.224121, -0.268380, 0.936878,
		31.338789, 33.851658, 46.464703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.555733, 34.027374, 46.131950>,  <31.181904, 34.039524, 45.808887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.555733, 34.027374, 46.131950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.856337, 34.104099, 46.384438>,  <31.036699, 34.150135, 46.535931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.856337, 34.104099, 46.384438>,  <30.555733, 34.027374, 46.131950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856337, 34.104099, 46.384438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481769, 0.813219, 0.326456,
		-0.450702, -0.549438, 0.703553,
		0.751510, 0.191815, 0.631221,
		31.081789, 34.161644, 46.573803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158754, 34.299946, 46.619606>,  <30.555733, 34.027374, 46.131950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158754, 34.299946, 46.619606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.520437, 34.410229, 46.750076>,  <30.737448, 34.476398, 46.828358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.520437, 34.410229, 46.750076>,  <30.158754, 34.299946, 46.619606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520437, 34.410229, 46.750076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396074, 0.827046, 0.398898,
		-0.159788, -0.489879, 0.857022,
		0.904209, 0.275705, 0.326180,
		30.791700, 34.492939, 46.847931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163937, 34.386505, 47.361862>,  <30.158754, 34.299946, 46.619606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163937, 34.386505, 47.361862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.459879, 34.614670, 47.219177>,  <30.637444, 34.751568, 47.133568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.459879, 34.614670, 47.219177>,  <30.163937, 34.386505, 47.361862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459879, 34.614670, 47.219177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317941, 0.763721, 0.561823,
		0.592899, -0.302254, 0.746400,
		0.739854, 0.570415, -0.356710,
		30.681835, 34.785793, 47.112164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.374241, 34.717670, 47.884636>,  <30.163937, 34.386505, 47.361862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.374241, 34.717670, 47.884636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.533493, 34.939636, 47.592453>,  <30.629044, 35.072815, 47.417145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.533493, 34.939636, 47.592453>,  <30.374241, 34.717670, 47.884636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533493, 34.939636, 47.592453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044697, 0.807072, 0.588759,
		0.916239, -0.201753, 0.346123,
		0.398130, 0.554915, -0.730453,
		30.652931, 35.106110, 47.373318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.774569, 35.210201, 48.234802>,  <30.374241, 34.717670, 47.884636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.774569, 35.210201, 48.234802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.735624, 35.382008, 47.875683>,  <30.712257, 35.485092, 47.660213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.735624, 35.382008, 47.875683>,  <30.774569, 35.210201, 48.234802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.735624, 35.382008, 47.875683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066171, 0.897291, 0.436452,
		0.993047, 0.101902, -0.058942,
		-0.097363, 0.429517, -0.897795,
		30.706415, 35.510864, 47.606346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085060, 35.813190, 48.355686>,  <30.774569, 35.210201, 48.234802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.085060, 35.813190, 48.355686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.858572, 35.864960, 48.030075>,  <30.722679, 35.896023, 47.834709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.858572, 35.864960, 48.030075>,  <31.085060, 35.813190, 48.355686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.858572, 35.864960, 48.030075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352447, 0.854740, 0.381050,
		0.745102, 0.502661, -0.438355,
		-0.566219, 0.129424, -0.814030,
		30.688705, 35.903786, 47.785866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264322, 36.455173, 48.049988>,  <31.085060, 35.813190, 48.355686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264322, 36.455173, 48.049988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.891680, 36.369846, 47.932270>,  <30.668095, 36.318649, 47.861641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.891680, 36.369846, 47.932270>,  <31.264322, 36.455173, 48.049988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891680, 36.369846, 47.932270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341020, 0.793135, 0.504621,
		0.125772, 0.570468, -0.811633,
		-0.931604, -0.213316, -0.294295,
		30.612198, 36.305851, 47.843983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.857475, 37.187176, 47.973797>,  <31.264322, 36.455173, 48.049988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.857475, 37.187176, 47.973797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.563843, 36.915554, 47.975273>,  <30.387663, 36.752583, 47.976158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.563843, 36.915554, 47.975273>,  <30.857475, 37.187176, 47.973797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.563843, 36.915554, 47.975273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471085, 0.513155, 0.717461,
		-0.489088, 0.524935, -0.696589,
		-0.734079, -0.679054, 0.003689,
		30.343618, 36.711838, 47.976379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.141741, 37.851307, 48.121555>,  <30.857475, 37.187176, 47.973797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.141741, 37.851307, 48.121555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.323093, 38.107925, 48.369061>,  <31.431906, 38.261898, 48.517563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.323093, 38.107925, 48.369061>,  <31.141741, 37.851307, 48.121555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323093, 38.107925, 48.369061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868843, -0.163204, -0.467414,
		-0.198884, 0.749522, -0.631397,
		0.453384, 0.641546, 0.618759,
		31.459108, 38.300388, 48.554688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488535, 38.312481, 47.743580>,  <31.141741, 37.851307, 48.121555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488535, 38.312481, 47.743580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.677084, 38.311790, 48.096352>,  <31.790213, 38.311375, 48.308014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.677084, 38.311790, 48.096352>,  <31.488535, 38.312481, 47.743580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677084, 38.311790, 48.096352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878134, -0.091824, -0.469520,
		0.081794, 0.995774, -0.041764,
		0.471371, -0.001729, 0.881933,
		31.818495, 38.311272, 48.360931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992487, 38.783791, 47.612244>,  <31.488535, 38.312481, 47.743580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992487, 38.783791, 47.612244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.088898, 38.580803, 47.943153>,  <32.146744, 38.459011, 48.141701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.088898, 38.580803, 47.943153>,  <31.992487, 38.783791, 47.612244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088898, 38.580803, 47.943153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931529, -0.118213, -0.343916,
		0.272322, 0.853522, 0.444230,
		0.241026, -0.507469, 0.827273,
		32.161205, 38.428562, 48.191334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655937, 39.060822, 47.823627>,  <31.992487, 38.783791, 47.612244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655937, 39.060822, 47.823627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.639236, 38.719463, 48.031464>,  <32.629215, 38.514648, 48.156166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.639236, 38.719463, 48.031464>,  <32.655937, 39.060822, 47.823627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639236, 38.719463, 48.031464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949815, -0.195261, -0.244388,
		0.310015, 0.483308, 0.818721,
		-0.041750, -0.853397, 0.519587,
		32.626713, 38.463444, 48.187340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290131, 39.009968, 48.264423>,  <32.655937, 39.060822, 47.823627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290131, 39.009968, 48.264423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.194916, 38.621479, 48.261349>,  <33.137787, 38.388386, 48.259502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.194916, 38.621479, 48.261349>,  <33.290131, 39.009968, 48.264423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194916, 38.621479, 48.261349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955477, -0.232739, -0.181378,
		0.174369, -0.050521, 0.983383,
		-0.238035, -0.971226, -0.007689,
		33.123505, 38.330112, 48.259041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927700, 38.618618, 48.660469>,  <33.290131, 39.009968, 48.264423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927700, 38.618618, 48.660469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.723972, 38.369995, 48.422390>,  <33.601738, 38.220821, 48.279541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.723972, 38.369995, 48.422390>,  <33.927700, 38.618618, 48.660469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723972, 38.369995, 48.422390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849399, -0.474198, -0.231638,
		-0.138266, -0.623539, 0.769468,
		-0.509316, -0.621559, -0.595199,
		33.571178, 38.183529, 48.243832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132774, 38.061352, 48.884247>,  <33.927700, 38.618618, 48.660469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132774, 38.061352, 48.884247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.994591, 37.968346, 48.520576>,  <33.911682, 37.912540, 48.302376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.994591, 37.968346, 48.520576>,  <34.132774, 38.061352, 48.884247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994591, 37.968346, 48.520576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898899, -0.360234, -0.249424,
		-0.269520, -0.903420, 0.333453,
		-0.345456, -0.232516, -0.909174,
		33.890953, 37.898590, 48.247826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234592, 37.390152, 48.777328>,  <34.132774, 38.061352, 48.884247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234592, 37.390152, 48.777328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.192627, 37.522076, 48.402050>,  <34.167450, 37.601231, 48.176884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.192627, 37.522076, 48.402050>,  <34.234592, 37.390152, 48.777328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192627, 37.522076, 48.402050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692923, -0.652460, -0.306846,
		-0.713338, -0.682292, -0.160083,
		-0.104911, 0.329810, -0.938200,
		34.161152, 37.621017, 48.120590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266453, 36.722527, 48.429749>,  <34.234592, 37.390152, 48.777328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266453, 36.722527, 48.429749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.312557, 36.987072, 48.133286>,  <34.340221, 37.145798, 47.955406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.312557, 36.987072, 48.133286>,  <34.266453, 36.722527, 48.429749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312557, 36.987072, 48.133286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756452, -0.542031, -0.366036,
		-0.643812, -0.518460, -0.562765,
		0.115261, 0.661364, -0.741157,
		34.347137, 37.185482, 47.910938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353264, 36.297832, 47.878307>,  <34.266453, 36.722527, 48.429749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353264, 36.297832, 47.878307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.500816, 36.643490, 47.741383>,  <34.589348, 36.850883, 47.659229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.500816, 36.643490, 47.741383>,  <34.353264, 36.297832, 47.878307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500816, 36.643490, 47.741383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793099, -0.484683, -0.368885,
		-0.484683, -0.135412, -0.864145,
		0.368885, 0.864145, -0.342312,
		34.611481, 36.902733, 47.638687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601768, 36.106533, 47.242664>,  <34.353264, 36.297832, 47.878307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601768, 36.106533, 47.242664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.779045, 36.433914, 47.388939>,  <34.885410, 36.630341, 47.476704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.779045, 36.433914, 47.388939>,  <34.601768, 36.106533, 47.242664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779045, 36.433914, 47.388939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895056, -0.381462, -0.231001,
		-0.049569, 0.429683, -0.901618,
		0.443190, 0.818449, 0.365682,
		34.912003, 36.679447, 47.498642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107277, 36.278442, 46.684471>,  <34.601768, 36.106533, 47.242664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107277, 36.278442, 46.684471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.257607, 36.488316, 46.990013>,  <35.347805, 36.614239, 47.173336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.257607, 36.488316, 46.990013>,  <35.107277, 36.278442, 46.684471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257607, 36.488316, 46.990013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925415, -0.255732, -0.279656,
		0.048611, 0.811980, -0.581657,
		0.375824, 0.524680, 0.763851,
		35.370354, 36.645721, 47.219170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.287945, 39.990704, 53.232971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.074560, 40.272671, 53.045990>,  <28.946529, 40.441853, 52.933800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.074560, 40.272671, 53.045990>,  <29.287945, 39.990704, 53.232971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.074560, 40.272671, 53.045990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324840, -0.339531, -0.882722,
		-0.780961, -0.622743, -0.047859,
		-0.533459, 0.704918, -0.467452,
		28.914522, 40.484146, 52.905754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.841228, 39.616608, 52.713139>,  <29.287945, 39.990704, 53.232971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.841228, 39.616608, 52.713139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.847870, 39.991756, 52.574505>,  <28.851854, 40.216846, 52.491325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.847870, 39.991756, 52.574505>,  <28.841228, 39.616608, 52.713139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847870, 39.991756, 52.574505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347546, -0.330428, -0.877513,
		-0.937516, -0.105881, -0.331441,
		0.016606, 0.937873, -0.346580,
		28.852852, 40.273117, 52.470531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.553190, 39.541134, 52.103016>,  <28.841228, 39.616608, 52.713139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.553190, 39.541134, 52.103016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.715624, 39.904182, 52.060455>,  <28.813084, 40.122013, 52.034920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.715624, 39.904182, 52.060455>,  <28.553190, 39.541134, 52.103016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.715624, 39.904182, 52.060455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323567, -0.251694, -0.912115,
		-0.854634, 0.335970, -0.395885,
		0.406086, 0.907620, -0.106398,
		28.837450, 40.176468, 52.028538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248480, 39.901028, 51.476944>,  <28.553190, 39.541134, 52.103016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.248480, 39.901028, 51.476944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.602350, 40.066967, 51.562031>,  <28.814672, 40.166531, 51.613083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.602350, 40.066967, 51.562031>,  <28.248480, 39.901028, 51.476944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.602350, 40.066967, 51.562031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371260, -0.350929, -0.859660,
		-0.281985, 0.839492, -0.464476,
		0.884675, 0.414852, 0.212713,
		28.867752, 40.191422, 51.625843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.509857, 39.773369, 50.828060>,  <28.248480, 39.901028, 51.476944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.509857, 39.773369, 50.828060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.817274, 39.936043, 51.025627>,  <29.001724, 40.033646, 51.144169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.817274, 39.936043, 51.025627>,  <28.509857, 39.773369, 50.828060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.817274, 39.936043, 51.025627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622147, -0.294943, -0.725218,
		-0.149258, 0.864648, -0.479694,
		0.768541, 0.406685, 0.493916,
		29.047836, 40.058048, 51.173801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.779432, 40.253571, 50.380486>,  <28.509857, 39.773369, 50.828060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.779432, 40.253571, 50.380486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.049580, 40.094807, 50.629112>,  <29.211668, 39.999550, 50.778290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.049580, 40.094807, 50.629112>,  <28.779432, 40.253571, 50.380486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.049580, 40.094807, 50.629112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636888, -0.111035, -0.762919,
		0.371822, 0.911119, 0.177795,
		0.675368, -0.396905, 0.621566,
		29.252190, 39.975735, 50.815582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341803, 40.465809, 50.113140>,  <28.779432, 40.253571, 50.380486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341803, 40.465809, 50.113140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.481213, 40.172150, 50.346226>,  <29.564859, 39.995956, 50.486076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.481213, 40.172150, 50.346226>,  <29.341803, 40.465809, 50.113140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481213, 40.172150, 50.346226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731533, -0.175624, -0.658798,
		0.585993, 0.655886, 0.475842,
		0.348527, -0.734146, 0.582717,
		29.585772, 39.951904, 50.521042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.074268, 40.500801, 50.079281>,  <29.341803, 40.465809, 50.113140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.074268, 40.500801, 50.079281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.986763, 40.132206, 50.207657>,  <29.934259, 39.911049, 50.284683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.986763, 40.132206, 50.207657>,  <30.074268, 40.500801, 50.079281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.986763, 40.132206, 50.207657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713359, -0.375446, -0.591743,
		0.665780, 0.099494, 0.739485,
		-0.218762, -0.921489, 0.320939,
		29.921135, 39.855759, 50.303940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.709843, 40.177090, 50.060555>,  <30.074268, 40.500801, 50.079281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.709843, 40.177090, 50.060555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.420624, 39.901791, 50.036819>,  <30.247091, 39.736610, 50.022579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.420624, 39.901791, 50.036819>,  <30.709843, 40.177090, 50.060555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.420624, 39.901791, 50.036819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520025, -0.485751, -0.702581,
		0.454725, -0.538855, 0.709126,
		-0.723048, -0.688244, -0.059335,
		30.203709, 39.695316, 50.019020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067795, 39.563766, 49.971817>,  <30.709843, 40.177090, 50.060555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067795, 39.563766, 49.971817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.702940, 39.431858, 49.874451>,  <30.484026, 39.352715, 49.816029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.702940, 39.431858, 49.874451>,  <31.067795, 39.563766, 49.971817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.702940, 39.431858, 49.874451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404222, -0.625390, -0.667452,
		0.067875, -0.707204, 0.703744,
		-0.912139, -0.329772, -0.243420,
		30.429298, 39.332928, 49.801426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008726, 38.938255, 50.172394>,  <31.067795, 39.563766, 49.971817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008726, 38.938255, 50.172394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.757198, 38.972694, 49.863285>,  <30.606281, 38.993359, 49.677822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.757198, 38.972694, 49.863285>,  <31.008726, 38.938255, 50.172394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.757198, 38.972694, 49.863285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453783, -0.766408, -0.454643,
		-0.631399, -0.636558, 0.442864,
		-0.628821, 0.086096, -0.772769,
		30.568552, 38.998524, 49.631454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.823206, 38.271759, 49.952560>,  <31.008726, 38.938255, 50.172394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.823206, 38.271759, 49.952560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.736553, 38.500835, 49.636307>,  <30.684561, 38.638283, 49.446556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.736553, 38.500835, 49.636307>,  <30.823206, 38.271759, 49.952560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.736553, 38.500835, 49.636307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564831, -0.587025, -0.579973,
		-0.796264, -0.572214, -0.196304,
		-0.216633, 0.572690, -0.790631,
		30.671564, 38.672642, 49.399117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754702, 37.785576, 49.437077>,  <30.823206, 38.271759, 49.952560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754702, 37.785576, 49.437077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.826616, 38.136929, 49.259937>,  <30.869766, 38.347740, 49.153652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.826616, 38.136929, 49.259937>,  <30.754702, 37.785576, 49.437077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826616, 38.136929, 49.259937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698402, -0.431014, -0.571368,
		-0.692756, -0.206564, -0.690956,
		0.179788, 0.878384, -0.442852,
		30.880552, 38.400444, 49.127083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879364, 37.678791, 48.754547>,  <30.754702, 37.785576, 49.437077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879364, 37.678791, 48.754547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.034166, 38.043148, 48.811810>,  <31.127047, 38.261765, 48.846169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.034166, 38.043148, 48.811810>,  <30.879364, 37.678791, 48.754547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.034166, 38.043148, 48.811810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827000, -0.274226, -0.490787,
		-0.407798, 0.308330, -0.859438,
		0.387004, 0.910897, 0.143160,
		31.150267, 38.316418, 48.854759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.243376, 37.558556, 48.130692>,  <30.879364, 37.678791, 48.754547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.243376, 37.558556, 48.130692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.116903, 37.183388, 48.187721>,  <30.041019, 36.958286, 48.221939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.116903, 37.183388, 48.187721>,  <30.243376, 37.558556, 48.130692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.116903, 37.183388, 48.187721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275671, 0.234632, 0.932177,
		-0.907763, 0.255435, -0.332745,
		-0.316183, -0.937924, 0.142575,
		30.022049, 36.902012, 48.230495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.542070, 37.575821, 48.312862>,  <30.243376, 37.558556, 48.130692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.542070, 37.575821, 48.312862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.688059, 37.236237, 48.465733>,  <29.775652, 37.032486, 48.557457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.688059, 37.236237, 48.465733>,  <29.542070, 37.575821, 48.312862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.688059, 37.236237, 48.465733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349372, 0.255609, 0.901445,
		-0.862981, -0.462522, -0.203315,
		0.364969, -0.848963, 0.382179,
		29.797550, 36.981548, 48.580387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912851, 37.454884, 48.687504>,  <29.542070, 37.575821, 48.312862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912851, 37.454884, 48.687504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.193356, 37.193592, 48.801716>,  <29.361658, 37.036816, 48.870243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.193356, 37.193592, 48.801716>,  <28.912851, 37.454884, 48.687504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.193356, 37.193592, 48.801716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379389, -0.002863, 0.925233,
		-0.603570, -0.757156, -0.249836,
		0.701261, -0.653228, 0.285529,
		29.403734, 36.997623, 48.887375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.500500, 36.887966, 49.029339>,  <28.912851, 37.454884, 48.687504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.500500, 36.887966, 49.029339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.878416, 36.871269, 49.159336>,  <29.105167, 36.861252, 49.237335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.878416, 36.871269, 49.159336>,  <28.500500, 36.887966, 49.029339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.878416, 36.871269, 49.159336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325764, -0.012923, 0.945363,
		-0.035283, -0.999044, -0.025816,
		0.944793, -0.041765, 0.324997,
		29.161854, 36.858746, 49.256836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.568235, 36.266888, 49.445560>,  <28.500500, 36.887966, 49.029339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.568235, 36.266888, 49.445560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.828278, 36.560303, 49.524849>,  <28.984303, 36.736351, 49.572422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.828278, 36.560303, 49.524849>,  <28.568235, 36.266888, 49.445560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.828278, 36.560303, 49.524849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400523, 0.109127, 0.909765,
		0.645712, -0.670835, 0.364742,
		0.650105, 0.733534, 0.198221,
		29.023310, 36.780361, 49.584316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.812021, 36.103931, 50.033005>,  <28.568235, 36.266888, 49.445560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.812021, 36.103931, 50.033005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.935873, 36.484238, 50.027729>,  <29.010183, 36.712421, 50.024563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.935873, 36.484238, 50.027729>,  <28.812021, 36.103931, 50.033005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.935873, 36.484238, 50.027729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237844, 0.090868, 0.967044,
		0.920630, -0.296289, 0.254269,
		0.309629, 0.950766, -0.013186,
		29.028763, 36.769466, 50.023773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.026915, 36.220711, 50.628483>,  <28.812021, 36.103931, 50.033005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.026915, 36.220711, 50.628483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.978672, 36.598015, 50.504734>,  <28.949726, 36.824398, 50.430485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.978672, 36.598015, 50.504734>,  <29.026915, 36.220711, 50.628483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978672, 36.598015, 50.504734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366801, 0.247248, 0.896842,
		0.922448, 0.221644, 0.316169,
		-0.120608, 0.943262, -0.309372,
		28.942490, 36.880993, 50.411922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.294626, 36.647617, 51.143986>,  <29.026915, 36.220711, 50.628483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.294626, 36.647617, 51.143986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.023922, 36.856281, 50.936192>,  <28.861500, 36.981480, 50.811516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.023922, 36.856281, 50.936192>,  <29.294626, 36.647617, 51.143986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.023922, 36.856281, 50.936192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355308, 0.386575, 0.851068,
		0.644787, 0.760547, -0.076270,
		-0.676761, 0.521658, -0.519487,
		28.820894, 37.012779, 50.780346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.247841, 37.256477, 51.514572>,  <29.294626, 36.647617, 51.143986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.247841, 37.256477, 51.514572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.910141, 37.270767, 51.300667>,  <28.707521, 37.279343, 51.172325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.910141, 37.270767, 51.300667>,  <29.247841, 37.256477, 51.514572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.910141, 37.270767, 51.300667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440346, 0.522534, 0.730105,
		0.305516, 0.851869, -0.425416,
		-0.844248, 0.035729, -0.534760,
		28.656866, 37.281487, 51.140240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.942327, 38.004398, 51.712524>,  <29.247841, 37.256477, 51.514572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.942327, 38.004398, 51.712524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.646683, 37.791073, 51.547947>,  <28.469296, 37.663078, 51.449200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.646683, 37.791073, 51.547947>,  <28.942327, 38.004398, 51.712524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.646683, 37.791073, 51.547947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628176, 0.325280, 0.706816,
		-0.243123, 0.780875, -0.575436,
		-0.739112, -0.533318, -0.411444,
		28.424950, 37.631077, 51.424515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.415001, 38.430420, 51.676254>,  <28.942327, 38.004398, 51.712524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.415001, 38.430420, 51.676254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.228464, 38.078785, 51.636806>,  <28.116543, 37.867802, 51.613140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.228464, 38.078785, 51.636806>,  <28.415001, 38.430420, 51.676254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.228464, 38.078785, 51.636806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746283, 0.331113, 0.577431,
		-0.474960, 0.342876, -0.810462,
		-0.466342, -0.879090, -0.098617,
		28.088562, 37.815060, 51.607220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.719311, 38.661938, 51.560349>,  <28.415001, 38.430420, 51.676254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.719311, 38.661938, 51.560349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.761732, 38.294922, 51.713646>,  <27.787184, 38.074711, 51.805626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.761732, 38.294922, 51.713646>,  <27.719311, 38.661938, 51.560349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.761732, 38.294922, 51.713646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732168, 0.188730, 0.654455,
		-0.672817, -0.350004, -0.651778,
		0.106052, -0.917539, 0.383243,
		27.793547, 38.019661, 51.828617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.055193, 38.546104, 51.839352>,  <27.719311, 38.661938, 51.560349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.055193, 38.546104, 51.839352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.279406, 38.271206, 52.024178>,  <27.413933, 38.106266, 52.135071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.279406, 38.271206, 52.024178>,  <27.055193, 38.546104, 51.839352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.279406, 38.271206, 52.024178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578836, 0.073888, 0.812090,
		-0.592245, -0.722658, -0.356386,
		0.560531, -0.687245, 0.462061,
		27.447565, 38.065033, 52.162796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.714497, 38.229767, 52.312130>,  <27.055193, 38.546104, 51.839352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.714497, 38.229767, 52.312130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.060259, 38.121391, 52.481552>,  <27.267715, 38.056366, 52.583206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.060259, 38.121391, 52.481552>,  <26.714497, 38.229767, 52.312130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.060259, 38.121391, 52.481552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430392, 0.036777, 0.901892,
		-0.259935, -0.961894, -0.084820,
		0.864405, -0.270939, 0.423552,
		27.319580, 38.040112, 52.608616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<31.698759, 36.552673, 57.208321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.612347, 36.767429, 56.882111>,  <31.560499, 36.896282, 56.686386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.612347, 36.767429, 56.882111>,  <31.698759, 36.552673, 57.208321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612347, 36.767429, 56.882111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493311, -0.660779, -0.565699,
		-0.842600, -0.524514, -0.122108,
		-0.216030, 0.536895, -0.815521,
		31.547537, 36.928497, 56.637455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315664, 36.123726, 56.740231>,  <31.698759, 36.552673, 57.208321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315664, 36.123726, 56.740231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.504009, 36.410549, 56.534660>,  <31.617016, 36.582642, 56.411316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.504009, 36.410549, 56.534660>,  <31.315664, 36.123726, 56.740231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504009, 36.410549, 56.534660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410483, -0.693720, -0.591825,
		-0.780893, 0.067708, -0.620984,
		0.470861, 0.717055, -0.513928,
		31.645267, 36.625668, 56.380482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293026, 35.895504, 56.049969>,  <31.315664, 36.123726, 56.740231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293026, 35.895504, 56.049969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.573204, 36.179268, 56.018703>,  <31.741310, 36.349525, 55.999943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.573204, 36.179268, 56.018703>,  <31.293026, 35.895504, 56.049969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573204, 36.179268, 56.018703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478156, -0.547755, -0.686535,
		-0.529853, 0.443505, -0.722883,
		0.700444, 0.709414, -0.078165,
		31.783337, 36.392094, 55.995255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391180, 36.151089, 55.351112>,  <31.293026, 35.895504, 56.049969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391180, 36.151089, 55.351112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.746225, 36.202740, 55.527958>,  <31.959253, 36.233730, 55.634064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.746225, 36.202740, 55.527958>,  <31.391180, 36.151089, 55.351112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746225, 36.202740, 55.527958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448098, -0.464105, -0.764078,
		0.106525, 0.876317, -0.469808,
		0.887615, 0.129127, 0.442115,
		32.012508, 36.241478, 55.660591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859186, 36.032482, 54.812634>,  <31.391180, 36.151089, 55.351112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859186, 36.032482, 54.812634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.108894, 36.059967, 55.123905>,  <32.258720, 36.076458, 55.310669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.108894, 36.059967, 55.123905>,  <31.859186, 36.032482, 54.812634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108894, 36.059967, 55.123905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743638, -0.357468, -0.564995,
		0.239351, 0.931394, -0.274255,
		0.624271, 0.068714, 0.778180,
		32.296177, 36.080582, 55.357361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522003, 36.186237, 54.509644>,  <31.859186, 36.032482, 54.812634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522003, 36.186237, 54.509644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.618191, 36.057327, 54.875881>,  <32.675903, 35.979980, 55.095623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.618191, 36.057327, 54.875881>,  <32.522003, 36.186237, 54.509644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618191, 36.057327, 54.875881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779236, -0.498337, -0.380068,
		0.578761, 0.804858, 0.131296,
		0.240472, -0.322279, 0.915592,
		32.690331, 35.960644, 55.150558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270149, 36.220860, 54.554035>,  <32.522003, 36.186237, 54.509644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270149, 36.220860, 54.554035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.168789, 35.961964, 54.841610>,  <33.107975, 35.806625, 55.014153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.168789, 35.961964, 54.841610>,  <33.270149, 36.220860, 54.554035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168789, 35.961964, 54.841610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782067, -0.574480, -0.241545,
		0.569352, 0.501048, 0.651758,
		-0.253397, -0.647243, 0.718935,
		33.092770, 35.767792, 55.057289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948444, 35.900158, 54.771545>,  <33.270149, 36.220860, 54.554035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948444, 35.900158, 54.771545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.638943, 35.673046, 54.883926>,  <33.453243, 35.536781, 54.951355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.638943, 35.673046, 54.883926>,  <33.948444, 35.900158, 54.771545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.638943, 35.673046, 54.883926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530993, -0.823158, -0.201142,
		0.345474, -0.006449, 0.938406,
		-0.773753, -0.567776, 0.280955,
		33.406818, 35.502712, 54.968212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209686, 35.472813, 55.327408>,  <33.948444, 35.900158, 54.771545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209686, 35.472813, 55.327408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.887695, 35.315601, 55.149624>,  <33.694500, 35.221275, 55.042953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.887695, 35.315601, 55.149624>,  <34.209686, 35.472813, 55.327408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887695, 35.315601, 55.149624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536795, -0.801535, -0.263425,
		-0.252715, -0.450633, 0.856192,
		-0.804976, -0.393028, -0.444457,
		33.646202, 35.197693, 55.016285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447025, 34.779770, 55.190472>,  <34.209686, 35.472813, 55.327408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447025, 34.779770, 55.190472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.117889, 34.790257, 54.963402>,  <33.920410, 34.796551, 54.827160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.117889, 34.790257, 54.963402>,  <34.447025, 34.779770, 55.190472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117889, 34.790257, 54.963402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335399, -0.783989, -0.522368,
		-0.458744, -0.620221, 0.636302,
		-0.822837, 0.026218, -0.567672,
		33.871037, 34.798122, 54.793098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177799, 34.084946, 55.147499>,  <34.447025, 34.779770, 55.190472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177799, 34.084946, 55.147499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.060562, 34.286636, 54.822575>,  <33.990219, 34.407650, 54.627621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.060562, 34.286636, 54.822575>,  <34.177799, 34.084946, 55.147499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060562, 34.286636, 54.822575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097797, -0.829354, -0.550097,
		-0.951068, -0.240672, 0.193769,
		-0.293096, 0.504230, -0.812310,
		33.972633, 34.437904, 54.578880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600372, 33.581402, 54.902733>,  <34.177799, 34.084946, 55.147499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600372, 33.581402, 54.902733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.716736, 33.835163, 54.616264>,  <33.786552, 33.987419, 54.444382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.716736, 33.835163, 54.616264>,  <33.600372, 33.581402, 54.902733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716736, 33.835163, 54.616264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351045, -0.767116, -0.536936,
		-0.890022, -0.095209, -0.445866,
		0.290909, 0.634404, -0.716173,
		33.804008, 34.025486, 54.401413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381851, 33.307064, 54.276478>,  <33.600372, 33.581402, 54.902733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381851, 33.307064, 54.276478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.665310, 33.567638, 54.168068>,  <33.835384, 33.723984, 54.103024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.665310, 33.567638, 54.168068>,  <33.381851, 33.307064, 54.276478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665310, 33.567638, 54.168068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406401, -0.690869, -0.597944,
		-0.576763, 0.313587, -0.754326,
		0.708648, 0.651431, -0.271026,
		33.877903, 33.763069, 54.086761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388924, 33.186497, 53.538280>,  <33.381851, 33.307064, 54.276478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388924, 33.186497, 53.538280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.727528, 33.356316, 53.666763>,  <33.930691, 33.458206, 53.743855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.727528, 33.356316, 53.666763>,  <33.388924, 33.186497, 53.538280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727528, 33.356316, 53.666763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530915, -0.628685, -0.568229,
		-0.039301, 0.651549, -0.757588,
		0.846513, 0.424547, 0.321209,
		33.981483, 33.483681, 53.763126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741413, 32.762100, 53.275646>,  <33.388924, 33.186497, 53.538280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741413, 32.762100, 53.275646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.694839, 32.399574, 53.438145>,  <32.666897, 32.182060, 53.535645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.694839, 32.399574, 53.438145>,  <32.741413, 32.762100, 53.275646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694839, 32.399574, 53.438145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576432, 0.394759, 0.715466,
		-0.808807, -0.150871, -0.568392,
		-0.116435, -0.906313, 0.406250,
		32.659908, 32.127682, 53.560020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005772, 32.465969, 53.239365>,  <32.741413, 32.762100, 53.275646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005772, 32.465969, 53.239365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.173130, 32.296566, 53.560757>,  <32.273544, 32.194923, 53.753593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.173130, 32.296566, 53.560757>,  <32.005772, 32.465969, 53.239365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173130, 32.296566, 53.560757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722387, 0.381060, 0.577018,
		-0.550549, -0.821847, -0.146505,
		0.418393, -0.423510, 0.803483,
		32.298649, 32.169514, 53.801804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529634, 32.226429, 53.760960>,  <32.005772, 32.465969, 53.239365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529634, 32.226429, 53.760960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.843269, 32.233780, 54.009109>,  <32.031452, 32.238190, 54.158001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.843269, 32.233780, 54.009109>,  <31.529634, 32.226429, 53.760960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843269, 32.233780, 54.009109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595317, 0.304934, 0.743380,
		-0.175514, -0.952196, 0.250034,
		0.784087, 0.018376, 0.620378,
		32.078495, 32.239292, 54.195225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379831, 31.861763, 54.318748>,  <31.529634, 32.226429, 53.760960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379831, 31.861763, 54.318748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.652317, 32.122902, 54.451256>,  <31.815807, 32.279587, 54.530758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.652317, 32.122902, 54.451256>,  <31.379831, 31.861763, 54.318748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652317, 32.122902, 54.451256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634724, 0.301217, 0.711614,
		0.364796, -0.695020, 0.619573,
		0.681212, 0.652852, 0.331263,
		31.856682, 32.318756, 54.550636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113667, 31.914642, 54.980980>,  <31.379831, 31.861763, 54.318748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113667, 31.914642, 54.980980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.392700, 32.199711, 54.951382>,  <31.560122, 32.370750, 54.933624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.392700, 32.199711, 54.951382>,  <31.113667, 31.914642, 54.980980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392700, 32.199711, 54.951382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396927, 0.470359, 0.788170,
		0.596511, -0.520444, 0.610993,
		0.697585, 0.712671, -0.073996,
		31.601976, 32.413513, 54.929184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192518, 32.119865, 55.613518>,  <31.113667, 31.914642, 54.980980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192518, 32.119865, 55.613518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.361675, 32.447014, 55.457443>,  <31.463169, 32.643303, 55.363800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.361675, 32.447014, 55.457443>,  <31.192518, 32.119865, 55.613518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361675, 32.447014, 55.457443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391132, 0.553150, 0.735555,
		0.817422, -0.158446, 0.553819,
		0.422891, 0.817875, -0.390184,
		31.488543, 32.692375, 55.340389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358431, 32.520248, 56.180511>,  <31.192518, 32.119865, 55.613518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358431, 32.520248, 56.180511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.360567, 32.787270, 55.882694>,  <31.361849, 32.947483, 55.704002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.360567, 32.787270, 55.882694>,  <31.358431, 32.520248, 56.180511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360567, 32.787270, 55.882694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311459, 0.708630, 0.633116,
		0.950244, 0.228516, 0.211698,
		0.005339, 0.667551, -0.744545,
		31.362169, 32.987534, 55.659332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469778, 33.144192, 56.583187>,  <31.358431, 32.520248, 56.180511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469778, 33.144192, 56.583187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.310530, 33.241539, 56.229401>,  <31.214981, 33.299946, 56.017128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.310530, 33.241539, 56.229401>,  <31.469778, 33.144192, 56.583187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.310530, 33.241539, 56.229401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391089, 0.827125, 0.403627,
		0.829789, 0.506595, -0.234118,
		-0.398120, 0.243364, -0.884463,
		31.191093, 33.314548, 55.964062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576599, 33.903584, 56.507175>,  <31.469778, 33.144192, 56.583187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576599, 33.903584, 56.507175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.292324, 33.812778, 56.240826>,  <31.121759, 33.758297, 56.081017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.292324, 33.812778, 56.240826>,  <31.576599, 33.903584, 56.507175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.292324, 33.812778, 56.240826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483006, 0.845622, 0.227221,
		0.511496, 0.483104, -0.710622,
		-0.710688, -0.227012, -0.665874,
		31.079117, 33.744675, 56.041065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373013, 34.558712, 56.191231>,  <31.576599, 33.903584, 56.507175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373013, 34.558712, 56.191231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.071783, 34.313442, 56.095821>,  <30.891045, 34.166279, 56.038574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.071783, 34.313442, 56.095821>,  <31.373013, 34.558712, 56.191231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.071783, 34.313442, 56.095821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644696, 0.760081, 0.081512,
		0.131316, 0.215160, -0.967710,
		-0.753076, -0.613175, -0.238524,
		30.845860, 34.129490, 56.024265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925337, 34.905933, 55.749001>,  <31.373013, 34.558712, 56.191231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925337, 34.905933, 55.749001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.694807, 34.618534, 55.904747>,  <30.556490, 34.446095, 55.998196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.694807, 34.618534, 55.904747>,  <30.925337, 34.905933, 55.749001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694807, 34.618534, 55.904747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653749, 0.691239, 0.307898,
		-0.490373, -0.077101, -0.868096,
		-0.576323, -0.718501, 0.389370,
		30.521910, 34.402985, 56.021557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.251177, 35.177917, 55.727512>,  <30.925337, 34.905933, 55.749001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.251177, 35.177917, 55.727512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.207853, 34.878094, 55.988716>,  <30.181858, 34.698200, 56.145439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.207853, 34.878094, 55.988716>,  <30.251177, 35.177917, 55.727512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.207853, 34.878094, 55.988716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775209, 0.474909, 0.416549,
		-0.622351, -0.461104, -0.632505,
		-0.108310, -0.749563, 0.653012,
		30.175360, 34.653225, 56.184620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.606583, 35.057270, 55.659313>,  <30.251177, 35.177917, 55.727512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.606583, 35.057270, 55.659313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.704292, 34.908623, 56.017582>,  <29.762918, 34.819435, 56.232544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.704292, 34.908623, 56.017582>,  <29.606583, 35.057270, 55.659313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.704292, 34.908623, 56.017582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795225, 0.451809, 0.404334,
		-0.554932, -0.811029, -0.185156,
		0.244272, -0.371618, 0.895674,
		29.777575, 34.797138, 56.286285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.977562, 34.811275, 56.021969>,  <29.606583, 35.057270, 55.659313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.977562, 34.811275, 56.021969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.256681, 34.896370, 56.295559>,  <29.424152, 34.947426, 56.459713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.256681, 34.896370, 56.295559>,  <28.977562, 34.811275, 56.021969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.256681, 34.896370, 56.295559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644181, 0.603930, 0.469360,
		-0.313223, -0.768122, 0.558462,
		0.697798, 0.212736, 0.683975,
		29.466021, 34.960190, 56.500751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.323986, 34.680481, 55.927990>,  <28.977562, 34.811275, 56.021969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.323986, 34.680481, 55.927990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.178896, 34.900871, 55.627361>,  <28.091843, 35.033104, 55.446983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.178896, 34.900871, 55.627361>,  <28.323986, 34.680481, 55.927990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.178896, 34.900871, 55.627361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389839, -0.642824, -0.659396,
		-0.846438, -0.532170, 0.018377,
		-0.362724, 0.550973, -0.751572,
		28.070078, 35.066162, 55.401890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949600, 34.175079, 55.553234>,  <28.323986, 34.680481, 55.927990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.949600, 34.175079, 55.553234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.961500, 34.476952, 55.291069>,  <27.968641, 34.658077, 55.133770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.961500, 34.476952, 55.291069>,  <27.949600, 34.175079, 55.553234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.961500, 34.476952, 55.291069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094110, -0.654908, -0.749826,
		-0.995117, -0.039373, -0.090507,
		0.029751, 0.754683, -0.655415,
		27.970425, 34.703358, 55.094444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.470484, 34.066746, 55.083755>,  <27.949600, 34.175079, 55.553234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.470484, 34.066746, 55.083755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.725637, 34.312798, 54.898403>,  <27.878729, 34.460430, 54.787193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.725637, 34.312798, 54.898403>,  <27.470484, 34.066746, 55.083755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.725637, 34.312798, 54.898403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210889, -0.718207, -0.663103,
		-0.740697, 0.325260, -0.587855,
		0.637882, 0.615131, -0.463380,
		27.917002, 34.497337, 54.759388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.252995, 34.035660, 54.349850>,  <27.470484, 34.066746, 55.083755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.252995, 34.035660, 54.349850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.642899, 34.122204, 54.371861>,  <27.876841, 34.174129, 54.385067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.642899, 34.122204, 54.371861>,  <27.252995, 34.035660, 54.349850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.642899, 34.122204, 54.371861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175303, -0.589166, -0.788766,
		-0.138240, 0.778505, -0.612226,
		0.974761, 0.216364, 0.055028,
		27.935328, 34.187115, 54.388371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.381777, 33.925812, 53.661057>,  <27.252995, 34.035660, 54.349850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.381777, 33.925812, 53.661057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.746389, 33.974804, 53.818081>,  <27.965157, 34.004200, 53.912296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.746389, 33.974804, 53.818081>,  <27.381777, 33.925812, 53.661057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.746389, 33.974804, 53.818081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387245, -0.576885, -0.719198,
		0.138379, 0.807591, -0.573278,
		0.911533, 0.122477, 0.392565,
		28.019850, 34.011547, 53.935852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.881514, 34.157463, 53.077736>,  <27.381777, 33.925812, 53.661057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.881514, 34.157463, 53.077736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.127886, 34.006683, 53.354443>,  <28.275709, 33.916214, 53.520466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.127886, 34.006683, 53.354443>,  <27.881514, 34.157463, 53.077736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.127886, 34.006683, 53.354443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346077, -0.659362, -0.667437,
		0.707713, 0.650499, -0.275669,
		0.615933, -0.376951, 0.691762,
		28.312666, 33.893597, 53.561970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.491224, 34.179249, 52.780781>,  <27.881514, 34.157463, 53.077736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.491224, 34.179249, 52.780781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.496021, 33.888954, 53.055927>,  <28.498899, 33.714775, 53.221016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.496021, 33.888954, 53.055927>,  <28.491224, 34.179249, 52.780781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.496021, 33.888954, 53.055927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484826, -0.597424, -0.638771,
		0.874528, 0.341157, 0.344692,
		0.011994, -0.725739, 0.687866,
		28.499619, 33.671234, 53.262287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.220076, 33.852127, 52.681351>,  <28.491224, 34.179249, 52.780781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.220076, 33.852127, 52.681351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.984577, 33.593357, 52.875202>,  <28.843277, 33.438095, 52.991512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.984577, 33.593357, 52.875202>,  <29.220076, 33.852127, 52.681351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.984577, 33.593357, 52.875202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338287, -0.741724, -0.579144,
		0.734124, -0.177025, 0.655533,
		-0.588748, -0.646922, 0.484632,
		28.807953, 33.399281, 53.020592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.631161, 33.295242, 52.809540>,  <29.220076, 33.852127, 52.681351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.631161, 33.295242, 52.809540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.250235, 33.173206, 52.807709>,  <29.021679, 33.099983, 52.806610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.250235, 33.173206, 52.807709>,  <29.631161, 33.295242, 52.809540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.250235, 33.173206, 52.807709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251826, -0.777407, -0.576387,
		0.172290, -0.550053, 0.817164,
		-0.952313, -0.305089, -0.004578,
		28.964540, 33.081680, 52.806335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.760870, 32.562283, 52.765366>,  <29.631161, 33.295242, 52.809540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.760870, 32.562283, 52.765366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.372654, 32.608021, 52.680538>,  <29.139725, 32.635464, 52.629642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.372654, 32.608021, 52.680538>,  <29.760870, 32.562283, 52.765366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.372654, 32.608021, 52.680538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042715, -0.784586, -0.618547,
		-0.237116, -0.609384, 0.756589,
		-0.970542, 0.114349, -0.212067,
		29.081491, 32.642326, 52.616917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457512, 31.937300, 52.817181>,  <29.760870, 32.562283, 52.765366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.457512, 31.937300, 52.817181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.201944, 32.117954, 52.568085>,  <29.048605, 32.226345, 52.418625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.201944, 32.117954, 52.568085>,  <29.457512, 31.937300, 52.817181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.201944, 32.117954, 52.568085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055557, -0.780316, -0.622913,
		-0.767264, -0.432590, 0.473468,
		-0.638921, 0.451634, -0.622741,
		29.010269, 32.253445, 52.381260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030565, 31.423964, 52.600044>,  <29.457512, 31.937300, 52.817181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030565, 31.423964, 52.600044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.982008, 31.712223, 52.327007>,  <28.952873, 31.885180, 52.163185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.982008, 31.712223, 52.327007>,  <29.030565, 31.423964, 52.600044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.982008, 31.712223, 52.327007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088978, -0.692806, -0.715613,
		-0.988609, -0.026133, 0.148222,
		-0.121391, 0.720650, -0.682589,
		28.945591, 31.928417, 52.122231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.412380, 31.321196, 52.194881>,  <29.030565, 31.423964, 52.600044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.412380, 31.321196, 52.194881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.654316, 31.534754, 51.958534>,  <28.799477, 31.662889, 51.816727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.654316, 31.534754, 51.958534>,  <28.412380, 31.321196, 52.194881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654316, 31.534754, 51.958534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160720, -0.644862, -0.747209,
		-0.779961, 0.546905, -0.304230,
		0.604839, 0.533898, -0.590866,
		28.835768, 31.694923, 51.781273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.154369, 31.231770, 51.519741>,  <28.412380, 31.321196, 52.194881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.154369, 31.231770, 51.519741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.513300, 31.374062, 51.415234>,  <28.728659, 31.459436, 51.352531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.513300, 31.374062, 51.415234>,  <28.154369, 31.231770, 51.519741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.513300, 31.374062, 51.415234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073813, -0.462661, -0.883457,
		-0.435150, 0.812035, -0.388901,
		0.897327, 0.355730, -0.261265,
		28.782497, 31.480782, 51.336853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<26.601425, 37.660599, 52.748211> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.930609, 37.838779, 52.889240>,  <27.128119, 37.945690, 52.973858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.930609, 37.838779, 52.889240>,  <26.601425, 37.660599, 52.748211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.930609, 37.838779, 52.889240> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415924, 0.049704, 0.908040,
		0.386968, -0.893923, 0.226181,
		0.822960, 0.445457, 0.352570,
		27.177496, 37.972416, 52.995010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.666748, 37.467587, 53.477627>,  <26.601425, 37.660599, 52.748211>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.666748, 37.467587, 53.477627> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.893698, 37.796440, 53.458946>,  <27.029867, 37.993752, 53.447739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.893698, 37.796440, 53.458946>,  <26.666748, 37.467587, 53.477627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.893698, 37.796440, 53.458946> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278121, 0.244703, 0.928854,
		0.775070, -0.514020, 0.367491,
		0.567376, 0.822134, -0.046702,
		27.063911, 38.043079, 53.444935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.943943, 37.515625, 54.056843>,  <26.666748, 37.467587, 53.477627>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.943943, 37.515625, 54.056843> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.979673, 37.886040, 53.910160>,  <27.001112, 38.108288, 53.822151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.979673, 37.886040, 53.910160>,  <26.943943, 37.515625, 54.056843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.979673, 37.886040, 53.910160> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237556, 0.377360, 0.895079,
		0.967258, 0.007158, 0.253695,
		0.089327, 0.926039, -0.366705,
		27.006472, 38.163853, 53.800148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.085901, 37.789230, 54.704597>,  <26.943943, 37.515625, 54.056843>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.085901, 37.789230, 54.704597> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.009060, 38.109196, 54.477184>,  <26.962955, 38.301174, 54.340736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.009060, 38.109196, 54.477184>,  <27.085901, 37.789230, 54.704597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.009060, 38.109196, 54.477184> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406460, 0.462447, 0.787993,
		0.893245, 0.382464, 0.236295,
		-0.192105, 0.799915, -0.568534,
		26.951429, 38.349171, 54.306625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.159220, 38.281143, 55.141880>,  <27.085901, 37.789230, 54.704597>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.159220, 38.281143, 55.141880> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.960358, 38.441128, 54.833889>,  <26.841040, 38.537121, 54.649094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.960358, 38.441128, 54.833889>,  <27.159220, 38.281143, 55.141880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.960358, 38.441128, 54.833889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504533, 0.588700, 0.631568,
		0.705890, 0.702467, -0.090880,
		-0.497157, 0.399965, -0.769976,
		26.811211, 38.561119, 54.602898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.313841, 38.923748, 55.169815>,  <27.159220, 38.281143, 55.141880>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.313841, 38.923748, 55.169815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.960716, 38.854977, 54.994965>,  <26.748840, 38.813713, 54.890053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.960716, 38.854977, 54.994965>,  <27.313841, 38.923748, 55.169815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.960716, 38.854977, 54.994965> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458893, 0.514361, 0.724465,
		0.100283, 0.840162, -0.532983,
		-0.882814, -0.171931, -0.437126,
		26.695871, 38.803398, 54.863827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.041994, 39.601505, 55.126556>,  <27.313841, 38.923748, 55.169815>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.041994, 39.601505, 55.126556> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.725801, 39.364788, 55.063412>,  <26.536085, 39.222759, 55.025524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.725801, 39.364788, 55.063412>,  <27.041994, 39.601505, 55.126556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.725801, 39.364788, 55.063412> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593754, 0.677167, 0.434627,
		-0.150312, 0.437294, -0.886668,
		-0.790482, -0.591792, -0.157859,
		26.488657, 39.187252, 55.016052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.568087, 40.059448, 54.718349>,  <27.041994, 39.601505, 55.126556>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.568087, 40.059448, 54.718349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.362848, 39.779316, 54.916851>,  <26.239706, 39.611237, 55.035954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.362848, 39.779316, 54.916851>,  <26.568087, 40.059448, 54.718349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.362848, 39.779316, 54.916851> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426167, 0.709723, 0.560959,
		-0.745061, 0.076338, -0.662614,
		-0.513095, -0.700332, 0.496254,
		26.208920, 39.569218, 55.065727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.915266, 40.311535, 54.668293>,  <26.568087, 40.059448, 54.718349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.915266, 40.311535, 54.668293> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.913231, 40.044476, 54.966076>,  <25.912010, 39.884239, 55.144745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.913231, 40.044476, 54.966076>,  <25.915266, 40.311535, 54.668293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.913231, 40.044476, 54.966076> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559140, 0.619115, 0.551415,
		-0.829057, -0.413451, -0.376460,
		-0.005089, -0.667648, 0.744459,
		25.911705, 39.844181, 55.189415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.263464, 40.415333, 54.935947>,  <25.915266, 40.311535, 54.668293>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.263464, 40.415333, 54.935947> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.477751, 40.234947, 55.221504>,  <25.606323, 40.126717, 55.392838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.477751, 40.234947, 55.221504>,  <25.263464, 40.415333, 54.935947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.477751, 40.234947, 55.221504> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444973, 0.567757, 0.692568,
		-0.717640, -0.688682, 0.103490,
		0.535716, -0.450965, 0.713890,
		25.638466, 40.099659, 55.435673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.795992, 40.151093, 55.458588>,  <25.263464, 40.415333, 54.935947>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.795992, 40.151093, 55.458588> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.144901, 40.182457, 55.651665>,  <25.354246, 40.201275, 55.767509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.144901, 40.182457, 55.651665>,  <24.795992, 40.151093, 55.458588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.144901, 40.182457, 55.651665> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411417, 0.651236, 0.637674,
		-0.264345, -0.754814, 0.600315,
		0.872272, 0.078414, 0.482694,
		25.406584, 40.205982, 55.796474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.528488, 39.997768, 56.153751>,  <24.795992, 40.151093, 55.458588>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.528488, 39.997768, 56.153751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.896290, 40.141788, 56.216839>,  <25.116970, 40.228203, 56.254692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.896290, 40.141788, 56.216839>,  <24.528488, 39.997768, 56.153751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.896290, 40.141788, 56.216839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327065, 0.478222, 0.815066,
		0.218043, -0.801040, 0.557488,
		0.919503, 0.360054, 0.157719,
		25.172140, 40.249805, 56.264156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.573277, 40.192020, 56.906548>,  <24.528488, 39.997768, 56.153751>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.573277, 40.192020, 56.906548> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.459290, 39.808613, 56.904247>,  <24.390898, 39.578568, 56.902866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.459290, 39.808613, 56.904247>,  <24.573277, 40.192020, 56.906548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.459290, 39.808613, 56.904247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704331, 0.213461, -0.677017,
		0.650163, -0.188873, -0.735945,
		-0.284966, -0.958521, -0.005755,
		24.373800, 39.521057, 56.902519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.181622, 40.035339, 57.434807>,  <24.573277, 40.192020, 56.906548>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.181622, 40.035339, 57.434807> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.130732, 39.854939, 57.788170>,  <25.100197, 39.746696, 58.000187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.130732, 39.854939, 57.788170>,  <25.181622, 40.035339, 57.434807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.130732, 39.854939, 57.788170> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194304, -0.884721, -0.423692,
		0.972656, 0.117746, 0.200190,
		-0.127224, -0.451005, 0.883407,
		25.092564, 39.719639, 58.053192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.782436, 39.663364, 57.632393>,  <25.181622, 40.035339, 57.434807>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.782436, 39.663364, 57.632393> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.447800, 39.497513, 57.775608>,  <25.247017, 39.398003, 57.861538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.447800, 39.497513, 57.775608>,  <25.782436, 39.663364, 57.632393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.447800, 39.497513, 57.775608> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214495, -0.849305, -0.482362,
		0.504087, -0.326743, 0.799459,
		-0.836593, -0.414633, 0.358039,
		25.196821, 39.373123, 57.883018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.032635, 39.098957, 57.919338>,  <25.782436, 39.663364, 57.632393>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.032635, 39.098957, 57.919338> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.645052, 39.001572, 57.902153>,  <25.412502, 38.943138, 57.891842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.645052, 39.001572, 57.902153>,  <26.032635, 39.098957, 57.919338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.645052, 39.001572, 57.902153> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246163, -0.933995, -0.258955,
		0.022918, -0.261493, 0.964933,
		-0.968958, -0.243465, -0.042964,
		25.354364, 38.928532, 57.889263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.930038, 38.448273, 58.308979>,  <26.032635, 39.098957, 57.919338>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.930038, 38.448273, 58.308979> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.600683, 38.440762, 58.082111>,  <25.403070, 38.436253, 57.945992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.600683, 38.440762, 58.082111>,  <25.930038, 38.448273, 58.308979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.600683, 38.440762, 58.082111> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305470, -0.856966, -0.415087,
		-0.478251, -0.515030, 0.711351,
		-0.823386, -0.018781, -0.567171,
		25.353668, 38.435127, 57.911961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.737244, 37.710087, 58.288425>,  <25.930038, 38.448273, 58.308979>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.737244, 37.710087, 58.288425> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.535944, 37.875206, 57.984760>,  <25.415165, 37.974277, 57.802559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.535944, 37.875206, 57.984760>,  <25.737244, 37.710087, 58.288425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.535944, 37.875206, 57.984760> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246234, -0.773600, -0.583876,
		-0.828317, -0.480768, 0.287668,
		-0.503249, 0.412801, -0.759168,
		25.384970, 37.999046, 57.757011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.420332, 37.227520, 58.063519>,  <25.737244, 37.710087, 58.288425>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.420332, 37.227520, 58.063519> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.426657, 37.477016, 57.750931>,  <25.430450, 37.626717, 57.563377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.426657, 37.477016, 57.750931>,  <25.420332, 37.227520, 58.063519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.426657, 37.477016, 57.750931> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260400, -0.757165, -0.599078,
		-0.965371, -0.194022, -0.174394,
		0.015811, 0.623744, -0.781469,
		25.431400, 37.664139, 57.516491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.151979, 36.807629, 57.531143>,  <25.420332, 37.227520, 58.063519>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.151979, 36.807629, 57.531143> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.400429, 37.082882, 57.381115>,  <25.549500, 37.248032, 57.291096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.400429, 37.082882, 57.381115>,  <25.151979, 36.807629, 57.531143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.400429, 37.082882, 57.381115> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320228, -0.659652, -0.679936,
		-0.715302, 0.302216, -0.630086,
		0.621125, 0.688131, -0.375073,
		25.586765, 37.289322, 57.268593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.093685, 36.671070, 56.892864>,  <25.151979, 36.807629, 57.531143>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.093685, 36.671070, 56.892864> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.430687, 36.884441, 56.922909>,  <25.632889, 37.012463, 56.940937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.430687, 36.884441, 56.922909>,  <25.093685, 36.671070, 56.892864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.430687, 36.884441, 56.922909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449142, -0.618605, -0.644670,
		-0.297417, 0.576875, -0.760762,
		0.842505, 0.533425, 0.075115,
		25.683439, 37.044468, 56.945442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.417181, 36.729893, 56.161072>,  <25.093685, 36.671070, 56.892864>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.417181, 36.729893, 56.161072> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.711807, 36.807899, 56.420128>,  <25.888582, 36.854702, 56.575562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.711807, 36.807899, 56.420128>,  <25.417181, 36.729893, 56.161072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.711807, 36.807899, 56.420128> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632623, -0.537397, -0.557667,
		0.239289, 0.820472, -0.519198,
		0.736565, 0.195013, 0.647643,
		25.932777, 36.866402, 56.614422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.935139, 36.808990, 55.706970>,  <25.417181, 36.729893, 56.161072>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.935139, 36.808990, 55.706970> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.114336, 36.754620, 56.060429>,  <26.221855, 36.721996, 56.272503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.114336, 36.754620, 56.060429>,  <25.935139, 36.808990, 55.706970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.114336, 36.754620, 56.060429> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694552, -0.569426, -0.439718,
		0.562937, 0.810727, -0.160695,
		0.447995, -0.135923, 0.883643,
		26.248735, 36.713844, 56.325523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.564543, 37.039677, 55.711311>,  <25.935139, 36.808990, 55.706970>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.564543, 37.039677, 55.711311> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.574152, 36.751038, 55.988068>,  <26.579918, 36.577854, 56.154121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.574152, 36.751038, 55.988068>,  <26.564543, 37.039677, 55.711311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.574152, 36.751038, 55.988068> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719486, -0.468036, -0.513111,
		0.694092, 0.510132, 0.507939,
		0.024021, -0.721601, 0.691893,
		26.581358, 36.534557, 56.195637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.205730, 36.979282, 55.708092>,  <26.564543, 37.039677, 55.711311>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.205730, 36.979282, 55.708092> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.100180, 36.648819, 55.907219>,  <27.036850, 36.450539, 56.026695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.100180, 36.648819, 55.907219>,  <27.205730, 36.979282, 55.708092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.100180, 36.648819, 55.907219> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741384, -0.503878, -0.443234,
		0.617024, 0.252116, 0.745466,
		-0.263878, -0.826162, 0.497820,
		27.021017, 36.400970, 56.056564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.829165, 36.632431, 55.991146>,  <27.205730, 36.979282, 55.708092>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.829165, 36.632431, 55.991146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.554550, 36.343025, 55.962311>,  <27.389782, 36.169380, 55.945011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.554550, 36.343025, 55.962311>,  <27.829165, 36.632431, 55.991146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.554550, 36.343025, 55.962311> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654897, -0.572247, -0.493602,
		0.315877, -0.386084, 0.866695,
		-0.686536, -0.723514, -0.072085,
		27.348589, 36.125973, 55.940685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.111954, 36.044300, 56.268822>,  <27.829165, 36.632431, 55.991146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.111954, 36.044300, 56.268822> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.839855, 35.902363, 56.012276>,  <27.676596, 35.817200, 55.858349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.839855, 35.902363, 56.012276>,  <28.111954, 36.044300, 56.268822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.839855, 35.902363, 56.012276> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701511, -0.568814, -0.429340,
		-0.212471, -0.741983, 0.635860,
		-0.680248, -0.354841, -0.641366,
		27.635780, 35.795910, 55.819866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.232588, 35.406017, 56.220100>,  <28.111954, 36.044300, 56.268822>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.232588, 35.406017, 56.220100> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.018715, 35.425465, 55.882637>,  <27.890390, 35.437134, 55.680161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.018715, 35.425465, 55.882637>,  <28.232588, 35.406017, 56.220100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.018715, 35.425465, 55.882637> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601953, -0.678776, -0.420614,
		-0.593100, -0.732734, 0.333665,
		-0.534682, 0.048615, -0.843654,
		27.858311, 35.440048, 55.629539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.505732, 34.877380, 56.634190>,  <28.232588, 35.406017, 56.220100>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.505732, 34.877380, 56.634190> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.854383, 35.062561, 56.698605>,  <29.063576, 35.173672, 56.737251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.854383, 35.062561, 56.698605>,  <28.505732, 34.877380, 56.634190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.854383, 35.062561, 56.698605> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484526, 0.764110, 0.425876,
		0.074114, -0.449232, 0.890336,
		0.871632, 0.462954, 0.161033,
		29.115873, 35.201447, 56.746914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.420269, 35.015476, 57.337151>,  <28.505732, 34.877380, 56.634190>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.420269, 35.015476, 57.337151> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.695915, 35.257278, 57.177307>,  <28.861303, 35.402359, 57.081402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.695915, 35.257278, 57.177307>,  <28.420269, 35.015476, 57.337151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.695915, 35.257278, 57.177307> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264728, 0.723347, 0.637721,
		0.674564, -0.333677, 0.658501,
		0.689117, 0.604507, -0.399610,
		28.902651, 35.438629, 57.057423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.750900, 35.315243, 57.962440>,  <28.420269, 35.015476, 57.337151>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.750900, 35.315243, 57.962440> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.829641, 35.561615, 57.657318>,  <28.876886, 35.709438, 57.474243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.829641, 35.561615, 57.657318>,  <28.750900, 35.315243, 57.962440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.829641, 35.561615, 57.657318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226053, 0.785583, 0.575985,
		0.954017, 0.059051, 0.293878,
		0.196853, 0.615932, -0.762809,
		28.888697, 35.746395, 57.428474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.932837, 35.786724, 58.260033>,  <28.750900, 35.315243, 57.962440>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.932837, 35.786724, 58.260033> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.882761, 35.967503, 57.906746>,  <28.852715, 36.075970, 57.694775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.882761, 35.967503, 57.906746>,  <28.932837, 35.786724, 58.260033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.882761, 35.967503, 57.906746> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123890, 0.876131, 0.465880,
		0.984367, 0.167746, -0.053692,
		-0.125191, 0.451945, -0.883217,
		28.845203, 36.103085, 57.641781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362257, 36.432159, 58.191765>,  <28.932837, 35.786724, 58.260033>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362257, 36.432159, 58.191765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.040092, 36.477196, 57.958996>,  <28.846794, 36.504219, 57.819336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.040092, 36.477196, 57.958996>,  <29.362257, 36.432159, 58.191765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.040092, 36.477196, 57.958996> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317261, 0.747411, 0.583715,
		0.500658, 0.654752, -0.566253,
		-0.805412, 0.112592, -0.581924,
		28.798470, 36.510975, 57.784420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.295101, 37.146786, 58.095554>,  <29.362257, 36.432159, 58.191765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.295101, 37.146786, 58.095554> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.927002, 37.018181, 58.006313>,  <28.706142, 36.941017, 57.952770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.927002, 37.018181, 58.006313>,  <29.295101, 37.146786, 58.095554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.927002, 37.018181, 58.006313> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388936, 0.814436, 0.430608,
		0.043254, 0.483037, -0.874531,
		-0.920249, -0.321511, -0.223099,
		28.650927, 36.921726, 57.939384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921892, 37.738117, 57.946148>,  <29.295101, 37.146786, 58.095554>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921892, 37.738117, 57.946148> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.636091, 37.463184, 57.998383>,  <28.464611, 37.298225, 58.029724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.636091, 37.463184, 57.998383>,  <28.921892, 37.738117, 57.946148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.636091, 37.463184, 57.998383> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535079, 0.657104, 0.530947,
		-0.450749, 0.309488, -0.837282,
		-0.714504, -0.687336, 0.130589,
		28.421740, 37.256985, 58.037560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.102425, 38.263649, 57.502956>,  <28.921892, 37.738117, 57.946148>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.102425, 38.263649, 57.502956> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.424000, 38.398674, 57.698807>,  <29.616945, 38.479691, 57.816319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.424000, 38.398674, 57.698807>,  <29.102425, 38.263649, 57.502956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.424000, 38.398674, 57.698807> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594538, -0.436194, -0.675470,
		-0.014444, 0.834136, -0.551369,
		0.803938, 0.337566, 0.489625,
		29.665182, 38.499943, 57.845695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529333, 38.418621, 56.964516>,  <29.102425, 38.263649, 57.502956>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.529333, 38.418621, 56.964516> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.770826, 38.417919, 57.283390>,  <29.915722, 38.417500, 57.474716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.770826, 38.417919, 57.283390>,  <29.529333, 38.418621, 56.964516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770826, 38.417919, 57.283390> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677178, -0.526528, -0.514002,
		0.420641, 0.850156, -0.316695,
		0.603731, -0.001752, 0.797186,
		29.951946, 38.417393, 57.522545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.110125, 38.854107, 56.797009>,  <29.529333, 38.418621, 56.964516>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.110125, 38.854107, 56.797009> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.209604, 38.588818, 57.079365>,  <30.269291, 38.429642, 57.248779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.209604, 38.588818, 57.079365>,  <30.110125, 38.854107, 56.797009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209604, 38.588818, 57.079365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729660, -0.350996, -0.586854,
		0.636981, 0.661009, 0.396638,
		0.248698, -0.663226, 0.705890,
		30.284214, 38.389851, 57.291130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819508, 38.873096, 56.847912>,  <30.110125, 38.854107, 56.797009>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819508, 38.873096, 56.847912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.691202, 38.523655, 56.994289>,  <30.614218, 38.313988, 57.082115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.691202, 38.523655, 56.994289>,  <30.819508, 38.873096, 56.847912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.691202, 38.523655, 56.994289> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685030, -0.480797, -0.547329,
		0.654098, 0.075122, 0.752671,
		-0.320765, -0.873608, 0.365949,
		30.594973, 38.261574, 57.104073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440542, 38.540203, 56.910397>,  <30.819508, 38.873096, 56.847912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440542, 38.540203, 56.910397> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.195189, 38.231522, 56.977604>,  <31.047977, 38.046310, 57.017929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.195189, 38.231522, 56.977604>,  <31.440542, 38.540203, 56.910397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195189, 38.231522, 56.977604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706130, -0.631147, -0.320990,
		0.353755, -0.078246, 0.932060,
		-0.613383, -0.771707, 0.168019,
		31.011173, 38.000011, 57.028011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882738, 38.082809, 57.251293>,  <31.440542, 38.540203, 56.910397>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882738, 38.082809, 57.251293> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.576994, 37.899734, 57.069626>,  <31.393547, 37.789890, 56.960625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.576994, 37.899734, 57.069626>,  <31.882738, 38.082809, 57.251293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576994, 37.899734, 57.069626> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613728, -0.732412, -0.294806,
		-0.197710, -0.504075, 0.840725,
		-0.764362, -0.457690, -0.454170,
		31.347685, 37.762428, 56.933376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973494, 37.353607, 57.362949>,  <31.882738, 38.082809, 57.251293>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973494, 37.353607, 57.362949> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.720179, 37.366364, 57.053646>,  <31.568190, 37.374020, 56.868065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.720179, 37.366364, 57.053646>,  <31.973494, 37.353607, 57.362949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720179, 37.366364, 57.053646> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531138, -0.708790, -0.464230,
		-0.562884, -0.704698, 0.431928,
		-0.633288, 0.031894, -0.773259,
		31.530191, 37.375931, 56.821667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<27.405621, 42.239948, 57.236809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.091410, 42.049194, 57.079056>,  <26.902884, 41.934742, 56.984406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.091410, 42.049194, 57.079056>,  <27.405621, 42.239948, 57.236809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.091410, 42.049194, 57.079056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604021, -0.452266, -0.656212,
		0.134570, -0.753685, 0.643312,
		-0.785525, -0.476880, -0.394380,
		26.855753, 41.906132, 56.960743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.582344, 41.472157, 57.130024>,  <27.405621, 42.239948, 57.236809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.582344, 41.472157, 57.130024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.309956, 41.646969, 56.894981>,  <27.146523, 41.751858, 56.753956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.309956, 41.646969, 56.894981>,  <27.582344, 41.472157, 57.130024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.309956, 41.646969, 56.894981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418970, -0.425604, -0.802076,
		-0.600621, -0.792380, 0.106720,
		-0.680969, 0.437031, -0.587610,
		27.105665, 41.778076, 56.718697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.313824, 40.877338, 56.707123>,  <27.582344, 41.472157, 57.130024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.313824, 40.877338, 56.707123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226320, 41.223251, 56.526325>,  <27.173819, 41.430798, 56.417847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226320, 41.223251, 56.526325>,  <27.313824, 40.877338, 56.707123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.226320, 41.223251, 56.526325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318995, -0.374377, -0.870680,
		-0.922164, -0.334652, -0.193963,
		-0.218760, 0.864783, -0.451989,
		27.160692, 41.482685, 56.390728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.008650, 40.645260, 55.953632>,  <27.313824, 40.877338, 56.707123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.008650, 40.645260, 55.953632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.124920, 41.027840, 55.942936>,  <27.194681, 41.257389, 55.936520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.124920, 41.027840, 55.942936>,  <27.008650, 40.645260, 55.953632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.124920, 41.027840, 55.942936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221543, -0.094464, -0.970564,
		-0.930821, 0.276193, -0.239353,
		0.290673, 0.956449, -0.026740,
		27.212122, 41.314774, 55.934914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.580399, 40.989994, 55.392841>,  <27.008650, 40.645260, 55.953632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.580399, 40.989994, 55.392841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.908575, 41.215603, 55.430271>,  <27.105480, 41.350967, 55.452728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.908575, 41.215603, 55.430271>,  <26.580399, 40.989994, 55.392841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.908575, 41.215603, 55.430271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105961, 0.010826, -0.994311,
		-0.561829, 0.825687, -0.050882,
		0.820440, 0.564024, 0.093573,
		27.154707, 41.384811, 55.458344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.603165, 41.332237, 54.872215>,  <26.580399, 40.989994, 55.392841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.603165, 41.332237, 54.872215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978285, 41.447948, 54.948997>,  <27.203358, 41.517376, 54.995068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978285, 41.447948, 54.948997>,  <26.603165, 41.332237, 54.872215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.978285, 41.447948, 54.948997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223800, -0.081044, -0.971260,
		-0.265409, 0.953808, -0.140744,
		0.937801, 0.289279, 0.191952,
		27.259624, 41.534733, 55.006584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.777285, 41.837055, 54.385208>,  <26.603165, 41.332237, 54.872215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.777285, 41.837055, 54.385208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.106573, 41.664600, 54.532951>,  <27.304146, 41.561127, 54.621597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.106573, 41.664600, 54.532951>,  <26.777285, 41.837055, 54.385208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.106573, 41.664600, 54.532951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282564, -0.253122, -0.925250,
		0.492403, 0.866053, -0.086551,
		0.823223, -0.431140, 0.369354,
		27.353540, 41.535259, 54.643757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.281666, 42.011124, 53.861824>,  <26.777285, 41.837055, 54.385208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.281666, 42.011124, 53.861824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.465437, 41.723724, 54.070702>,  <27.575699, 41.551285, 54.196030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.465437, 41.723724, 54.070702>,  <27.281666, 42.011124, 53.861824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.465437, 41.723724, 54.070702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486761, -0.288102, -0.824658,
		0.742962, 0.633053, 0.217376,
		0.459426, -0.718500, 0.522194,
		27.603264, 41.508175, 54.227360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891205, 41.982010, 53.497375>,  <27.281666, 42.011124, 53.861824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.891205, 41.982010, 53.497375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.905312, 41.643230, 53.709579>,  <27.913776, 41.439964, 53.836903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.905312, 41.643230, 53.709579>,  <27.891205, 41.982010, 53.497375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.905312, 41.643230, 53.709579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589781, -0.410906, -0.695209,
		0.806793, 0.337402, 0.485021,
		0.035267, -0.846945, 0.530509,
		27.915892, 41.389149, 53.868732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660704, 41.754658, 53.521675>,  <27.891205, 41.982010, 53.497375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.660704, 41.754658, 53.521675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.440029, 41.431610, 53.605003>,  <28.307625, 41.237782, 53.655003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.440029, 41.431610, 53.605003>,  <28.660704, 41.754658, 53.521675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.440029, 41.431610, 53.605003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494504, -0.517861, -0.698059,
		0.671646, -0.282092, 0.685066,
		-0.551686, -0.807616, 0.208323,
		28.274523, 41.189323, 53.667500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054052, 41.152000, 53.815353>,  <28.660704, 41.754658, 53.521675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054052, 41.152000, 53.815353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.742599, 41.000908, 53.614937>,  <28.555727, 40.910252, 53.494686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.742599, 41.000908, 53.614937>,  <29.054052, 41.152000, 53.815353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.742599, 41.000908, 53.614937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621119, -0.350581, -0.700931,
		0.089110, -0.856976, 0.507593,
		-0.778634, -0.377736, -0.501044,
		28.509010, 40.887589, 53.464622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381960, 40.616322, 53.538414>,  <29.054052, 41.152000, 53.815353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381960, 40.616322, 53.538414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.034294, 40.650967, 53.343662>,  <28.825695, 40.671753, 53.226810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.034294, 40.650967, 53.343662>,  <29.381960, 40.616322, 53.538414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.034294, 40.650967, 53.343662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447798, -0.279913, -0.849191,
		-0.209832, -0.956110, 0.204507,
		-0.869164, 0.086610, -0.486879,
		28.773544, 40.676949, 53.197598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822531, 41.232876, 53.642864>,  <29.381960, 40.616322, 53.538414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.822531, 41.232876, 53.642864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158581, 41.124554, 53.830845>,  <30.360210, 41.059563, 53.943634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158581, 41.124554, 53.830845>,  <29.822531, 41.232876, 53.642864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158581, 41.124554, 53.830845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398174, 0.280429, 0.873394,
		-0.368306, -0.920883, 0.127768,
		0.840124, -0.270802, 0.469955,
		30.410618, 41.043312, 53.971832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.567888, 40.950577, 54.283981>,  <29.822531, 41.232876, 53.642864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.567888, 40.950577, 54.283981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953148, 41.014904, 54.370220>,  <30.184303, 41.053501, 54.421963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953148, 41.014904, 54.370220>,  <29.567888, 40.950577, 54.283981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953148, 41.014904, 54.370220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242792, 0.174928, 0.954176,
		0.115733, -0.971359, 0.207526,
		0.963150, 0.160815, 0.215594,
		30.242092, 41.063148, 54.434898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815630, 40.465500, 54.917339>,  <29.567888, 40.950577, 54.283981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.815630, 40.465500, 54.917339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.004173, 40.815712, 54.874874>,  <30.117300, 41.025837, 54.849396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.004173, 40.815712, 54.874874>,  <29.815630, 40.465500, 54.917339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.004173, 40.815712, 54.874874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126390, 0.186191, 0.974350,
		0.872837, -0.445852, 0.198421,
		0.471360, 0.875527, -0.106164,
		30.145582, 41.078369, 54.843025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.236450, 40.462605, 55.426918>,  <29.815630, 40.465500, 54.917339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.236450, 40.462605, 55.426918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.262657, 40.852947, 55.343575>,  <30.278381, 41.087154, 55.293568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.262657, 40.852947, 55.343575>,  <30.236450, 40.462605, 55.426918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.262657, 40.852947, 55.343575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050423, 0.211775, 0.976017,
		0.996577, -0.053439, 0.063080,
		0.065516, 0.975856, -0.208355,
		30.282312, 41.145702, 55.281067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.817951, 40.677872, 55.876949>,  <30.236450, 40.462605, 55.426918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.817951, 40.677872, 55.876949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610739, 41.008808, 55.790096>,  <30.486410, 41.207371, 55.737984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610739, 41.008808, 55.790096>,  <30.817951, 40.677872, 55.876949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610739, 41.008808, 55.790096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008071, 0.249108, 0.968442,
		0.855323, 0.503437, -0.122369,
		-0.518033, 0.827343, -0.217131,
		30.455330, 41.257011, 55.724957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092159, 41.195438, 56.344795>,  <30.817951, 40.677872, 55.876949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092159, 41.195438, 56.344795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.751915, 41.364769, 56.220051>,  <30.547768, 41.466366, 56.145206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.751915, 41.364769, 56.220051>,  <31.092159, 41.195438, 56.344795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.751915, 41.364769, 56.220051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166133, 0.346346, 0.923279,
		0.498858, 0.837162, -0.224278,
		-0.850612, 0.423325, -0.311858,
		30.496731, 41.491768, 56.126492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.074081, 41.893700, 56.728447>,  <31.092159, 41.195438, 56.344795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.074081, 41.893700, 56.728447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.705128, 41.795868, 56.608852>,  <30.483755, 41.737167, 56.537098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.705128, 41.795868, 56.608852>,  <31.074081, 41.893700, 56.728447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.705128, 41.795868, 56.608852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368180, 0.322518, 0.872024,
		-0.116854, 0.914419, -0.387535,
		-0.922382, -0.244582, -0.298983,
		30.428413, 41.722492, 56.519157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648375, 42.472656, 56.899670>,  <31.074081, 41.893700, 56.728447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.648375, 42.472656, 56.899670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.388031, 42.171383, 56.861526>,  <30.231825, 41.990620, 56.838642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.388031, 42.171383, 56.861526>,  <30.648375, 42.472656, 56.899670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.388031, 42.171383, 56.861526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475395, 0.306399, 0.824693,
		-0.591929, 0.582093, -0.557483,
		-0.650860, -0.753185, -0.095358,
		30.192774, 41.945427, 56.832920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007030, 42.792240, 56.887173>,  <30.648375, 42.472656, 56.899670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007030, 42.792240, 56.887173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.949795, 42.410374, 56.991589>,  <29.915453, 42.181255, 57.054237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.949795, 42.410374, 56.991589>,  <30.007030, 42.792240, 56.887173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.949795, 42.410374, 56.991589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515547, 0.297038, 0.803729,
		-0.844830, -0.019572, -0.534677,
		-0.143089, -0.954665, 0.261036,
		29.906868, 42.123974, 57.069901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276653, 42.718575, 57.028759>,  <30.007030, 42.792240, 56.887173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.276653, 42.718575, 57.028759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.429098, 42.397480, 57.212223>,  <29.520565, 42.204823, 57.322300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.429098, 42.397480, 57.212223>,  <29.276653, 42.718575, 57.028759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.429098, 42.397480, 57.212223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645004, 0.124564, 0.753958,
		-0.662363, -0.583178, -0.470296,
		0.381110, -0.802737, 0.458659,
		29.543430, 42.156658, 57.349819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.706995, 42.426537, 57.292786>,  <29.276653, 42.718575, 57.028759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.706995, 42.426537, 57.292786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.987528, 42.244549, 57.512291>,  <29.155848, 42.135357, 57.643993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.987528, 42.244549, 57.512291>,  <28.706995, 42.426537, 57.292786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.987528, 42.244549, 57.512291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549251, 0.145806, 0.822839,
		-0.454378, -0.878490, -0.147633,
		0.701330, -0.454967, 0.548762,
		29.197927, 42.108059, 57.676918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.405298, 41.757442, 57.600243>,  <28.706995, 42.426537, 57.292786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.405298, 41.757442, 57.600243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.727036, 41.824982, 57.828114>,  <28.920078, 41.865505, 57.964836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.727036, 41.824982, 57.828114>,  <28.405298, 41.757442, 57.600243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.727036, 41.824982, 57.828114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593858, 0.197482, 0.779958,
		0.019191, -0.965656, 0.259113,
		0.804341, 0.168844, 0.569673,
		28.968338, 41.875633, 57.999016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.356920, 41.361034, 58.127514>,  <28.405298, 41.757442, 57.600243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.356920, 41.361034, 58.127514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.627752, 41.617908, 58.271271>,  <28.790251, 41.772034, 58.357525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.627752, 41.617908, 58.271271>,  <28.356920, 41.361034, 58.127514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.627752, 41.617908, 58.271271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495620, 0.036920, 0.867754,
		0.543987, -0.765662, 0.343276,
		0.677081, 0.642182, 0.359394,
		28.830877, 41.810562, 58.379089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.613443, 41.064316, 58.711632>,  <28.356920, 41.361034, 58.127514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.613443, 41.064316, 58.711632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.649496, 41.462227, 58.730808>,  <28.671127, 41.700974, 58.742313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.649496, 41.462227, 58.730808>,  <28.613443, 41.064316, 58.711632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.649496, 41.462227, 58.730808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570417, 0.012107, 0.821266,
		0.816395, -0.101368, 0.568528,
		0.090133, 0.994775, 0.047937,
		28.676537, 41.760658, 58.745190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350868, 41.330494, 58.978458>,  <28.613443, 41.064316, 58.711632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.350868, 41.330494, 58.978458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.174809, 41.028854, 59.173439>,  <29.069172, 40.847870, 59.290428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.174809, 41.028854, 59.173439>,  <29.350868, 41.330494, 58.978458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.174809, 41.028854, 59.173439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358562, -0.645311, -0.674542,
		0.823227, -0.122117, 0.554423,
		-0.440149, -0.754096, 0.487451,
		29.042765, 40.802624, 59.319675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.892300, 40.803574, 59.196987>,  <29.350868, 41.330494, 58.978458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.892300, 40.803574, 59.196987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.543053, 40.608990, 59.209805>,  <29.333506, 40.492241, 59.217495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.543053, 40.608990, 59.209805>,  <29.892300, 40.803574, 59.196987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.543053, 40.608990, 59.209805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420598, -0.784879, -0.455041,
		0.246506, -0.383827, 0.889894,
		-0.873116, -0.486458, 0.032041,
		29.281118, 40.463051, 59.219418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017731, 40.172939, 59.362476>,  <29.892300, 40.803574, 59.196987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.017731, 40.172939, 59.362476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.650660, 40.080666, 59.233074>,  <29.430418, 40.025299, 59.155434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.650660, 40.080666, 59.233074>,  <30.017731, 40.172939, 59.362476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.650660, 40.080666, 59.233074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332601, -0.891414, -0.307827,
		-0.217364, -0.390083, 0.894756,
		-0.917676, -0.230686, -0.323504,
		29.375357, 40.011459, 59.136024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839371, 39.466213, 59.551434>,  <30.017731, 40.172939, 59.362476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839371, 39.466213, 59.551434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592493, 39.556324, 59.249886>,  <29.444366, 39.610390, 59.068958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592493, 39.556324, 59.249886>,  <29.839371, 39.466213, 59.551434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592493, 39.556324, 59.249886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229681, -0.864818, -0.446472,
		-0.752542, -0.448709, 0.482017,
		-0.617193, 0.225279, -0.753872,
		29.407335, 39.623909, 59.023724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.624062, 38.826015, 59.296268>,  <29.839371, 39.466213, 59.551434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.624062, 38.826015, 59.296268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512800, 39.080921, 59.008789>,  <29.446043, 39.233864, 58.836304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512800, 39.080921, 59.008789>,  <29.624062, 38.826015, 59.296268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.512800, 39.080921, 59.008789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177662, -0.701179, -0.690496,
		-0.943964, -0.319748, 0.081817,
		-0.278153, 0.637267, -0.718694,
		29.429354, 39.272102, 58.793182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124189, 38.506351, 58.785889>,  <29.624062, 38.826015, 59.296268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124189, 38.506351, 58.785889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.314507, 38.807659, 58.604248>,  <29.428698, 38.988445, 58.495266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.314507, 38.807659, 58.604248>,  <29.124189, 38.506351, 58.785889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.314507, 38.807659, 58.604248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271366, -0.616812, -0.738853,
		-0.836648, 0.228315, -0.497887,
		0.475794, 0.753270, -0.454098,
		29.457245, 39.033642, 58.468018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.841455, 38.398785, 58.192158>,  <29.124189, 38.506351, 58.785889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.841455, 38.398785, 58.192158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.184711, 38.604153, 58.192490>,  <29.390665, 38.727371, 58.192688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.184711, 38.604153, 58.192490>,  <28.841455, 38.398785, 58.192158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.184711, 38.604153, 58.192490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410655, -0.685406, -0.601316,
		-0.308155, 0.516355, -0.799011,
		0.858139, 0.513416, 0.000832,
		29.442154, 38.758179, 58.192738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.304266, 38.078384, 57.787613>,  <28.841455, 38.398785, 58.192158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.304266, 38.078384, 57.787613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180349, 37.769089, 58.008930>,  <28.105999, 37.583511, 58.141720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180349, 37.769089, 58.008930>,  <28.304266, 38.078384, 57.787613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.180349, 37.769089, 58.008930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702951, 0.578097, 0.414323,
		-0.640226, -0.260582, -0.722640,
		-0.309791, -0.773241, 0.553289,
		28.087412, 37.537117, 58.174915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.599497, 38.102688, 57.849049>,  <28.304266, 38.078384, 57.787613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.599497, 38.102688, 57.849049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.686153, 37.873840, 58.165466>,  <27.738148, 37.736534, 58.355316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.686153, 37.873840, 58.165466>,  <27.599497, 38.102688, 57.849049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.686153, 37.873840, 58.165466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529205, 0.612085, 0.587617,
		-0.820371, -0.545927, -0.170164,
		0.216642, -0.572115, 0.791044,
		27.751146, 37.702206, 58.402779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.932022, 37.997025, 58.150593>,  <27.599497, 38.102688, 57.849049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.932022, 37.997025, 58.150593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.225252, 37.940449, 58.416706>,  <27.401190, 37.906506, 58.576374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.225252, 37.940449, 58.416706>,  <26.932022, 37.997025, 58.150593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.225252, 37.940449, 58.416706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518454, 0.516916, 0.681178,
		-0.440237, -0.844271, 0.305609,
		0.733073, -0.141436, 0.665281,
		27.445175, 37.898018, 58.616291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.643021, 37.769604, 58.718746>,  <26.932022, 37.997025, 58.150593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.643021, 37.769604, 58.718746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.990961, 37.907249, 58.860138>,  <27.199726, 37.989838, 58.944973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.990961, 37.907249, 58.860138>,  <26.643021, 37.769604, 58.718746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.990961, 37.907249, 58.860138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486534, 0.480019, 0.729977,
		0.081516, -0.806951, 0.584966,
		0.869851, 0.344110, 0.353480,
		27.251917, 38.010483, 58.966183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.834846, 37.499184, 59.402859>,  <26.643021, 37.769604, 58.718746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.834846, 37.499184, 59.402859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.040356, 37.840927, 59.371590>,  <27.163660, 38.045975, 59.352829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.040356, 37.840927, 59.371590>,  <26.834846, 37.499184, 59.402859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.040356, 37.840927, 59.371590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498182, 0.371283, 0.783558,
		0.698465, -0.363623, 0.616381,
		0.513771, 0.854358, -0.078177,
		27.194487, 38.097233, 59.348137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.023949, 37.711533, 60.180355>,  <26.834846, 37.499184, 59.402859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.023949, 37.711533, 60.180355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.032606, 38.038033, 59.949440>,  <27.037800, 38.233932, 59.810890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.032606, 38.038033, 59.949440>,  <27.023949, 37.711533, 60.180355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.032606, 38.038033, 59.949440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463665, 0.519768, 0.717534,
		0.885746, 0.252141, 0.389716,
		0.021642, 0.816251, -0.577292,
		27.039099, 38.282909, 59.776253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.172794, 38.270061, 60.632996>,  <27.023949, 37.711533, 60.180355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.172794, 38.270061, 60.632996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.030813, 38.463902, 60.313202>,  <26.945625, 38.580208, 60.121326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.030813, 38.463902, 60.313202>,  <27.172794, 38.270061, 60.632996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.030813, 38.463902, 60.313202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296694, 0.752567, 0.587890,
		0.886557, 0.445873, -0.123346,
		-0.354951, 0.484602, -0.799482,
		26.924328, 38.609283, 60.073357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.183933, 38.972031, 60.772797>,  <27.172794, 38.270061, 60.632996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.183933, 38.972031, 60.772797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945122, 38.995720, 60.452785>,  <26.801834, 39.009933, 60.260777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945122, 38.995720, 60.452785>,  <27.183933, 38.972031, 60.772797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.945122, 38.995720, 60.452785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483001, 0.769720, 0.417422,
		0.640520, 0.635629, -0.430940,
		-0.597029, 0.059223, -0.800031,
		26.766012, 39.013485, 60.212776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.036278, 39.753975, 60.559242>,  <27.183933, 38.972031, 60.772797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.036278, 39.753975, 60.559242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.738670, 39.542953, 60.395229>,  <26.560106, 39.416340, 60.296822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.738670, 39.542953, 60.395229>,  <27.036278, 39.753975, 60.559242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.738670, 39.542953, 60.395229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640378, 0.738137, 0.212294,
		0.190667, 0.420528, -0.887019,
		-0.744017, -0.527550, -0.410035,
		26.515465, 39.384689, 60.272221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<38.042477, 32.758335, 49.491600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.050938, 32.781231, 49.092346>,  <38.056015, 32.794968, 48.852795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.050938, 32.781231, 49.092346>,  <38.042477, 32.758335, 49.491600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050938, 32.781231, 49.092346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940579, 0.339575, -0.000456,
		0.338916, 0.938836, 0.061020,
		0.021149, 0.057240, -0.998136,
		38.057281, 32.798405, 48.792904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663788, 33.335598, 49.365414>,  <38.042477, 32.758335, 49.491600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663788, 33.335598, 49.365414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.667431, 33.175278, 48.998966>,  <37.669617, 33.079086, 48.779099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.667431, 33.175278, 48.998966>,  <37.663788, 33.335598, 49.365414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667431, 33.175278, 48.998966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886575, 0.420499, -0.192784,
		0.462495, 0.813966, -0.351508,
		0.009111, -0.400799, -0.916121,
		37.670162, 33.055038, 48.724129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576366, 33.901600, 48.939396>,  <37.663788, 33.335598, 49.365414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576366, 33.901600, 48.939396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.493431, 33.585373, 48.708916>,  <37.443668, 33.395638, 48.570625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.493431, 33.585373, 48.708916>,  <37.576366, 33.901600, 48.939396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493431, 33.585373, 48.708916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881873, 0.405999, -0.239716,
		0.423450, 0.458436, -0.781362,
		-0.207338, -0.790570, -0.576203,
		37.431229, 33.348202, 48.536053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184460, 34.139889, 48.262539>,  <37.576366, 33.901600, 48.939396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184460, 34.139889, 48.262539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.090611, 33.752907, 48.300446>,  <37.034302, 33.520718, 48.323189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.090611, 33.752907, 48.300446>,  <37.184460, 34.139889, 48.262539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090611, 33.752907, 48.300446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971782, 0.230998, -0.047741,
		0.024296, -0.103293, -0.994354,
		-0.234625, -0.967455, 0.094766,
		37.020222, 33.462669, 48.328876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695377, 33.839970, 47.650688>,  <37.184460, 34.139889, 48.262539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695377, 33.839970, 47.650688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.634182, 33.611923, 47.973568>,  <36.597466, 33.475098, 48.167294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.634182, 33.611923, 47.973568>,  <36.695377, 33.839970, 47.650688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634182, 33.611923, 47.973568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981519, 0.182675, -0.057008,
		-0.114954, -0.801000, -0.587524,
		-0.152990, -0.570113, 0.807196,
		36.588284, 33.440887, 48.215725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043678, 33.477886, 47.444653>,  <36.695377, 33.839970, 47.650688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043678, 33.477886, 47.444653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.081963, 33.419334, 47.838486>,  <36.104935, 33.384205, 48.074787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.081963, 33.419334, 47.838486>,  <36.043678, 33.477886, 47.444653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081963, 33.419334, 47.838486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979458, 0.162517, 0.119376,
		-0.177486, -0.975788, -0.127816,
		0.095713, -0.146378, 0.984588,
		36.110676, 33.375420, 48.133862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502110, 32.973919, 47.655087>,  <36.043678, 33.477886, 47.444653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502110, 32.973919, 47.655087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.614208, 33.179790, 47.979202>,  <35.681469, 33.303314, 48.173672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.614208, 33.179790, 47.979202>,  <35.502110, 32.973919, 47.655087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614208, 33.179790, 47.979202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959475, 0.176122, 0.219974,
		-0.029494, -0.839100, 0.543177,
		0.280246, 0.514676, 0.810290,
		35.698280, 33.334194, 48.222290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134262, 32.664902, 48.165981>,  <35.502110, 32.973919, 47.655087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134262, 32.664902, 48.165981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.219955, 33.037357, 48.284027>,  <35.271370, 33.260830, 48.354855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.219955, 33.037357, 48.284027>,  <35.134262, 32.664902, 48.165981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219955, 33.037357, 48.284027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925448, 0.096833, 0.366291,
		0.312491, -0.351581, 0.882463,
		0.214232, 0.931136, 0.295110,
		35.284225, 33.316700, 48.372559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923431, 32.666073, 48.897087>,  <35.134262, 32.664902, 48.165981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923431, 32.666073, 48.897087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.950882, 33.041740, 48.762478>,  <34.967354, 33.267139, 48.681713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.950882, 33.041740, 48.762478>,  <34.923431, 32.666073, 48.897087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950882, 33.041740, 48.762478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967369, 0.145112, 0.207699,
		0.243899, 0.311291, 0.918483,
		0.068628, 0.939170, -0.336526,
		34.971470, 33.323490, 48.661522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353138, 32.954433, 49.198490>,  <34.923431, 32.666073, 48.897087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353138, 32.954433, 49.198490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.465416, 33.263996, 48.971413>,  <34.532784, 33.449734, 48.835167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.465416, 33.263996, 48.971413>,  <34.353138, 32.954433, 49.198490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465416, 33.263996, 48.971413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950366, 0.306817, -0.051641,
		0.134211, 0.554008, 0.821622,
		0.280697, 0.773911, -0.567689,
		34.549625, 33.496170, 48.801105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297108, 33.547909, 49.555763>,  <34.353138, 32.954433, 49.198490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297108, 33.547909, 49.555763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.245190, 33.646832, 49.171680>,  <34.214039, 33.706184, 48.941231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.245190, 33.646832, 49.171680>,  <34.297108, 33.547909, 49.555763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245190, 33.646832, 49.171680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933080, 0.297136, 0.202663,
		0.335432, 0.922251, 0.192193,
		-0.129798, 0.247311, -0.960203,
		34.206249, 33.721024, 48.883621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015514, 34.177376, 49.548874>,  <34.297108, 33.547909, 49.555763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015514, 34.177376, 49.548874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.918148, 34.093346, 49.170113>,  <33.859730, 34.042927, 48.942856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.918148, 34.093346, 49.170113>,  <34.015514, 34.177376, 49.548874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918148, 34.093346, 49.170113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968284, 0.109360, 0.224650,
		0.056360, 0.971550, -0.230032,
		-0.243415, -0.210075, -0.946899,
		33.845123, 34.030323, 48.886044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383007, 34.462124, 49.536507>,  <34.015514, 34.177376, 49.548874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383007, 34.462124, 49.536507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.386112, 34.255032, 49.194305>,  <33.387978, 34.130775, 48.988983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.386112, 34.255032, 49.194305>,  <33.383007, 34.462124, 49.536507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386112, 34.255032, 49.194305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998606, 0.040659, -0.033670,
		0.052216, 0.854576, -0.516694,
		0.007765, -0.517732, -0.855508,
		33.388443, 34.099712, 48.937653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713104, 34.425098, 49.846874>,  <33.383007, 34.462124, 49.536507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713104, 34.425098, 49.846874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.685505, 34.559254, 50.222694>,  <32.668945, 34.639748, 50.448185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.685505, 34.559254, 50.222694>,  <32.713104, 34.425098, 49.846874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685505, 34.559254, 50.222694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988596, 0.103379, -0.109501,
		-0.133855, -0.936392, 0.324426,
		-0.068997, 0.335384, 0.939551,
		32.664806, 34.659870, 50.504559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205692, 34.064484, 50.244633>,  <32.713104, 34.425098, 49.846874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205692, 34.064484, 50.244633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.251808, 34.445011, 50.358974>,  <32.279476, 34.673328, 50.427578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.251808, 34.445011, 50.358974>,  <32.205692, 34.064484, 50.244633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251808, 34.445011, 50.358974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969900, 0.169940, -0.174398,
		-0.214485, -0.257141, 0.942271,
		0.115285, 0.951314, 0.285851,
		32.286392, 34.730404, 50.444729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663221, 34.128605, 50.811176>,  <32.205692, 34.064484, 50.244633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663221, 34.128605, 50.811176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.764013, 34.495564, 50.687954>,  <31.824488, 34.715736, 50.614021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.764013, 34.495564, 50.687954>,  <31.663221, 34.128605, 50.811176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764013, 34.495564, 50.687954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959757, 0.277687, 0.041910,
		0.123990, 0.285094, 0.950446,
		0.251978, 0.917394, -0.308051,
		31.839607, 34.770782, 50.595539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605064, 34.552082, 51.397747>,  <31.663221, 34.128605, 50.811176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605064, 34.552082, 51.397747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.578152, 34.803379, 51.087704>,  <31.562004, 34.954155, 50.901680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.578152, 34.803379, 51.087704>,  <31.605064, 34.552082, 51.397747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578152, 34.803379, 51.087704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970592, 0.138757, 0.196719,
		0.231138, 0.765546, 0.600429,
		-0.067284, 0.628240, -0.775105,
		31.557966, 34.991852, 50.855171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265411, 35.165012, 51.635418>,  <31.605064, 34.552082, 51.397747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265411, 35.165012, 51.635418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.219248, 35.180416, 51.238388>,  <31.191549, 35.189659, 51.000172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.219248, 35.180416, 51.238388>,  <31.265411, 35.165012, 51.635418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.219248, 35.180416, 51.238388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990453, 0.071375, 0.117932,
		0.075386, 0.996706, 0.029905,
		-0.115409, 0.038510, -0.992571,
		31.184626, 35.191971, 50.940617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732168, 35.673077, 51.438610>,  <31.265411, 35.165012, 51.635418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.732168, 35.673077, 51.438610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.771572, 35.448257, 51.110123>,  <30.795216, 35.313366, 50.913033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.771572, 35.448257, 51.110123>,  <30.732168, 35.673077, 51.438610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.771572, 35.448257, 51.110123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994418, -0.086949, -0.059779,
		-0.037805, 0.822519, -0.567479,
		0.098511, -0.562051, -0.821215,
		30.801125, 35.279640, 50.863758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.160273, 35.970184, 51.005150>,  <30.732168, 35.673077, 51.438610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.160273, 35.970184, 51.005150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.246271, 35.610485, 50.852760>,  <30.297871, 35.394665, 50.761326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.246271, 35.610485, 50.852760>,  <30.160273, 35.970184, 51.005150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.246271, 35.610485, 50.852760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976569, -0.194160, -0.092820,
		0.009499, 0.391999, -0.919917,
		0.214996, -0.899243, -0.380970,
		30.310770, 35.340714, 50.738468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739117, 35.791702, 50.478210>,  <30.160273, 35.970184, 51.005150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.739117, 35.791702, 50.478210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.838717, 35.425224, 50.603806>,  <29.898476, 35.205338, 50.679161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.838717, 35.425224, 50.603806>,  <29.739117, 35.791702, 50.478210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.838717, 35.425224, 50.603806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949092, -0.295412, -0.109341,
		0.192933, -0.270774, -0.943111,
		0.249000, -0.916195, 0.313984,
		29.913416, 35.150368, 50.698002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.509989, 35.473747, 49.943512>,  <29.739117, 35.791702, 50.478210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.509989, 35.473747, 49.943512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.563604, 35.201096, 50.231239>,  <29.595774, 35.037506, 50.403877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.563604, 35.201096, 50.231239>,  <29.509989, 35.473747, 49.943512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.563604, 35.201096, 50.231239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939731, -0.317828, -0.126061,
		0.314546, -0.659069, -0.683147,
		0.134041, -0.681626, 0.719319,
		29.603817, 34.996609, 50.447037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.121826, 34.992569, 49.683678>,  <29.509989, 35.473747, 49.943512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.121826, 34.992569, 49.683678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.161545, 34.910389, 50.073124>,  <29.185375, 34.861080, 50.306793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.161545, 34.910389, 50.073124>,  <29.121826, 34.992569, 49.683678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.161545, 34.910389, 50.073124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956058, -0.290944, 0.036109,
		0.275850, -0.934420, -0.225313,
		0.099295, -0.205452, 0.973617,
		29.191334, 34.848755, 50.365208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792925, 34.265697, 49.809895>,  <29.121826, 34.992569, 49.683678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.792925, 34.265697, 49.809895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.797312, 34.462791, 50.157936>,  <28.799944, 34.581047, 50.366760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.797312, 34.462791, 50.157936>,  <28.792925, 34.265697, 49.809895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.797312, 34.462791, 50.157936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969592, -0.207510, 0.129735,
		0.244481, -0.845073, 0.475480,
		0.010969, 0.492740, 0.870108,
		28.800602, 34.610615, 50.418968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.430140, 33.856548, 50.277363>,  <28.792925, 34.265697, 49.809895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.430140, 33.856548, 50.277363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.445406, 34.217022, 50.450066>,  <28.454565, 34.433304, 50.553688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.445406, 34.217022, 50.450066>,  <28.430140, 33.856548, 50.277363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.445406, 34.217022, 50.450066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942665, -0.110889, 0.314780,
		0.331552, -0.419019, 0.845279,
		0.038166, 0.901181, 0.431760,
		28.456856, 34.487377, 50.579594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.094805, 33.718361, 50.791824>,  <28.430140, 33.856548, 50.277363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.094805, 33.718361, 50.791824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.061769, 34.116638, 50.808662>,  <28.041948, 34.355606, 50.818764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.061769, 34.116638, 50.808662>,  <28.094805, 33.718361, 50.791824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.061769, 34.116638, 50.808662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959276, -0.090873, 0.267456,
		0.270130, -0.018293, 0.962650,
		-0.082587, 0.995695, 0.042095,
		28.036993, 34.415348, 50.821293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.721294, 33.847477, 51.421967>,  <28.094805, 33.718361, 50.791824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.721294, 33.847477, 51.421967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.710506, 34.195744, 51.225510>,  <27.704035, 34.404701, 51.107635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.710506, 34.195744, 51.225510>,  <27.721294, 33.847477, 51.421967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.710506, 34.195744, 51.225510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958629, 0.116753, 0.259613,
		0.283378, 0.477822, 0.831495,
		-0.026969, 0.870663, -0.491140,
		27.702415, 34.456944, 51.078167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.375767, 34.397873, 51.965042>,  <27.721294, 33.847477, 51.421967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.375767, 34.397873, 51.965042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.303221, 34.529350, 51.594299>,  <27.259693, 34.608238, 51.371853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.303221, 34.529350, 51.594299>,  <27.375767, 34.397873, 51.965042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.303221, 34.529350, 51.594299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953093, 0.173487, 0.248023,
		0.242322, 0.928364, 0.281815,
		-0.181364, 0.328697, -0.926858,
		27.248812, 34.627960, 51.316242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.982645, 35.141731, 52.017853>,  <27.375767, 34.397873, 51.965042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.982645, 35.141731, 52.017853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.938206, 34.970066, 51.659306>,  <26.911543, 34.867065, 51.444176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.938206, 34.970066, 51.659306>,  <26.982645, 35.141731, 52.017853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.938206, 34.970066, 51.659306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988185, 0.143524, 0.053761,
		0.105578, 0.891750, -0.440040,
		-0.111098, -0.429166, -0.896367,
		26.904877, 34.841316, 51.390396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.642109, 35.614651, 51.687294>,  <26.982645, 35.141731, 52.017853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.642109, 35.614651, 51.687294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.568335, 35.270653, 51.496975>,  <26.524071, 35.064255, 51.382782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.568335, 35.270653, 51.496975>,  <26.642109, 35.614651, 51.687294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.568335, 35.270653, 51.496975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978137, 0.207935, 0.003322,
		0.096078, 0.466010, -0.879548,
		-0.184437, -0.859999, -0.475799,
		26.513004, 35.012653, 51.354237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.055813, 35.713844, 51.241299>,  <26.642109, 35.614651, 51.687294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.055813, 35.713844, 51.241299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.076286, 35.318913, 51.301376>,  <26.088570, 35.081951, 51.337421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.076286, 35.318913, 51.301376>,  <26.055813, 35.713844, 51.241299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.076286, 35.318913, 51.301376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995923, -0.039277, 0.081200,
		-0.074272, -0.153734, -0.985317,
		0.051184, -0.987331, 0.150190,
		26.091642, 35.022713, 51.346432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.492840, 35.400223, 50.769169>,  <26.055813, 35.713844, 51.241299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.492840, 35.400223, 50.769169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.595469, 35.131378, 51.047001>,  <25.657045, 34.970070, 51.213699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.595469, 35.131378, 51.047001>,  <25.492840, 35.400223, 50.769169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.595469, 35.131378, 51.047001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963616, -0.233602, 0.129903,
		0.074945, -0.702633, -0.707595,
		0.256570, -0.672114, 0.694575,
		25.672440, 34.929745, 51.255375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.134254, 34.912308, 50.558632>,  <25.492840, 35.400223, 50.769169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.134254, 34.912308, 50.558632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.210478, 34.803391, 50.935894>,  <25.256212, 34.738041, 51.162251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.210478, 34.803391, 50.935894>,  <25.134254, 34.912308, 50.558632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.210478, 34.803391, 50.935894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973336, -0.177379, 0.145444,
		0.127694, -0.945725, -0.298829,
		0.190556, -0.272289, 0.943158,
		25.267645, 34.721703, 51.218842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.807964, 34.384251, 50.633980>,  <25.134254, 34.912308, 50.558632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.807964, 34.384251, 50.633980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.852751, 34.476040, 51.020721>,  <24.879622, 34.531113, 51.252766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.852751, 34.476040, 51.020721>,  <24.807964, 34.384251, 50.633980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.852751, 34.476040, 51.020721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922725, -0.337134, 0.186868,
		0.368841, -0.913063, 0.173992,
		0.111964, 0.229471, 0.966854,
		24.886339, 34.544880, 51.310780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.559971, 33.779091, 50.939030>,  <24.807964, 34.384251, 50.633980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.559971, 33.779091, 50.939030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.549051, 34.077213, 51.205494>,  <24.542500, 34.256088, 51.365372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.549051, 34.077213, 51.205494>,  <24.559971, 33.779091, 50.939030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.549051, 34.077213, 51.205494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948188, -0.230327, 0.218837,
		0.316536, -0.625670, 0.712981,
		-0.027299, 0.745310, 0.666159,
		24.540861, 34.300808, 51.405342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<33.877876, 31.272503, 48.807995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.562035, 31.035580, 48.872120>,  <33.372528, 30.893427, 48.910595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.562035, 31.035580, 48.872120>,  <33.877876, 31.272503, 48.807995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562035, 31.035580, 48.872120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080153, 0.358580, 0.930051,
		-0.608361, 0.721521, -0.330611,
		-0.789603, -0.592306, 0.160314,
		33.325153, 30.857887, 48.920216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577583, 31.714821, 49.167545>,  <33.877876, 31.272503, 48.807995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577583, 31.714821, 49.167545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.406223, 31.360123, 49.237011>,  <33.303410, 31.147305, 49.278690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.406223, 31.360123, 49.237011>,  <33.577583, 31.714821, 49.167545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406223, 31.360123, 49.237011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105214, 0.239842, 0.965094,
		-0.897444, 0.395171, -0.196045,
		-0.428397, -0.886745, 0.173667,
		33.277702, 31.094099, 49.289112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982117, 31.802948, 49.508850>,  <33.577583, 31.714821, 49.167545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982117, 31.802948, 49.508850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.079357, 31.427267, 49.605843>,  <33.137703, 31.201859, 49.664040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.079357, 31.427267, 49.605843>,  <32.982117, 31.802948, 49.508850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079357, 31.427267, 49.605843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248767, 0.181255, 0.951452,
		-0.937559, -0.291620, -0.189580,
		0.243101, -0.939204, 0.242482,
		33.152287, 31.145506, 49.678589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408470, 31.453054, 49.842606>,  <32.982117, 31.802948, 49.508850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408470, 31.453054, 49.842606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.719391, 31.226274, 49.951683>,  <32.905945, 31.090206, 50.017128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.719391, 31.226274, 49.951683>,  <32.408470, 31.453054, 49.842606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719391, 31.226274, 49.951683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196478, 0.193001, 0.961326,
		-0.597655, -0.800822, 0.038627,
		0.777306, -0.566952, 0.272692,
		32.952583, 31.056189, 50.033489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136772, 31.088861, 50.436218>,  <32.408470, 31.453054, 49.842606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136772, 31.088861, 50.436218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.536564, 31.087938, 50.449123>,  <32.776440, 31.087385, 50.456867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.536564, 31.087938, 50.449123>,  <32.136772, 31.088861, 50.436218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536564, 31.087938, 50.449123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031729, 0.124272, 0.991741,
		-0.006302, -0.992245, 0.124134,
		0.999476, -0.002311, 0.032266,
		32.836407, 31.087246, 50.458805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258247, 30.644058, 50.967575>,  <32.136772, 31.088861, 50.436218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258247, 30.644058, 50.967575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.599617, 30.849846, 50.934135>,  <32.804440, 30.973318, 50.914074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.599617, 30.849846, 50.934135>,  <32.258247, 30.644058, 50.967575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599617, 30.849846, 50.934135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069569, 0.046517, 0.996492,
		0.516553, -0.856246, 0.003908,
		0.853425, 0.514469, -0.083596,
		32.855644, 31.004187, 50.909058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849724, 30.295750, 51.436749>,  <32.258247, 30.644058, 50.967575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849724, 30.295750, 51.436749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.916336, 30.688454, 51.400051>,  <32.956303, 30.924076, 51.378033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.916336, 30.688454, 51.400051>,  <32.849724, 30.295750, 51.436749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916336, 30.688454, 51.400051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022734, 0.096840, 0.995040,
		0.985774, -0.163618, 0.038446,
		0.166529, 0.981759, -0.091743,
		32.966293, 30.982981, 51.372528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285992, 30.382122, 51.939068>,  <32.849724, 30.295750, 51.436749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285992, 30.382122, 51.939068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.207325, 30.766783, 51.862598>,  <33.160126, 30.997580, 51.816719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.207325, 30.766783, 51.862598>,  <33.285992, 30.382122, 51.939068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207325, 30.766783, 51.862598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070116, 0.208273, 0.975554,
		0.977960, 0.178452, -0.108387,
		-0.196664, 0.961653, -0.191171,
		33.148327, 31.055279, 51.805248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643188, 30.724804, 52.440186>,  <33.285992, 30.382122, 51.939068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643188, 30.724804, 52.440186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.395252, 31.014688, 52.319790>,  <33.246490, 31.188620, 52.247555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.395252, 31.014688, 52.319790>,  <33.643188, 30.724804, 52.440186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395252, 31.014688, 52.319790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028124, 0.362791, 0.931446,
		0.784222, 0.585815, -0.204492,
		-0.619843, 0.724709, -0.300985,
		33.209301, 31.232101, 52.229496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903004, 31.278330, 52.778568>,  <33.643188, 30.724804, 52.440186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903004, 31.278330, 52.778568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.524963, 31.361856, 52.678024>,  <33.298141, 31.411972, 52.617699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.524963, 31.361856, 52.678024>,  <33.903004, 31.278330, 52.778568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524963, 31.361856, 52.678024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103838, 0.537437, 0.836887,
		0.309848, 0.817042, -0.486248,
		-0.945099, 0.208816, -0.251364,
		33.241432, 31.424501, 52.602615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755516, 31.998669, 52.871433>,  <33.903004, 31.278330, 52.778568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755516, 31.998669, 52.871433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.410225, 31.803608, 52.923645>,  <33.203053, 31.686571, 52.954971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.410225, 31.803608, 52.923645>,  <33.755516, 31.998669, 52.871433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410225, 31.803608, 52.923645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177136, 0.534729, 0.826249,
		-0.472720, 0.690117, -0.547972,
		-0.863225, -0.487651, 0.130533,
		33.151257, 31.657312, 52.962807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411232, 32.460068, 53.128330>,  <33.755516, 31.998669, 52.871433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411232, 32.460068, 53.128330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.137821, 32.182621, 53.219257>,  <32.973774, 32.016151, 53.273815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.137821, 32.182621, 53.219257>,  <33.411232, 32.460068, 53.128330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137821, 32.182621, 53.219257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306186, 0.555175, 0.773324,
		-0.662597, 0.458989, -0.591857,
		-0.683532, -0.693621, 0.227322,
		32.932762, 31.974535, 53.287453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857265, 33.013115, 53.020290>,  <33.411232, 32.460068, 53.128330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857265, 33.013115, 53.020290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.085762, 33.200531, 53.289856>,  <34.222858, 33.312981, 53.451595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.085762, 33.200531, 53.289856>,  <33.857265, 33.013115, 53.020290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085762, 33.200531, 53.289856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804054, -0.154516, -0.574127,
		-0.164871, 0.869825, -0.464997,
		0.571240, 0.468539, 0.673911,
		34.257133, 33.341091, 53.492031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294800, 33.486382, 52.669994>,  <33.857265, 33.013115, 53.020290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294800, 33.486382, 52.669994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.483318, 33.355335, 52.997543>,  <34.596428, 33.276711, 53.194073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.483318, 33.355335, 52.997543>,  <34.294800, 33.486382, 52.669994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483318, 33.355335, 52.997543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795511, -0.243019, -0.555071,
		0.380849, 0.913024, 0.146086,
		0.471292, -0.327611, 0.818874,
		34.624706, 33.257053, 53.243206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968285, 33.784519, 52.741135>,  <34.294800, 33.486382, 52.669994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968285, 33.784519, 52.741135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.000393, 33.443821, 52.948246>,  <35.019657, 33.239403, 53.072514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.000393, 33.443821, 52.948246>,  <34.968285, 33.784519, 52.741135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000393, 33.443821, 52.948246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893663, -0.168581, -0.415868,
		0.441499, 0.496101, 0.747638,
		0.080275, -0.851742, 0.517775,
		35.024475, 33.188297, 53.103577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593063, 33.861828, 53.194920>,  <34.968285, 33.784519, 52.741135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593063, 33.861828, 53.194920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.507339, 33.474743, 53.141838>,  <35.455906, 33.242493, 53.109989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.507339, 33.474743, 53.141838>,  <35.593063, 33.861828, 53.194920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507339, 33.474743, 53.141838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871840, -0.128260, -0.472700,
		0.440415, -0.217002, 0.871174,
		-0.214314, -0.967708, -0.132703,
		35.443047, 33.184429, 53.102028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195656, 33.553310, 53.034702>,  <35.593063, 33.861828, 53.194920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195656, 33.553310, 53.034702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.989468, 33.233009, 52.912663>,  <35.865753, 33.040829, 52.839439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.989468, 33.233009, 52.912663>,  <36.195656, 33.553310, 53.034702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989468, 33.233009, 52.912663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796564, -0.316531, -0.515066,
		0.315866, -0.508535, 0.801013,
		-0.515474, -0.800750, -0.305099,
		35.834824, 32.992783, 52.821133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630508, 33.015594, 53.209473>,  <36.195656, 33.553310, 53.034702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630508, 33.015594, 53.209473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.381424, 32.902939, 52.917469>,  <36.231976, 32.835346, 52.742268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.381424, 32.902939, 52.917469>,  <36.630508, 33.015594, 53.209473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381424, 32.902939, 52.917469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775108, -0.349578, -0.526311,
		-0.106962, -0.893573, 0.435990,
		-0.622709, -0.281644, -0.730007,
		36.194611, 32.818447, 52.698467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912880, 32.344860, 53.129299>,  <36.630508, 33.015594, 53.209473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912880, 32.344860, 53.129299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.699966, 32.441704, 52.804813>,  <36.572220, 32.499809, 52.610123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.699966, 32.441704, 52.804813>,  <36.912880, 32.344860, 53.129299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699966, 32.441704, 52.804813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720399, -0.373749, -0.584240,
		-0.444639, -0.895374, 0.024524,
		-0.532279, 0.242109, -0.811211,
		36.540283, 32.514336, 52.561451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032516, 31.728588, 52.729523>,  <36.912880, 32.344860, 53.129299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032516, 31.728588, 52.729523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.906704, 32.009308, 52.473854>,  <36.831215, 32.177742, 52.320454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.906704, 32.009308, 52.473854>,  <37.032516, 31.728588, 52.729523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906704, 32.009308, 52.473854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702543, -0.280718, -0.653935,
		-0.638361, -0.654730, -0.404751,
		-0.314530, 0.701802, -0.639175,
		36.812344, 32.219849, 52.282101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934269, 31.456213, 52.208344>,  <37.032516, 31.728588, 52.729523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934269, 31.456213, 52.208344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.981926, 31.831505, 52.078400>,  <37.010521, 32.056679, 52.000435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.981926, 31.831505, 52.078400>,  <36.934269, 31.456213, 52.208344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981926, 31.831505, 52.078400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643691, -0.322102, -0.694199,
		-0.755955, -0.126400, -0.642305,
		0.119141, 0.938229, -0.324857,
		37.017670, 32.112972, 51.980942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857933, 31.421337, 51.450127>,  <36.934269, 31.456213, 52.208344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857933, 31.421337, 51.450127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.068169, 31.746908, 51.549145>,  <37.194309, 31.942251, 51.608555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.068169, 31.746908, 51.549145>,  <36.857933, 31.421337, 51.450127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068169, 31.746908, 51.549145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685242, -0.232585, -0.690180,
		-0.504181, 0.532379, -0.679981,
		0.525590, 0.813927, 0.247544,
		37.225845, 31.991087, 51.623409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134079, 31.679529, 50.867290>,  <36.857933, 31.421337, 51.450127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134079, 31.679529, 50.867290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.360474, 31.921671, 51.091148>,  <37.496311, 32.066956, 51.225464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.360474, 31.921671, 51.091148>,  <37.134079, 31.679529, 50.867290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360474, 31.921671, 51.091148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758196, -0.115657, -0.641687,
		-0.323722, 0.787507, -0.524439,
		0.565988, 0.605356, 0.559644,
		37.530270, 32.103279, 51.259041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373493, 32.153278, 50.403706>,  <37.134079, 31.679529, 50.867290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373493, 32.153278, 50.403706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.624378, 32.123501, 50.713818>,  <37.774910, 32.105633, 50.899883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.624378, 32.123501, 50.713818>,  <37.373493, 32.153278, 50.403706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624378, 32.123501, 50.713818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778300, 0.097119, -0.620336,
		-0.029114, 0.992485, 0.118854,
		0.627217, -0.074444, 0.775279,
		37.812542, 32.101166, 50.946400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926659, 32.605640, 50.197536>,  <37.373493, 32.153278, 50.403706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926659, 32.605640, 50.197536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.093269, 32.405201, 50.500961>,  <38.193233, 32.284939, 50.683014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.093269, 32.405201, 50.500961>,  <37.926659, 32.605640, 50.197536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093269, 32.405201, 50.500961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905196, 0.151104, -0.397225,
		0.084427, 0.852098, 0.516528,
		0.416525, -0.501095, 0.758558,
		38.218227, 32.254871, 50.728527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371586, 33.145721, 50.501034>,  <37.926659, 32.605640, 50.197536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371586, 33.145721, 50.501034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.492672, 32.773804, 50.584793>,  <38.565323, 32.550655, 50.635048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.492672, 32.773804, 50.584793>,  <38.371586, 33.145721, 50.501034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492672, 32.773804, 50.584793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888354, 0.195681, -0.415373,
		0.345236, 0.311761, 0.885222,
		0.302718, -0.929792, 0.209398,
		38.583488, 32.494865, 50.647614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315876, 33.940933, 50.479507>,  <38.371586, 33.145721, 50.501034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315876, 33.940933, 50.479507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.017220, 33.975525, 50.215675>,  <37.838028, 33.996281, 50.057377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.017220, 33.975525, 50.215675>,  <38.315876, 33.940933, 50.479507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017220, 33.975525, 50.215675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118697, 0.958283, 0.260010,
		0.654555, 0.272424, -0.705226,
		-0.746638, 0.086483, -0.659585,
		37.793228, 34.001469, 50.017799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227680, 34.724850, 50.256111>,  <38.315876, 33.940933, 50.479507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227680, 34.724850, 50.256111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.870075, 34.583336, 50.146145>,  <37.655514, 34.498428, 50.080166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.870075, 34.583336, 50.146145>,  <38.227680, 34.724850, 50.256111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870075, 34.583336, 50.146145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399310, 0.907443, 0.130765,
		0.203205, 0.226680, -0.952535,
		-0.894013, -0.353785, -0.274912,
		37.601871, 34.477200, 50.063671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860672, 35.113880, 49.771324>,  <38.227680, 34.724850, 50.256111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860672, 35.113880, 49.771324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.555729, 34.947937, 49.970001>,  <37.372765, 34.848373, 50.089207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.555729, 34.947937, 49.970001>,  <37.860672, 35.113880, 49.771324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555729, 34.947937, 49.970001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265647, 0.900469, 0.344367,
		-0.590120, 0.130586, -0.796685,
		-0.762359, -0.414854, 0.496694,
		37.327023, 34.823483, 50.119011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814606, 35.778378, 49.798149>,  <37.860672, 35.113880, 49.771324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814606, 35.778378, 49.798149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.562569, 35.822018, 49.490623>,  <37.411346, 35.848202, 49.306107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.562569, 35.822018, 49.490623>,  <37.814606, 35.778378, 49.798149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562569, 35.822018, 49.490623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316137, 0.868274, 0.382306,
		0.709250, 0.483941, -0.512607,
		-0.630096, 0.109097, -0.768815,
		37.373539, 35.854748, 49.259979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900692, 36.455086, 49.418522>,  <37.814606, 35.778378, 49.798149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900692, 36.455086, 49.418522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.525440, 36.338345, 49.343975>,  <37.300289, 36.268299, 49.299248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.525440, 36.338345, 49.343975>,  <37.900692, 36.455086, 49.418522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525440, 36.338345, 49.343975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343977, 0.847379, 0.404510,
		0.039864, 0.443588, -0.895344,
		-0.938132, -0.291853, -0.186364,
		37.243999, 36.250790, 49.288067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513062, 37.062626, 49.259941>,  <37.900692, 36.455086, 49.418522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513062, 37.062626, 49.259941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.221588, 36.808136, 49.361320>,  <37.046703, 36.655441, 49.422150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.221588, 36.808136, 49.361320>,  <37.513062, 37.062626, 49.259941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221588, 36.808136, 49.361320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473619, 0.735470, 0.484530,
		-0.494672, 0.233033, -0.837255,
		-0.728687, -0.636223, 0.253448,
		37.002983, 36.617268, 49.437355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865040, 37.428478, 49.045883>,  <37.513062, 37.062626, 49.259941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865040, 37.428478, 49.045883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.730343, 37.138771, 49.286564>,  <36.649525, 36.964947, 49.430973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.730343, 37.138771, 49.286564>,  <36.865040, 37.428478, 49.045883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730343, 37.138771, 49.286564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661818, 0.636601, 0.395899,
		-0.669779, -0.264900, -0.693703,
		-0.336738, -0.724270, 0.601698,
		36.629322, 36.921490, 49.467072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152294, 37.343204, 48.986504>,  <36.865040, 37.428478, 49.045883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152294, 37.343204, 48.986504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.231148, 37.197655, 49.350643>,  <36.278461, 37.110325, 49.569126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.231148, 37.197655, 49.350643>,  <36.152294, 37.343204, 48.986504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231148, 37.197655, 49.350643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698270, 0.599677, 0.390905,
		-0.688154, -0.712731, -0.135862,
		0.197137, -0.363872, 0.910348,
		36.290287, 37.088493, 49.623749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580177, 37.496914, 49.270554>,  <36.152294, 37.343204, 48.986504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580177, 37.496914, 49.270554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.788513, 37.371925, 49.588318>,  <35.913513, 37.296932, 49.778976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.788513, 37.371925, 49.588318>,  <35.580177, 37.496914, 49.270554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788513, 37.371925, 49.588318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645186, 0.465277, 0.606013,
		-0.558985, -0.828177, 0.040729,
		0.520836, -0.312474, 0.794411,
		35.944763, 37.278183, 49.826641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146008, 37.160393, 49.797153>,  <35.580177, 37.496914, 49.270554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146008, 37.160393, 49.797153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.470963, 37.301117, 49.983170>,  <35.665936, 37.385551, 50.094780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.470963, 37.301117, 49.983170>,  <35.146008, 37.160393, 49.797153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470963, 37.301117, 49.983170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580401, 0.410872, 0.703078,
		0.056275, -0.841080, 0.537975,
		0.812384, 0.351807, 0.465042,
		35.714676, 37.406658, 50.122681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082184, 37.060852, 50.535690>,  <35.146008, 37.160393, 49.797153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082184, 37.060852, 50.535690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.368202, 37.339760, 50.515598>,  <35.539814, 37.507107, 50.503544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.368202, 37.339760, 50.515598>,  <35.082184, 37.060852, 50.535690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368202, 37.339760, 50.515598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430871, 0.496157, 0.753776,
		0.550512, -0.517339, 0.655208,
		0.715043, 0.697273, -0.050234,
		35.582714, 37.548943, 50.500530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275093, 37.188503, 51.255291>,  <35.082184, 37.060852, 50.535690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275093, 37.188503, 51.255291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.391121, 37.500156, 51.033005>,  <35.460735, 37.687149, 50.899635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.391121, 37.500156, 51.033005>,  <35.275093, 37.188503, 51.255291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391121, 37.500156, 51.033005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505595, 0.617787, 0.602256,
		0.812548, 0.106270, 0.573125,
		0.290067, 0.779131, -0.555711,
		35.478142, 37.733894, 50.866291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459263, 37.652351, 51.766834>,  <35.275093, 37.188503, 51.255291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459263, 37.652351, 51.766834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.371349, 37.853134, 51.432236>,  <35.318600, 37.973606, 51.231476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.371349, 37.853134, 51.432236>,  <35.459263, 37.652351, 51.766834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371349, 37.853134, 51.432236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577516, 0.624121, 0.526258,
		0.786237, 0.598756, 0.152717,
		-0.219786, 0.501960, -0.836499,
		35.305412, 38.003723, 51.181286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540165, 38.367035, 51.832935>,  <35.459263, 37.652351, 51.766834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540165, 38.367035, 51.832935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.318924, 38.362099, 51.499729>,  <35.186180, 38.359135, 51.299805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.318924, 38.362099, 51.499729>,  <35.540165, 38.367035, 51.832935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318924, 38.362099, 51.499729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627940, 0.663291, 0.407108,
		0.547509, 0.748260, -0.374621,
		-0.553105, -0.012344, -0.833020,
		35.152992, 38.358395, 51.249825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412865, 39.108143, 51.717537>,  <35.540165, 38.367035, 51.832935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412865, 39.108143, 51.717537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.135704, 38.900208, 51.517677>,  <34.969406, 38.775448, 51.397762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.135704, 38.900208, 51.517677>,  <35.412865, 39.108143, 51.717537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135704, 38.900208, 51.517677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707565, 0.623529, 0.332510,
		0.138696, 0.583934, -0.799866,
		-0.692903, -0.519839, -0.499652,
		34.927834, 38.744255, 51.367783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954510, 39.666588, 51.472595>,  <35.412865, 39.108143, 51.717537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954510, 39.666588, 51.472595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.761646, 39.317562, 51.441223>,  <34.645927, 39.108147, 51.422401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.761646, 39.317562, 51.441223>,  <34.954510, 39.666588, 51.472595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761646, 39.317562, 51.441223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811597, 0.411157, 0.415043,
		-0.329907, 0.263767, -0.906415,
		-0.482154, -0.872569, -0.078429,
		34.617001, 39.055790, 51.417694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312515, 39.825378, 51.281395>,  <34.954510, 39.666588, 51.472595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312515, 39.825378, 51.281395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.263062, 39.457783, 51.431152>,  <34.233387, 39.237225, 51.521008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.263062, 39.457783, 51.431152>,  <34.312515, 39.825378, 51.281395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263062, 39.457783, 51.431152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848226, 0.293678, 0.440756,
		-0.515002, -0.263076, -0.815821,
		-0.123636, -0.918991, 0.374392,
		34.225971, 39.182087, 51.543468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652405, 39.705643, 51.194218>,  <34.312515, 39.825378, 51.281395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652405, 39.705643, 51.194218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.774376, 39.447979, 51.474812>,  <33.847561, 39.293381, 51.643169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.774376, 39.447979, 51.474812>,  <33.652405, 39.705643, 51.194218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774376, 39.447979, 51.474812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796429, 0.231412, 0.558703,
		-0.522224, -0.729049, -0.442460,
		0.304932, -0.644156, 0.701484,
		33.865856, 39.254734, 51.685257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129372, 39.341095, 51.248772>,  <33.652405, 39.705643, 51.194218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129372, 39.341095, 51.248772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.304264, 39.236729, 51.593040>,  <33.409199, 39.174107, 51.799603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.304264, 39.236729, 51.593040>,  <33.129372, 39.341095, 51.248772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304264, 39.236729, 51.593040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804566, 0.314152, 0.503966,
		-0.401875, -0.912814, -0.072569,
		0.437229, -0.260918, 0.860670,
		33.435432, 39.158455, 51.851242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649487, 38.873093, 51.585213>,  <33.129372, 39.341095, 51.248772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649487, 38.873093, 51.585213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.895485, 39.051346, 51.845428>,  <33.043083, 39.158298, 52.001556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.895485, 39.051346, 51.845428>,  <32.649487, 38.873093, 51.585213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895485, 39.051346, 51.845428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787348, 0.301817, 0.537578,
		0.043218, -0.842805, 0.536481,
		0.614992, 0.445631, 0.650537,
		33.079983, 39.185036, 52.040588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296757, 38.666164, 52.315830>,  <32.649487, 38.873093, 51.585213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296757, 38.666164, 52.315830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.524094, 38.993629, 52.348770>,  <32.660496, 39.190109, 52.368534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.524094, 38.993629, 52.348770>,  <32.296757, 38.666164, 52.315830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524094, 38.993629, 52.348770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809223, 0.538065, 0.235890,
		0.148802, -0.200708, 0.968284,
		0.568345, 0.818659, 0.082352,
		32.694595, 39.239227, 52.373474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047188, 38.937263, 52.956173>,  <32.296757, 38.666164, 52.315830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047188, 38.937263, 52.956173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.244011, 39.231094, 52.769295>,  <32.362106, 39.407394, 52.657169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.244011, 39.231094, 52.769295>,  <32.047188, 38.937263, 52.956173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244011, 39.231094, 52.769295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618501, 0.672649, 0.406202,
		0.612645, 0.089084, 0.785322,
		0.492060, 0.734580, -0.467194,
		32.391628, 39.451469, 52.629135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231461, 39.460690, 53.524952>,  <32.047188, 38.937263, 52.956173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231461, 39.460690, 53.524952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.264580, 39.643536, 53.170734>,  <32.284451, 39.753242, 52.958202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.264580, 39.643536, 53.170734>,  <32.231461, 39.460690, 53.524952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264580, 39.643536, 53.170734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536146, 0.769474, 0.347070,
		0.840055, 0.446045, 0.308792,
		0.082799, 0.457115, -0.885545,
		32.289421, 39.780670, 52.905071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459587, 40.124607, 53.648758>,  <32.231461, 39.460690, 53.524952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459587, 40.124607, 53.648758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.265949, 40.142883, 53.299229>,  <32.149765, 40.153851, 53.089512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.265949, 40.142883, 53.299229>,  <32.459587, 40.124607, 53.648758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265949, 40.142883, 53.299229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557417, 0.753679, 0.348216,
		0.674492, 0.655652, -0.339382,
		-0.484094, 0.045691, -0.873822,
		32.120720, 40.156590, 53.037083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473717, 40.826263, 53.554638>,  <32.459587, 40.124607, 53.648758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473717, 40.826263, 53.554638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.183609, 40.671707, 53.326714>,  <32.009544, 40.578972, 53.189960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.183609, 40.671707, 53.326714>,  <32.473717, 40.826263, 53.554638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183609, 40.671707, 53.326714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603638, 0.754893, 0.256433,
		0.331061, 0.529942, -0.780743,
		-0.725272, -0.386392, -0.569809,
		31.966028, 40.555790, 53.155769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120140, 41.453373, 53.399143>,  <32.473717, 40.826263, 53.554638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120140, 41.453373, 53.399143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.876162, 41.147274, 53.316811>,  <31.729774, 40.963615, 53.267410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.876162, 41.147274, 53.316811>,  <32.120140, 41.453373, 53.399143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876162, 41.147274, 53.316811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777228, 0.527044, 0.343716,
		-0.154546, 0.369624, -0.916239,
		-0.609944, -0.765246, -0.205830,
		31.693178, 40.917702, 53.255062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541353, 41.764675, 53.325043>,  <32.120140, 41.453373, 53.399143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541353, 41.764675, 53.325043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.421785, 41.388084, 53.387348>,  <31.350044, 41.162128, 53.424732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.421785, 41.388084, 53.387348>,  <31.541353, 41.764675, 53.325043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421785, 41.388084, 53.387348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870694, 0.335884, 0.359269,
		-0.390562, -0.028227, -0.920144,
		-0.298920, -0.941480, 0.155761,
		31.332109, 41.105640, 53.434078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.914253, 41.682529, 53.039337>,  <31.541353, 41.764675, 53.325043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.914253, 41.682529, 53.039337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.962271, 41.413174, 53.331131>,  <30.991081, 41.251560, 53.506207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.962271, 41.413174, 53.331131>,  <30.914253, 41.682529, 53.039337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.962271, 41.413174, 53.331131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895960, 0.243005, 0.371757,
		-0.427604, -0.698213, -0.574155,
		0.120043, -0.673385, 0.729481,
		30.998283, 41.211159, 53.549976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
