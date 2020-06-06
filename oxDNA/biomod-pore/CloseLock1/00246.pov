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
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
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
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.406263, 34.585911, 35.135994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.453964, 34.967579, 35.026199>,  <24.482584, 35.196579, 34.960323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.453964, 34.967579, 35.026199>,  <24.406263, 34.585911, 35.135994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.453964, 34.967579, 35.026199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904663, -0.218334, -0.365945,
		-0.409102, -0.204675, -0.889238,
		0.119251, 0.954169, -0.274483,
		24.489740, 35.253830, 34.943855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.582758, 34.591621, 34.443890>,  <24.406263, 34.585911, 35.135994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.582758, 34.591621, 34.443890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.716135, 34.926167, 34.617928>,  <24.796162, 35.126896, 34.722351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.716135, 34.926167, 34.617928>,  <24.582758, 34.591621, 34.443890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.716135, 34.926167, 34.617928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848410, -0.064953, -0.525339,
		-0.411115, 0.544311, -0.731239,
		0.333444, 0.836365, 0.435096,
		24.816168, 35.177074, 34.748455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.631554, 35.143726, 33.954559>,  <24.582758, 34.591621, 34.443890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.631554, 35.143726, 33.954559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.918350, 35.145359, 34.233387>,  <25.090429, 35.146339, 34.400684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.918350, 35.145359, 34.233387>,  <24.631554, 35.143726, 33.954559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.918350, 35.145359, 34.233387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666295, -0.297900, -0.683598,
		0.204868, 0.954588, -0.216310,
		0.716994, 0.004079, 0.697068,
		25.133448, 35.146584, 34.442509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.254452, 35.537838, 33.700970>,  <24.631554, 35.143726, 33.954559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.254452, 35.537838, 33.700970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.352602, 35.274990, 33.986061>,  <25.411491, 35.117279, 34.157116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.352602, 35.274990, 33.986061>,  <25.254452, 35.537838, 33.700970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.352602, 35.274990, 33.986061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651506, -0.432640, -0.623187,
		0.717866, 0.617260, 0.321962,
		0.245375, -0.657124, 0.712726,
		25.426214, 35.077854, 34.199879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.952391, 35.543465, 33.937668>,  <25.254452, 35.537838, 33.700970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.952391, 35.543465, 33.937668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.825031, 35.167816, 33.989311>,  <25.748615, 34.942425, 34.020298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.825031, 35.167816, 33.989311>,  <25.952391, 35.543465, 33.937668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.825031, 35.167816, 33.989311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834139, -0.342262, -0.432514,
		0.450373, -0.030018, 0.892336,
		-0.318396, -0.939125, 0.129106,
		25.729513, 34.886078, 34.028042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.635803, 35.786098, 34.121300>,  <25.952391, 35.543465, 33.937668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.635803, 35.786098, 34.121300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.020311, 35.778191, 34.231258>,  <27.251017, 35.773445, 34.297234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.020311, 35.778191, 34.231258>,  <26.635803, 35.786098, 34.121300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.020311, 35.778191, 34.231258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269452, 0.142224, 0.952454,
		-0.057932, -0.989637, 0.131387,
		0.961270, -0.019775, 0.274899,
		27.308693, 35.772259, 34.313728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.610865, 35.388046, 34.772736>,  <26.635803, 35.786098, 34.121300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.610865, 35.388046, 34.772736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963085, 35.577335, 34.783295>,  <27.174417, 35.690907, 34.789631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963085, 35.577335, 34.783295>,  <26.610865, 35.388046, 34.772736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.963085, 35.577335, 34.783295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108355, 0.146780, 0.983217,
		0.461402, -0.868631, 0.180523,
		0.880549, 0.473219, 0.026396,
		27.227249, 35.719299, 34.791214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.982267, 35.243999, 35.500053>,  <26.610865, 35.388046, 34.772736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.982267, 35.243999, 35.500053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.127779, 35.579868, 35.338749>,  <27.215086, 35.781391, 35.241966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.127779, 35.579868, 35.338749>,  <26.982267, 35.243999, 35.500053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.127779, 35.579868, 35.338749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043204, 0.417244, 0.907767,
		0.930483, -0.347648, 0.115507,
		0.363778, 0.839671, -0.403258,
		27.236912, 35.831768, 35.217770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.572859, 35.450142, 36.010563>,  <26.982267, 35.243999, 35.500053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.572859, 35.450142, 36.010563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471039, 35.778248, 35.805676>,  <27.409946, 35.975113, 35.682743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471039, 35.778248, 35.805676>,  <27.572859, 35.450142, 36.010563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471039, 35.778248, 35.805676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082873, 0.546223, 0.833530,
		0.963503, 0.169724, -0.207018,
		-0.254548, 0.820264, -0.512222,
		27.394674, 36.024326, 35.652008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.088793, 35.926403, 36.111355>,  <27.572859, 35.450142, 36.010563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.088793, 35.926403, 36.111355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.783411, 36.165031, 36.012363>,  <27.600182, 36.308208, 35.952969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.783411, 36.165031, 36.012363>,  <28.088793, 35.926403, 36.111355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.783411, 36.165031, 36.012363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184297, 0.568464, 0.801800,
		0.619008, 0.566529, -0.543942,
		-0.763455, 0.596568, -0.247474,
		27.554375, 36.344002, 35.938122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.247326, 36.635033, 36.258064>,  <28.088793, 35.926403, 36.111355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.247326, 36.635033, 36.258064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.852135, 36.677933, 36.213531>,  <27.615019, 36.703671, 36.186813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.852135, 36.677933, 36.213531>,  <28.247326, 36.635033, 36.258064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.852135, 36.677933, 36.213531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017130, 0.639812, 0.768341,
		0.153635, 0.761012, -0.630283,
		-0.987979, 0.107247, -0.111333,
		27.555740, 36.710106, 36.180130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.131542, 37.304310, 36.269058>,  <28.247326, 36.635033, 36.258064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.131542, 37.304310, 36.269058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.777704, 37.143085, 36.362896>,  <27.565401, 37.046352, 36.419197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.777704, 37.143085, 36.362896>,  <28.131542, 37.304310, 36.269058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.777704, 37.143085, 36.362896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031114, 0.552920, 0.832653,
		-0.465318, 0.729263, -0.501652,
		-0.884597, -0.403057, 0.234594,
		27.512325, 37.022167, 36.433273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.819786, 37.842918, 36.510349>,  <28.131542, 37.304310, 36.269058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.819786, 37.842918, 36.510349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.600809, 37.534149, 36.639622>,  <27.469423, 37.348888, 36.717186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.600809, 37.534149, 36.639622>,  <27.819786, 37.842918, 36.510349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.600809, 37.534149, 36.639622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145412, 0.468063, 0.871649,
		-0.824114, 0.430182, -0.368483,
		-0.547441, -0.771920, 0.323184,
		27.436577, 37.302574, 36.736576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.382925, 38.177879, 36.959614>,  <27.819786, 37.842918, 36.510349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.382925, 38.177879, 36.959614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.366945, 37.788647, 37.050404>,  <27.357357, 37.555107, 37.104877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.366945, 37.788647, 37.050404>,  <27.382925, 38.177879, 36.959614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.366945, 37.788647, 37.050404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239391, 0.229862, 0.943322,
		-0.970101, -0.016649, -0.242130,
		-0.039951, -0.973081, 0.226975,
		27.354959, 37.496723, 37.118496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.692461, 37.906364, 37.292107>,  <27.382925, 38.177879, 36.959614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.692461, 37.906364, 37.292107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.988483, 37.664787, 37.410480>,  <27.166096, 37.519840, 37.481503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.988483, 37.664787, 37.410480>,  <26.692461, 37.906364, 37.292107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.988483, 37.664787, 37.410480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213057, 0.206829, 0.954897,
		-0.637908, -0.769726, 0.024391,
		0.740054, -0.603940, 0.295933,
		27.210499, 37.483604, 37.499260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.402777, 37.548229, 37.998150>,  <26.692461, 37.906364, 37.292107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.402777, 37.548229, 37.998150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.802197, 37.528709, 37.989017>,  <27.041847, 37.516998, 37.983536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.802197, 37.528709, 37.989017>,  <26.402777, 37.548229, 37.998150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.802197, 37.528709, 37.989017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031019, 0.174212, 0.984220,
		-0.044048, -0.983499, 0.175472,
		0.998548, -0.048796, -0.022834,
		27.101761, 37.514072, 37.982166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.641354, 37.221748, 38.621529>,  <26.402777, 37.548229, 37.998150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.641354, 37.221748, 38.621529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.972494, 37.406403, 38.494061>,  <27.171179, 37.517197, 38.417580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.972494, 37.406403, 38.494061>,  <26.641354, 37.221748, 38.621529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.972494, 37.406403, 38.494061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131541, 0.392491, 0.910301,
		0.545308, -0.795511, 0.264200,
		0.827851, 0.461641, -0.318671,
		27.220850, 37.544895, 38.398460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.118830, 37.040466, 39.177113>,  <26.641354, 37.221748, 38.621529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.118830, 37.040466, 39.177113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.277279, 37.339668, 38.964104>,  <27.372349, 37.519188, 38.836300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.277279, 37.339668, 38.964104>,  <27.118830, 37.040466, 39.177113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.277279, 37.339668, 38.964104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269881, 0.459494, 0.846185,
		0.877640, -0.478909, -0.019857,
		0.396122, 0.748005, -0.532519,
		27.396116, 37.564068, 38.804348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.866673, 37.124481, 39.408321>,  <27.118830, 37.040466, 39.177113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.866673, 37.124481, 39.408321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.768862, 37.481075, 39.255760>,  <27.710175, 37.695030, 39.164223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.768862, 37.481075, 39.255760>,  <27.866673, 37.124481, 39.408321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.768862, 37.481075, 39.255760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427784, 0.452179, 0.782646,
		0.870176, 0.028221, -0.491932,
		-0.244528, 0.891481, -0.381403,
		27.695503, 37.748520, 39.141338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.427170, 37.544922, 39.505074>,  <27.866673, 37.124481, 39.408321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.427170, 37.544922, 39.505074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.122955, 37.801380, 39.464062>,  <27.940426, 37.955254, 39.439453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.122955, 37.801380, 39.464062>,  <28.427170, 37.544922, 39.505074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.122955, 37.801380, 39.464062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281681, 0.468081, 0.837589,
		0.585011, 0.608138, -0.536592,
		-0.760538, 0.641147, -0.102532,
		27.894794, 37.993725, 39.433304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.684381, 38.195259, 39.585125>,  <28.427170, 37.544922, 39.505074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.684381, 38.195259, 39.585125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.291952, 38.223877, 39.657097>,  <28.056494, 38.241047, 39.700279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.291952, 38.223877, 39.657097>,  <28.684381, 38.195259, 39.585125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.291952, 38.223877, 39.657097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188667, 0.562355, 0.805085,
		-0.043584, 0.823795, -0.565210,
		-0.981073, 0.071548, 0.179933,
		27.997631, 38.245342, 39.711079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.525772, 38.953682, 39.686653>,  <28.684381, 38.195259, 39.585125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.525772, 38.953682, 39.686653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.218540, 38.762424, 39.857029>,  <28.034201, 38.647671, 39.959255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.218540, 38.762424, 39.857029>,  <28.525772, 38.953682, 39.686653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.218540, 38.762424, 39.857029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014465, 0.652045, 0.758042,
		-0.640188, 0.588400, -0.493908,
		-0.768082, -0.478145, 0.425943,
		27.988115, 38.618980, 39.984810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.050358, 39.510643, 39.799698>,  <28.525772, 38.953682, 39.686653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.050358, 39.510643, 39.799698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.944559, 39.212440, 40.044407>,  <27.881081, 39.033520, 40.191231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.944559, 39.212440, 40.044407>,  <28.050358, 39.510643, 39.799698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.944559, 39.212440, 40.044407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034910, 0.626543, 0.778605,
		-0.963755, 0.227295, -0.139693,
		-0.264497, -0.745507, 0.611769,
		27.865210, 38.988789, 40.227936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.456532, 39.709648, 40.195808>,  <28.050358, 39.510643, 39.799698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.456532, 39.709648, 40.195808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.646591, 39.413216, 40.385555>,  <27.760628, 39.235355, 40.499405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.646591, 39.413216, 40.385555>,  <27.456532, 39.709648, 40.195808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.646591, 39.413216, 40.385555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135381, 0.594269, 0.792790,
		-0.869428, -0.312474, 0.382695,
		0.475150, -0.741084, 0.474371,
		27.789137, 39.190891, 40.527866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.036121, 39.620693, 40.819592>,  <27.456532, 39.709648, 40.195808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.036121, 39.620693, 40.819592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.416466, 39.497128, 40.827984>,  <27.644672, 39.422989, 40.833019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.416466, 39.497128, 40.827984>,  <27.036121, 39.620693, 40.819592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.416466, 39.497128, 40.827984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189130, 0.633146, 0.750570,
		-0.245146, -0.709718, 0.660457,
		0.950859, -0.308912, 0.020985,
		27.701723, 39.404453, 40.834278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.283640, 39.249043, 41.428734>,  <27.036121, 39.620693, 40.819592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.283640, 39.249043, 41.428734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.559263, 39.475281, 41.247494>,  <27.724638, 39.611023, 41.138748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.559263, 39.475281, 41.247494>,  <27.283640, 39.249043, 41.428734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.559263, 39.475281, 41.247494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117670, 0.529609, 0.840040,
		0.715090, -0.632153, 0.298378,
		0.689058, 0.565594, -0.453103,
		27.765982, 39.644958, 41.111565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.920324, 39.194458, 41.797920>,  <27.283640, 39.249043, 41.428734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.920324, 39.194458, 41.797920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.909962, 39.552841, 41.620564>,  <27.903744, 39.767872, 41.514149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.909962, 39.552841, 41.620564>,  <27.920324, 39.194458, 41.797920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.909962, 39.552841, 41.620564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075794, 0.440501, 0.894547,
		0.996787, 0.056783, 0.056495,
		-0.025909, 0.895955, -0.443389,
		27.902189, 39.821629, 41.487545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.448307, 39.586945, 41.964443>,  <27.920324, 39.194458, 41.797920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.448307, 39.586945, 41.964443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592123, 39.719555, 42.313343>,  <28.678413, 39.799122, 42.522682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592123, 39.719555, 42.313343>,  <28.448307, 39.586945, 41.964443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.592123, 39.719555, 42.313343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121875, 0.910066, -0.396140,
		-0.925136, 0.248733, 0.286800,
		0.359540, 0.331530, 0.872249,
		28.699986, 39.819016, 42.575016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.997271, 39.940132, 42.362598>,  <28.448307, 39.586945, 41.964443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.997271, 39.940132, 42.362598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.340900, 40.110718, 42.475819>,  <28.547079, 40.213070, 42.543751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.340900, 40.110718, 42.475819>,  <27.997271, 39.940132, 42.362598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.340900, 40.110718, 42.475819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199605, 0.788335, -0.581967,
		-0.471328, 0.443454, 0.762363,
		0.859074, 0.426469, 0.283049,
		28.598623, 40.238659, 42.560734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.896400, 40.609482, 42.774593>,  <27.997271, 39.940132, 42.362598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.896400, 40.609482, 42.774593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234673, 40.595589, 42.561569>,  <28.437635, 40.587254, 42.433754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234673, 40.595589, 42.561569>,  <27.896400, 40.609482, 42.774593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234673, 40.595589, 42.561569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315440, 0.772389, -0.551283,
		0.430489, 0.634199, 0.642239,
		0.845681, -0.034734, -0.532557,
		28.488377, 40.585167, 42.401802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.252579, 41.201843, 42.918396>,  <27.896400, 40.609482, 42.774593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.252579, 41.201843, 42.918396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.356812, 41.060192, 42.559132>,  <28.419352, 40.975201, 42.343575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.356812, 41.060192, 42.559132>,  <28.252579, 41.201843, 42.918396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.356812, 41.060192, 42.559132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192893, 0.892444, -0.407843,
		0.945986, 0.279525, 0.164246,
		0.260583, -0.354132, -0.898158,
		28.434986, 40.953953, 42.289684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808611, 41.691425, 42.457397>,  <28.252579, 41.201843, 42.918396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808611, 41.691425, 42.457397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.520002, 41.482342, 42.275768>,  <28.346836, 41.356892, 42.166790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.520002, 41.482342, 42.275768>,  <28.808611, 41.691425, 42.457397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.520002, 41.482342, 42.275768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272658, 0.817314, -0.507597,
		0.636443, -0.242437, -0.732232,
		-0.721524, -0.522706, -0.454072,
		28.303545, 41.325531, 42.139545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.608957, 41.830120, 41.690479>,  <28.808611, 41.691425, 42.457397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.608957, 41.830120, 41.690479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.259689, 41.706139, 41.840946>,  <28.050129, 41.631752, 41.931225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.259689, 41.706139, 41.840946>,  <28.608957, 41.830120, 41.690479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.259689, 41.706139, 41.840946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479696, 0.683250, -0.550510,
		-0.086384, -0.661135, -0.745277,
		-0.873172, -0.309951, 0.376166,
		27.997738, 41.613152, 41.953796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633102, 42.271362, 40.939472>,  <28.608957, 41.830120, 41.690479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633102, 42.271362, 40.939472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.939529, 42.071983, 41.101799>,  <29.123386, 41.952354, 41.199196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.939529, 42.071983, 41.101799>,  <28.633102, 42.271362, 40.939472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939529, 42.071983, 41.101799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442297, -0.049322, -0.895511,
		0.466380, 0.865516, 0.182677,
		0.766070, -0.498446, 0.405818,
		29.169350, 41.922451, 41.223545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.383968, 42.331757, 40.652210>,  <28.633102, 42.271362, 40.939472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.383968, 42.331757, 40.652210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.375923, 41.968929, 40.820412>,  <29.371096, 41.751232, 40.921333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.375923, 41.968929, 40.820412>,  <29.383968, 42.331757, 40.652210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.375923, 41.968929, 40.820412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423373, -0.388747, -0.818310,
		0.905732, 0.161573, 0.391846,
		-0.020112, -0.907067, 0.420506,
		29.369890, 41.696808, 40.946564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.987938, 42.074959, 40.465733>,  <29.383968, 42.331757, 40.652210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.987938, 42.074959, 40.465733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.765211, 41.756214, 40.559513>,  <29.631575, 41.564968, 40.615784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.765211, 41.756214, 40.559513>,  <29.987938, 42.074959, 40.465733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.765211, 41.756214, 40.559513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301044, -0.456667, -0.837155,
		0.774163, -0.395560, 0.494170,
		-0.556816, -0.796861, 0.234454,
		29.598166, 41.517155, 40.629848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.372320, 41.528275, 40.214890>,  <29.987938, 42.074959, 40.465733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.372320, 41.528275, 40.214890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993385, 41.410061, 40.264225>,  <29.766024, 41.339134, 40.293827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993385, 41.410061, 40.264225>,  <30.372320, 41.528275, 40.214890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993385, 41.410061, 40.264225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089928, -0.615157, -0.783259,
		0.307352, -0.730919, 0.609338,
		-0.947337, -0.295533, 0.123340,
		29.709185, 41.321400, 40.301228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.342449, 40.731510, 40.305168>,  <30.372320, 41.528275, 40.214890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.342449, 40.731510, 40.305168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.990414, 40.858974, 40.164371>,  <29.779192, 40.935452, 40.079891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.990414, 40.858974, 40.164371>,  <30.342449, 40.731510, 40.305168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.990414, 40.858974, 40.164371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001191, -0.742817, -0.669494,
		-0.474810, -0.588794, 0.654123,
		-0.880087, 0.318662, -0.351995,
		29.726387, 40.954575, 40.058773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.914818, 40.041004, 40.265263>,  <30.342449, 40.731510, 40.305168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.914818, 40.041004, 40.265263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.771765, 40.326157, 40.023968>,  <29.685932, 40.497250, 39.879189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.771765, 40.326157, 40.023968>,  <29.914818, 40.041004, 40.265263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.771765, 40.326157, 40.023968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014341, -0.650079, -0.759732,
		-0.933752, -0.263055, 0.242713,
		-0.357634, 0.712881, -0.603240,
		29.664474, 40.540020, 39.842995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.335796, 39.716240, 39.840927>,  <29.914818, 40.041004, 40.265263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.335796, 39.716240, 39.840927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.440174, 40.043953, 39.636700>,  <29.502802, 40.240582, 39.514164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.440174, 40.043953, 39.636700>,  <29.335796, 39.716240, 39.840927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.440174, 40.043953, 39.636700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017015, -0.524905, -0.850991,
		-0.965203, 0.230750, -0.123032,
		0.260946, 0.819286, -0.510566,
		29.518457, 40.289738, 39.483528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.903206, 39.612877, 39.369904>,  <29.335796, 39.716240, 39.840927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.903206, 39.612877, 39.369904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.148230, 39.878788, 39.198864>,  <29.295244, 40.038334, 39.096241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.148230, 39.878788, 39.198864>,  <28.903206, 39.612877, 39.369904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.148230, 39.878788, 39.198864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088846, -0.595452, -0.798463,
		-0.785417, 0.451114, -0.423812,
		0.612558, 0.664780, -0.427598,
		29.331997, 40.078220, 39.070583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.628332, 39.782433, 38.695774>,  <28.903206, 39.612877, 39.369904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.628332, 39.782433, 38.695774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.015205, 39.879143, 38.664528>,  <29.247330, 39.937168, 38.645779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.015205, 39.879143, 38.664528>,  <28.628332, 39.782433, 38.695774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.015205, 39.879143, 38.664528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052076, -0.489543, -0.870423,
		-0.248688, 0.837790, -0.486068,
		0.967183, 0.241776, -0.078114,
		29.305361, 39.951675, 38.641094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.753996, 40.114944, 38.022980>,  <28.628332, 39.782433, 38.695774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.753996, 40.114944, 38.022980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120739, 39.992764, 38.125797>,  <29.340784, 39.919453, 38.187489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120739, 39.992764, 38.125797>,  <28.753996, 40.114944, 38.022980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.120739, 39.992764, 38.125797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095745, -0.456828, -0.884388,
		0.387565, 0.835467, -0.389600,
		0.916857, -0.305455, 0.257042,
		29.395796, 39.901127, 38.202911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259647, 40.344555, 37.526527>,  <28.753996, 40.114944, 38.022980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.259647, 40.344555, 37.526527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.394632, 40.002995, 37.685001>,  <29.475624, 39.798058, 37.780087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.394632, 40.002995, 37.685001>,  <29.259647, 40.344555, 37.526527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.394632, 40.002995, 37.685001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154458, -0.364943, -0.918128,
		0.928580, 0.371029, 0.008737,
		0.337463, -0.853905, 0.396187,
		29.495871, 39.746822, 37.803856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835184, 40.117374, 37.065460>,  <29.259647, 40.344555, 37.526527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.835184, 40.117374, 37.065460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.765041, 39.798050, 37.295918>,  <29.722956, 39.606453, 37.434193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.765041, 39.798050, 37.295918>,  <29.835184, 40.117374, 37.065460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.765041, 39.798050, 37.295918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084454, -0.595254, -0.799087,
		0.980876, -0.091466, 0.171801,
		-0.175355, -0.798315, 0.576146,
		29.712435, 39.558556, 37.468761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389597, 39.584717, 36.843952>,  <29.835184, 40.117374, 37.065460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389597, 39.584717, 36.843952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109570, 39.391331, 37.054161>,  <29.941553, 39.275299, 37.180286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109570, 39.391331, 37.054161>,  <30.389597, 39.584717, 36.843952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109570, 39.391331, 37.054161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119316, -0.804792, -0.581441,
		0.704039, -0.344344, 0.621093,
		-0.700066, -0.483463, 0.525519,
		29.899549, 39.246292, 37.211819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680691, 38.958458, 36.997272>,  <30.389597, 39.584717, 36.843952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680691, 38.958458, 36.997272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.286978, 38.900764, 37.038040>,  <30.050751, 38.866150, 37.062500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.286978, 38.900764, 37.038040>,  <30.680691, 38.958458, 36.997272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.286978, 38.900764, 37.038040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050298, -0.782119, -0.621096,
		0.169291, -0.606207, 0.777080,
		-0.984282, -0.144231, 0.101915,
		29.991693, 38.857494, 37.068615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577864, 38.236389, 37.032967>,  <30.680691, 38.958458, 36.997272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.577864, 38.236389, 37.032967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224785, 38.379345, 36.910908>,  <30.012938, 38.465118, 36.837673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224785, 38.379345, 36.910908>,  <30.577864, 38.236389, 37.032967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.224785, 38.379345, 36.910908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095211, -0.771873, -0.628607,
		-0.460191, -0.525818, 0.715360,
		-0.882700, 0.357389, -0.305146,
		29.959974, 38.486561, 36.819363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.999395, 37.701801, 37.137436>,  <30.577864, 38.236389, 37.032967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.999395, 37.701801, 37.137436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.869255, 37.944592, 36.847404>,  <29.791172, 38.090263, 36.673386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.869255, 37.944592, 36.847404>,  <29.999395, 37.701801, 37.137436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.869255, 37.944592, 36.847404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085027, -0.744907, -0.661728,
		-0.941764, -0.276943, 0.190745,
		-0.325348, 0.606973, -0.725074,
		29.771650, 38.126682, 36.629883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.514757, 37.294621, 36.822865>,  <29.999395, 37.701801, 37.137436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.514757, 37.294621, 36.822865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560579, 37.577499, 36.543797>,  <29.588072, 37.747227, 36.376354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560579, 37.577499, 36.543797>,  <29.514757, 37.294621, 36.822865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560579, 37.577499, 36.543797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041253, -0.705077, -0.707930,
		-0.992560, 0.052316, -0.109945,
		0.114556, 0.707199, -0.697673,
		29.594946, 37.789658, 36.334496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.130606, 37.088928, 36.242989>,  <29.514757, 37.294621, 36.822865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.130606, 37.088928, 36.242989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392221, 37.344814, 36.081501>,  <29.549191, 37.498348, 35.984608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392221, 37.344814, 36.081501>,  <29.130606, 37.088928, 36.242989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.392221, 37.344814, 36.081501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128490, -0.619895, -0.774093,
		-0.745467, 0.454414, -0.487634,
		0.654041, 0.639717, -0.403723,
		29.588434, 37.536728, 35.960384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.910389, 37.114803, 35.596497>,  <29.130606, 37.088928, 36.242989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.910389, 37.114803, 35.596497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291838, 37.234177, 35.612186>,  <29.520708, 37.305801, 35.621601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291838, 37.234177, 35.612186>,  <28.910389, 37.114803, 35.596497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291838, 37.234177, 35.612186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230674, -0.640852, -0.732188,
		-0.193371, 0.707280, -0.679972,
		0.953623, 0.298436, 0.039229,
		29.577925, 37.323708, 35.623955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.209436, 37.311321, 34.846256>,  <28.910389, 37.114803, 35.596497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.209436, 37.311321, 34.846256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519760, 37.240097, 35.088387>,  <29.705954, 37.197365, 35.233665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519760, 37.240097, 35.088387>,  <29.209436, 37.311321, 34.846256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519760, 37.240097, 35.088387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294238, -0.746566, -0.596710,
		0.558164, 0.641041, -0.526800,
		0.775807, -0.178058, 0.605325,
		29.752502, 37.186680, 35.269985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.788431, 37.378620, 34.382912>,  <29.209436, 37.311321, 34.846256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.788431, 37.378620, 34.382912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.861015, 37.149734, 34.702824>,  <29.904566, 37.012405, 34.894772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.861015, 37.149734, 34.702824>,  <29.788431, 37.378620, 34.382912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.861015, 37.149734, 34.702824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218680, -0.769439, -0.600118,
		0.958776, 0.283793, -0.014490,
		0.181459, -0.572210, 0.799780,
		29.915453, 36.978073, 34.942757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494549, 37.044098, 34.272610>,  <29.788431, 37.378620, 34.382912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494549, 37.044098, 34.272610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313818, 36.815090, 34.546272>,  <30.205379, 36.677685, 34.710472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313818, 36.815090, 34.546272>,  <30.494549, 37.044098, 34.272610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.313818, 36.815090, 34.546272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247875, -0.817275, -0.520212,
		0.856978, -0.065459, 0.511179,
		-0.451827, -0.572518, 0.684160,
		30.178270, 36.643333, 34.751522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965290, 36.510712, 34.444054>,  <30.494549, 37.044098, 34.272610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965290, 36.510712, 34.444054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605883, 36.376827, 34.557640>,  <30.390238, 36.296497, 34.625790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605883, 36.376827, 34.557640>,  <30.965290, 36.510712, 34.444054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.605883, 36.376827, 34.557640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211957, -0.897364, -0.387055,
		0.384368, -0.287588, 0.877242,
		-0.898518, -0.334710, 0.283962,
		30.336327, 36.276413, 34.642830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041779, 35.823200, 34.710949>,  <30.965290, 36.510712, 34.444054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.041779, 35.823200, 34.710949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.662792, 35.876156, 34.594482>,  <30.435400, 35.907928, 34.524601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.662792, 35.876156, 34.594482>,  <31.041779, 35.823200, 34.710949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.662792, 35.876156, 34.594482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141036, -0.644115, -0.751814,
		-0.287079, -0.753384, 0.591606,
		-0.947467, 0.132392, -0.291167,
		30.378551, 35.915874, 34.507133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466915, 35.354412, 34.712231>,  <31.041779, 35.823200, 34.710949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466915, 35.354412, 34.712231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.069479, 35.388912, 34.741463>,  <30.831017, 35.409611, 34.759003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.069479, 35.388912, 34.741463>,  <31.466915, 35.354412, 34.712231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.069479, 35.388912, 34.741463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070481, -0.978055, 0.196067,
		0.088386, 0.189659, 0.977864,
		-0.993590, 0.086250, 0.073079,
		30.771402, 35.414787, 34.763386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643057, 35.121655, 35.459312>,  <31.466915, 35.354412, 34.712231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643057, 35.121655, 35.459312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495321, 34.770741, 35.581924>,  <31.406679, 34.560192, 35.655491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495321, 34.770741, 35.581924>,  <31.643057, 35.121655, 35.459312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495321, 34.770741, 35.581924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763695, 0.474480, 0.437766,
		-0.529489, -0.072414, -0.845221,
		-0.369340, -0.877283, 0.306534,
		31.384520, 34.507557, 35.673885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264688, 35.624424, 35.941322>,  <31.643057, 35.121655, 35.459312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264688, 35.624424, 35.941322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.061054, 35.948505, 36.057529>,  <30.938873, 36.142956, 36.127254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.061054, 35.948505, 36.057529>,  <31.264688, 35.624424, 35.941322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061054, 35.948505, 36.057529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859528, 0.496277, 0.122153,
		-0.045207, 0.311892, -0.949041,
		-0.509085, 0.810205, 0.290515,
		30.908329, 36.191566, 36.144684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712170, 36.269520, 35.718243>,  <31.264688, 35.624424, 35.941322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712170, 36.269520, 35.718243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460793, 36.369999, 36.012714>,  <31.309967, 36.430286, 36.189400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460793, 36.369999, 36.012714>,  <31.712170, 36.269520, 35.718243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460793, 36.369999, 36.012714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734836, 0.502106, 0.455967,
		-0.255105, 0.827521, -0.500131,
		-0.628441, 0.251194, 0.736182,
		31.272261, 36.445358, 36.233570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934013, 36.946548, 35.889275>,  <31.712170, 36.269520, 35.718243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934013, 36.946548, 35.889275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705635, 36.828457, 36.195702>,  <31.568607, 36.757603, 36.379559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705635, 36.828457, 36.195702>,  <31.934013, 36.946548, 35.889275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705635, 36.828457, 36.195702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427400, 0.689807, 0.584376,
		-0.700962, 0.661066, -0.267664,
		-0.570947, -0.295226, 0.766068,
		31.534351, 36.739887, 36.425522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577703, 37.546043, 36.208771>,  <31.934013, 36.946548, 35.889275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577703, 37.546043, 36.208771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.651863, 37.272320, 36.490864>,  <31.696358, 37.108086, 36.660118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.651863, 37.272320, 36.490864>,  <31.577703, 37.546043, 36.208771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651863, 37.272320, 36.490864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558124, 0.664008, 0.497584,
		-0.808780, 0.301355, 0.505035,
		0.185398, -0.684308, 0.705230,
		31.707483, 37.067028, 36.702435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364758, 37.713440, 36.911648>,  <31.577703, 37.546043, 36.208771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364758, 37.713440, 36.911648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.710114, 37.512264, 36.895630>,  <31.917328, 37.391560, 36.886021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.710114, 37.512264, 36.895630>,  <31.364758, 37.713440, 36.911648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710114, 37.512264, 36.895630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493577, 0.825521, 0.273673,
		-0.104585, -0.256052, 0.960989,
		0.863391, -0.502944, -0.040044,
		31.969131, 37.361382, 36.883617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744658, 37.857300, 37.528934>,  <31.364758, 37.713440, 36.911648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744658, 37.857300, 37.528934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018192, 37.705395, 37.279728>,  <32.182312, 37.614250, 37.130203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018192, 37.705395, 37.279728>,  <31.744658, 37.857300, 37.528934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018192, 37.705395, 37.279728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675348, 0.652645, 0.343453,
		0.276177, -0.655618, 0.702774,
		0.683836, -0.379763, -0.623015,
		32.223343, 37.591465, 37.092823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329369, 37.659508, 37.925018>,  <31.744658, 37.857300, 37.528934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329369, 37.659508, 37.925018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480927, 37.704227, 37.557552>,  <32.571861, 37.731060, 37.337074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480927, 37.704227, 37.557552>,  <32.329369, 37.659508, 37.925018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480927, 37.704227, 37.557552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775388, 0.503535, 0.381085,
		0.505194, -0.856708, 0.104074,
		0.378883, 0.111824, -0.918664,
		32.594593, 37.737770, 37.281956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027988, 37.423382, 38.010586>,  <32.329369, 37.659508, 37.925018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027988, 37.423382, 38.010586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021862, 37.640743, 37.674850>,  <33.018188, 37.771160, 37.473412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021862, 37.640743, 37.674850>,  <33.027988, 37.423382, 38.010586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021862, 37.640743, 37.674850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854374, 0.443191, 0.271341,
		0.519433, -0.712950, -0.471054,
		-0.015314, 0.543400, -0.839334,
		33.017269, 37.803764, 37.423050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633472, 37.232338, 37.640240>,  <33.027988, 37.423382, 38.010586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633472, 37.232338, 37.640240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535442, 37.579731, 37.467880>,  <33.476624, 37.788166, 37.364464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535442, 37.579731, 37.467880>,  <33.633472, 37.232338, 37.640240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535442, 37.579731, 37.467880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925751, 0.341645, 0.162060,
		0.287960, -0.359183, -0.887731,
		-0.245080, 0.868485, -0.430894,
		33.461918, 37.840275, 37.338612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065193, 37.370502, 37.112690>,  <33.633472, 37.232338, 37.640240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065193, 37.370502, 37.112690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952812, 37.741390, 37.211746>,  <33.885384, 37.963924, 37.271179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952812, 37.741390, 37.211746>,  <34.065193, 37.370502, 37.112690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952812, 37.741390, 37.211746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951589, 0.235613, 0.197397,
		0.124682, 0.291115, -0.948528,
		-0.280951, 0.927221, 0.247645,
		33.868526, 38.019558, 37.286041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510513, 37.946316, 36.780865>,  <34.065193, 37.370502, 37.112690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510513, 37.946316, 36.780865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348637, 38.092335, 37.116238>,  <34.251511, 38.179947, 37.317459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348637, 38.092335, 37.116238>,  <34.510513, 37.946316, 36.780865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348637, 38.092335, 37.116238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891415, 0.361988, 0.272662,
		-0.203968, 0.857733, -0.471902,
		-0.404694, 0.365046, 0.838430,
		34.227230, 38.201847, 37.367767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956192, 38.458633, 36.929527>,  <34.510513, 37.946316, 36.780865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956192, 38.458633, 36.929527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763737, 38.430668, 37.279068>,  <34.648262, 38.413887, 37.488792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763737, 38.430668, 37.279068>,  <34.956192, 38.458633, 36.929527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763737, 38.430668, 37.279068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827560, 0.292642, 0.479067,
		-0.289221, 0.953663, -0.082940,
		-0.481140, -0.069918, 0.873851,
		34.619396, 38.409691, 37.541222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184437, 39.069332, 37.240444>,  <34.956192, 38.458633, 36.929527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184437, 39.069332, 37.240444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032120, 38.840019, 37.530643>,  <34.940731, 38.702431, 37.704762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032120, 38.840019, 37.530643>,  <35.184437, 39.069332, 37.240444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032120, 38.840019, 37.530643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811436, 0.169031, 0.559464,
		-0.443363, 0.801732, 0.400818,
		-0.380789, -0.573284, 0.725496,
		34.917881, 38.668034, 37.748291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975666, 39.508293, 37.805393>,  <35.184437, 39.069332, 37.240444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975666, 39.508293, 37.805393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013691, 39.158085, 37.994884>,  <35.036507, 38.947960, 38.108582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013691, 39.158085, 37.994884>,  <34.975666, 39.508293, 37.805393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013691, 39.158085, 37.994884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636785, 0.419270, 0.647084,
		-0.765158, 0.240150, 0.597378,
		0.095066, -0.875523, 0.473732,
		35.042210, 38.895428, 38.137005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833683, 39.681763, 38.509109>,  <34.975666, 39.508293, 37.805393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833683, 39.681763, 38.509109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035286, 39.337227, 38.534641>,  <35.156246, 39.130505, 38.549961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035286, 39.337227, 38.534641>,  <34.833683, 39.681763, 38.509109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035286, 39.337227, 38.534641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318992, 0.254318, 0.912999,
		-0.802635, -0.439793, 0.402937,
		0.504004, -0.861339, 0.063834,
		35.186489, 39.078827, 38.553791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790928, 39.422703, 39.205391>,  <34.833683, 39.681763, 38.509109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790928, 39.422703, 39.205391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091663, 39.199120, 39.065502>,  <35.272106, 39.064968, 38.981567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091663, 39.199120, 39.065502>,  <34.790928, 39.422703, 39.205391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091663, 39.199120, 39.065502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449517, 0.046500, 0.892061,
		-0.482364, -0.827890, 0.286222,
		0.751837, -0.558960, -0.349721,
		35.317215, 39.031433, 38.960587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866749, 38.945225, 39.652149>,  <34.790928, 39.422703, 39.205391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866749, 38.945225, 39.652149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227642, 38.964531, 39.480732>,  <35.444176, 38.976112, 39.377880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227642, 38.964531, 39.480732>,  <34.866749, 38.945225, 39.652149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227642, 38.964531, 39.480732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427472, 0.031259, 0.903488,
		0.057013, -0.998345, 0.007566,
		0.902229, 0.048276, -0.428547,
		35.498310, 38.979012, 39.352169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272526, 38.402954, 39.856785>,  <34.866749, 38.945225, 39.652149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272526, 38.402954, 39.856785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525517, 38.700058, 39.768902>,  <35.677311, 38.878323, 39.716171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525517, 38.700058, 39.768902>,  <35.272526, 38.402954, 39.856785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525517, 38.700058, 39.768902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366491, -0.037079, 0.929682,
		0.682387, -0.668527, -0.295667,
		0.632481, 0.742763, -0.219707,
		35.715260, 38.922886, 39.702991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870224, 38.195808, 40.093155>,  <35.272526, 38.402954, 39.856785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870224, 38.195808, 40.093155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893635, 38.595108, 40.089844>,  <35.907681, 38.834690, 40.087856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893635, 38.595108, 40.089844>,  <35.870224, 38.195808, 40.093155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893635, 38.595108, 40.089844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368252, -0.013884, 0.929623,
		0.927882, -0.057460, -0.368420,
		0.058531, 0.998251, -0.008277,
		35.911194, 38.894585, 40.087360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455299, 38.336967, 40.377525>,  <35.870224, 38.195808, 40.093155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455299, 38.336967, 40.377525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260365, 38.685101, 40.405899>,  <36.143402, 38.893978, 40.422924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260365, 38.685101, 40.405899>,  <36.455299, 38.336967, 40.377525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260365, 38.685101, 40.405899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330897, 0.108882, 0.937364,
		0.808091, 0.480284, -0.341051,
		-0.487336, 0.870328, 0.070938,
		36.114162, 38.946198, 40.427181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936062, 38.973846, 40.538986>,  <36.455299, 38.336967, 40.377525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936062, 38.973846, 40.538986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560062, 39.015999, 40.668785>,  <36.334461, 39.041290, 40.746662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560062, 39.015999, 40.668785>,  <36.936062, 38.973846, 40.538986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560062, 39.015999, 40.668785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340437, 0.227111, 0.912427,
		0.022459, 0.968150, -0.249361,
		-0.939999, 0.105384, 0.324494,
		36.278061, 39.047615, 40.766132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917206, 39.567760, 40.983353>,  <36.936062, 38.973846, 40.538986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917206, 39.567760, 40.983353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587002, 39.391399, 41.124287>,  <36.388878, 39.285583, 41.208847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587002, 39.391399, 41.124287>,  <36.917206, 39.567760, 40.983353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587002, 39.391399, 41.124287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230497, 0.306474, 0.923550,
		-0.515176, 0.843611, -0.151371,
		-0.825509, -0.440900, 0.352337,
		36.339348, 39.259129, 41.229988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806812, 39.940762, 41.603798>,  <36.917206, 39.567760, 40.983353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806812, 39.940762, 41.603798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553139, 39.635216, 41.651680>,  <36.400936, 39.451889, 41.680408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553139, 39.635216, 41.651680>,  <36.806812, 39.940762, 41.603798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553139, 39.635216, 41.651680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064588, 0.206612, 0.976289,
		-0.770483, 0.611412, -0.180365,
		-0.634181, -0.763863, 0.119701,
		36.362885, 39.406055, 41.687592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255890, 40.240032, 41.972412>,  <36.806812, 39.940762, 41.603798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255890, 40.240032, 41.972412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189636, 39.852657, 42.046921>,  <36.149883, 39.620232, 42.091625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189636, 39.852657, 42.046921>,  <36.255890, 40.240032, 41.972412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189636, 39.852657, 42.046921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298196, 0.229223, 0.926572,
		-0.940023, 0.097929, -0.326752,
		-0.165638, -0.968435, 0.186273,
		36.139946, 39.562126, 42.102802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530670, 40.162212, 42.224831>,  <36.255890, 40.240032, 41.972412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530670, 40.162212, 42.224831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780319, 39.880463, 42.360077>,  <35.930111, 39.711411, 42.441223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780319, 39.880463, 42.360077>,  <35.530670, 40.162212, 42.224831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780319, 39.880463, 42.360077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312174, 0.171894, 0.934345,
		-0.716250, -0.688699, -0.112605,
		0.624127, -0.704376, 0.338113,
		35.967556, 39.669151, 42.461510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068680, 39.682919, 42.602188>,  <35.530670, 40.162212, 42.224831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068680, 39.682919, 42.602188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442421, 39.582298, 42.703156>,  <35.666664, 39.521927, 42.763737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442421, 39.582298, 42.703156>,  <35.068680, 39.682919, 42.602188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442421, 39.582298, 42.703156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209804, 0.184247, 0.960227,
		-0.288052, -0.950145, 0.119375,
		0.934349, -0.251550, 0.252417,
		35.722725, 39.506832, 42.778881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032322, 39.130249, 43.105621>,  <35.068680, 39.682919, 42.602188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032322, 39.130249, 43.105621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390888, 39.303036, 43.145317>,  <35.606030, 39.406708, 43.169132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390888, 39.303036, 43.145317>,  <35.032322, 39.130249, 43.105621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390888, 39.303036, 43.145317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120264, 0.021564, 0.992508,
		0.426588, -0.901633, 0.071281,
		0.896415, 0.431964, 0.099235,
		35.659813, 39.432625, 43.175087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263050, 38.860901, 43.698368>,  <35.032322, 39.130249, 43.105621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263050, 38.860901, 43.698368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509079, 39.174465, 43.664494>,  <35.656696, 39.362602, 43.644169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509079, 39.174465, 43.664494>,  <35.263050, 38.860901, 43.698368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509079, 39.174465, 43.664494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002293, 0.109180, 0.994019,
		0.788469, -0.611198, 0.068951,
		0.615071, 0.783911, -0.084683,
		35.693600, 39.409637, 43.639088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587395, 38.787380, 44.250778>,  <35.263050, 38.860901, 43.698368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587395, 38.787380, 44.250778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675716, 39.163658, 44.147755>,  <35.728710, 39.389423, 44.085941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675716, 39.163658, 44.147755>,  <35.587395, 38.787380, 44.250778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675716, 39.163658, 44.147755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143404, 0.229896, 0.962592,
		0.964717, -0.249482, -0.084137,
		0.220807, 0.940695, -0.257562,
		35.741959, 39.445866, 44.070488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139561, 38.977936, 44.722847>,  <35.587395, 38.787380, 44.250778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139561, 38.977936, 44.722847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989353, 39.322292, 44.585533>,  <35.899227, 39.528908, 44.503143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989353, 39.322292, 44.585533>,  <36.139561, 38.977936, 44.722847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989353, 39.322292, 44.585533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097642, 0.405084, 0.909051,
		0.921656, 0.307850, -0.236177,
		-0.375522, 0.860892, -0.343289,
		35.876698, 39.580559, 44.482548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520950, 39.459908, 45.117069>,  <36.139561, 38.977936, 44.722847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520950, 39.459908, 45.117069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196236, 39.659718, 44.996086>,  <36.001408, 39.779602, 44.923496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196236, 39.659718, 44.996086>,  <36.520950, 39.459908, 45.117069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196236, 39.659718, 44.996086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031806, 0.479350, 0.877047,
		0.583088, 0.721595, -0.373242,
		-0.811786, 0.499524, -0.302454,
		35.952702, 39.809574, 44.905350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646049, 40.129543, 45.369549>,  <36.520950, 39.459908, 45.117069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646049, 40.129543, 45.369549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.249767, 40.107925, 45.319618>,  <36.011997, 40.094955, 45.289661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.249767, 40.107925, 45.319618>,  <36.646049, 40.129543, 45.369549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249767, 40.107925, 45.319618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135702, 0.455384, 0.879892,
		0.009290, 0.888653, -0.458486,
		-0.990706, -0.054043, -0.124822,
		35.952557, 40.091713, 45.282173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348511, 40.768520, 45.659218>,  <36.646049, 40.129543, 45.369549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348511, 40.768520, 45.659218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022743, 40.537560, 45.636147>,  <35.827282, 40.398983, 45.622303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022743, 40.537560, 45.636147>,  <36.348511, 40.768520, 45.659218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022743, 40.537560, 45.636147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321139, 0.365697, 0.873576,
		-0.483315, 0.729979, -0.483258,
		-0.814418, -0.577405, -0.057677,
		35.778419, 40.364338, 45.618843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756664, 41.182766, 45.680393>,  <36.348511, 40.768520, 45.659218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756664, 41.182766, 45.680393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662533, 40.819527, 45.818943>,  <35.606056, 40.601582, 45.902073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662533, 40.819527, 45.818943>,  <35.756664, 41.182766, 45.680393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662533, 40.819527, 45.818943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343872, 0.411123, 0.844234,
		-0.909052, 0.079561, -0.409018,
		-0.235324, -0.908102, 0.346373,
		35.591934, 40.547096, 45.922855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252304, 41.199024, 46.016956>,  <35.756664, 41.182766, 45.680393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252304, 41.199024, 46.016956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400883, 40.873852, 46.196362>,  <35.490028, 40.678749, 46.304005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400883, 40.873852, 46.196362>,  <35.252304, 41.199024, 46.016956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400883, 40.873852, 46.196362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179718, 0.410985, 0.893752,
		-0.910894, -0.412587, 0.006560,
		0.371447, -0.812935, 0.448513,
		35.512318, 40.629971, 46.330917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664391, 40.971157, 46.562683>,  <35.252304, 41.199024, 46.016956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664391, 40.971157, 46.562683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019947, 40.816402, 46.660820>,  <35.233280, 40.723549, 46.719704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019947, 40.816402, 46.660820>,  <34.664391, 40.971157, 46.562683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019947, 40.816402, 46.660820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029894, 0.485421, 0.873769,
		-0.457143, -0.784020, 0.419921,
		0.888891, -0.386884, 0.245344,
		35.286613, 40.700336, 46.734425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588299, 40.655251, 47.172298>,  <34.664391, 40.971157, 46.562683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588299, 40.655251, 47.172298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972546, 40.754757, 47.122780>,  <35.203094, 40.814461, 47.093071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972546, 40.754757, 47.122780>,  <34.588299, 40.655251, 47.172298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972546, 40.754757, 47.122780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024163, 0.518621, 0.854663,
		0.276811, -0.818015, 0.504209,
		0.960621, 0.248763, -0.123794,
		35.260731, 40.829384, 47.085640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704479, 41.043812, 47.685040>,  <34.588299, 40.655251, 47.172298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704479, 41.043812, 47.685040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076160, 41.051403, 47.537403>,  <35.299168, 41.055958, 47.448822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076160, 41.051403, 47.537403>,  <34.704479, 41.043812, 47.685040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076160, 41.051403, 47.537403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305190, 0.523855, 0.795258,
		0.208443, -0.851596, 0.480974,
		0.929199, 0.018977, -0.369092,
		35.354919, 41.057095, 47.426674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674648, 41.408596, 48.346252>,  <34.704479, 41.043812, 47.685040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674648, 41.408596, 48.346252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904293, 41.112209, 48.206898>,  <35.042080, 40.934380, 48.123287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904293, 41.112209, 48.206898>,  <34.674648, 41.408596, 48.346252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904293, 41.112209, 48.206898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485298, -0.034756, 0.873658,
		-0.659457, -0.670645, 0.339635,
		0.574110, -0.740964, -0.348382,
		35.076527, 40.889919, 48.102383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704914, 40.689049, 48.609592>,  <34.674648, 41.408596, 48.346252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704914, 40.689049, 48.609592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060326, 40.828133, 48.489845>,  <35.273571, 40.911583, 48.417999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060326, 40.828133, 48.489845>,  <34.704914, 40.689049, 48.609592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060326, 40.828133, 48.489845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276937, 0.113788, 0.954127,
		0.365822, -0.930672, 0.004810,
		0.888527, 0.347709, -0.299364,
		35.326885, 40.932446, 48.400036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306107, 40.292336, 48.976818>,  <34.704914, 40.689049, 48.609592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306107, 40.292336, 48.976818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468243, 40.638187, 48.858082>,  <35.565525, 40.845699, 48.786839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468243, 40.638187, 48.858082>,  <35.306107, 40.292336, 48.976818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468243, 40.638187, 48.858082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533652, 0.039842, 0.844766,
		0.742235, -0.500830, -0.445261,
		0.405344, 0.864628, -0.296841,
		35.589848, 40.897575, 48.769028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942627, 40.255180, 49.228355>,  <35.306107, 40.292336, 48.976818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942627, 40.255180, 49.228355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925026, 40.652203, 49.182938>,  <35.914463, 40.890415, 49.155689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925026, 40.652203, 49.182938>,  <35.942627, 40.255180, 49.228355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925026, 40.652203, 49.182938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466920, 0.120908, 0.875994,
		0.883204, -0.014465, -0.468766,
		-0.044006, 0.992558, -0.113540,
		35.911823, 40.949970, 49.148876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574928, 40.447098, 49.231930>,  <35.942627, 40.255180, 49.228355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574928, 40.447098, 49.231930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362698, 40.771263, 49.331299>,  <36.235359, 40.965763, 49.390923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362698, 40.771263, 49.331299>,  <36.574928, 40.447098, 49.231930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362698, 40.771263, 49.331299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576079, 0.129775, 0.807026,
		0.621786, 0.571304, -0.535718,
		-0.530580, 0.810414, 0.248424,
		36.203526, 41.014389, 49.405827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115517, 40.834995, 49.292133>,  <36.574928, 40.447098, 49.231930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115517, 40.834995, 49.292133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789944, 40.988747, 49.466385>,  <36.594601, 41.080997, 49.570938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789944, 40.988747, 49.466385>,  <37.115517, 40.834995, 49.292133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789944, 40.988747, 49.466385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540796, 0.227298, 0.809861,
		0.212272, 0.894758, -0.392872,
		-0.813929, 0.384374, 0.435633,
		36.545765, 41.104057, 49.597076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170563, 41.545120, 49.644985>,  <37.115517, 40.834995, 49.292133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170563, 41.545120, 49.644985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862057, 41.425087, 49.869522>,  <36.676952, 41.353065, 50.004242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862057, 41.425087, 49.869522>,  <37.170563, 41.545120, 49.644985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862057, 41.425087, 49.869522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437707, 0.390242, 0.810015,
		-0.462128, 0.870438, -0.169632,
		-0.771265, -0.300082, 0.561339,
		36.630676, 41.335064, 50.037922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171104, 41.979607, 50.233089>,  <37.170563, 41.545120, 49.644985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171104, 41.979607, 50.233089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926846, 41.685837, 50.351562>,  <36.780289, 41.509575, 50.422646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926846, 41.685837, 50.351562>,  <37.171104, 41.979607, 50.233089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926846, 41.685837, 50.351562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438131, -0.001778, 0.898909,
		-0.659658, 0.678683, 0.322862,
		-0.610649, -0.734429, 0.296179,
		36.743652, 41.465508, 50.440414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882656, 42.223953, 50.848133>,  <37.171104, 41.979607, 50.233089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882656, 42.223953, 50.848133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897598, 41.826591, 50.804771>,  <36.906563, 41.588173, 50.778755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897598, 41.826591, 50.804771>,  <36.882656, 42.223953, 50.848133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897598, 41.826591, 50.804771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247124, -0.095926, 0.964224,
		-0.968264, -0.062811, 0.241910,
		0.037359, -0.993405, -0.108404,
		36.908806, 41.528568, 50.772251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445362, 41.902740, 51.254463>,  <36.882656, 42.223953, 50.848133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445362, 41.902740, 51.254463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795483, 41.712593, 51.218948>,  <37.005554, 41.598507, 51.197639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795483, 41.712593, 51.218948>,  <36.445362, 41.902740, 51.254463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795483, 41.712593, 51.218948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131232, 0.056790, 0.989724,
		-0.465438, -0.877954, 0.112091,
		0.875297, -0.475365, -0.088783,
		37.058071, 41.569984, 51.192314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477882, 41.318684, 51.594154>,  <36.445362, 41.902740, 51.254463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477882, 41.318684, 51.594154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864048, 41.422836, 51.599403>,  <37.095749, 41.485329, 51.602554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864048, 41.422836, 51.599403>,  <36.477882, 41.318684, 51.594154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864048, 41.422836, 51.599403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042075, 0.105926, 0.993483,
		0.257292, -0.959678, 0.113219,
		0.965417, 0.260379, 0.013125,
		37.153675, 41.500950, 51.603340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715687, 41.147873, 52.252949>,  <36.477882, 41.318684, 51.594154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715687, 41.147873, 52.252949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951523, 41.433296, 52.101574>,  <37.093025, 41.604549, 52.010750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951523, 41.433296, 52.101574>,  <36.715687, 41.147873, 52.252949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951523, 41.433296, 52.101574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035855, 0.444955, 0.894835,
		0.806905, -0.541156, 0.236757,
		0.589592, 0.713558, -0.378440,
		37.128399, 41.647362, 51.988041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313442, 41.144470, 52.648205>,  <36.715687, 41.147873, 52.252949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313442, 41.144470, 52.648205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262665, 41.503437, 52.479195>,  <37.232197, 41.718819, 52.377789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262665, 41.503437, 52.479195>,  <37.313442, 41.144470, 52.648205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262665, 41.503437, 52.479195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141618, 0.438008, 0.887746,
		0.981748, 0.052860, -0.182694,
		-0.126948, 0.897416, -0.422527,
		37.224579, 41.772663, 52.352436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377396, 41.569492, 53.184803>,  <37.313442, 41.144470, 52.648205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377396, 41.569492, 53.184803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377201, 41.846298, 52.896049>,  <37.377083, 42.012383, 52.722797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377201, 41.846298, 52.896049>,  <37.377396, 41.569492, 53.184803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377201, 41.846298, 52.896049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216732, 0.704797, 0.675491,
		0.976231, -0.156127, -0.150323,
		-0.000485, 0.692015, -0.721883,
		37.377056, 42.053902, 52.679485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813679, 41.169647, 53.560501>,  <37.377396, 41.569492, 53.184803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813679, 41.169647, 53.560501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546322, 41.263828, 53.278278>,  <36.385906, 41.320339, 53.108944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546322, 41.263828, 53.278278>,  <36.813679, 41.169647, 53.560501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546322, 41.263828, 53.278278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743405, 0.180267, -0.644091,
		-0.024467, -0.955020, -0.295529,
		-0.668394, 0.235457, -0.705556,
		36.345802, 41.334465, 53.066612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244076, 40.540443, 53.680508>,  <36.813679, 41.169647, 53.560501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244076, 40.540443, 53.680508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119659, 40.165817, 53.745125>,  <37.045010, 39.941040, 53.783894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119659, 40.165817, 53.745125>,  <37.244076, 40.540443, 53.680508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119659, 40.165817, 53.745125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051657, -0.153062, -0.986865,
		0.948993, -0.315297, -0.000772,
		-0.311037, -0.936568, 0.161542,
		37.026348, 39.884846, 53.793587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623856, 40.088299, 53.373192>,  <37.244076, 40.540443, 53.680508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623856, 40.088299, 53.373192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254143, 39.935692, 53.377972>,  <37.032314, 39.844128, 53.380840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254143, 39.935692, 53.377972>,  <37.623856, 40.088299, 53.373192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254143, 39.935692, 53.377972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098758, -0.269267, -0.957989,
		0.368708, -0.884273, 0.286557,
		-0.924284, -0.381518, 0.011952,
		36.976856, 39.821236, 53.381557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631104, 39.568874, 52.794117>,  <37.623856, 40.088299, 53.373192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631104, 39.568874, 52.794117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246624, 39.616924, 52.893452>,  <37.015938, 39.645756, 52.953053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246624, 39.616924, 52.893452>,  <37.631104, 39.568874, 52.794117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246624, 39.616924, 52.893452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268812, -0.205660, -0.940980,
		-0.061964, -0.971223, 0.229971,
		-0.961197, 0.120126, 0.248333,
		36.958263, 39.652962, 52.967953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373650, 38.857269, 52.661953>,  <37.631104, 39.568874, 52.794117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373650, 38.857269, 52.661953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127991, 39.171230, 52.629089>,  <36.980595, 39.359608, 52.609371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127991, 39.171230, 52.629089>,  <37.373650, 38.857269, 52.661953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127991, 39.171230, 52.629089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214333, -0.266084, -0.939820,
		-0.759526, -0.559582, 0.331645,
		-0.614151, 0.784900, -0.082161,
		36.943745, 39.406700, 52.604443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853416, 38.543407, 52.287750>,  <37.373650, 38.857269, 52.661953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853416, 38.543407, 52.287750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858650, 38.938232, 52.223827>,  <36.861790, 39.175129, 52.185474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858650, 38.938232, 52.223827>,  <36.853416, 38.543407, 52.287750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858650, 38.938232, 52.223827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171645, -0.155234, -0.972852,
		-0.985072, 0.040164, 0.167392,
		0.013089, 0.987061, -0.159811,
		36.862576, 39.234352, 52.175884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302593, 38.683208, 51.811546>,  <36.853416, 38.543407, 52.287750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302593, 38.683208, 51.811546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563801, 38.984425, 51.779297>,  <36.720528, 39.165154, 51.759949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563801, 38.984425, 51.779297>,  <36.302593, 38.683208, 51.811546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563801, 38.984425, 51.779297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073239, -0.043159, -0.996380,
		-0.753790, 0.656561, 0.026968,
		0.653021, 0.753037, -0.080619,
		36.759708, 39.210335, 51.755112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172802, 38.932018, 51.146339>,  <36.302593, 38.683208, 51.811546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172802, 38.932018, 51.146339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536579, 39.083195, 51.215706>,  <36.754845, 39.173901, 51.257324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536579, 39.083195, 51.215706>,  <36.172802, 38.932018, 51.146339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536579, 39.083195, 51.215706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244115, -0.147641, -0.958441,
		-0.336628, 0.913983, -0.226531,
		0.909445, 0.377938, 0.173417,
		36.809414, 39.196575, 51.267731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211597, 39.521698, 50.693054>,  <36.172802, 38.932018, 51.146339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211597, 39.521698, 50.693054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590096, 39.427170, 50.781395>,  <36.817196, 39.370453, 50.834400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590096, 39.427170, 50.781395>,  <36.211597, 39.521698, 50.693054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590096, 39.427170, 50.781395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217356, -0.041071, -0.975228,
		0.239536, 0.970807, 0.012503,
		0.946245, -0.236319, 0.220849,
		36.873970, 39.356274, 50.847649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578747, 39.879051, 50.262405>,  <36.211597, 39.521698, 50.693054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578747, 39.879051, 50.262405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872581, 39.628227, 50.366077>,  <37.048882, 39.477734, 50.428280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872581, 39.628227, 50.366077>,  <36.578747, 39.879051, 50.262405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872581, 39.628227, 50.366077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165784, -0.204535, -0.964718,
		0.657947, 0.751640, -0.046293,
		0.734589, -0.627059, 0.259183,
		37.092957, 39.440109, 50.443832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077976, 39.959900, 49.780304>,  <36.578747, 39.879051, 50.262405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077976, 39.959900, 49.780304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145023, 39.591274, 49.920376>,  <37.185253, 39.370098, 50.004417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145023, 39.591274, 49.920376>,  <37.077976, 39.959900, 49.780304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145023, 39.591274, 49.920376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208399, -0.314056, -0.926250,
		0.963573, 0.228234, 0.139411,
		0.167618, -0.921563, 0.350180,
		37.195309, 39.314804, 50.025429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407612, 39.642700, 49.210178>,  <37.077976, 39.959900, 49.780304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407612, 39.642700, 49.210178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307037, 39.338936, 49.450207>,  <37.246693, 39.156677, 49.594223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307037, 39.338936, 49.450207>,  <37.407612, 39.642700, 49.210178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307037, 39.338936, 49.450207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135550, -0.586246, -0.798713,
		0.958334, -0.282166, 0.044468,
		-0.251439, -0.759407, 0.600067,
		37.231606, 39.111115, 49.630226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818016, 39.103165, 49.071621>,  <37.407612, 39.642700, 49.210178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818016, 39.103165, 49.071621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475155, 38.981445, 49.237846>,  <37.269440, 38.908413, 49.337582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475155, 38.981445, 49.237846>,  <37.818016, 39.103165, 49.071621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475155, 38.981445, 49.237846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116886, -0.670851, -0.732323,
		0.501625, -0.676286, 0.539453,
		-0.857153, -0.304297, 0.415564,
		37.218010, 38.890156, 49.362514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836906, 38.316925, 49.122147>,  <37.818016, 39.103165, 49.071621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836906, 38.316925, 49.122147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449070, 38.410652, 49.150410>,  <37.216370, 38.466888, 49.167366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449070, 38.410652, 49.150410>,  <37.836906, 38.316925, 49.122147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449070, 38.410652, 49.150410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214169, -0.672646, -0.708293,
		-0.118437, -0.701886, 0.702374,
		-0.969590, 0.234315, 0.070656,
		37.158192, 38.480946, 49.171608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445633, 37.683628, 49.305595>,  <37.836906, 38.316925, 49.122147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445633, 37.683628, 49.305595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193302, 37.936546, 49.125698>,  <37.041904, 38.088299, 49.017761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193302, 37.936546, 49.125698>,  <37.445633, 37.683628, 49.305595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193302, 37.936546, 49.125698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224603, -0.703602, -0.674165,
		-0.742707, -0.324268, 0.585864,
		-0.630825, 0.632294, -0.449739,
		37.004055, 38.126236, 48.990776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970051, 37.223564, 49.106274>,  <37.445633, 37.683628, 49.305595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970051, 37.223564, 49.106274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884659, 37.539200, 48.875877>,  <36.833424, 37.728580, 48.737640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884659, 37.539200, 48.875877>,  <36.970051, 37.223564, 49.106274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884659, 37.539200, 48.875877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391899, -0.609231, -0.689386,
		-0.894898, 0.078560, 0.439302,
		-0.213478, 0.789092, -0.575987,
		36.820614, 37.775928, 48.703083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390991, 37.061947, 48.832390>,  <36.970051, 37.223564, 49.106274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390991, 37.061947, 48.832390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511692, 37.335415, 48.566593>,  <36.584110, 37.499496, 48.407116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511692, 37.335415, 48.566593>,  <36.390991, 37.061947, 48.832390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511692, 37.335415, 48.566593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447369, -0.513943, -0.731932,
		-0.841908, 0.518131, 0.150770,
		0.301749, 0.683669, -0.664488,
		36.602219, 37.540516, 48.367249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843815, 37.234894, 48.426865>,  <36.390991, 37.061947, 48.832390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843815, 37.234894, 48.426865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135971, 37.359123, 48.183529>,  <36.311264, 37.433662, 48.037529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135971, 37.359123, 48.183529>,  <35.843815, 37.234894, 48.426865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135971, 37.359123, 48.183529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505625, -0.352940, -0.787259,
		-0.459207, 0.882597, -0.100751,
		0.730391, 0.310573, -0.608336,
		36.355087, 37.452293, 48.001026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543564, 37.624069, 47.789497>,  <35.843815, 37.234894, 48.426865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543564, 37.624069, 47.789497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908417, 37.514095, 47.667892>,  <36.127327, 37.448112, 47.594929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908417, 37.514095, 47.667892>,  <35.543564, 37.624069, 47.789497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908417, 37.514095, 47.667892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384117, -0.314445, -0.868089,
		0.143072, 0.908590, -0.392423,
		0.912132, -0.274935, -0.304016,
		36.182056, 37.431614, 47.576687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585865, 37.973629, 47.195671>,  <35.543564, 37.624069, 47.789497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585865, 37.973629, 47.195671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879356, 37.706566, 47.145271>,  <36.055450, 37.546326, 47.115032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879356, 37.706566, 47.145271>,  <35.585865, 37.973629, 47.195671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879356, 37.706566, 47.145271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422890, -0.303614, -0.853805,
		0.531798, 0.679741, -0.505117,
		0.733727, -0.667660, -0.125995,
		36.099476, 37.506268, 47.107471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800800, 38.111210, 46.565815>,  <35.585865, 37.973629, 47.195671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800800, 38.111210, 46.565815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946293, 37.746105, 46.640179>,  <36.033588, 37.527042, 46.684799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946293, 37.746105, 46.640179>,  <35.800800, 38.111210, 46.565815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946293, 37.746105, 46.640179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254827, -0.289473, -0.922642,
		0.895971, 0.288218, -0.337886,
		0.363731, -0.912763, 0.185913,
		36.055412, 37.472275, 46.695953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231964, 37.986233, 46.102539>,  <35.800800, 38.111210, 46.565815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231964, 37.986233, 46.102539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151669, 37.620613, 46.243515>,  <36.103493, 37.401241, 46.328098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151669, 37.620613, 46.243515>,  <36.231964, 37.986233, 46.102539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151669, 37.620613, 46.243515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225291, -0.307043, -0.924645,
		0.953388, -0.265012, -0.144293,
		-0.200738, -0.914053, 0.352436,
		36.091446, 37.346397, 46.349247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681732, 37.425575, 45.667435>,  <36.231964, 37.986233, 46.102539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681732, 37.425575, 45.667435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375698, 37.225674, 45.829865>,  <36.192078, 37.105732, 45.927322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375698, 37.225674, 45.829865>,  <36.681732, 37.425575, 45.667435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375698, 37.225674, 45.829865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230003, -0.376926, -0.897232,
		0.601454, -0.779855, 0.173435,
		-0.765083, -0.499753, 0.406073,
		36.146172, 37.075748, 45.951687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730686, 36.716385, 45.487923>,  <36.681732, 37.425575, 45.667435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730686, 36.716385, 45.487923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344154, 36.771957, 45.574554>,  <36.112236, 36.805302, 45.626534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344154, 36.771957, 45.574554>,  <36.730686, 36.716385, 45.487923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344154, 36.771957, 45.574554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257280, -0.507923, -0.822084,
		-0.004210, -0.850124, 0.526565,
		-0.966328, 0.138935, 0.216581,
		36.054256, 36.813637, 45.639530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411919, 36.010799, 45.300121>,  <36.730686, 36.716385, 45.487923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411919, 36.010799, 45.300121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117756, 36.281139, 45.319691>,  <35.941257, 36.443344, 45.331432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117756, 36.281139, 45.319691>,  <36.411919, 36.010799, 45.300121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117756, 36.281139, 45.319691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426526, -0.405594, -0.808436,
		-0.526544, -0.615398, 0.586547,
		-0.735410, 0.675854, 0.048920,
		35.897133, 36.483894, 45.334366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820393, 35.636082, 45.110691>,  <36.411919, 36.010799, 45.300121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820393, 35.636082, 45.110691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721138, 36.020855, 45.064884>,  <35.661587, 36.251720, 45.037399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721138, 36.020855, 45.064884>,  <35.820393, 35.636082, 45.110691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721138, 36.020855, 45.064884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500928, -0.228590, -0.834756,
		-0.829156, -0.149768, 0.538581,
		-0.248134, 0.961934, -0.114514,
		35.646698, 36.309437, 45.030529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136276, 35.612537, 45.004894>,  <35.820393, 35.636082, 45.110691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136276, 35.612537, 45.004894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266544, 35.959919, 44.855370>,  <35.344707, 36.168346, 44.765656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266544, 35.959919, 44.855370>,  <35.136276, 35.612537, 45.004894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266544, 35.959919, 44.855370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578954, -0.129398, -0.805027,
		-0.747496, 0.478593, 0.460651,
		0.325673, 0.868450, -0.373808,
		35.364246, 36.220455, 44.743229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610283, 35.936031, 44.600494>,  <35.136276, 35.612537, 45.004894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610283, 35.936031, 44.600494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935188, 36.125683, 44.464596>,  <35.130131, 36.239475, 44.383057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935188, 36.125683, 44.464596>,  <34.610283, 35.936031, 44.600494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935188, 36.125683, 44.464596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426633, 0.085738, -0.900352,
		-0.397753, 0.876271, 0.271921,
		0.812266, 0.474128, -0.339744,
		35.178867, 36.267921, 44.362671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350395, 36.412575, 44.236755>,  <34.610283, 35.936031, 44.600494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350395, 36.412575, 44.236755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729969, 36.408936, 44.110622>,  <34.957714, 36.406754, 44.034943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729969, 36.408936, 44.110622>,  <34.350395, 36.412575, 44.236755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729969, 36.408936, 44.110622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311189, 0.136962, -0.940427,
		0.051740, 0.990535, 0.127139,
		0.948939, -0.009093, -0.315330,
		35.014652, 36.406208, 44.016022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325806, 36.949768, 43.620640>,  <34.350395, 36.412575, 44.236755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325806, 36.949768, 43.620640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651394, 36.717552, 43.612400>,  <34.846748, 36.578224, 43.607456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651394, 36.717552, 43.612400>,  <34.325806, 36.949768, 43.620640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651394, 36.717552, 43.612400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132416, -0.150892, -0.979641,
		0.565612, 0.800128, -0.199695,
		0.813971, -0.580540, -0.020603,
		34.895584, 36.543388, 43.606220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692177, 37.206516, 43.033844>,  <34.325806, 36.949768, 43.620640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692177, 37.206516, 43.033844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821728, 36.832767, 43.093250>,  <34.899460, 36.608521, 43.128895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821728, 36.832767, 43.093250>,  <34.692177, 37.206516, 43.033844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821728, 36.832767, 43.093250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295643, -0.249067, -0.922259,
		0.898721, 0.254791, -0.356907,
		0.323877, -0.934370, 0.148514,
		34.918892, 36.552456, 43.137806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159531, 37.084633, 42.445889>,  <34.692177, 37.206516, 43.033844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159531, 37.084633, 42.445889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045773, 36.732784, 42.598408>,  <34.977520, 36.521675, 42.689919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045773, 36.732784, 42.598408>,  <35.159531, 37.084633, 42.445889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045773, 36.732784, 42.598408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106681, -0.366220, -0.924393,
		0.952755, -0.303566, 0.010311,
		-0.284390, -0.879620, 0.381302,
		34.960457, 36.468899, 42.712799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573071, 36.596973, 42.230198>,  <35.159531, 37.084633, 42.445889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573071, 36.596973, 42.230198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250256, 36.371540, 42.300690>,  <35.056564, 36.236279, 42.342987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250256, 36.371540, 42.300690>,  <35.573071, 36.596973, 42.230198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250256, 36.371540, 42.300690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072537, -0.201567, -0.976785,
		0.586025, -0.801087, 0.121792,
		-0.807040, -0.563587, 0.176231,
		35.008144, 36.202465, 42.353558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563099, 36.057537, 41.636726>,  <35.573071, 36.596973, 42.230198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563099, 36.057537, 41.636726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204475, 36.011799, 41.807892>,  <34.989304, 35.984356, 41.910591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204475, 36.011799, 41.807892>,  <35.563099, 36.057537, 41.636726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204475, 36.011799, 41.807892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382205, -0.288523, -0.877880,
		0.223844, -0.950621, 0.214975,
		-0.896556, -0.114344, 0.427916,
		34.935509, 35.977497, 41.936268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400345, 35.322235, 41.497639>,  <35.563099, 36.057537, 41.636726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400345, 35.322235, 41.497639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096504, 35.570469, 41.575485>,  <34.914200, 35.719410, 41.622192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096504, 35.570469, 41.575485>,  <35.400345, 35.322235, 41.497639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096504, 35.570469, 41.575485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367789, -0.163077, -0.915498,
		-0.536405, -0.766996, 0.352118,
		-0.759606, 0.620583, 0.194617,
		34.868622, 35.756645, 41.633869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834553, 34.914082, 41.384235>,  <35.400345, 35.322235, 41.497639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834553, 34.914082, 41.384235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713142, 35.293961, 41.353371>,  <34.640297, 35.521889, 41.334854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713142, 35.293961, 41.353371>,  <34.834553, 34.914082, 41.384235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713142, 35.293961, 41.353371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412820, -0.204059, -0.887659,
		-0.858749, -0.237577, 0.453990,
		-0.303528, 0.949693, -0.077159,
		34.622086, 35.578869, 41.330223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131252, 34.889503, 41.226528>,  <34.834553, 34.914082, 41.384235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131252, 34.889503, 41.226528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238422, 35.259708, 41.119461>,  <34.302723, 35.481831, 41.055222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238422, 35.259708, 41.119461>,  <34.131252, 34.889503, 41.226528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238422, 35.259708, 41.119461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439885, -0.129661, -0.888645,
		-0.857156, 0.355832, 0.372379,
		0.267925, 0.925512, -0.267665,
		34.318802, 35.537361, 41.039162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527412, 35.371441, 40.971989>,  <34.131252, 34.889503, 41.226528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527412, 35.371441, 40.971989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834160, 35.567677, 40.806461>,  <34.018208, 35.685417, 40.707146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834160, 35.567677, 40.806461>,  <33.527412, 35.371441, 40.971989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834160, 35.567677, 40.806461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462516, -0.024591, -0.886270,
		-0.444969, 0.871045, 0.208047,
		0.766865, 0.490587, -0.413814,
		34.064220, 35.714851, 40.682316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276852, 35.829227, 40.522045>,  <33.527412, 35.371441, 40.971989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276852, 35.829227, 40.522045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655197, 35.817276, 40.392773>,  <33.882206, 35.810104, 40.315208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655197, 35.817276, 40.392773>,  <33.276852, 35.829227, 40.522045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655197, 35.817276, 40.392773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317937, 0.114816, -0.941134,
		0.065231, 0.992937, 0.099100,
		0.945865, -0.029883, -0.323181,
		33.938957, 35.808311, 40.295818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316364, 36.312008, 40.084328>,  <33.276852, 35.829227, 40.522045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316364, 36.312008, 40.084328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615955, 36.075638, 39.964439>,  <33.795712, 35.933815, 39.892506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615955, 36.075638, 39.964439>,  <33.316364, 36.312008, 40.084328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615955, 36.075638, 39.964439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266466, 0.145522, -0.952795,
		0.606649, 0.793491, -0.048469,
		0.748981, -0.590928, -0.299719,
		33.840649, 35.898361, 39.874523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528263, 36.639767, 39.471611>,  <33.316364, 36.312008, 40.084328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528263, 36.639767, 39.471611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679127, 36.270576, 39.440987>,  <33.769646, 36.049061, 39.422611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679127, 36.270576, 39.440987>,  <33.528263, 36.639767, 39.471611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679127, 36.270576, 39.440987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112579, 0.036360, -0.992977,
		0.919279, 0.383134, -0.090194,
		0.377163, -0.922977, -0.076558,
		33.792274, 35.993683, 39.418018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891510, 36.646729, 38.955906>,  <33.528263, 36.639767, 39.471611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891510, 36.646729, 38.955906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862572, 36.250484, 39.002323>,  <33.845211, 36.012737, 39.030174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862572, 36.250484, 39.002323>,  <33.891510, 36.646729, 38.955906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862572, 36.250484, 39.002323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047473, -0.119634, -0.991682,
		0.996249, -0.066231, 0.055681,
		-0.072341, -0.990606, 0.116041,
		33.840870, 35.953304, 39.037136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378601, 36.386673, 38.455799>,  <33.891510, 36.646729, 38.955906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378601, 36.386673, 38.455799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115791, 36.098206, 38.543648>,  <33.958107, 35.925125, 38.596359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115791, 36.098206, 38.543648>,  <34.378601, 36.386673, 38.455799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115791, 36.098206, 38.543648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134103, -0.174877, -0.975415,
		0.741848, -0.670322, 0.018186,
		-0.657022, -0.721171, 0.219624,
		33.918686, 35.881855, 38.609535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558746, 35.877377, 38.013855>,  <34.378601, 36.386673, 38.455799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558746, 35.877377, 38.013855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177349, 35.817616, 38.118568>,  <33.948509, 35.781757, 38.181396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177349, 35.817616, 38.118568>,  <34.558746, 35.877377, 38.013855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177349, 35.817616, 38.118568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291105, 0.231275, -0.928315,
		0.078148, -0.961348, -0.264011,
		-0.953494, -0.149401, 0.261780,
		33.891300, 35.772793, 38.197102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196453, 35.933628, 38.186737>,  <34.558746, 35.877377, 38.013855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196453, 35.933628, 38.186737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358940, 35.571083, 38.233204>,  <35.456432, 35.353558, 38.261086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358940, 35.571083, 38.233204>,  <35.196453, 35.933628, 38.186737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358940, 35.571083, 38.233204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684178, 0.385957, 0.618820,
		-0.605711, -0.171895, 0.776895,
		0.406220, -0.906361, 0.116171,
		35.480804, 35.299175, 38.268055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283310, 35.756805, 38.906952>,  <35.196453, 35.933628, 38.186737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283310, 35.756805, 38.906952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563633, 35.606884, 38.664169>,  <35.731827, 35.516933, 38.518501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563633, 35.606884, 38.664169>,  <35.283310, 35.756805, 38.906952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563633, 35.606884, 38.664169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712384, 0.323446, 0.622809,
		-0.037113, -0.868853, 0.493676,
		0.700807, -0.374802, -0.606953,
		35.773876, 35.494442, 38.482082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611378, 35.197689, 39.228149>,  <35.283310, 35.756805, 38.906952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611378, 35.197689, 39.228149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853779, 35.390480, 38.975021>,  <35.999218, 35.506153, 38.823143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853779, 35.390480, 38.975021>,  <35.611378, 35.197689, 39.228149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853779, 35.390480, 38.975021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615932, 0.219114, 0.756714,
		0.503380, -0.848342, -0.164083,
		0.606000, 0.481979, -0.632819,
		36.035580, 35.535072, 38.785175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224838, 34.952629, 39.471828>,  <35.611378, 35.197689, 39.228149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224838, 34.952629, 39.471828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345070, 35.255299, 39.239590>,  <36.417210, 35.436901, 39.100246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345070, 35.255299, 39.239590>,  <36.224838, 34.952629, 39.471828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345070, 35.255299, 39.239590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584412, 0.334961, 0.739096,
		0.753735, -0.561463, -0.341530,
		0.300576, 0.756677, -0.580598,
		36.435242, 35.482304, 39.065411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873596, 34.955139, 39.491821>,  <36.224838, 34.952629, 39.471828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873596, 34.955139, 39.491821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780529, 35.324409, 39.369442>,  <36.724689, 35.545971, 39.296013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780529, 35.324409, 39.369442>,  <36.873596, 34.955139, 39.491821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780529, 35.324409, 39.369442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642029, 0.382091, 0.664685,
		0.730525, -0.041779, -0.681607,
		-0.232666, 0.923180, -0.305950,
		36.710728, 35.601364, 39.277657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596260, 35.261410, 39.357132>,  <36.873596, 34.955139, 39.491821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596260, 35.261410, 39.357132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326794, 35.545734, 39.438046>,  <37.165112, 35.716328, 39.486595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326794, 35.545734, 39.438046>,  <37.596260, 35.261410, 39.357132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326794, 35.545734, 39.438046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566756, 0.321232, 0.758682,
		0.474298, 0.625746, -0.619260,
		-0.673669, 0.710810, 0.202285,
		37.124695, 35.758976, 39.498730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962498, 35.944805, 39.492489>,  <37.596260, 35.261410, 39.357132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962498, 35.944805, 39.492489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613342, 35.987728, 39.682880>,  <37.403851, 36.013481, 39.797115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613342, 35.987728, 39.682880>,  <37.962498, 35.944805, 39.492489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613342, 35.987728, 39.682880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487427, 0.147706, 0.860580,
		0.022041, 0.983193, -0.181234,
		-0.872885, 0.107306, 0.475980,
		37.351479, 36.019920, 39.825676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058590, 36.570389, 39.969498>,  <37.962498, 35.944805, 39.492489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058590, 36.570389, 39.969498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749889, 36.352669, 40.101028>,  <37.564667, 36.222034, 40.179947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749889, 36.352669, 40.101028>,  <38.058590, 36.570389, 39.969498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749889, 36.352669, 40.101028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307812, 0.132733, 0.942143,
		-0.556458, 0.828321, 0.065105,
		-0.771756, -0.544303, 0.328828,
		37.518364, 36.189377, 40.199677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011246, 36.805923, 40.635048>,  <38.058590, 36.570389, 39.969498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011246, 36.805923, 40.635048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773529, 36.484222, 40.635078>,  <37.630898, 36.291203, 40.635098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773529, 36.484222, 40.635078>,  <38.011246, 36.805923, 40.635048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773529, 36.484222, 40.635078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032442, -0.023883, 0.999188,
		-0.803594, 0.593813, 0.040285,
		-0.594293, -0.804249, 0.000073,
		37.595242, 36.242947, 40.635101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346294, 36.899723, 41.195805>,  <38.011246, 36.805923, 40.635048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346294, 36.899723, 41.195805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439781, 36.514942, 41.139187>,  <37.495872, 36.284073, 41.105217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439781, 36.514942, 41.139187>,  <37.346294, 36.899723, 41.195805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439781, 36.514942, 41.139187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144263, -0.109657, 0.983445,
		-0.961544, -0.250264, 0.113145,
		0.233714, -0.961948, -0.141544,
		37.509895, 36.226357, 41.096725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002808, 36.483177, 41.747997>,  <37.346294, 36.899723, 41.195805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002808, 36.483177, 41.747997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.284157, 36.237843, 41.604282>,  <37.452969, 36.090641, 41.518055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.284157, 36.237843, 41.604282>,  <37.002808, 36.483177, 41.747997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284157, 36.237843, 41.604282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231304, -0.280455, 0.931581,
		-0.672133, -0.738355, -0.055399,
		0.703374, -0.613332, -0.359288,
		37.495171, 36.053844, 41.496494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940132, 35.748814, 42.073948>,  <37.002808, 36.483177, 41.747997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940132, 35.748814, 42.073948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.319485, 35.800785, 41.958233>,  <37.547096, 35.831970, 41.888805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.319485, 35.800785, 41.958233>,  <36.940132, 35.748814, 42.073948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319485, 35.800785, 41.958233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315709, -0.300747, 0.899933,
		0.029930, -0.944812, -0.326245,
		0.948384, 0.129933, -0.289284,
		37.604000, 35.839764, 41.871449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299671, 35.193218, 42.311489>,  <36.940132, 35.748814, 42.073948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299671, 35.193218, 42.311489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570698, 35.480583, 42.248516>,  <37.733315, 35.653004, 42.210732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570698, 35.480583, 42.248516>,  <37.299671, 35.193218, 42.311489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570698, 35.480583, 42.248516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393054, -0.172786, 0.903135,
		0.621625, -0.673812, -0.399450,
		0.677563, 0.718417, -0.157436,
		37.773968, 35.696110, 42.201286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840061, 34.919750, 42.613361>,  <37.299671, 35.193218, 42.311489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840061, 34.919750, 42.613361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950764, 35.299198, 42.552010>,  <38.017185, 35.526867, 42.515198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950764, 35.299198, 42.552010>,  <37.840061, 34.919750, 42.613361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950764, 35.299198, 42.552010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433195, 0.019314, 0.901093,
		0.857759, -0.315822, -0.405593,
		0.276752, 0.948622, -0.153380,
		38.033791, 35.583786, 42.505997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571808, 34.963341, 42.719025>,  <37.840061, 34.919750, 42.613361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571808, 34.963341, 42.719025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.436413, 35.333961, 42.784653>,  <38.355175, 35.556335, 42.824028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.436413, 35.333961, 42.784653>,  <38.571808, 34.963341, 42.719025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436413, 35.333961, 42.784653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427764, -0.003783, 0.903883,
		0.838118, 0.376139, -0.395067,
		-0.338490, 0.926556, 0.164070,
		38.334866, 35.611927, 42.833874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042595, 35.350471, 42.933498>,  <38.571808, 34.963341, 42.719025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042595, 35.350471, 42.933498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731056, 35.564968, 43.063629>,  <38.544132, 35.693665, 43.141708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731056, 35.564968, 43.063629>,  <39.042595, 35.350471, 42.933498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731056, 35.564968, 43.063629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415080, 0.051811, 0.908308,
		0.470218, 0.842472, -0.262936,
		-0.778847, 0.536243, 0.325331,
		38.497402, 35.725842, 43.161228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260418, 35.937443, 43.337215>,  <39.042595, 35.350471, 42.933498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260418, 35.937443, 43.337215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890778, 35.922455, 43.489342>,  <38.668995, 35.913460, 43.580616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890778, 35.922455, 43.489342>,  <39.260418, 35.937443, 43.337215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890778, 35.922455, 43.489342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377142, 0.071215, 0.923413,
		-0.061688, 0.996757, -0.051677,
		-0.924099, -0.037474, 0.380312,
		38.613548, 35.911213, 43.603436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210991, 36.593555, 43.726498>,  <39.260418, 35.937443, 43.337215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210991, 36.593555, 43.726498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915646, 36.365517, 43.870609>,  <38.738438, 36.228691, 43.957077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915646, 36.365517, 43.870609>,  <39.210991, 36.593555, 43.726498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915646, 36.365517, 43.870609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207866, 0.315831, 0.925766,
		-0.641568, 0.758443, -0.114694,
		-0.738364, -0.570101, 0.360281,
		38.694138, 36.194485, 43.978695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743828, 37.067822, 44.197338>,  <39.210991, 36.593555, 43.726498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743828, 37.067822, 44.197338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.674091, 36.684929, 44.289703>,  <38.632252, 36.455193, 44.345123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.674091, 36.684929, 44.289703>,  <38.743828, 37.067822, 44.197338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674091, 36.684929, 44.289703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034747, 0.228381, 0.972952,
		-0.984072, 0.177647, -0.006555,
		-0.174339, -0.957227, 0.230916,
		38.621788, 36.397762, 44.358978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096657, 37.051819, 44.645805>,  <38.743828, 37.067822, 44.197338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096657, 37.051819, 44.645805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312923, 36.723392, 44.719048>,  <38.442684, 36.526337, 44.762993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312923, 36.723392, 44.719048>,  <38.096657, 37.051819, 44.645805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312923, 36.723392, 44.719048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125076, 0.136778, 0.982674,
		-0.831889, -0.554197, -0.028745,
		0.540663, -0.821071, 0.183101,
		38.475124, 36.477070, 44.773979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725113, 36.611233, 45.237114>,  <38.096657, 37.051819, 44.645805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725113, 36.611233, 45.237114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107773, 36.495232, 45.226387>,  <38.337368, 36.425632, 45.219952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107773, 36.495232, 45.226387>,  <37.725113, 36.611233, 45.237114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107773, 36.495232, 45.226387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041145, 0.043416, 0.998209,
		-0.288315, -0.956042, 0.053466,
		0.956651, -0.289999, -0.026818,
		38.394768, 36.408234, 45.218342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780304, 36.171722, 45.864033>,  <37.725113, 36.611233, 45.237114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780304, 36.171722, 45.864033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132462, 36.303173, 45.727261>,  <38.343754, 36.382042, 45.645199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132462, 36.303173, 45.727261>,  <37.780304, 36.171722, 45.864033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132462, 36.303173, 45.727261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309450, 0.148294, 0.939282,
		0.359379, -0.932746, 0.028863,
		0.880391, 0.328626, -0.341931,
		38.396580, 36.401760, 45.624680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202431, 35.969856, 46.354630>,  <37.780304, 36.171722, 45.864033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202431, 35.969856, 46.354630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435860, 36.229736, 46.159760>,  <38.575916, 36.385662, 46.042835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435860, 36.229736, 46.159760>,  <38.202431, 35.969856, 46.354630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435860, 36.229736, 46.159760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357922, 0.332725, 0.872460,
		0.728931, -0.683511, -0.038373,
		0.583569, 0.649698, -0.487177,
		38.610931, 36.424644, 46.013607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975456, 35.908691, 46.565098>,  <38.202431, 35.969856, 46.354630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975456, 35.908691, 46.565098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889816, 36.274315, 46.427311>,  <38.838432, 36.493690, 46.344639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889816, 36.274315, 46.427311>,  <38.975456, 35.908691, 46.565098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889816, 36.274315, 46.427311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418585, 0.404481, 0.813131,
		0.882580, 0.029903, -0.469211,
		-0.214102, 0.914057, -0.344470,
		38.825584, 36.548531, 46.323971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503311, 36.234108, 46.882339>,  <38.975456, 35.908691, 46.565098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503311, 36.234108, 46.882339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244896, 36.507748, 46.746906>,  <39.089848, 36.671932, 46.665646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244896, 36.507748, 46.746906>,  <39.503311, 36.234108, 46.882339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244896, 36.507748, 46.746906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280124, 0.625114, 0.728535,
		0.710045, 0.375816, -0.595481,
		-0.646039, 0.684102, -0.338584,
		39.051083, 36.712978, 46.645332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827602, 36.866863, 47.140614>,  <39.503311, 36.234108, 46.882339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827602, 36.866863, 47.140614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.478752, 37.020355, 47.019192>,  <39.269444, 37.112450, 46.946339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.478752, 37.020355, 47.019192>,  <39.827602, 36.866863, 47.140614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478752, 37.020355, 47.019192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142322, 0.792544, 0.592974,
		0.468127, 0.473944, -0.745811,
		-0.872124, 0.383733, -0.303559,
		39.217113, 37.135475, 46.928123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910549, 37.556816, 46.800789>,  <39.827602, 36.866863, 47.140614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910549, 37.556816, 46.800789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.539593, 37.522697, 46.946487>,  <39.317020, 37.502224, 47.033909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.539593, 37.522697, 46.946487>,  <39.910549, 37.556816, 46.800789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539593, 37.522697, 46.946487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123594, 0.849127, 0.513524,
		-0.353097, 0.521255, -0.776927,
		-0.927387, -0.085300, 0.364248,
		39.261375, 37.497108, 47.055763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667221, 38.202065, 46.851894>,  <39.910549, 37.556816, 46.800789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667221, 38.202065, 46.851894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421051, 38.007019, 47.099598>,  <39.273350, 37.889992, 47.248222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421051, 38.007019, 47.099598>,  <39.667221, 38.202065, 46.851894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421051, 38.007019, 47.099598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155066, 0.845217, 0.511432,
		-0.772794, 0.218720, -0.595778,
		-0.615422, -0.487617, 0.619262,
		39.236423, 37.860733, 47.285378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059704, 38.557148, 46.664459>,  <39.667221, 38.202065, 46.851894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059704, 38.557148, 46.664459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992760, 38.389179, 47.021259>,  <38.952595, 38.288399, 47.235340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992760, 38.389179, 47.021259>,  <39.059704, 38.557148, 46.664459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992760, 38.389179, 47.021259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044632, 0.907056, 0.418637,
		-0.984885, 0.030252, -0.170548,
		-0.167361, -0.419921, 0.891996,
		38.942551, 38.263203, 47.288857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564045, 38.890163, 46.958912>,  <39.059704, 38.557148, 46.664459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564045, 38.890163, 46.958912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741379, 38.719872, 47.274433>,  <38.847778, 38.617699, 47.463745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741379, 38.719872, 47.274433>,  <38.564045, 38.890163, 46.958912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741379, 38.719872, 47.274433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010577, 0.882435, 0.470315,
		-0.896295, -0.200163, 0.395715,
		0.443333, -0.425727, 0.788805,
		38.874378, 38.592155, 47.511074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224285, 39.168949, 47.640114>,  <38.564045, 38.890163, 46.958912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224285, 39.168949, 47.640114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582317, 39.026619, 47.747604>,  <38.797138, 38.941219, 47.812099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582317, 39.026619, 47.747604>,  <38.224285, 39.168949, 47.640114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582317, 39.026619, 47.747604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122437, 0.775630, 0.619200,
		-0.428763, -0.521332, 0.737818,
		0.895082, -0.355826, 0.268731,
		38.850842, 38.919872, 47.828224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191219, 39.239616, 48.365814>,  <38.224285, 39.168949, 47.640114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191219, 39.239616, 48.365814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578068, 39.208572, 48.268940>,  <38.810177, 39.189945, 48.210815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578068, 39.208572, 48.268940>,  <38.191219, 39.239616, 48.365814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578068, 39.208572, 48.268940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212676, 0.769006, 0.602826,
		0.139456, -0.634513, 0.760227,
		0.967120, -0.077614, -0.242188,
		38.868202, 39.185287, 48.196285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511566, 39.312599, 48.957634>,  <38.191219, 39.239616, 48.365814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511566, 39.312599, 48.957634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802181, 39.419067, 48.704239>,  <38.976551, 39.482948, 48.552204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802181, 39.419067, 48.704239>,  <38.511566, 39.312599, 48.957634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802181, 39.419067, 48.704239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261541, 0.745410, 0.613156,
		0.635410, -0.611160, 0.471951,
		0.726533, 0.266170, -0.633484,
		39.020142, 39.498917, 48.514194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031998, 39.534958, 49.389240>,  <38.511566, 39.312599, 48.957634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031998, 39.534958, 49.389240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127922, 39.679379, 49.028767>,  <39.185474, 39.766029, 48.812481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127922, 39.679379, 49.028767>,  <39.031998, 39.534958, 49.389240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127922, 39.679379, 49.028767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304562, 0.853432, 0.422962,
		0.921810, -0.375897, 0.094698,
		0.239808, 0.361049, -0.901186,
		39.199863, 39.787693, 48.758411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626198, 39.845070, 49.591709>,  <39.031998, 39.534958, 49.389240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626198, 39.845070, 49.591709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506489, 40.008224, 49.246674>,  <39.434662, 40.106117, 49.039650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506489, 40.008224, 49.246674>,  <39.626198, 39.845070, 49.591709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506489, 40.008224, 49.246674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073350, 0.911184, 0.405417,
		0.951344, 0.058060, -0.302613,
		-0.299275, 0.407887, -0.862591,
		39.416706, 40.130592, 48.987896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158485, 40.213371, 49.341572>,  <39.626198, 39.845070, 49.591709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158485, 40.213371, 49.341572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.841763, 40.387913, 49.170628>,  <39.651730, 40.492638, 49.068062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.841763, 40.387913, 49.170628>,  <40.158485, 40.213371, 49.341572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841763, 40.387913, 49.170628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259971, 0.873943, 0.410657,
		0.552682, 0.214060, -0.805432,
		-0.791807, 0.436352, -0.427363,
		39.604221, 40.518818, 49.042419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404121, 40.705498, 48.915684>,  <40.158485, 40.213371, 49.341572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404121, 40.705498, 48.915684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027866, 40.835709, 48.954124>,  <39.802113, 40.913834, 48.977188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027866, 40.835709, 48.954124>,  <40.404121, 40.705498, 48.915684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027866, 40.835709, 48.954124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337519, 0.867212, 0.366094,
		0.035834, 0.376797, -0.925602,
		-0.940636, 0.325526, 0.096101,
		39.745674, 40.933365, 48.982956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455635, 41.532848, 48.742535>,  <40.404121, 40.705498, 48.915684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455635, 41.532848, 48.742535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180157, 41.441998, 49.017960>,  <40.014870, 41.387486, 49.183212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180157, 41.441998, 49.017960>,  <40.455635, 41.532848, 48.742535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180157, 41.441998, 49.017960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292994, 0.781496, 0.550835,
		-0.663214, 0.581101, -0.471666,
		-0.688695, -0.227126, 0.688558,
		39.973549, 41.373859, 49.224525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915714, 42.010162, 48.937019>,  <40.455635, 41.532848, 48.742535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.915714, 42.010162, 48.937019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180073, 42.292675, 48.835522>,  <41.338688, 42.462181, 48.774624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180073, 42.292675, 48.835522>,  <40.915714, 42.010162, 48.937019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180073, 42.292675, 48.835522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046862, -0.298610, -0.953224,
		-0.749012, 0.641873, -0.164253,
		0.660897, 0.706279, -0.253742,
		41.378342, 42.504559, 48.759399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700699, 42.326267, 48.355278>,  <40.915714, 42.010162, 48.937019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700699, 42.326267, 48.355278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.092091, 42.408760, 48.357967>,  <41.326927, 42.458256, 48.359581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.092091, 42.408760, 48.357967>,  <40.700699, 42.326267, 48.355278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.092091, 42.408760, 48.357967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074054, -0.320586, -0.944320,
		-0.192598, 0.924496, -0.328959,
		0.978480, 0.206235, 0.006719,
		41.385635, 42.470631, 48.359982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800316, 42.592155, 47.699455>,  <40.700699, 42.326267, 48.355278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.800316, 42.592155, 47.699455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.170559, 42.488396, 47.809700>,  <41.392704, 42.426140, 47.875847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.170559, 42.488396, 47.809700>,  <40.800316, 42.592155, 47.699455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170559, 42.488396, 47.809700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182170, -0.332965, -0.925175,
		0.331756, 0.906558, -0.260940,
		0.925609, -0.259397, 0.275611,
		41.448242, 42.410576, 47.892384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189568, 42.786766, 47.095802>,  <40.800316, 42.592155, 47.699455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189568, 42.786766, 47.095802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.377350, 42.499947, 47.301895>,  <41.490017, 42.327854, 47.425549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.377350, 42.499947, 47.301895>,  <41.189568, 42.786766, 47.095802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.377350, 42.499947, 47.301895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238685, -0.458741, -0.855912,
		0.850085, 0.524787, -0.044208,
		0.469452, -0.717046, 0.515228,
		41.518185, 42.284832, 47.456463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.679634, 42.593605, 46.641644>,  <41.189568, 42.786766, 47.095802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.679634, 42.593605, 46.641644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.698681, 42.294758, 46.906834>,  <41.710110, 42.115448, 47.065948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.698681, 42.294758, 46.906834>,  <41.679634, 42.593605, 46.641644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.698681, 42.294758, 46.906834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086019, -0.658199, -0.747913,
		0.995155, 0.092641, 0.032927,
		0.047615, -0.747122, 0.662979,
		41.712967, 42.070621, 47.105728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.224232, 42.116379, 46.378376>,  <41.679634, 42.593605, 46.641644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.224232, 42.116379, 46.378376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.966331, 41.919666, 46.612453>,  <41.811592, 41.801640, 46.752899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.966331, 41.919666, 46.612453>,  <42.224232, 42.116379, 46.378376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.966331, 41.919666, 46.612453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153113, -0.666958, -0.729194,
		0.748899, -0.559750, 0.354725,
		-0.644753, -0.491780, 0.585189,
		41.772907, 41.772133, 46.788010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.409977, 41.365250, 46.271706>,  <42.224232, 42.116379, 46.378376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.409977, 41.365250, 46.271706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.039555, 41.407104, 46.416737>,  <41.817299, 41.432217, 46.503757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.039555, 41.407104, 46.416737>,  <42.409977, 41.365250, 46.271706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.039555, 41.407104, 46.416737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341063, -0.643302, -0.685448,
		0.161524, -0.758428, 0.631424,
		-0.926059, 0.104640, 0.362580,
		41.761738, 41.438496, 46.525509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.218346, 40.728340, 46.358646>,  <42.409977, 41.365250, 46.271706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.218346, 40.728340, 46.358646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.884834, 40.943726, 46.309883>,  <41.684727, 41.072956, 46.280624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.884834, 40.943726, 46.309883>,  <42.218346, 40.728340, 46.358646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.884834, 40.943726, 46.309883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338971, -0.673574, -0.656808,
		-0.435783, -0.506312, 0.744138,
		-0.833782, 0.538467, -0.121907,
		41.634701, 41.105267, 46.273312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769218, 40.267124, 46.445923>,  <42.218346, 40.728340, 46.358646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.769218, 40.267124, 46.445923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572880, 40.562206, 46.260513>,  <41.455074, 40.739254, 46.149265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572880, 40.562206, 46.260513>,  <41.769218, 40.267124, 46.445923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.572880, 40.562206, 46.260513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370311, -0.658233, -0.655438,
		-0.788629, -0.150072, 0.596274,
		-0.490850, 0.737705, -0.463528,
		41.425625, 40.783516, 46.121456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994728, 40.098709, 46.435902>,  <41.769218, 40.267124, 46.445923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994728, 40.098709, 46.435902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084869, 40.341625, 46.131161>,  <41.138954, 40.487373, 45.948315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084869, 40.341625, 46.131161>,  <40.994728, 40.098709, 46.435902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.084869, 40.341625, 46.131161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576753, -0.547073, -0.606685,
		-0.785221, 0.576118, 0.226971,
		0.225352, 0.607288, -0.761851,
		41.152473, 40.523811, 45.902607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420742, 39.968491, 45.937313>,  <40.994728, 40.098709, 46.435902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.420742, 39.968491, 45.937313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.636551, 40.216793, 45.709778>,  <40.766037, 40.365776, 45.573257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.636551, 40.216793, 45.709778>,  <40.420742, 39.968491, 45.937313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.636551, 40.216793, 45.709778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324690, -0.469952, -0.820805,
		-0.776848, 0.627538, -0.051995,
		0.539522, 0.620758, -0.568837,
		40.798409, 40.403019, 45.539127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955765, 40.170757, 45.378876>,  <40.420742, 39.968491, 45.937313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955765, 40.170757, 45.378876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327927, 40.225266, 45.242775>,  <40.551224, 40.257969, 45.161114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327927, 40.225266, 45.242775>,  <39.955765, 40.170757, 45.378876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327927, 40.225266, 45.242775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289353, -0.296721, -0.910072,
		-0.224974, 0.945192, -0.236642,
		0.930409, 0.136270, -0.340248,
		40.607048, 40.266148, 45.140701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890289, 40.497910, 44.699486>,  <39.955765, 40.170757, 45.378876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890289, 40.497910, 44.699486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249214, 40.322025, 44.714901>,  <40.464569, 40.216496, 44.724148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249214, 40.322025, 44.714901>,  <39.890289, 40.497910, 44.699486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249214, 40.322025, 44.714901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247078, -0.572703, -0.781641,
		0.365767, 0.691855, -0.622537,
		0.897311, -0.439714, 0.038534,
		40.518406, 40.190113, 44.726460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209534, 40.483173, 44.029068>,  <39.890289, 40.497910, 44.699486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209534, 40.483173, 44.029068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420345, 40.190521, 44.202023>,  <40.546833, 40.014931, 44.305794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420345, 40.190521, 44.202023>,  <40.209534, 40.483173, 44.029068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420345, 40.190521, 44.202023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151740, -0.581620, -0.799183,
		0.836188, 0.355586, -0.417551,
		0.527034, -0.731626, 0.432387,
		40.578457, 39.971035, 44.331738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.684208, 40.206631, 43.517113>,  <40.209534, 40.483173, 44.029068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.684208, 40.206631, 43.517113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658451, 39.913517, 43.788078>,  <40.642998, 39.737648, 43.950657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658451, 39.913517, 43.788078>,  <40.684208, 40.206631, 43.517113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658451, 39.913517, 43.788078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062143, -0.674558, -0.735602,
		0.995988, -0.089466, -0.002098,
		-0.064397, -0.732780, 0.677411,
		40.639133, 39.693684, 43.991302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162189, 39.769508, 43.331146>,  <40.684208, 40.206631, 43.517113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162189, 39.769508, 43.331146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894001, 39.563705, 43.544971>,  <40.733089, 39.440224, 43.673267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894001, 39.563705, 43.544971>,  <41.162189, 39.769508, 43.331146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.894001, 39.563705, 43.544971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042554, -0.692644, -0.720024,
		0.740717, -0.505501, 0.442501,
		-0.670468, -0.514503, 0.534564,
		40.692860, 39.409355, 43.705341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367748, 39.026752, 43.189842>,  <41.162189, 39.769508, 43.331146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367748, 39.026752, 43.189842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.995861, 39.009224, 43.336109>,  <40.772728, 38.998707, 43.423870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.995861, 39.009224, 43.336109>,  <41.367748, 39.026752, 43.189842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.995861, 39.009224, 43.336109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171112, -0.827823, -0.534256,
		0.326118, -0.559275, 0.762141,
		-0.929714, -0.043819, 0.365667,
		40.716946, 38.996078, 43.445808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297798, 38.297169, 43.446529>,  <41.367748, 39.026752, 43.189842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297798, 38.297169, 43.446529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.940205, 38.460335, 43.372341>,  <40.725651, 38.558235, 43.327827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.940205, 38.460335, 43.372341>,  <41.297798, 38.297169, 43.446529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940205, 38.460335, 43.372341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290175, -0.842396, -0.454057,
		-0.341460, -0.352099, 0.871454,
		-0.893982, 0.407916, -0.185474,
		40.672009, 38.582710, 43.316700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871262, 37.746479, 43.653511>,  <41.297798, 38.297169, 43.446529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.871262, 37.746479, 43.653511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648243, 37.985966, 43.423492>,  <40.514431, 38.129658, 43.285480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648243, 37.985966, 43.423492>,  <40.871262, 37.746479, 43.653511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648243, 37.985966, 43.423492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448076, -0.800182, -0.398669,
		-0.698830, 0.035387, 0.714412,
		-0.557552, 0.598712, -0.575047,
		40.480976, 38.165581, 43.250977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201122, 37.358616, 43.537922>,  <40.871262, 37.746479, 43.653511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201122, 37.358616, 43.537922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290558, 37.616695, 43.245697>,  <40.344219, 37.771545, 43.070362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290558, 37.616695, 43.245697>,  <40.201122, 37.358616, 43.537922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290558, 37.616695, 43.245697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297934, -0.668419, -0.681507,
		-0.928031, 0.370038, 0.042775,
		0.223592, 0.645203, -0.730561,
		40.357635, 37.810257, 43.026527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670246, 37.261959, 43.048962>,  <40.201122, 37.358616, 43.537922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670246, 37.261959, 43.048962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.954353, 37.441044, 42.831676>,  <40.124817, 37.548496, 42.701305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.954353, 37.441044, 42.831676>,  <39.670246, 37.261959, 43.048962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954353, 37.441044, 42.831676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212962, -0.598849, -0.772028,
		-0.670946, 0.664028, -0.329997,
		0.710267, 0.447712, -0.543208,
		40.167435, 37.575356, 42.668713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270184, 37.507488, 42.447773>,  <39.670246, 37.261959, 43.048962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270184, 37.507488, 42.447773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662022, 37.490387, 42.369221>,  <39.897125, 37.480125, 42.322090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662022, 37.490387, 42.369221>,  <39.270184, 37.507488, 42.447773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662022, 37.490387, 42.369221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187879, -0.541767, -0.819262,
		-0.071365, 0.839441, -0.538746,
		0.979596, -0.042752, -0.196376,
		39.955902, 37.477562, 42.310307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349190, 37.748699, 41.725292>,  <39.270184, 37.507488, 42.447773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349190, 37.748699, 41.725292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675701, 37.541458, 41.827477>,  <39.871609, 37.417114, 41.888786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675701, 37.541458, 41.827477>,  <39.349190, 37.748699, 41.725292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675701, 37.541458, 41.827477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063012, -0.519451, -0.852174,
		0.574214, 0.679513, -0.456663,
		0.816277, -0.518105, 0.255458,
		39.920586, 37.386028, 41.904114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573948, 37.522072, 41.110287>,  <39.349190, 37.748699, 41.725292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573948, 37.522072, 41.110287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785709, 37.284206, 41.352314>,  <39.912766, 37.141487, 41.497532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785709, 37.284206, 41.352314>,  <39.573948, 37.522072, 41.110287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785709, 37.284206, 41.352314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219777, -0.592731, -0.774834,
		0.819410, 0.543178, -0.183099,
		0.529401, -0.594666, 0.605068,
		39.944530, 37.105808, 41.533833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202869, 37.482533, 40.773399>,  <39.573948, 37.522072, 41.110287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.202869, 37.482533, 40.773399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148342, 37.171494, 41.018921>,  <40.115627, 36.984871, 41.166233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148342, 37.171494, 41.018921>,  <40.202869, 37.482533, 40.773399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148342, 37.171494, 41.018921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204548, -0.628329, -0.750575,
		0.969319, 0.023238, 0.244707,
		-0.136315, -0.777601, 0.613804,
		40.107449, 36.938213, 41.203060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689518, 36.977692, 40.600132>,  <40.202869, 37.482533, 40.773399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689518, 36.977692, 40.600132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.440659, 36.752411, 40.817657>,  <40.291344, 36.617245, 40.948174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.440659, 36.752411, 40.817657>,  <40.689518, 36.977692, 40.600132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440659, 36.752411, 40.817657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033826, -0.674631, -0.737379,
		0.782165, -0.477158, 0.400673,
		-0.622153, -0.563199, 0.543813,
		40.254013, 36.583450, 40.980801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966080, 36.310474, 40.506992>,  <40.689518, 36.977692, 40.600132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.966080, 36.310474, 40.506992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.583149, 36.300663, 40.622181>,  <40.353390, 36.294777, 40.691292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.583149, 36.300663, 40.622181>,  <40.966080, 36.310474, 40.506992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583149, 36.300663, 40.622181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209846, -0.626136, -0.750945,
		0.198727, -0.779328, 0.594269,
		-0.957325, -0.024528, 0.287969,
		40.295952, 36.293304, 40.708572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816406, 35.671246, 40.612133>,  <40.966080, 36.310474, 40.506992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816406, 35.671246, 40.612133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474220, 35.849003, 40.505775>,  <40.268909, 35.955658, 40.441963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474220, 35.849003, 40.505775>,  <40.816406, 35.671246, 40.612133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.474220, 35.849003, 40.505775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062868, -0.598756, -0.798460,
		-0.514033, -0.666337, 0.540152,
		-0.855464, 0.444394, -0.265889,
		40.217583, 35.982323, 40.426010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351833, 35.130753, 40.349510>,  <40.816406, 35.671246, 40.612133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351833, 35.130753, 40.349510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.221504, 35.480030, 40.204525>,  <40.143307, 35.689594, 40.117535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.221504, 35.480030, 40.204525>,  <40.351833, 35.130753, 40.349510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221504, 35.480030, 40.204525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058818, -0.401363, -0.914028,
		-0.943600, -0.276490, 0.182132,
		-0.325821, 0.873190, -0.362464,
		40.123756, 35.741985, 40.095787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988853, 34.894291, 39.851730>,  <40.351833, 35.130753, 40.349510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988853, 34.894291, 39.851730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989754, 35.279419, 39.743679>,  <39.990292, 35.510498, 39.678848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989754, 35.279419, 39.743679>,  <39.988853, 34.894291, 39.851730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989754, 35.279419, 39.743679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060603, -0.269760, -0.961019,
		-0.998159, -0.014211, -0.058955,
		0.002246, 0.962823, -0.270124,
		39.990429, 35.568264, 39.662643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537601, 34.942116, 39.276466>,  <39.988853, 34.894291, 39.851730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537601, 34.942116, 39.276466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.747765, 35.282452, 39.278412>,  <39.873863, 35.486652, 39.279579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.747765, 35.282452, 39.278412>,  <39.537601, 34.942116, 39.276466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747765, 35.282452, 39.278412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212323, -0.125576, -0.969097,
		-0.823932, 0.510205, -0.246630,
		0.525409, 0.850836, 0.004862,
		39.905388, 35.537701, 39.279869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326847, 35.383446, 38.621986>,  <39.537601, 34.942116, 39.276466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326847, 35.383446, 38.621986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.692760, 35.484600, 38.747986>,  <39.912308, 35.545292, 38.823586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.692760, 35.484600, 38.747986>,  <39.326847, 35.383446, 38.621986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692760, 35.484600, 38.747986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338482, -0.054286, -0.939406,
		-0.220463, 0.965972, -0.135257,
		0.914782, 0.252886, 0.314996,
		39.967194, 35.560467, 38.842484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471722, 35.909138, 38.099709>,  <39.326847, 35.383446, 38.621986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471722, 35.909138, 38.099709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806808, 35.793793, 38.285210>,  <40.007862, 35.724586, 38.396511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806808, 35.793793, 38.285210>,  <39.471722, 35.909138, 38.099709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806808, 35.793793, 38.285210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470493, -0.050005, -0.880985,
		0.277234, 0.956214, 0.093783,
		0.837721, -0.288364, 0.463755,
		40.058125, 35.707283, 38.424335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074959, 36.387608, 37.981163>,  <39.471722, 35.909138, 38.099709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074959, 36.387608, 37.981163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.243656, 36.042950, 38.094090>,  <40.344875, 35.836155, 38.161846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.243656, 36.042950, 38.094090>,  <40.074959, 36.387608, 37.981163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243656, 36.042950, 38.094090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704791, 0.115646, -0.699925,
		0.570437, 0.494163, 0.656052,
		0.421747, -0.861643, 0.282313,
		40.370182, 35.784458, 38.178783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821144, 36.455948, 37.798725>,  <40.074959, 36.387608, 37.981163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.821144, 36.455948, 37.798725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742767, 36.069019, 37.863106>,  <40.695744, 35.836864, 37.901733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742767, 36.069019, 37.863106>,  <40.821144, 36.455948, 37.798725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742767, 36.069019, 37.863106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613141, -0.248940, -0.749725,
		0.765288, -0.048217, 0.641879,
		-0.195939, -0.967318, 0.160947,
		40.683987, 35.778824, 37.911388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.477680, 36.081913, 37.899532>,  <40.821144, 36.455948, 37.798725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.477680, 36.081913, 37.899532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213177, 35.809761, 37.773155>,  <41.054474, 35.646469, 37.697327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213177, 35.809761, 37.773155>,  <41.477680, 36.081913, 37.899532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213177, 35.809761, 37.773155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602472, -0.230736, -0.764061,
		0.446951, -0.695590, 0.562485,
		-0.661259, -0.680379, -0.315946,
		41.014797, 35.605648, 37.678371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843441, 35.521782, 37.611275>,  <41.477680, 36.081913, 37.899532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.843441, 35.521782, 37.611275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483200, 35.476913, 37.443302>,  <41.267056, 35.449993, 37.342518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483200, 35.476913, 37.443302>,  <41.843441, 35.521782, 37.611275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483200, 35.476913, 37.443302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431887, -0.339724, -0.835501,
		-0.048943, -0.933813, 0.354399,
		-0.900599, -0.112168, -0.419929,
		41.213020, 35.443264, 37.317322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.756001, 34.897160, 37.153538>,  <41.843441, 35.521782, 37.611275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.756001, 34.897160, 37.153538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.414433, 35.067936, 37.034515>,  <41.209492, 35.170403, 36.963100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.414433, 35.067936, 37.034515>,  <41.756001, 34.897160, 37.153538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.414433, 35.067936, 37.034515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119802, -0.395143, -0.910774,
		-0.506428, -0.813376, 0.286271,
		-0.853919, 0.426945, -0.297555,
		41.158257, 35.196018, 36.945248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348057, 34.339989, 36.894104>,  <41.756001, 34.897160, 37.153538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348057, 34.339989, 36.894104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.244617, 34.687035, 36.724220>,  <41.182552, 34.895260, 36.622292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.244617, 34.687035, 36.724220>,  <41.348057, 34.339989, 36.894104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244617, 34.687035, 36.724220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188741, -0.385809, -0.903066,
		-0.947367, -0.313692, -0.063984,
		-0.258599, 0.867611, -0.424709,
		41.167038, 34.947319, 36.596809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057072, 34.172466, 36.326900>,  <41.348057, 34.339989, 36.894104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057072, 34.172466, 36.326900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133381, 34.552299, 36.227386>,  <41.179165, 34.780201, 36.167679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133381, 34.552299, 36.227386>,  <41.057072, 34.172466, 36.326900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133381, 34.552299, 36.227386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134705, -0.276368, -0.951565,
		-0.972348, 0.148019, -0.180637,
		0.190772, 0.949585, -0.248786,
		41.190613, 34.837173, 36.152752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921028, 34.340126, 35.541008>,  <41.057072, 34.172466, 36.326900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.921028, 34.340126, 35.541008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.184105, 34.586178, 35.714931>,  <41.341953, 34.733807, 35.819286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.184105, 34.586178, 35.714931>,  <40.921028, 34.340126, 35.541008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.184105, 34.586178, 35.714931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467071, 0.119851, -0.876060,
		-0.590999, 0.779266, -0.208482,
		0.657697, 0.615126, 0.434804,
		41.381413, 34.770714, 35.845371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965794, 35.034473, 35.216602>,  <40.921028, 34.340126, 35.541008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.965794, 35.034473, 35.216602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.297909, 34.889839, 35.386253>,  <41.497177, 34.803059, 35.488045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.297909, 34.889839, 35.386253>,  <40.965794, 35.034473, 35.216602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.297909, 34.889839, 35.386253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404398, -0.132810, -0.904889,
		0.383520, 0.922832, 0.035953,
		0.830286, -0.361583, 0.424127,
		41.546993, 34.781364, 35.513493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.519665, 35.458557, 34.998215>,  <40.965794, 35.034473, 35.216602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.519665, 35.458557, 34.998215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614395, 35.081165, 35.090961>,  <41.671234, 34.854729, 35.146610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614395, 35.081165, 35.090961>,  <41.519665, 35.458557, 34.998215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614395, 35.081165, 35.090961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568182, -0.059095, -0.820778,
		0.788089, 0.326122, 0.522073,
		0.236822, -0.943479, 0.231869,
		41.685440, 34.798122, 35.160522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.297276, 35.176781, 35.208721>,  <41.519665, 35.458557, 34.998215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.297276, 35.176781, 35.208721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.079269, 34.890450, 35.034111>,  <41.948467, 34.718651, 34.929344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.079269, 34.890450, 35.034111>,  <42.297276, 35.176781, 35.208721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.079269, 34.890450, 35.034111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637281, -0.015361, -0.770478,
		0.544823, -0.698110, 0.464554,
		-0.545015, -0.715826, -0.436523,
		41.915764, 34.675701, 34.903152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.748634, 34.635124, 35.139633>,  <42.297276, 35.176781, 35.208721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.748634, 34.635124, 35.139633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.449345, 34.638004, 34.874271>,  <42.269772, 34.639732, 34.715054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.449345, 34.638004, 34.874271>,  <42.748634, 34.635124, 35.139633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.449345, 34.638004, 34.874271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662611, -0.042038, -0.747783,
		-0.033276, -0.999090, 0.026680,
		-0.748224, 0.007205, -0.663408,
		42.224876, 34.640167, 34.675251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.946625, 34.044559, 34.757732>,  <42.748634, 34.635124, 35.139633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.946625, 34.044559, 34.757732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739529, 34.330467, 34.569668>,  <42.615269, 34.502010, 34.456829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739529, 34.330467, 34.569668>,  <42.946625, 34.044559, 34.757732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.739529, 34.330467, 34.569668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647056, -0.032368, -0.761755,
		-0.559697, -0.698612, -0.445737,
		-0.517744, 0.714769, -0.470157,
		42.584206, 34.544899, 34.428619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.625481, 33.873829, 34.021809>,  <42.946625, 34.044559, 34.757732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.625481, 33.873829, 34.021809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.761787, 34.247753, 34.061813>,  <42.843571, 34.472107, 34.085815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.761787, 34.247753, 34.061813>,  <42.625481, 33.873829, 34.021809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.761787, 34.247753, 34.061813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392635, -0.044849, -0.918600,
		-0.854233, 0.352300, -0.382323,
		0.340770, 0.934812, 0.100014,
		42.864017, 34.528198, 34.091816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.586208, 34.160530, 33.409924>,  <42.625481, 33.873829, 34.021809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.586208, 34.160530, 33.409924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.846630, 34.409687, 33.583416>,  <43.002884, 34.559181, 33.687511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.846630, 34.409687, 33.583416>,  <42.586208, 34.160530, 33.409924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.846630, 34.409687, 33.583416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520648, 0.049319, -0.852346,
		-0.552315, 0.780748, -0.292201,
		0.651056, 0.622897, 0.433734,
		43.041946, 34.596558, 33.713535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.578285, 34.813721, 33.134823>,  <42.586208, 34.160530, 33.409924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.578285, 34.813721, 33.134823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955624, 34.773884, 33.261425>,  <43.182026, 34.749981, 33.337387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955624, 34.773884, 33.261425>,  <42.578285, 34.813721, 33.134823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955624, 34.773884, 33.261425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331764, 0.298341, -0.894944,
		-0.005299, 0.949249, 0.314480,
		0.943348, -0.099591, 0.316507,
		43.238628, 34.744007, 33.356377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.926010, 35.441475, 32.918625>,  <42.578285, 34.813721, 33.134823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.926010, 35.441475, 32.918625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245621, 35.217148, 33.005383>,  <43.437386, 35.082554, 33.057438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245621, 35.217148, 33.005383>,  <42.926010, 35.441475, 32.918625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.245621, 35.217148, 33.005383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448727, 0.316045, -0.835918,
		0.400248, 0.765247, 0.504182,
		0.799028, -0.560815, 0.216891,
		43.485329, 35.048904, 33.070450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.565556, 35.837452, 32.967800>,  <42.926010, 35.441475, 32.918625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.565556, 35.837452, 32.967800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.703369, 35.469196, 32.894356>,  <43.786057, 35.248241, 32.850288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.703369, 35.469196, 32.894356>,  <43.565556, 35.837452, 32.967800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.703369, 35.469196, 32.894356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482294, 0.341389, -0.806751,
		0.805411, 0.189400, 0.561640,
		0.344536, -0.920642, -0.183612,
		43.806728, 35.193005, 32.839272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.324963, 35.989853, 32.868824>,  <43.565556, 35.837452, 32.967800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.324963, 35.989853, 32.868824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.274746, 35.624130, 32.714794>,  <44.244617, 35.404697, 32.622375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.274746, 35.624130, 32.714794>,  <44.324963, 35.989853, 32.868824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.274746, 35.624130, 32.714794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603844, 0.237549, -0.760883,
		0.787154, -0.328050, 0.522275,
		-0.125542, -0.914305, -0.385079,
		44.237083, 35.349838, 32.599270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.050316, 35.640709, 32.700783>,  <44.324963, 35.989853, 32.868824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.050316, 35.640709, 32.700783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.763294, 35.487900, 32.467827>,  <44.591080, 35.396214, 32.328053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.763294, 35.487900, 32.467827>,  <45.050316, 35.640709, 32.700783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.763294, 35.487900, 32.467827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405903, 0.450132, -0.795377,
		0.566001, -0.807119, -0.167931,
		-0.717555, -0.382021, -0.582387,
		44.548027, 35.373295, 32.293110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.388721, 35.339870, 32.104221>,  <45.050316, 35.640709, 32.700783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.388721, 35.339870, 32.104221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.011547, 35.356411, 31.972061>,  <44.785244, 35.366337, 31.892765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.011547, 35.356411, 31.972061>,  <45.388721, 35.339870, 32.104221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.011547, 35.356411, 31.972061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328855, 0.271286, -0.904576,
		0.052225, -0.961610, -0.269405,
		-0.942935, 0.041353, -0.330398,
		44.728668, 35.368816, 31.872942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.370319, 34.956245, 31.359812>,  <45.388721, 35.339870, 32.104221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.370319, 34.956245, 31.359812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.040146, 35.181023, 31.381311>,  <44.842041, 35.315887, 31.394211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.040146, 35.181023, 31.381311>,  <45.370319, 34.956245, 31.359812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.040146, 35.181023, 31.381311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238210, 0.433052, -0.869323,
		-0.511782, -0.704762, -0.491314,
		-0.825430, 0.561940, 0.053747,
		44.792519, 35.349606, 31.397436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.976414, 34.901226, 30.750427>,  <45.370319, 34.956245, 31.359812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.976414, 34.901226, 30.750427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.830231, 35.244312, 30.895071>,  <44.742523, 35.450165, 30.981857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.830231, 35.244312, 30.895071>,  <44.976414, 34.901226, 30.750427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.830231, 35.244312, 30.895071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039295, 0.373921, -0.926628,
		-0.929999, -0.352851, -0.102948,
		-0.365456, 0.857717, 0.361612,
		44.720592, 35.501629, 31.003555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.426117, 35.054253, 30.231861>,  <44.976414, 34.901226, 30.750427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.426117, 35.054253, 30.231861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.544758, 35.386658, 30.420094>,  <44.615944, 35.586102, 30.533033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.544758, 35.386658, 30.420094>,  <44.426117, 35.054253, 30.231861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.544758, 35.386658, 30.420094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039408, 0.481683, -0.875459,
		-0.954188, 0.278207, 0.110120,
		0.296602, 0.831013, 0.470580,
		44.633739, 35.635963, 30.561268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.133068, 35.543522, 29.808111>,  <44.426117, 35.054253, 30.231861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.133068, 35.543522, 29.808111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.383881, 35.774353, 30.017424>,  <44.534367, 35.912849, 30.143011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.383881, 35.774353, 30.017424>,  <44.133068, 35.543522, 29.808111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.383881, 35.774353, 30.017424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250450, 0.486733, -0.836879,
		-0.737639, 0.655801, 0.160666,
		0.627027, 0.577075, 0.523279,
		44.571987, 35.947475, 30.174408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.965572, 36.266518, 29.687059>,  <44.133068, 35.543522, 29.808111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.965572, 36.266518, 29.687059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.351204, 36.248455, 29.791765>,  <44.582581, 36.237617, 29.854589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.351204, 36.248455, 29.791765>,  <43.965572, 36.266518, 29.687059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.351204, 36.248455, 29.791765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240637, 0.565804, -0.788644,
		-0.112493, 0.823302, 0.556345,
		0.964074, -0.045160, 0.261766,
		44.640427, 36.234905, 29.870295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.200710, 36.858036, 29.535215>,  <43.965572, 36.266518, 29.687059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.200710, 36.858036, 29.535215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.560139, 36.697372, 29.605911>,  <44.775795, 36.600975, 29.648329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.560139, 36.697372, 29.605911>,  <44.200710, 36.858036, 29.535215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.560139, 36.697372, 29.605911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424038, 0.691105, -0.585292,
		0.112942, 0.600871, 0.791327,
		0.898574, -0.401657, 0.176738,
		44.829712, 36.576874, 29.658932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.651272, 37.419777, 29.679256>,  <44.200710, 36.858036, 29.535215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.651272, 37.419777, 29.679256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.874519, 37.104351, 29.575979>,  <45.008469, 36.915096, 29.514013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.874519, 37.104351, 29.575979>,  <44.651272, 37.419777, 29.679256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.874519, 37.104351, 29.575979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583456, 0.594215, -0.553613,
		0.589983, 0.158338, 0.791738,
		0.558120, -0.788567, -0.258194,
		45.041954, 36.867783, 29.498522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.423809, 37.762257, 29.775339>,  <44.651272, 37.419777, 29.679256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.423809, 37.762257, 29.775339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.451054, 37.432247, 29.550947>,  <45.467400, 37.234241, 29.416313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.451054, 37.432247, 29.550947>,  <45.423809, 37.762257, 29.775339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.451054, 37.432247, 29.550947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496901, 0.515635, -0.698004,
		0.865130, -0.231209, 0.445076,
		0.068112, -0.825023, -0.560979,
		45.471489, 37.184742, 29.382654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.137146, 37.731377, 29.562647>,  <45.423809, 37.762257, 29.775339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.137146, 37.731377, 29.562647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.880775, 37.554688, 29.311539>,  <45.726955, 37.448673, 29.160873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.880775, 37.554688, 29.311539>,  <46.137146, 37.731377, 29.562647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.880775, 37.554688, 29.311539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350309, 0.559377, -0.751253,
		0.683008, -0.701409, -0.203778,
		-0.640924, -0.441726, -0.627769,
		45.688499, 37.422169, 29.123207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.426399, 37.661057, 28.972164>,  <46.137146, 37.731377, 29.562647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.426399, 37.661057, 28.972164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.070431, 37.565376, 28.816820>,  <45.856850, 37.507969, 28.723614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.070431, 37.565376, 28.816820>,  <46.426399, 37.661057, 28.972164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.070431, 37.565376, 28.816820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228451, 0.503201, -0.833426,
		0.394774, -0.830406, -0.393166,
		-0.889923, -0.239196, -0.388358,
		45.803455, 37.493618, 28.700314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.567051, 37.557529, 28.358452>,  <46.426399, 37.661057, 28.972164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.567051, 37.557529, 28.358452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.176788, 37.644913, 28.366072>,  <45.942631, 37.697342, 28.370644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.176788, 37.644913, 28.366072>,  <46.567051, 37.557529, 28.358452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.176788, 37.644913, 28.366072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126002, 0.629602, -0.766632,
		-0.179472, -0.745572, -0.641804,
		-0.975661, 0.218458, 0.019052,
		45.884090, 37.710449, 28.371788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.437679, 37.787910, 27.729685>,  <46.567051, 37.557529, 28.358452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.437679, 37.787910, 27.729685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.127529, 37.944950, 27.927536>,  <45.941437, 38.039173, 28.046246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.127529, 37.944950, 27.927536>,  <46.437679, 37.787910, 27.729685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.127529, 37.944950, 27.927536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062473, 0.731728, -0.678728,
		-0.628400, -0.557171, -0.542839,
		-0.775378, 0.392599, 0.494626,
		45.894917, 38.062729, 28.075924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.073559, 37.940617, 27.116777>,  <46.437679, 37.787910, 27.729685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.073559, 37.940617, 27.116777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.942699, 38.171558, 27.416012>,  <45.864185, 38.310123, 27.595552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.942699, 38.171558, 27.416012>,  <46.073559, 37.940617, 27.116777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.942699, 38.171558, 27.416012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017483, 0.795210, -0.606082,
		-0.944812, -0.185199, -0.270245,
		-0.327148, 0.577358, 0.748086,
		45.844555, 38.344765, 27.640438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.881977, 38.446289, 26.741184>,  <46.073559, 37.940617, 27.116777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.881977, 38.446289, 26.741184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.905048, 38.599720, 27.109867>,  <45.918892, 38.691776, 27.331078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.905048, 38.599720, 27.109867>,  <45.881977, 38.446289, 26.741184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.905048, 38.599720, 27.109867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296198, 0.875098, -0.382715,
		-0.953383, 0.295082, -0.063140,
		0.057679, 0.383576, 0.921707,
		45.922352, 38.714794, 27.386379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.511227, 39.176823, 26.894955>,  <45.881977, 38.446289, 26.741184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.511227, 39.176823, 26.894955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.850288, 39.093254, 27.090031>,  <46.053726, 39.043114, 27.207075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.850288, 39.093254, 27.090031>,  <45.511227, 39.176823, 26.894955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.850288, 39.093254, 27.090031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381836, 0.878424, -0.287356,
		-0.368363, 0.429794, 0.824370,
		0.847650, -0.208923, 0.487689,
		46.104584, 39.030579, 27.236338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.696438, 39.761612, 27.305483>,  <45.511227, 39.176823, 26.894955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.696438, 39.761612, 27.305483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.005646, 39.531624, 27.198265>,  <46.191170, 39.393631, 27.133934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.005646, 39.531624, 27.198265>,  <45.696438, 39.761612, 27.305483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.005646, 39.531624, 27.198265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503599, 0.813141, -0.291874,
		0.385776, 0.090638, 0.918129,
		0.773023, -0.574967, -0.268046,
		46.237553, 39.359135, 27.117851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.357433, 39.926781, 27.727909>,  <45.696438, 39.761612, 27.305483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.357433, 39.926781, 27.727909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.377083, 39.821510, 27.342510>,  <46.388874, 39.758350, 27.111271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.377083, 39.821510, 27.342510>,  <46.357433, 39.926781, 27.727909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.377083, 39.821510, 27.342510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458909, 0.862756, -0.212259,
		0.887124, -0.431730, 0.163156,
		0.049125, -0.263174, -0.963497,
		46.391819, 39.742558, 27.053461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.017200, 39.950195, 28.068216>,  <46.357433, 39.926781, 27.727909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.017200, 39.950195, 28.068216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.971138, 39.576183, 27.934074>,  <46.943501, 39.351776, 27.853590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.971138, 39.576183, 27.934074>,  <47.017200, 39.950195, 28.068216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.971138, 39.576183, 27.934074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406596, 0.263654, -0.874738,
		0.906321, -0.237089, 0.349816,
		-0.115160, -0.935027, -0.335354,
		46.936588, 39.295673, 27.833467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.606823, 40.187359, 28.677298>,  <47.017200, 39.950195, 28.068216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.606823, 40.187359, 28.677298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.544357, 39.920563, 28.968706>,  <46.506878, 39.760487, 29.143551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.544357, 39.920563, 28.968706>,  <46.606823, 40.187359, 28.677298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.544357, 39.920563, 28.968706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976113, 0.008574, 0.217094,
		-0.151045, 0.745020, 0.649715,
		-0.156169, -0.666987, 0.728519,
		46.497505, 39.720467, 29.187262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.991001, 40.817142, 28.882095>,  <46.606823, 40.187359, 28.677298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.991001, 40.817142, 28.882095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.715939, 41.082680, 28.764496>,  <46.550900, 41.242004, 28.693937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.715939, 41.082680, 28.764496>,  <46.991001, 40.817142, 28.882095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.715939, 41.082680, 28.764496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432471, -0.049269, 0.900301,
		0.583177, 0.746244, 0.320975,
		-0.687658, 0.663847, -0.293996,
		46.509640, 41.281834, 28.676296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.899181, 41.301483, 29.425415>,  <46.991001, 40.817142, 28.882095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.899181, 41.301483, 29.425415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.546169, 41.256680, 29.242727>,  <46.334362, 41.229797, 29.133116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.546169, 41.256680, 29.242727>,  <46.899181, 41.301483, 29.425415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.546169, 41.256680, 29.242727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465813, 0.075094, 0.881691,
		-0.064460, 0.990866, -0.118448,
		-0.882532, -0.112008, -0.456717,
		46.281410, 41.223076, 29.105713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.420074, 41.841259, 29.596491>,  <46.899181, 41.301483, 29.425415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.420074, 41.841259, 29.596491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.196335, 41.523731, 29.501011>,  <46.062092, 41.333214, 29.443724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.196335, 41.523731, 29.501011>,  <46.420074, 41.841259, 29.596491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.196335, 41.523731, 29.501011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490455, 0.084785, 0.867332,
		-0.668268, 0.602213, -0.436758,
		-0.559349, -0.793821, -0.238700,
		46.028530, 41.285583, 29.429401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.888802, 42.323360, 29.794777>,  <46.420074, 41.841259, 29.596491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.888802, 42.323360, 29.794777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.852604, 42.706051, 29.684158>,  <45.830887, 42.935665, 29.617786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.852604, 42.706051, 29.684158>,  <45.888802, 42.323360, 29.794777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.852604, 42.706051, 29.684158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080267, 0.269776, 0.959572,
		0.992657, 0.109032, 0.052381,
		-0.090493, 0.956730, -0.276547,
		45.825455, 42.993069, 29.601194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.420185, 42.790062, 30.136782>,  <45.888802, 42.323360, 29.794777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.420185, 42.790062, 30.136782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.069633, 42.953312, 30.239079>,  <45.859303, 43.051262, 30.300457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.069633, 42.953312, 30.239079>,  <46.420185, 42.790062, 30.136782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.069633, 42.953312, 30.239079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216028, -0.807672, 0.548634,
		0.430465, 0.425561, 0.795989,
		-0.876374, 0.408123, 0.255741,
		45.806721, 43.075748, 30.315802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.352436, 42.883419, 30.870110>,  <46.420185, 42.790062, 30.136782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.352436, 42.883419, 30.870110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.007580, 42.816086, 30.678953>,  <45.800667, 42.775684, 30.564259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.007580, 42.816086, 30.678953>,  <46.352436, 42.883419, 30.870110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.007580, 42.816086, 30.678953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235059, -0.702671, 0.671566,
		-0.448848, 0.691316, 0.566231,
		-0.862139, -0.168333, -0.477892,
		45.748940, 42.765587, 30.535585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.919094, 42.779854, 31.442709>,  <46.352436, 42.883419, 30.870110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.919094, 42.779854, 31.442709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.764034, 42.611217, 31.114809>,  <45.670998, 42.510036, 30.918068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.764034, 42.611217, 31.114809>,  <45.919094, 42.779854, 31.442709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.764034, 42.611217, 31.114809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496956, -0.653410, 0.571043,
		-0.776378, 0.628745, 0.043783,
		-0.387649, -0.421587, -0.819751,
		45.647739, 42.484741, 30.868883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.253078, 42.754295, 31.520166>,  <45.919094, 42.779854, 31.442709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.253078, 42.754295, 31.520166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.290997, 42.484608, 31.227198>,  <45.313747, 42.322796, 31.051416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.290997, 42.484608, 31.227198>,  <45.253078, 42.754295, 31.520166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.290997, 42.484608, 31.227198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486298, -0.673337, 0.556894,
		-0.868636, 0.303385, -0.391700,
		0.094792, -0.674221, -0.732421,
		45.319435, 42.282341, 31.007471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.703354, 42.372368, 31.624016>,  <45.253078, 42.754295, 31.520166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.703354, 42.372368, 31.624016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.898602, 42.118500, 31.384369>,  <45.015751, 41.966179, 31.240582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.898602, 42.118500, 31.384369>,  <44.703354, 42.372368, 31.624016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.898602, 42.118500, 31.384369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465161, -0.770005, 0.436713,
		-0.738488, 0.065516, -0.671076,
		0.488120, -0.634666, -0.599115,
		45.045036, 41.928101, 31.204634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.176170, 41.895119, 31.336451>,  <44.703354, 42.372368, 31.624016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.176170, 41.895119, 31.336451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.535770, 41.722340, 31.307529>,  <44.751530, 41.618671, 31.290176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.535770, 41.722340, 31.307529>,  <44.176170, 41.895119, 31.336451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.535770, 41.722340, 31.307529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372721, -0.841280, 0.391570,
		-0.229965, -0.325070, -0.917303,
		0.898997, -0.431945, -0.072305,
		44.805470, 41.592754, 31.285837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.017933, 41.276699, 31.134899>,  <44.176170, 41.895119, 31.336451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.017933, 41.276699, 31.134899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396904, 41.230782, 31.254366>,  <44.624287, 41.203232, 31.326046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396904, 41.230782, 31.254366>,  <44.017933, 41.276699, 31.134899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.396904, 41.230782, 31.254366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260910, -0.817493, 0.513450,
		0.185215, -0.564382, -0.804468,
		0.947429, -0.114795, 0.298665,
		44.681133, 41.196342, 31.343966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.202354, 40.565567, 30.926222>,  <44.017933, 41.276699, 31.134899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.202354, 40.565567, 30.926222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.432976, 40.679134, 31.232679>,  <44.571346, 40.747276, 31.416553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.432976, 40.679134, 31.232679>,  <44.202354, 40.565567, 30.926222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.432976, 40.679134, 31.232679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182611, -0.869187, 0.459528,
		0.796395, -0.404848, -0.449281,
		0.576549, 0.283922, 0.766146,
		44.605942, 40.764313, 31.462523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.783096, 40.028572, 30.991364>,  <44.202354, 40.565567, 30.926222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.783096, 40.028572, 30.991364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.740616, 40.193989, 31.353071>,  <44.715126, 40.293240, 31.570095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.740616, 40.193989, 31.353071>,  <44.783096, 40.028572, 30.991364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.740616, 40.193989, 31.353071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143518, -0.906265, 0.397602,
		0.983933, -0.087553, 0.155598,
		-0.106201, 0.413544, 0.904269,
		44.708755, 40.318050, 31.624352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.101562, 39.482090, 31.439075>,  <44.783096, 40.028572, 30.991364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.101562, 39.482090, 31.439075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.902164, 39.711323, 31.699257>,  <44.782528, 39.848862, 31.855366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.902164, 39.711323, 31.699257>,  <45.101562, 39.482090, 31.439075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.902164, 39.711323, 31.699257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067876, -0.773822, 0.629756,
		0.864234, 0.269778, 0.424641,
		-0.498491, 0.573079, 0.650451,
		44.752617, 39.883247, 31.894392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.421120, 39.335388, 32.022434>,  <45.101562, 39.482090, 31.439075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.421120, 39.335388, 32.022434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.062439, 39.482105, 32.121540>,  <44.847229, 39.570137, 32.181004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.062439, 39.482105, 32.121540>,  <45.421120, 39.335388, 32.022434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.062439, 39.482105, 32.121540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072748, -0.674257, 0.734905,
		0.436614, 0.640968, 0.631292,
		-0.896703, 0.366795, 0.247761,
		44.793427, 39.592144, 32.195869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.471466, 39.554638, 32.725685>,  <45.421120, 39.335388, 32.022434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.471466, 39.554638, 32.725685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.087540, 39.473236, 32.648384>,  <44.857185, 39.424397, 32.602005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.087540, 39.473236, 32.648384>,  <45.471466, 39.554638, 32.725685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.087540, 39.473236, 32.648384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019122, -0.639580, 0.768486,
		-0.279990, 0.741298, 0.609986,
		-0.959812, -0.203505, -0.193251,
		44.799595, 39.412186, 32.590408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.301872, 39.391457, 33.352074>,  <45.471466, 39.554638, 32.725685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.301872, 39.391457, 33.352074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.986782, 39.274323, 33.135288>,  <44.797726, 39.204041, 33.005215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.986782, 39.274323, 33.135288>,  <45.301872, 39.391457, 33.352074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.986782, 39.274323, 33.135288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222852, -0.684734, 0.693885,
		-0.574299, 0.667372, 0.474126,
		-0.787729, -0.292838, -0.541967,
		44.750462, 39.186470, 32.972698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.765644, 39.337402, 33.791729>,  <45.301872, 39.391457, 33.352074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.765644, 39.337402, 33.791729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.657654, 39.082470, 33.503029>,  <44.592857, 38.929508, 33.329811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.657654, 39.082470, 33.503029>,  <44.765644, 39.337402, 33.791729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.657654, 39.082470, 33.503029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142292, -0.714942, 0.684552,
		-0.952294, 0.287513, 0.102332,
		-0.269979, -0.637334, -0.721746,
		44.576660, 38.891270, 33.286507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.283058, 38.862480, 34.143425>,  <44.765644, 39.337402, 33.791729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.283058, 38.862480, 34.143425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.385372, 38.683121, 33.800842>,  <44.446762, 38.575504, 33.595291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.385372, 38.683121, 33.800842>,  <44.283058, 38.862480, 34.143425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.385372, 38.683121, 33.800842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109423, -0.893662, 0.435194,
		-0.960521, -0.017600, -0.277649,
		0.255784, -0.448395, -0.856456,
		44.462109, 38.548603, 33.543907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.727287, 38.347794, 33.946537>,  <44.283058, 38.862480, 34.143425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.727287, 38.347794, 33.946537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.064915, 38.248016, 33.756664>,  <44.267490, 38.188148, 33.642738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.064915, 38.248016, 33.756664>,  <43.727287, 38.347794, 33.946537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.064915, 38.248016, 33.756664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160017, -0.962053, 0.221018,
		-0.511805, -0.110597, -0.851953,
		0.844068, -0.249445, -0.474686,
		44.318134, 38.173183, 33.614258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.640305, 37.699364, 33.974167>,  <43.727287, 38.347794, 33.946537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.640305, 37.699364, 33.974167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.018845, 37.711021, 33.845432>,  <44.245968, 37.718014, 33.768192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.018845, 37.711021, 33.845432>,  <43.640305, 37.699364, 33.974167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.018845, 37.711021, 33.845432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151214, -0.920098, 0.361323,
		-0.285593, -0.390603, -0.875138,
		0.946346, 0.029142, -0.321838,
		44.302750, 37.719765, 33.748882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.775387, 37.079395, 33.705215>,  <43.640305, 37.699364, 33.974167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.775387, 37.079395, 33.705215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.136219, 37.224495, 33.798744>,  <44.352718, 37.311554, 33.854862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.136219, 37.224495, 33.798744>,  <43.775387, 37.079395, 33.705215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.136219, 37.224495, 33.798744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251341, -0.881993, 0.398643,
		0.350833, -0.300838, -0.886799,
		0.902078, 0.362746, 0.233819,
		44.406841, 37.333317, 33.868889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.191334, 36.626305, 33.398346>,  <43.775387, 37.079395, 33.705215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.191334, 36.626305, 33.398346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.427067, 36.816582, 33.659546>,  <44.568508, 36.930748, 33.816265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.427067, 36.816582, 33.659546>,  <44.191334, 36.626305, 33.398346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.427067, 36.816582, 33.659546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458893, -0.862328, 0.214029,
		0.664908, 0.173521, -0.726490,
		0.589334, 0.475691, 0.652997,
		44.603867, 36.959290, 33.855446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.924622, 36.464558, 33.240345>,  <44.191334, 36.626305, 33.398346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.924622, 36.464558, 33.240345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.906937, 36.575005, 33.624386>,  <44.896324, 36.641273, 33.854813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.906937, 36.575005, 33.624386>,  <44.924622, 36.464558, 33.240345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.906937, 36.575005, 33.624386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461236, -0.846846, 0.264788,
		0.886175, 0.454542, -0.089916,
		-0.044212, 0.276121, 0.960106,
		44.893673, 36.657841, 33.912418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.625927, 36.607121, 33.589413>,  <44.924622, 36.464558, 33.240345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.625927, 36.607121, 33.589413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.369053, 36.491791, 33.873516>,  <45.214928, 36.422592, 34.043980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.369053, 36.491791, 33.873516>,  <45.625927, 36.607121, 33.589413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.369053, 36.491791, 33.873516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610000, -0.753340, 0.245721,
		0.464221, 0.591058, 0.659658,
		-0.642182, -0.288323, 0.710262,
		45.176399, 36.405293, 34.086594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.035065, 36.435841, 34.177067>,  <45.625927, 36.607121, 33.589413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.035065, 36.435841, 34.177067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.677292, 36.257797, 34.194393>,  <45.462627, 36.150970, 34.204788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.677292, 36.257797, 34.194393>,  <46.035065, 36.435841, 34.177067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.677292, 36.257797, 34.194393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446449, -0.883075, 0.144433,
		-0.026033, 0.148526, 0.988566,
		-0.894430, -0.445104, 0.043320,
		45.408962, 36.124268, 34.207390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.660278, 36.238987, 34.581554>,  <46.035065, 36.435841, 34.177067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.660278, 36.238987, 34.581554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.618690, 35.909214, 34.804085>,  <46.593739, 35.711349, 34.937603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.618690, 35.909214, 34.804085>,  <46.660278, 36.238987, 34.581554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.618690, 35.909214, 34.804085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876649, -0.340161, -0.340259,
		0.469761, 0.452324, 0.758108,
		-0.103971, -0.824435, 0.556324,
		46.587498, 35.661884, 34.970982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.171383, 36.073769, 35.169415>,  <46.660278, 36.238987, 34.581554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.171383, 36.073769, 35.169415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.032810, 35.737408, 35.003101>,  <46.949669, 35.535591, 34.903313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.032810, 35.737408, 35.003101>,  <47.171383, 36.073769, 35.169415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.032810, 35.737408, 35.003101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930675, -0.252521, -0.264723,
		0.117611, -0.478668, 0.870083,
		-0.346428, -0.840899, -0.415785,
		46.928883, 35.485138, 34.878365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.473095, 35.482498, 35.379971>,  <47.171383, 36.073769, 35.169415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.473095, 35.482498, 35.379971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.368450, 35.388573, 35.005501>,  <47.305664, 35.332218, 34.780819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.368450, 35.388573, 35.005501>,  <47.473095, 35.482498, 35.379971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.368450, 35.388573, 35.005501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951194, -0.227208, -0.208821,
		-0.163671, -0.945112, 0.282798,
		-0.261613, -0.234818, -0.936173,
		47.289967, 35.318127, 34.724648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.591980, 34.789631, 35.244156>,  <47.473095, 35.482498, 35.379971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.591980, 34.789631, 35.244156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.622562, 35.021496, 34.919651>,  <47.640911, 35.160614, 34.724949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.622562, 35.021496, 34.919651>,  <47.591980, 34.789631, 35.244156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.622562, 35.021496, 34.919651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974960, -0.213869, -0.060935,
		-0.208826, -0.786288, -0.581500,
		0.076452, 0.579664, -0.811261,
		47.645496, 35.195396, 34.676273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.581085, 43.445435, 42.636162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.222637, 43.268234, 42.646954>,  <37.007568, 43.161915, 42.653427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.222637, 43.268234, 42.646954>,  <37.581085, 43.445435, 42.636162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222637, 43.268234, 42.646954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105969, -0.272601, -0.956274,
		0.430981, -0.854074, 0.291226,
		-0.896117, -0.442997, 0.026980,
		36.953800, 43.135334, 42.655048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694778, 42.818245, 42.236610>,  <37.581085, 43.445435, 42.636162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694778, 42.818245, 42.236610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.299156, 42.850433, 42.286076>,  <37.061783, 42.869747, 42.315754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.299156, 42.850433, 42.286076>,  <37.694778, 42.818245, 42.236610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299156, 42.850433, 42.286076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147134, -0.476141, -0.866972,
		-0.010886, -0.875679, 0.482771,
		-0.989057, 0.080470, 0.123659,
		37.002438, 42.874573, 42.323174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398552, 42.139198, 42.242130>,  <37.694778, 42.818245, 42.236610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398552, 42.139198, 42.242130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.106079, 42.391342, 42.137802>,  <36.930595, 42.542629, 42.075207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.106079, 42.391342, 42.137802>,  <37.398552, 42.139198, 42.242130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106079, 42.391342, 42.137802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118880, -0.494215, -0.861173,
		-0.671748, -0.598665, 0.436297,
		-0.731178, 0.630358, -0.260819,
		36.886726, 42.580448, 42.059555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892532, 41.630222, 41.938557>,  <37.398552, 42.139198, 42.242130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892532, 41.630222, 41.938557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.794113, 41.988762, 41.791035>,  <36.735062, 42.203884, 41.702522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.794113, 41.988762, 41.791035>,  <36.892532, 41.630222, 41.938557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794113, 41.988762, 41.791035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042643, -0.390148, -0.919764,
		-0.968320, -0.210575, 0.134217,
		-0.246044, 0.896350, -0.368809,
		36.720299, 42.257668, 41.680393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323460, 41.532749, 41.485435>,  <36.892532, 41.630222, 41.938557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323460, 41.532749, 41.485435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.489510, 41.877602, 41.369232>,  <36.589138, 42.084515, 41.299511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.489510, 41.877602, 41.369232>,  <36.323460, 41.532749, 41.485435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489510, 41.877602, 41.369232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055133, -0.342578, -0.937870,
		-0.908092, 0.373317, -0.189745,
		0.415125, 0.862134, -0.290510,
		36.614048, 42.136242, 41.282078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919117, 41.732224, 40.880348>,  <36.323460, 41.532749, 41.485435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919117, 41.732224, 40.880348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.273849, 41.916401, 40.864761>,  <36.486691, 42.026905, 40.855408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.273849, 41.916401, 40.864761>,  <35.919117, 41.732224, 40.880348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273849, 41.916401, 40.864761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244760, -0.539599, -0.805559,
		-0.391939, 0.704860, -0.591233,
		0.886835, 0.460440, -0.038969,
		36.539902, 42.054531, 40.853069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025158, 41.873463, 40.196327>,  <35.919117, 41.732224, 40.880348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025158, 41.873463, 40.196327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.391418, 41.883709, 40.356789>,  <36.611176, 41.889858, 40.453068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.391418, 41.883709, 40.356789>,  <36.025158, 41.873463, 40.196327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391418, 41.883709, 40.356789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300916, -0.705364, -0.641803,
		0.266519, 0.708382, -0.653576,
		0.915651, 0.025619, 0.401156,
		36.666115, 41.891396, 40.477135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475670, 41.903996, 39.612762>,  <36.025158, 41.873463, 40.196327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475670, 41.903996, 39.612762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.731316, 41.785847, 39.896816>,  <36.884701, 41.714958, 40.067249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.731316, 41.785847, 39.896816>,  <36.475670, 41.903996, 39.612762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731316, 41.785847, 39.896816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413113, -0.646980, -0.640902,
		0.648749, 0.702973, -0.291468,
		0.639110, -0.295375, 0.710135,
		36.923050, 41.697235, 40.109856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229176, 41.871971, 39.263645>,  <36.475670, 41.903996, 39.612762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229176, 41.871971, 39.263645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.233738, 41.645618, 39.593407>,  <37.236473, 41.509808, 39.791264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.233738, 41.645618, 39.593407>,  <37.229176, 41.871971, 39.263645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233738, 41.645618, 39.593407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442261, -0.736580, -0.511717,
		0.896814, 0.370438, 0.241870,
		0.011403, -0.565885, 0.824406,
		37.237160, 41.475853, 39.840729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920193, 41.573090, 39.283752>,  <37.229176, 41.871971, 39.263645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920193, 41.573090, 39.283752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.687401, 41.333843, 39.504139>,  <37.547726, 41.190296, 39.636372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.687401, 41.333843, 39.504139>,  <37.920193, 41.573090, 39.283752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687401, 41.333843, 39.504139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345738, -0.795227, -0.498075,
		0.736047, -0.099380, 0.669596,
		-0.581980, -0.598111, 0.550965,
		37.512806, 41.154411, 39.669430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358669, 41.143570, 39.579647>,  <37.920193, 41.573090, 39.283752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358669, 41.143570, 39.579647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.995029, 40.980103, 39.547337>,  <37.776844, 40.882023, 39.527950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.995029, 40.980103, 39.547337>,  <38.358669, 41.143570, 39.579647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995029, 40.980103, 39.547337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395509, -0.785865, -0.475383,
		0.130795, -0.464119, 0.876063,
		-0.909102, -0.408668, -0.080776,
		37.722298, 40.857502, 39.523102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511150, 40.392452, 39.622204>,  <38.358669, 41.143570, 39.579647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511150, 40.392452, 39.622204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.125423, 40.387936, 39.516396>,  <37.893990, 40.385227, 39.452911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.125423, 40.387936, 39.516396>,  <38.511150, 40.392452, 39.622204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125423, 40.387936, 39.516396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143152, -0.862694, -0.485043,
		-0.222722, -0.505600, 0.833525,
		-0.964314, -0.011291, -0.264519,
		37.836128, 40.384548, 39.437038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274323, 39.665874, 39.692490>,  <38.511150, 40.392452, 39.622204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274323, 39.665874, 39.692490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.985096, 39.815632, 39.460281>,  <37.811562, 39.905487, 39.320957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.985096, 39.815632, 39.460281>,  <38.274323, 39.665874, 39.692490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985096, 39.815632, 39.460281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013604, -0.847944, -0.529911,
		-0.690645, -0.375263, 0.618213,
		-0.723066, 0.374390, -0.580524,
		37.768177, 39.927948, 39.286125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679596, 39.152458, 39.646519>,  <38.274323, 39.665874, 39.692490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679596, 39.152458, 39.646519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.681198, 39.383724, 39.320156>,  <37.682159, 39.522484, 39.124336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.681198, 39.383724, 39.320156>,  <37.679596, 39.152458, 39.646519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681198, 39.383724, 39.320156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135777, -0.808676, -0.572371,
		-0.990731, -0.108489, -0.081742,
		0.004007, 0.578164, -0.815911,
		37.682400, 39.557175, 39.075382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403080, 38.696350, 39.185810>,  <37.679596, 39.152458, 39.646519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403080, 38.696350, 39.185810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.569145, 38.978970, 38.956573>,  <37.668785, 39.148540, 38.819031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.569145, 38.978970, 38.956573>,  <37.403080, 38.696350, 39.185810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569145, 38.978970, 38.956573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065934, -0.651653, -0.755646,
		-0.907354, 0.275931, -0.317129,
		0.415165, 0.706548, -0.573087,
		37.693695, 39.190933, 38.784649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168625, 38.617451, 38.590038>,  <37.403080, 38.696350, 39.185810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168625, 38.617451, 38.590038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.517174, 38.795059, 38.506565>,  <37.726303, 38.901623, 38.456482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.517174, 38.795059, 38.506565>,  <37.168625, 38.617451, 38.590038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517174, 38.795059, 38.506565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222572, -0.736827, -0.638395,
		-0.437224, 0.509835, -0.740880,
		0.871376, 0.444021, -0.208683,
		37.778587, 38.928265, 38.443958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205452, 38.571045, 37.849297>,  <37.168625, 38.617451, 38.590038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205452, 38.571045, 37.849297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.580521, 38.627853, 37.976166>,  <37.805561, 38.661938, 38.052288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.580521, 38.627853, 37.976166>,  <37.205452, 38.571045, 37.849297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580521, 38.627853, 37.976166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317868, -0.719387, -0.617610,
		0.140454, 0.679935, -0.719695,
		0.937674, 0.142022, 0.317171,
		37.861824, 38.670460, 38.071316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635166, 38.650284, 37.282391>,  <37.205452, 38.571045, 37.849297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635166, 38.650284, 37.282391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.903629, 38.570950, 37.568108>,  <38.064709, 38.523350, 37.739536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.903629, 38.570950, 37.568108>,  <37.635166, 38.650284, 37.282391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903629, 38.570950, 37.568108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451934, -0.654313, -0.606326,
		0.587626, 0.729751, -0.349512,
		0.671157, -0.198337, 0.714291,
		38.104977, 38.511448, 37.782394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199902, 38.684746, 36.953495>,  <37.635166, 38.650284, 37.282391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199902, 38.684746, 36.953495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.299603, 38.478409, 37.281342>,  <38.359425, 38.354607, 37.478050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.299603, 38.478409, 37.281342>,  <38.199902, 38.684746, 36.953495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299603, 38.478409, 37.281342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449555, -0.687987, -0.569714,
		0.857771, 0.510469, 0.060415,
		0.249257, -0.515844, 0.819619,
		38.374378, 38.323654, 37.527225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843052, 38.584652, 36.856899>,  <38.199902, 38.684746, 36.953495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843052, 38.584652, 36.856899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.734200, 38.306473, 37.122921>,  <38.668888, 38.139565, 37.282536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.734200, 38.306473, 37.122921>,  <38.843052, 38.584652, 36.856899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734200, 38.306473, 37.122921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213032, -0.717530, -0.663150,
		0.938383, -0.038786, 0.343415,
		-0.272131, -0.695447, 0.665055,
		38.652561, 38.097839, 37.322437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353035, 38.053093, 36.729141>,  <38.843052, 38.584652, 36.856899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353035, 38.053093, 36.729141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.070507, 37.858692, 36.935017>,  <38.900990, 37.742050, 37.058544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.070507, 37.858692, 36.935017>,  <39.353035, 38.053093, 36.729141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070507, 37.858692, 36.935017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244483, -0.849819, -0.466943,
		0.664332, -0.203979, 0.719066,
		-0.706322, -0.486005, 0.514692,
		38.858612, 37.712891, 37.089424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791862, 37.429970, 37.103195>,  <39.353035, 38.053093, 36.729141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791862, 37.429970, 37.103195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.398685, 37.374691, 37.054661>,  <39.162781, 37.341522, 37.025539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.398685, 37.374691, 37.054661>,  <39.791862, 37.429970, 37.103195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398685, 37.374691, 37.054661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171485, -0.927110, -0.333256,
		-0.066439, -0.348380, 0.934996,
		-0.982944, -0.138196, -0.121338,
		39.103802, 37.333233, 37.018261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247383, 37.346786, 36.585014>,  <39.791862, 37.429970, 37.103195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247383, 37.346786, 36.585014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.629131, 37.456684, 36.538200>,  <40.858181, 37.522621, 36.510113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.629131, 37.456684, 36.538200>,  <40.247383, 37.346786, 36.585014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629131, 37.456684, 36.538200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065890, 0.575969, 0.814812,
		0.291271, -0.769920, 0.567789,
		0.954369, 0.274742, -0.117033,
		40.915443, 37.539108, 36.503090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640377, 37.190273, 37.253220>,  <40.247383, 37.346786, 36.585014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640377, 37.190273, 37.253220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.816776, 37.490410, 37.056236>,  <40.922615, 37.670490, 36.938046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.816776, 37.490410, 37.056236>,  <40.640377, 37.190273, 37.253220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.816776, 37.490410, 37.056236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012876, 0.543347, 0.839409,
		0.897416, -0.376518, 0.229953,
		0.440997, 0.750338, -0.492456,
		40.949074, 37.715511, 36.908501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201073, 37.426804, 37.771172>,  <40.640377, 37.190273, 37.253220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.201073, 37.426804, 37.771172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.130398, 37.723167, 37.511993>,  <41.087994, 37.900986, 37.356487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.130398, 37.723167, 37.511993>,  <41.201073, 37.426804, 37.771172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130398, 37.723167, 37.511993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095670, 0.642257, 0.760495,
		0.979607, 0.196355, -0.042593,
		-0.176683, 0.740912, -0.647945,
		41.077393, 37.945442, 37.317612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516369, 37.999157, 38.061916>,  <41.201073, 37.426804, 37.771172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516369, 37.999157, 38.061916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.253750, 38.139206, 37.794674>,  <41.096180, 38.223236, 37.634327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.253750, 38.139206, 37.794674>,  <41.516369, 37.999157, 38.061916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253750, 38.139206, 37.794674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068399, 0.854461, 0.514994,
		0.751179, 0.383815, -0.537044,
		-0.656545, 0.350119, -0.668105,
		41.056786, 38.244240, 37.594242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.756302, 38.681061, 37.945511>,  <41.516369, 37.999157, 38.061916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.756302, 38.681061, 37.945511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.396782, 38.707302, 37.772141>,  <41.181072, 38.723045, 37.668118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.396782, 38.707302, 37.772141>,  <41.756302, 38.681061, 37.945511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.396782, 38.707302, 37.772141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137358, 0.896798, 0.420577,
		0.416288, 0.437549, -0.797029,
		-0.898798, 0.065603, -0.433428,
		41.127144, 38.726982, 37.642113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686111, 39.336674, 37.741898>,  <41.756302, 38.681061, 37.945511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686111, 39.336674, 37.741898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.304146, 39.221947, 37.711227>,  <41.074966, 39.153111, 37.692825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.304146, 39.221947, 37.711227>,  <41.686111, 39.336674, 37.741898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304146, 39.221947, 37.711227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296060, 0.900602, 0.318222,
		-0.022215, 0.326576, -0.944910,
		-0.954911, -0.286819, -0.076680,
		41.017673, 39.135902, 37.688225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257248, 39.867275, 37.401268>,  <41.686111, 39.336674, 37.741898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257248, 39.867275, 37.401268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.007565, 39.668652, 37.642525>,  <40.857754, 39.549477, 37.787281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.007565, 39.668652, 37.642525>,  <41.257248, 39.867275, 37.401268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007565, 39.668652, 37.642525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199109, 0.847642, 0.491792,
		-0.755457, 0.186891, -0.627978,
		-0.624212, -0.496564, 0.603145,
		40.820301, 39.519684, 37.823467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832367, 40.384598, 37.599499>,  <41.257248, 39.867275, 37.401268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832367, 40.384598, 37.599499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.762379, 40.096291, 37.867790>,  <40.720387, 39.923306, 38.028767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.762379, 40.096291, 37.867790>,  <40.832367, 40.384598, 37.599499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762379, 40.096291, 37.867790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334361, 0.684251, 0.648076,
		-0.926060, -0.110871, -0.360721,
		-0.174971, -0.720769, 0.670729,
		40.709888, 39.880058, 38.069008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161442, 40.595394, 37.944664>,  <40.832367, 40.384598, 37.599499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161442, 40.595394, 37.944664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.322659, 40.335220, 38.202190>,  <40.419388, 40.179115, 38.356705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.322659, 40.335220, 38.202190>,  <40.161442, 40.595394, 37.944664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322659, 40.335220, 38.202190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354153, 0.537829, 0.765059,
		-0.843882, -0.536357, -0.013587,
		0.403038, -0.650431, 0.643817,
		40.443569, 40.140091, 38.395336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646725, 40.407288, 38.462845>,  <40.161442, 40.595394, 37.944664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646725, 40.407288, 38.462845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.007320, 40.313251, 38.608204>,  <40.223679, 40.256832, 38.695419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.007320, 40.313251, 38.608204>,  <39.646725, 40.407288, 38.462845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007320, 40.313251, 38.608204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161479, 0.596312, 0.786344,
		-0.401557, -0.767559, 0.499605,
		0.901486, -0.235087, 0.363398,
		40.277767, 40.242725, 38.717224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512375, 40.063526, 39.118484>,  <39.646725, 40.407288, 38.462845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512375, 40.063526, 39.118484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.887150, 40.198601, 39.154518>,  <40.112015, 40.279644, 39.176140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.887150, 40.198601, 39.154518>,  <39.512375, 40.063526, 39.118484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887150, 40.198601, 39.154518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243203, 0.444851, 0.861951,
		0.250992, -0.829505, 0.498924,
		0.936939, 0.337683, 0.090084,
		40.168232, 40.299904, 39.181545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742188, 39.786823, 39.756424>,  <39.512375, 40.063526, 39.118484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742188, 39.786823, 39.756424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.992096, 40.086372, 39.668018>,  <40.142040, 40.266102, 39.614975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.992096, 40.086372, 39.668018>,  <39.742188, 39.786823, 39.756424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992096, 40.086372, 39.668018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159896, 0.399776, 0.902559,
		0.764258, -0.528555, 0.369512,
		0.624773, 0.748871, -0.221018,
		40.179527, 40.311035, 39.601711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078403, 39.877129, 40.349430>,  <39.742188, 39.786823, 39.756424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078403, 39.877129, 40.349430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.106133, 40.210590, 40.130260>,  <40.122772, 40.410667, 39.998760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.106133, 40.210590, 40.130260>,  <40.078403, 39.877129, 40.349430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106133, 40.210590, 40.130260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216552, 0.548723, 0.807470,
		0.973807, 0.062676, 0.218569,
		0.069325, 0.833651, -0.547923,
		40.126930, 40.460686, 39.965885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373318, 40.264816, 40.821323>,  <40.078403, 39.877129, 40.349430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373318, 40.264816, 40.821323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.242271, 40.534710, 40.556778>,  <40.163643, 40.696648, 40.398052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.242271, 40.534710, 40.556778>,  <40.373318, 40.264816, 40.821323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242271, 40.534710, 40.556778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147765, 0.654787, 0.741228,
		0.933186, 0.340562, -0.114814,
		-0.327613, 0.674738, -0.661361,
		40.143986, 40.737133, 40.358368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649017, 40.929157, 40.979889>,  <40.373318, 40.264816, 40.821323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649017, 40.929157, 40.979889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.314953, 41.007656, 40.774368>,  <40.114513, 41.054756, 40.651058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.314953, 41.007656, 40.774368>,  <40.649017, 40.929157, 40.979889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314953, 41.007656, 40.774368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233007, 0.719961, 0.653731,
		0.498206, 0.665691, -0.555559,
		-0.835163, 0.196244, -0.513800,
		40.064404, 41.066528, 40.620228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619362, 41.726616, 40.885452>,  <40.649017, 40.929157, 40.979889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619362, 41.726616, 40.885452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.258976, 41.556576, 40.850681>,  <40.042744, 41.454552, 40.829819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.258976, 41.556576, 40.850681>,  <40.619362, 41.726616, 40.885452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.258976, 41.556576, 40.850681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395403, 0.721874, 0.567938,
		-0.178680, 0.546062, -0.818468,
		-0.900961, -0.425104, -0.086930,
		39.988689, 41.429043, 40.824604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199184, 42.275269, 40.792053>,  <40.619362, 41.726616, 40.885452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199184, 42.275269, 40.792053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.969276, 41.971252, 40.913368>,  <39.831333, 41.788845, 40.986156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.969276, 41.971252, 40.913368>,  <40.199184, 42.275269, 40.792053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969276, 41.971252, 40.913368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493603, 0.617615, 0.612298,
		-0.652683, 0.202228, -0.730143,
		-0.574771, -0.760037, 0.303286,
		39.796844, 41.743240, 41.004353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547417, 42.465202, 40.721531>,  <40.199184, 42.275269, 40.792053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547417, 42.465202, 40.721531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.498756, 42.174725, 40.992188>,  <39.469559, 42.000439, 41.154583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.498756, 42.174725, 40.992188>,  <39.547417, 42.465202, 40.721531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498756, 42.174725, 40.992188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570692, 0.608932, 0.550920,
		-0.812104, -0.319136, -0.488508,
		-0.121650, -0.726192, 0.676643,
		39.462261, 41.956867, 41.195179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.867008, 42.574543, 40.947559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.039646, 42.355724, 41.234463>,  <39.143230, 42.224434, 41.406605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.039646, 42.355724, 41.234463>,  <38.867008, 42.574543, 40.947559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039646, 42.355724, 41.234463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467232, 0.544593, 0.696501,
		-0.771634, -0.635735, -0.020553,
		0.431597, -0.547046, 0.717262,
		39.169125, 42.191612, 41.449642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361485, 42.476974, 41.465637>,  <38.867008, 42.574543, 40.947559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361485, 42.476974, 41.465637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.692223, 42.389412, 41.672871>,  <38.890663, 42.336876, 41.797211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.692223, 42.389412, 41.672871>,  <38.361485, 42.476974, 41.465637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692223, 42.389412, 41.672871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425111, 0.359881, 0.830522,
		-0.368255, -0.906954, 0.204506,
		0.826843, -0.218906, 0.518084,
		38.940277, 42.323742, 41.828297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223717, 42.035473, 42.076000>,  <38.361485, 42.476974, 41.465637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223717, 42.035473, 42.076000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.571564, 42.206821, 42.174202>,  <38.780270, 42.309631, 42.233124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.571564, 42.206821, 42.174202>,  <38.223717, 42.035473, 42.076000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571564, 42.206821, 42.174202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341368, 0.162402, 0.925794,
		0.356711, -0.888890, 0.287458,
		0.869612, 0.428370, 0.245508,
		38.832447, 42.335331, 42.247856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340755, 41.708179, 42.800606>,  <38.223717, 42.035473, 42.076000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340755, 41.708179, 42.800606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.612778, 42.000374, 42.775558>,  <38.775990, 42.175690, 42.760529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.612778, 42.000374, 42.775558>,  <38.340755, 41.708179, 42.800606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612778, 42.000374, 42.775558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148158, 0.220576, 0.964051,
		0.718035, -0.646331, 0.258230,
		0.680055, 0.730481, -0.062622,
		38.816795, 42.219517, 42.756771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868095, 41.710430, 43.369610>,  <38.340755, 41.708179, 42.800606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868095, 41.710430, 43.369610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.898918, 42.089275, 43.245007>,  <38.917412, 42.316582, 43.170246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.898918, 42.089275, 43.245007>,  <38.868095, 41.710430, 43.369610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898918, 42.089275, 43.245007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024632, 0.310530, 0.950244,
		0.996722, -0.080898, 0.000600,
		0.077059, 0.947115, -0.311505,
		38.922035, 42.373409, 43.151554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551453, 42.054779, 43.678284>,  <38.868095, 41.710430, 43.369610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551453, 42.054779, 43.678284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.307251, 42.348820, 43.560364>,  <39.160728, 42.525246, 43.489613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.307251, 42.348820, 43.560364>,  <39.551453, 42.054779, 43.678284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307251, 42.348820, 43.560364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271420, 0.543862, 0.794068,
		0.744051, 0.404769, -0.531553,
		-0.610506, 0.735102, -0.294799,
		39.124100, 42.569351, 43.471924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926376, 42.612411, 43.802711>,  <39.551453, 42.054779, 43.678284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926376, 42.612411, 43.802711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.566196, 42.786213, 43.794762>,  <39.350090, 42.890495, 43.789993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.566196, 42.786213, 43.794762>,  <39.926376, 42.612411, 43.802711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566196, 42.786213, 43.794762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210313, 0.474923, 0.854527,
		0.380734, 0.765280, -0.519027,
		-0.900450, 0.434505, -0.019871,
		39.296062, 42.916565, 43.788799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994530, 43.267128, 43.983936>,  <39.926376, 42.612411, 43.802711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994530, 43.267128, 43.983936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.600750, 43.227890, 44.042221>,  <39.364483, 43.204350, 44.077194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.600750, 43.227890, 44.042221>,  <39.994530, 43.267128, 43.983936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600750, 43.227890, 44.042221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094126, 0.405807, 0.909099,
		-0.148305, 0.908680, -0.390264,
		-0.984452, -0.098090, 0.145714,
		39.305416, 43.198463, 44.085934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870010, 43.906010, 44.382717>,  <39.994530, 43.267128, 43.983936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870010, 43.906010, 44.382717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.569187, 43.649403, 44.443203>,  <39.388695, 43.495438, 44.479496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.569187, 43.649403, 44.443203>,  <39.870010, 43.906010, 44.382717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569187, 43.649403, 44.443203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022653, 0.204134, 0.978681,
		-0.658707, 0.739450, -0.138988,
		-0.752058, -0.641516, 0.151215,
		39.343571, 43.456947, 44.488567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465904, 44.384384, 44.707619>,  <39.870010, 43.906010, 44.382717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465904, 44.384384, 44.707619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.308754, 44.024754, 44.784889>,  <39.214462, 43.808975, 44.831249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.308754, 44.024754, 44.784889>,  <39.465904, 44.384384, 44.707619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308754, 44.024754, 44.784889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061534, 0.235296, 0.969974,
		-0.917531, 0.369192, -0.147765,
		-0.392875, -0.899073, 0.193173,
		39.190891, 43.755032, 44.842842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938717, 44.425808, 45.062595>,  <39.465904, 44.384384, 44.707619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938717, 44.425808, 45.062595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.095337, 44.068523, 45.151009>,  <39.189308, 43.854153, 45.204056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.095337, 44.068523, 45.151009>,  <38.938717, 44.425808, 45.062595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095337, 44.068523, 45.151009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098030, 0.198353, 0.975216,
		-0.914920, -0.403514, -0.009897,
		0.391550, -0.893215, 0.221034,
		39.212803, 43.800560, 45.217319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574528, 44.129013, 45.637047>,  <38.938717, 44.425808, 45.062595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574528, 44.129013, 45.637047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.923897, 43.934799, 45.651955>,  <39.133518, 43.818272, 45.660900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.923897, 43.934799, 45.651955>,  <38.574528, 44.129013, 45.637047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923897, 43.934799, 45.651955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072427, 0.205218, 0.976033,
		-0.481544, -0.849791, 0.214407,
		0.873424, -0.485532, 0.037274,
		39.185925, 43.789139, 45.663136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533199, 43.627472, 46.239422>,  <38.574528, 44.129013, 45.637047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533199, 43.627472, 46.239422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.930149, 43.630020, 46.190193>,  <39.168320, 43.631550, 46.160656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.930149, 43.630020, 46.190193>,  <38.533199, 43.627472, 46.239422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930149, 43.630020, 46.190193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122683, 0.043114, 0.991509,
		0.011616, -0.999050, 0.042005,
		0.992378, 0.006364, -0.123067,
		39.227863, 43.631931, 46.153275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800671, 43.296974, 46.771633>,  <38.533199, 43.627472, 46.239422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800671, 43.296974, 46.771633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.138653, 43.476398, 46.655121>,  <39.341442, 43.584053, 46.585213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.138653, 43.476398, 46.655121>,  <38.800671, 43.296974, 46.771633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138653, 43.476398, 46.655121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246616, 0.156507, 0.956392,
		0.474590, -0.879942, 0.021618,
		0.844953, 0.448563, -0.291284,
		39.392139, 43.610966, 46.567734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358566, 43.023647, 47.242371>,  <38.800671, 43.296974, 46.771633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358566, 43.023647, 47.242371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.456959, 43.378849, 47.086971>,  <39.515995, 43.591972, 46.993732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.456959, 43.378849, 47.086971>,  <39.358566, 43.023647, 47.242371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456959, 43.378849, 47.086971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434317, 0.257345, 0.863216,
		0.866522, -0.381071, -0.322373,
		0.245985, 0.888008, -0.388501,
		39.530754, 43.645252, 46.970421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972321, 43.154785, 47.487770>,  <39.358566, 43.023647, 47.242371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972321, 43.154785, 47.487770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.835178, 43.518440, 47.393177>,  <39.752892, 43.736633, 47.336422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.835178, 43.518440, 47.393177>,  <39.972321, 43.154785, 47.487770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835178, 43.518440, 47.393177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349136, 0.357033, 0.866390,
		0.872096, 0.214485, -0.439823,
		-0.342859, 0.909133, -0.236483,
		39.732319, 43.791180, 47.322231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605888, 43.608822, 47.476048>,  <39.972321, 43.154785, 47.487770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605888, 43.608822, 47.476048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.289589, 43.845547, 47.538631>,  <40.099808, 43.987579, 47.576183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.289589, 43.845547, 47.538631>,  <40.605888, 43.608822, 47.476048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289589, 43.845547, 47.538631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369355, 0.257445, 0.892916,
		0.488154, 0.763862, -0.422161,
		-0.790748, 0.591808, 0.156464,
		40.052364, 44.023090, 47.585571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874550, 44.244446, 47.697453>,  <40.605888, 43.608822, 47.476048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.874550, 44.244446, 47.697453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.495239, 44.231598, 47.823780>,  <40.267654, 44.223888, 47.899578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.495239, 44.231598, 47.823780>,  <40.874550, 44.244446, 47.697453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495239, 44.231598, 47.823780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310957, 0.106193, 0.944473,
		-0.063873, 0.993827, -0.090713,
		-0.948275, -0.032118, 0.315820,
		40.210758, 44.221962, 47.918526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949169, 44.693047, 48.225029>,  <40.874550, 44.244446, 47.697453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949169, 44.693047, 48.225029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.592644, 44.523403, 48.289150>,  <40.378731, 44.421616, 48.327621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.592644, 44.523403, 48.289150>,  <40.949169, 44.693047, 48.225029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592644, 44.523403, 48.289150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165755, 0.024273, 0.985868,
		-0.422005, 0.905287, 0.048663,
		-0.891312, -0.424108, 0.160299,
		40.325249, 44.396172, 48.337238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583237, 45.168182, 48.694271>,  <40.949169, 44.693047, 48.225029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583237, 45.168182, 48.694271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.392025, 44.818066, 48.723530>,  <40.277298, 44.607994, 48.741085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.392025, 44.818066, 48.723530>,  <40.583237, 45.168182, 48.694271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392025, 44.818066, 48.723530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011846, 0.076851, 0.996972,
		-0.878263, 0.477450, -0.026369,
		-0.478031, -0.875291, 0.073151,
		40.248615, 44.555477, 48.745476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070999, 45.334263, 49.122768>,  <40.583237, 45.168182, 48.694271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070999, 45.334263, 49.122768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.086380, 44.935078, 49.143101>,  <40.095608, 44.695564, 49.155300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.086380, 44.935078, 49.143101>,  <40.070999, 45.334263, 49.122768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086380, 44.935078, 49.143101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038236, 0.049359, 0.998049,
		-0.998529, -0.040325, -0.036260,
		0.038456, -0.997967, 0.050829,
		40.097916, 44.635689, 49.158348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492115, 45.132519, 49.608807>,  <40.070999, 45.334263, 49.122768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492115, 45.132519, 49.608807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.750893, 44.827507, 49.607262>,  <39.906158, 44.644501, 49.606335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.750893, 44.827507, 49.607262>,  <39.492115, 45.132519, 49.608807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750893, 44.827507, 49.607262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004330, -0.008740, 0.999952,
		-0.762528, -0.646893, -0.008957,
		0.646940, -0.762531, -0.003864,
		39.944973, 44.598747, 49.606102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215385, 44.361923, 49.976822>,  <39.492115, 45.132519, 49.608807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215385, 44.361923, 49.976822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.606979, 44.431332, 50.019680>,  <39.841934, 44.472977, 50.045395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.606979, 44.431332, 50.019680>,  <39.215385, 44.361923, 49.976822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606979, 44.431332, 50.019680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078237, -0.165651, 0.983076,
		0.188333, -0.970799, -0.148594,
		0.978984, 0.173520, 0.107149,
		39.900673, 44.483387, 50.051826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448597, 43.920902, 50.525040>,  <39.215385, 44.361923, 49.976822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448597, 43.920902, 50.525040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.726639, 44.208321, 50.515934>,  <39.893463, 44.380772, 50.510471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.726639, 44.208321, 50.515934>,  <39.448597, 43.920902, 50.525040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726639, 44.208321, 50.515934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066488, -0.032725, 0.997251,
		0.715828, -0.694707, -0.070523,
		0.695105, 0.718548, -0.022764,
		39.935169, 44.423885, 50.509106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481937, 43.723637, 49.714211>,  <39.448597, 43.920902, 50.525040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481937, 43.723637, 49.714211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.146557, 43.718048, 49.932129>,  <38.945328, 43.714695, 50.062881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.146557, 43.718048, 49.932129>,  <39.481937, 43.723637, 49.714211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146557, 43.718048, 49.932129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477139, -0.464199, -0.746229,
		0.263320, -0.885621, 0.382542,
		-0.838452, -0.013971, 0.544797,
		38.895020, 43.713856, 50.095570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210770, 43.075611, 49.630535>,  <39.481937, 43.723637, 49.714211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210770, 43.075611, 49.630535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.891521, 43.288849, 49.742825>,  <38.699970, 43.416794, 49.810200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.891521, 43.288849, 49.742825>,  <39.210770, 43.075611, 49.630535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891521, 43.288849, 49.742825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539673, -0.425403, -0.726488,
		-0.267870, -0.731325, 0.627223,
		-0.798122, 0.533100, 0.280724,
		38.652084, 43.448780, 49.827042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706879, 42.573555, 49.791168>,  <39.210770, 43.075611, 49.630535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706879, 42.573555, 49.791168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.526402, 42.919224, 49.702053>,  <38.418114, 43.126625, 49.648582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.526402, 42.919224, 49.702053>,  <38.706879, 42.573555, 49.791168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526402, 42.919224, 49.702053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545093, -0.464530, -0.697914,
		-0.706610, -0.193452, 0.680646,
		-0.451194, 0.864169, -0.222792,
		38.391045, 43.178474, 49.635216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079342, 42.426018, 49.682018>,  <38.706879, 42.573555, 49.791168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079342, 42.426018, 49.682018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.097149, 42.783138, 49.502720>,  <38.107834, 42.997410, 49.395142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.097149, 42.783138, 49.502720>,  <38.079342, 42.426018, 49.682018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097149, 42.783138, 49.502720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624257, -0.325440, -0.710205,
		-0.779949, 0.311440, 0.542848,
		0.044521, 0.892801, -0.448245,
		38.110504, 43.050980, 49.368248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394028, 42.628479, 49.626045>,  <38.079342, 42.426018, 49.682018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394028, 42.628479, 49.626045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.595421, 42.837158, 49.350559>,  <37.716259, 42.962368, 49.185268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.595421, 42.837158, 49.350559>,  <37.394028, 42.628479, 49.626045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595421, 42.837158, 49.350559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704930, -0.212862, -0.676582,
		-0.499575, 0.826146, 0.260591,
		0.503486, 0.521702, -0.688716,
		37.746468, 42.993668, 49.143944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901352, 42.920803, 49.253056>,  <37.394028, 42.628479, 49.626045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901352, 42.920803, 49.253056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.210583, 42.995033, 49.010429>,  <37.396122, 43.039574, 48.864853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.210583, 42.995033, 49.010429>,  <36.901352, 42.920803, 49.253056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210583, 42.995033, 49.010429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597548, -0.107770, -0.794558,
		-0.212821, 0.976702, 0.027577,
		0.773074, 0.185578, -0.606562,
		37.442505, 43.050705, 48.828461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698208, 43.449123, 48.817101>,  <36.901352, 42.920803, 49.253056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698208, 43.449123, 48.817101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.005013, 43.276363, 48.627300>,  <37.189095, 43.172707, 48.513420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.005013, 43.276363, 48.627300>,  <36.698208, 43.449123, 48.817101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005013, 43.276363, 48.627300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551698, -0.066351, -0.831400,
		0.327601, 0.899476, -0.289172,
		0.767012, -0.431903, -0.474503,
		37.235115, 43.146793, 48.484951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901306, 43.715618, 48.143528>,  <36.698208, 43.449123, 48.817101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901306, 43.715618, 48.143528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.086163, 43.365406, 48.087128>,  <37.197075, 43.155281, 48.053288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.086163, 43.365406, 48.087128>,  <36.901306, 43.715618, 48.143528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086163, 43.365406, 48.087128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426073, -0.079772, -0.901165,
		0.777746, 0.476539, -0.409905,
		0.462139, -0.875527, -0.140998,
		37.224804, 43.102749, 48.044827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254997, 43.725819, 47.469826>,  <36.901306, 43.715618, 48.143528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254997, 43.725819, 47.469826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.181675, 43.341267, 47.551952>,  <37.137680, 43.110535, 47.601227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.181675, 43.341267, 47.551952>,  <37.254997, 43.725819, 47.469826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181675, 43.341267, 47.551952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370043, -0.126015, -0.920428,
		0.910750, -0.244699, -0.332651,
		-0.183309, -0.961375, 0.205317,
		37.126682, 43.052853, 47.613548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605591, 43.391819, 47.078690>,  <37.254997, 43.725819, 47.469826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605591, 43.391819, 47.078690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.263325, 43.192646, 47.135113>,  <37.057964, 43.073143, 47.168968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.263325, 43.192646, 47.135113>,  <37.605591, 43.391819, 47.078690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263325, 43.192646, 47.135113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068467, -0.161250, -0.984536,
		0.512973, -0.852095, 0.103885,
		-0.855670, -0.497928, 0.141057,
		37.006622, 43.043266, 47.177429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705521, 42.748661, 46.821793>,  <37.605591, 43.391819, 47.078690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705521, 42.748661, 46.821793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.311459, 42.817333, 46.821259>,  <37.075024, 42.858536, 46.820938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.311459, 42.817333, 46.821259>,  <37.705521, 42.748661, 46.821793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311459, 42.817333, 46.821259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005192, -0.037566, -0.999281,
		-0.171611, -0.984436, 0.037900,
		-0.985152, 0.171684, -0.001336,
		37.015915, 42.868839, 46.820858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429489, 42.234241, 46.347046>,  <37.705521, 42.748661, 46.821793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429489, 42.234241, 46.347046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.132034, 42.497589, 46.393604>,  <36.953560, 42.655598, 46.421539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.132034, 42.497589, 46.393604>,  <37.429489, 42.234241, 46.347046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132034, 42.497589, 46.393604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227802, -0.085836, -0.969917,
		-0.628573, -0.747785, 0.213809,
		-0.743641, 0.658369, 0.116393,
		36.908943, 42.695099, 46.428524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832115, 41.961910, 46.078732>,  <37.429489, 42.234241, 46.347046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832115, 41.961910, 46.078732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.723370, 42.346481, 46.062042>,  <36.658123, 42.577225, 46.052029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.723370, 42.346481, 46.062042>,  <36.832115, 41.961910, 46.078732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723370, 42.346481, 46.062042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148103, -0.084640, -0.985343,
		-0.950871, -0.261701, 0.165402,
		-0.271865, 0.961430, -0.041723,
		36.641811, 42.634911, 46.049526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367649, 41.940395, 45.481472>,  <36.832115, 41.961910, 46.078732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367649, 41.940395, 45.481472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.470360, 42.319485, 45.557255>,  <36.531986, 42.546936, 45.602726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.470360, 42.319485, 45.557255>,  <36.367649, 41.940395, 45.481472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470360, 42.319485, 45.557255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000960, 0.195784, -0.980647,
		-0.966471, 0.251985, 0.049362,
		0.256773, 0.947720, 0.189461,
		36.547390, 42.603802, 45.614094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849884, 42.299019, 45.113159>,  <36.367649, 41.940395, 45.481472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849884, 42.299019, 45.113159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.153744, 42.553146, 45.168736>,  <36.336060, 42.705624, 45.202084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.153744, 42.553146, 45.168736>,  <35.849884, 42.299019, 45.113159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153744, 42.553146, 45.168736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073203, 0.128759, -0.988970,
		-0.646201, 0.761441, 0.051304,
		0.759648, 0.635318, 0.138944,
		36.381638, 42.743740, 45.210419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690964, 42.823605, 44.744099>,  <35.849884, 42.299019, 45.113159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690964, 42.823605, 44.744099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.088848, 42.859653, 44.763775>,  <36.327579, 42.881283, 44.775581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.088848, 42.859653, 44.763775>,  <35.690964, 42.823605, 44.744099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088848, 42.859653, 44.763775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038715, 0.114491, -0.992670,
		-0.095092, 0.989328, 0.110397,
		0.994715, 0.090121, 0.049189,
		36.387264, 42.886688, 44.778530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833843, 43.376797, 44.235474>,  <35.690964, 42.823605, 44.744099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833843, 43.376797, 44.235474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.206608, 43.244381, 44.294731>,  <36.430267, 43.164932, 44.330288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.206608, 43.244381, 44.294731>,  <35.833843, 43.376797, 44.235474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206608, 43.244381, 44.294731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188639, 0.093548, -0.977581,
		0.309760, 0.938968, 0.149626,
		0.931914, -0.331040, 0.148148,
		36.486183, 43.145069, 44.339176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313072, 43.868206, 43.988533>,  <35.833843, 43.376797, 44.235474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313072, 43.868206, 43.988533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.512413, 43.521664, 44.001652>,  <36.632015, 43.313740, 44.009525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.512413, 43.521664, 44.001652>,  <36.313072, 43.868206, 43.988533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512413, 43.521664, 44.001652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100281, 0.020022, -0.994758,
		0.861158, 0.499025, 0.096857,
		0.498348, -0.866356, 0.032800,
		36.661919, 43.261757, 44.011494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800617, 44.012226, 43.528835>,  <36.313072, 43.868206, 43.988533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800617, 44.012226, 43.528835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.802330, 43.612244, 43.532021>,  <36.803360, 43.372253, 43.533932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.802330, 43.612244, 43.532021>,  <36.800617, 44.012226, 43.528835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802330, 43.612244, 43.532021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031570, -0.007821, -0.999471,
		0.999492, 0.004535, 0.031535,
		0.004286, -0.999959, 0.007961,
		36.803616, 43.312256, 43.534409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165451, 43.907784, 42.958450>,  <36.800617, 44.012226, 43.528835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165451, 43.907784, 42.958450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.984627, 43.557499, 43.026291>,  <36.876133, 43.347328, 43.066994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.984627, 43.557499, 43.026291>,  <37.165451, 43.907784, 42.958450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984627, 43.557499, 43.026291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139118, -0.118589, -0.983149,
		0.881071, -0.468038, -0.068219,
		-0.452062, -0.875715, 0.169598,
		36.849007, 43.294785, 43.077171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<46.130444, 39.117702, 28.667778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.004150, 39.043106, 28.295641>,  <45.928375, 38.998348, 28.072359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.004150, 39.043106, 28.295641>,  <46.130444, 39.117702, 28.667778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.004150, 39.043106, 28.295641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431090, -0.845265, 0.315734,
		-0.845265, 0.500749, 0.186487,
		-0.315734, -0.186487, -0.930341,
		45.909431, 38.987160, 28.016539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.416821, 39.048569, 28.629864>,  <46.130444, 39.117702, 28.667778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.416821, 39.048569, 28.629864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.569096, 38.830410, 28.331169>,  <45.660461, 38.699512, 28.151953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.569096, 38.830410, 28.331169>,  <45.416821, 39.048569, 28.629864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.569096, 38.830410, 28.331169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348967, -0.832566, 0.430181,
		-0.856329, 0.096823, -0.507272,
		0.380686, -0.545398, -0.746739,
		45.683304, 38.666790, 28.107147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.950310, 38.641003, 28.790085>,  <45.416821, 39.048569, 28.629864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.950310, 38.641003, 28.790085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.213116, 38.445755, 28.560278>,  <45.370800, 38.328606, 28.422394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.213116, 38.445755, 28.560278>,  <44.950310, 38.641003, 28.790085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.213116, 38.445755, 28.560278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124935, -0.822047, 0.555545,
		-0.743448, -0.293228, -0.601085,
		0.657021, -0.488116, -0.574514,
		45.410221, 38.299320, 28.387922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.646713, 38.104111, 28.495295>,  <44.950310, 38.641003, 28.790085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.646713, 38.104111, 28.495295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.025513, 37.985569, 28.445723>,  <45.252792, 37.914444, 28.415979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.025513, 37.985569, 28.445723>,  <44.646713, 38.104111, 28.495295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.025513, 37.985569, 28.445723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242874, -0.913083, 0.327553,
		-0.210231, -0.280094, -0.936670,
		0.947003, -0.296354, -0.123931,
		45.309612, 37.896664, 28.408543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.645287, 37.327061, 28.191671>,  <44.646713, 38.104111, 28.495295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.645287, 37.327061, 28.191671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.997059, 37.380131, 28.374535>,  <45.208122, 37.411972, 28.484253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.997059, 37.380131, 28.374535>,  <44.645287, 37.327061, 28.191671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.997059, 37.380131, 28.374535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053224, -0.926946, 0.371400,
		0.473038, -0.350954, -0.808126,
		0.879433, 0.132675, 0.457160,
		45.260887, 37.419933, 28.511683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.039902, 36.598274, 28.215843>,  <44.645287, 37.327061, 28.191671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.039902, 36.598274, 28.215843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.215385, 36.851139, 28.471312>,  <45.320675, 37.002857, 28.624592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.215385, 36.851139, 28.471312>,  <45.039902, 36.598274, 28.215843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.215385, 36.851139, 28.471312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150611, -0.752389, 0.641270,
		0.885917, -0.185142, -0.425292,
		0.438712, 0.632166, 0.638670,
		45.347000, 37.040791, 28.662912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.614082, 36.216286, 28.517118>,  <45.039902, 36.598274, 28.215843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.614082, 36.216286, 28.517118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.559834, 36.508419, 28.784914>,  <45.527287, 36.683701, 28.945591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.559834, 36.508419, 28.784914>,  <45.614082, 36.216286, 28.517118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.559834, 36.508419, 28.784914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212271, -0.681459, 0.700396,
		0.967755, -0.047127, 0.247447,
		-0.135618, 0.730338, 0.669489,
		45.519150, 36.727520, 28.985760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.948406, 35.983192, 29.150038>,  <45.614082, 36.216286, 28.517118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.948406, 35.983192, 29.150038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.658474, 36.248783, 29.223520>,  <45.484516, 36.408138, 29.267611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.658474, 36.248783, 29.223520>,  <45.948406, 35.983192, 29.150038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.658474, 36.248783, 29.223520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379094, -0.607067, 0.698396,
		0.575245, 0.436577, 0.691733,
		-0.724832, 0.663981, 0.183708,
		45.441025, 36.447979, 29.278633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.781109, 35.760338, 29.729527>,  <45.948406, 35.983192, 29.150038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.781109, 35.760338, 29.729527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.509804, 36.054264, 29.730812>,  <45.347023, 36.230621, 29.731583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.509804, 36.054264, 29.730812>,  <45.781109, 35.760338, 29.729527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.509804, 36.054264, 29.730812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395840, -0.369050, 0.840900,
		0.619092, 0.569077, 0.541181,
		-0.678260, 0.734815, 0.003212,
		45.306324, 36.274708, 29.731775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.867146, 36.186985, 30.331038>,  <45.781109, 35.760338, 29.729527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.867146, 36.186985, 30.331038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.493992, 36.222889, 30.191513>,  <45.270100, 36.244431, 30.107798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.493992, 36.222889, 30.191513>,  <45.867146, 36.186985, 30.331038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.493992, 36.222889, 30.191513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359405, -0.295358, 0.885207,
		-0.023564, 0.951160, 0.307796,
		-0.932884, 0.089765, -0.348811,
		45.214127, 36.249817, 30.086870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.513741, 36.646309, 30.733425>,  <45.867146, 36.186985, 30.331038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.513741, 36.646309, 30.733425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.223515, 36.428650, 30.564922>,  <45.049381, 36.298054, 30.463820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.223515, 36.428650, 30.564922>,  <45.513741, 36.646309, 30.733425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.223515, 36.428650, 30.564922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308858, -0.289535, 0.905967,
		-0.614953, 0.787444, 0.042009,
		-0.725561, -0.544152, -0.421259,
		45.005848, 36.265404, 30.438545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.953102, 36.715366, 31.191956>,  <45.513741, 36.646309, 30.733425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.953102, 36.715366, 31.191956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.863914, 36.378338, 30.995853>,  <44.810402, 36.176121, 30.878193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.863914, 36.378338, 30.995853>,  <44.953102, 36.715366, 31.191956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.863914, 36.378338, 30.995853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210618, -0.449399, 0.868148,
		-0.951801, 0.296828, -0.077259,
		-0.222970, -0.842575, -0.490256,
		44.797024, 36.125565, 30.848776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.300205, 36.587742, 31.471121>,  <44.953102, 36.715366, 31.191956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.300205, 36.587742, 31.471121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.453274, 36.249840, 31.321476>,  <44.545113, 36.047100, 31.231689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.453274, 36.249840, 31.321476>,  <44.300205, 36.587742, 31.471121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.453274, 36.249840, 31.321476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392936, -0.515297, 0.761624,
		-0.836161, -0.144448, -0.529121,
		0.382669, -0.844751, -0.374113,
		44.568073, 35.996414, 31.209242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.760647, 36.123932, 31.546629>,  <44.300205, 36.587742, 31.471121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.760647, 36.123932, 31.546629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.072994, 35.880180, 31.491629>,  <44.260403, 35.733929, 31.458630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.072994, 35.880180, 31.491629>,  <43.760647, 36.123932, 31.546629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.072994, 35.880180, 31.491629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300520, -0.559396, 0.772505,
		-0.547654, -0.561910, -0.619945,
		0.780873, -0.609372, -0.137490,
		44.307255, 35.697369, 31.450378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.490288, 35.462029, 31.540379>,  <43.760647, 36.123932, 31.546629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.490288, 35.462029, 31.540379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.878345, 35.439251, 31.634682>,  <44.111179, 35.425583, 31.691263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.878345, 35.439251, 31.634682>,  <43.490288, 35.462029, 31.540379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.878345, 35.439251, 31.634682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232441, -0.495841, 0.836728,
		0.069253, -0.866545, -0.494272,
		0.970142, -0.056943, 0.235759,
		44.169388, 35.422169, 31.705410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.633244, 34.735287, 31.655222>,  <43.490288, 35.462029, 31.540379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.633244, 34.735287, 31.655222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.923592, 34.940159, 31.838867>,  <44.097801, 35.063080, 31.949055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.923592, 34.940159, 31.838867>,  <43.633244, 34.735287, 31.655222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.923592, 34.940159, 31.838867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202576, -0.478689, 0.854295,
		0.657323, -0.713114, -0.243712,
		0.725872, 0.512177, 0.459113,
		44.141354, 35.093811, 31.976601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.056499, 34.220436, 31.997772>,  <43.633244, 34.735287, 31.655222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.056499, 34.220436, 31.997772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.078491, 34.574909, 32.181793>,  <44.091686, 34.787594, 32.292206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.078491, 34.574909, 32.181793>,  <44.056499, 34.220436, 31.997772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.078491, 34.574909, 32.181793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346502, -0.415183, 0.841165,
		0.936436, -0.205658, 0.284239,
		0.054981, 0.886187, 0.460054,
		44.094986, 34.840767, 32.319809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.271965, 33.995068, 32.747471>,  <44.056499, 34.220436, 31.997772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.271965, 33.995068, 32.747471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.162113, 34.378948, 32.771332>,  <44.096203, 34.609276, 32.785648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.162113, 34.378948, 32.771332>,  <44.271965, 33.995068, 32.747471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.162113, 34.378948, 32.771332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311354, -0.147450, 0.938785,
		0.909747, 0.239241, 0.339299,
		-0.274626, 0.959699, 0.059653,
		44.079727, 34.666859, 32.789227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.505669, 34.271137, 33.395233>,  <44.271965, 33.995068, 32.747471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.505669, 34.271137, 33.395233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.196537, 34.505215, 33.297020>,  <44.011059, 34.645660, 33.238091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.196537, 34.505215, 33.297020>,  <44.505669, 34.271137, 33.395233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.196537, 34.505215, 33.297020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394653, -0.140190, 0.908073,
		0.496977, 0.798683, 0.339291,
		-0.772828, 0.585194, -0.245532,
		43.964687, 34.680771, 33.223362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.349831, 34.705639, 34.003365>,  <44.505669, 34.271137, 33.395233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.349831, 34.705639, 34.003365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.011730, 34.748241, 33.793907>,  <43.808868, 34.773804, 33.668232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.011730, 34.748241, 33.793907>,  <44.349831, 34.705639, 34.003365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.011730, 34.748241, 33.793907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524226, 0.024691, 0.851221,
		0.103591, 0.994005, 0.034964,
		-0.845255, 0.106508, -0.523641,
		43.758152, 34.780193, 33.636814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.954391, 35.292267, 34.279282>,  <44.349831, 34.705639, 34.003365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.954391, 35.292267, 34.279282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.671474, 35.078560, 34.094116>,  <43.501724, 34.950336, 33.983017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.671474, 35.078560, 34.094116>,  <43.954391, 35.292267, 34.279282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.671474, 35.078560, 34.094116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602167, 0.112319, 0.790430,
		-0.370307, 0.837820, -0.401161,
		-0.707296, -0.534267, -0.462915,
		43.459286, 34.918282, 33.955242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.466190, 35.710693, 34.636574>,  <43.954391, 35.292267, 34.279282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.466190, 35.710693, 34.636574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.823368, 35.890682, 34.631222>,  <45.037674, 35.998676, 34.628010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.823368, 35.890682, 34.631222>,  <44.466190, 35.710693, 34.636574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.823368, 35.890682, 34.631222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449031, 0.892407, 0.044499,
		0.031963, -0.033728, 0.998920,
		0.892944, 0.449968, -0.013379,
		45.091251, 36.025673, 34.627209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.366131, 36.403156, 34.978954>,  <44.466190, 35.710693, 34.636574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.366131, 36.403156, 34.978954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.678040, 36.435390, 34.730614>,  <44.865185, 36.454731, 34.581608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.678040, 36.435390, 34.730614>,  <44.366131, 36.403156, 34.978954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.678040, 36.435390, 34.730614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226231, 0.960941, -0.159412,
		0.583756, 0.264762, 0.767548,
		0.779774, 0.080585, -0.620853,
		44.911972, 36.459564, 34.544357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.848900, 37.077568, 35.160255>,  <44.366131, 36.403156, 34.978954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.848900, 37.077568, 35.160255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.877808, 36.958805, 34.779388>,  <44.895153, 36.887547, 34.550869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.877808, 36.958805, 34.779388>,  <44.848900, 37.077568, 35.160255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.877808, 36.958805, 34.779388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184164, 0.934276, -0.305306,
		0.980235, 0.197419, 0.012838,
		0.072268, -0.296907, -0.952168,
		44.899487, 36.869732, 34.493736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.270687, 37.492336, 34.843430>,  <44.848900, 37.077568, 35.160255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.270687, 37.492336, 34.843430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.057549, 37.345478, 34.538464>,  <44.929665, 37.257362, 34.355484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.057549, 37.345478, 34.538464>,  <45.270687, 37.492336, 34.843430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.057549, 37.345478, 34.538464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149593, 0.927656, -0.342165,
		0.832886, -0.068268, -0.549218,
		-0.532844, -0.367144, -0.762419,
		44.897694, 37.235336, 34.309738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.607147, 37.766453, 34.222218>,  <45.270687, 37.492336, 34.843430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.607147, 37.766453, 34.222218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.237206, 37.638187, 34.140427>,  <45.015240, 37.561230, 34.091351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.237206, 37.638187, 34.140427>,  <45.607147, 37.766453, 34.222218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.237206, 37.638187, 34.140427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133009, 0.776435, -0.616001,
		0.356295, -0.542515, -0.760744,
		-0.924858, -0.320664, -0.204481,
		44.959747, 37.541988, 34.079082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.561737, 37.941742, 33.491657>,  <45.607147, 37.766453, 34.222218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.561737, 37.941742, 33.491657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.178158, 37.850739, 33.559361>,  <44.948009, 37.796135, 33.599983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.178158, 37.850739, 33.559361>,  <45.561737, 37.941742, 33.491657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.178158, 37.850739, 33.559361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281014, 0.682556, -0.674647,
		0.037959, -0.694519, -0.718472,
		-0.958952, -0.227510, 0.169260,
		44.890472, 37.782486, 33.610138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.310642, 37.860565, 32.879070>,  <45.561737, 37.941742, 33.491657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.310642, 37.860565, 32.879070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.006008, 37.969521, 33.114285>,  <44.823227, 38.034893, 33.255413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.006008, 37.969521, 33.114285>,  <45.310642, 37.860565, 32.879070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.006008, 37.969521, 33.114285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198056, 0.766139, -0.611395,
		-0.617057, -0.582096, -0.529534,
		-0.761587, 0.272388, 0.588039,
		44.777531, 38.051235, 33.290695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.793091, 37.928574, 32.400219>,  <45.310642, 37.860565, 32.879070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.793091, 37.928574, 32.400219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.699108, 38.112671, 32.742672>,  <44.642719, 38.223129, 32.948143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.699108, 38.112671, 32.742672>,  <44.793091, 37.928574, 32.400219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.699108, 38.112671, 32.742672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308914, 0.799771, -0.514722,
		-0.921612, -0.385409, -0.045735,
		-0.234956, 0.460246, 0.856136,
		44.628620, 38.250744, 32.999512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.166443, 38.158154, 32.341270>,  <44.793091, 37.928574, 32.400219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.166443, 38.158154, 32.341270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.307190, 38.397518, 32.629185>,  <44.391640, 38.541138, 32.801933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.307190, 38.397518, 32.629185>,  <44.166443, 38.158154, 32.341270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.307190, 38.397518, 32.629185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289855, 0.800820, -0.524091,
		-0.890040, -0.024221, 0.455239,
		0.351870, 0.598415, 0.719782,
		44.412750, 38.577042, 32.845119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.736668, 38.799595, 32.241310>,  <44.166443, 38.158154, 32.341270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.736668, 38.799595, 32.241310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.035316, 38.919746, 32.478741>,  <44.214504, 38.991837, 32.621201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.035316, 38.919746, 32.478741>,  <43.736668, 38.799595, 32.241310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.035316, 38.919746, 32.478741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086103, 0.841119, -0.533952,
		-0.659657, 0.449767, 0.602131,
		0.746618, 0.300380, 0.593576,
		44.259300, 39.009861, 32.656815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.466248, 39.476433, 32.453434>,  <43.736668, 38.799595, 32.241310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.466248, 39.476433, 32.453434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.865437, 39.454815, 32.466839>,  <44.104950, 39.441845, 32.474884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.865437, 39.454815, 32.466839>,  <43.466248, 39.476433, 32.453434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.865437, 39.454815, 32.466839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063585, 0.854951, -0.514797,
		-0.000835, 0.515886, 0.856657,
		0.997976, -0.054041, 0.033517,
		44.164829, 39.438602, 32.476894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.659588, 40.155041, 32.536327>,  <43.466248, 39.476433, 32.453434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.659588, 40.155041, 32.536327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.002636, 39.968201, 32.450249>,  <44.208466, 39.856098, 32.398602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.002636, 39.968201, 32.450249>,  <43.659588, 40.155041, 32.536327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.002636, 39.968201, 32.450249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315198, 0.808029, -0.497734,
		0.406373, 0.359038, 0.840210,
		0.857619, -0.467099, -0.215193,
		44.259922, 39.828072, 32.385693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.191998, 40.557056, 32.822487>,  <43.659588, 40.155041, 32.536327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.191998, 40.557056, 32.822487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.364685, 40.343426, 32.531727>,  <44.468296, 40.215248, 32.357269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.364685, 40.343426, 32.531727>,  <44.191998, 40.557056, 32.822487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.364685, 40.343426, 32.531727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332772, 0.843325, -0.421978,
		0.838383, -0.059718, 0.541801,
		0.431715, -0.534075, -0.726902,
		44.494198, 40.183205, 32.313656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.766342, 40.799381, 32.803619>,  <44.191998, 40.557056, 32.822487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.766342, 40.799381, 32.803619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.735004, 40.661106, 32.429588>,  <44.716202, 40.578140, 32.205170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.735004, 40.661106, 32.429588>,  <44.766342, 40.799381, 32.803619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.735004, 40.661106, 32.429588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413426, 0.842234, -0.346007,
		0.907161, -0.413693, 0.076929,
		-0.078349, -0.345688, -0.935073,
		44.711498, 40.557400, 32.149067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.444031, 41.046066, 32.385792>,  <44.766342, 40.799381, 32.803619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.444031, 41.046066, 32.385792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.190014, 40.949738, 32.092201>,  <45.037605, 40.891941, 31.916046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.190014, 40.949738, 32.092201>,  <45.444031, 41.046066, 32.385792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.190014, 40.949738, 32.092201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364853, 0.743997, -0.559777,
		0.680882, -0.623278, -0.384609,
		-0.635045, -0.240817, -0.733980,
		44.999500, 40.877491, 31.872007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.860550, 41.145073, 31.866911>,  <45.444031, 41.046066, 32.385792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.860550, 41.145073, 31.866911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.493023, 41.153980, 31.709291>,  <45.272507, 41.159325, 31.614719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.493023, 41.153980, 31.709291>,  <45.860550, 41.145073, 31.866911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.493023, 41.153980, 31.709291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295391, 0.700947, -0.649166,
		0.261751, -0.712865, -0.650622,
		-0.918820, 0.022268, -0.394047,
		45.217377, 41.160660, 31.591078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.972626, 41.160728, 31.179533>,  <45.860550, 41.145073, 31.866911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.972626, 41.160728, 31.179533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.594799, 41.283665, 31.225725>,  <45.368103, 41.357426, 31.253441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.594799, 41.283665, 31.225725>,  <45.972626, 41.160728, 31.179533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.594799, 41.283665, 31.225725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114592, 0.638221, -0.761277,
		-0.307671, -0.705844, -0.638061,
		-0.944567, 0.307339, 0.115478,
		45.311428, 41.375866, 31.260368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.799763, 41.100067, 30.547024>,  <45.972626, 41.160728, 31.179533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.799763, 41.100067, 30.547024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.570210, 41.354576, 30.753254>,  <45.432480, 41.507282, 30.876993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.570210, 41.354576, 30.753254>,  <45.799763, 41.100067, 30.547024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.570210, 41.354576, 30.753254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180749, 0.712451, -0.678044,
		-0.798743, -0.295926, -0.523867,
		-0.573881, 0.636271, 0.515577,
		45.398045, 41.545456, 30.907927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.381012, 41.331944, 30.088591>,  <45.799763, 41.100067, 30.547024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.381012, 41.331944, 30.088591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.372116, 41.623386, 30.362419>,  <45.366779, 41.798252, 30.526716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.372116, 41.623386, 30.362419>,  <45.381012, 41.331944, 30.088591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.372116, 41.623386, 30.362419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160522, 0.678458, -0.716888,
		-0.986782, 0.093943, -0.132048,
		-0.022242, 0.728608, 0.684569,
		45.365444, 41.841969, 30.567789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.050549, 41.841579, 29.844782>,  <45.381012, 41.331944, 30.088591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.050549, 41.841579, 29.844782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.218903, 42.053833, 30.139069>,  <45.319916, 42.181187, 30.315641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.218903, 42.053833, 30.139069>,  <45.050549, 41.841579, 29.844782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.218903, 42.053833, 30.139069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033647, 0.819628, -0.571907,
		-0.906488, 0.215955, 0.362827,
		0.420889, 0.530635, 0.735717,
		45.345169, 42.213024, 30.359783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.606724, 42.518776, 30.038599>,  <45.050549, 41.841579, 29.844782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.606724, 42.518776, 30.038599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.983124, 42.578560, 30.160048>,  <45.208961, 42.614429, 30.232916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.983124, 42.578560, 30.160048>,  <44.606724, 42.518776, 30.038599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.983124, 42.578560, 30.160048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018510, 0.873116, -0.487160,
		-0.337905, 0.464037, 0.818834,
		0.940998, 0.149458, 0.303620,
		45.265423, 42.623398, 30.251133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.047241, 41.246120, 39.353100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764961, 40.976089, 39.439137>,  <40.595592, 40.814072, 39.490757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764961, 40.976089, 39.439137>,  <41.047241, 41.246120, 39.353100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764961, 40.976089, 39.439137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348178, -0.594823, -0.724539,
		0.617059, -0.436416, 0.654812,
		-0.705698, -0.675075, 0.215091,
		40.553253, 40.773567, 39.503662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399494, 40.575310, 39.212399>,  <41.047241, 41.246120, 39.353100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399494, 40.575310, 39.212399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015461, 40.464474, 39.227722>,  <40.785042, 40.397972, 39.236916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015461, 40.464474, 39.227722>,  <41.399494, 40.575310, 39.212399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015461, 40.464474, 39.227722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146286, -0.614095, -0.775557,
		0.238427, -0.738991, 0.630115,
		-0.960080, -0.277091, 0.038313,
		40.727436, 40.381348, 39.239216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.420853, 39.844864, 39.189651>,  <41.399494, 40.575310, 39.212399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.420853, 39.844864, 39.189651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048168, 39.952572, 39.092155>,  <40.824558, 40.017197, 39.033657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048168, 39.952572, 39.092155>,  <41.420853, 39.844864, 39.189651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.048168, 39.952572, 39.092155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003031, -0.665303, -0.746567,
		-0.363190, -0.696323, 0.619054,
		-0.931710, 0.269269, -0.243742,
		40.768654, 40.033352, 39.019032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956570, 39.211983, 39.112244>,  <41.420853, 39.844864, 39.189651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.956570, 39.211983, 39.112244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772366, 39.489868, 38.891228>,  <40.661842, 39.656601, 38.758617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772366, 39.489868, 38.891228>,  <40.956570, 39.211983, 39.112244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772366, 39.489868, 38.891228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061276, -0.596107, -0.800563,
		-0.885536, -0.402526, 0.231945,
		-0.460512, 0.694715, -0.552539,
		40.634212, 39.698284, 38.725468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412930, 38.929367, 38.907242>,  <40.956570, 39.211983, 39.112244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412930, 38.929367, 38.907242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495655, 39.219872, 38.645012>,  <40.545288, 39.394173, 38.487675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495655, 39.219872, 38.645012>,  <40.412930, 38.929367, 38.907242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495655, 39.219872, 38.645012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098737, -0.682130, -0.724534,
		-0.973386, 0.085111, -0.212780,
		0.206809, 0.726261, -0.655572,
		40.557697, 39.437748, 38.448341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015518, 38.746273, 38.435436>,  <40.412930, 38.929367, 38.907242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015518, 38.746273, 38.435436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270206, 38.993828, 38.251450>,  <40.423019, 39.142361, 38.141060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270206, 38.993828, 38.251450>,  <40.015518, 38.746273, 38.435436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270206, 38.993828, 38.251450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220578, -0.717770, -0.660418,
		-0.738870, 0.319045, -0.593533,
		0.636723, 0.618883, -0.459965,
		40.461224, 39.179493, 38.113461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693478, 38.881588, 37.754333>,  <40.015518, 38.746273, 38.435436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693478, 38.881588, 37.754333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092865, 38.903683, 37.752975>,  <40.332497, 38.916939, 37.752159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092865, 38.903683, 37.752975>,  <39.693478, 38.881588, 37.754333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092865, 38.903683, 37.752975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039649, -0.756882, -0.652348,
		-0.038604, 0.651213, -0.757912,
		0.998468, 0.055234, -0.003399,
		40.392406, 38.920254, 37.751957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939518, 38.787968, 37.032261>,  <39.693478, 38.881588, 37.754333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939518, 38.787968, 37.032261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285023, 38.771595, 37.233154>,  <40.492325, 38.761772, 37.353691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285023, 38.771595, 37.233154>,  <39.939518, 38.787968, 37.032261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285023, 38.771595, 37.233154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319817, -0.725681, -0.609183,
		0.389393, 0.686812, -0.613728,
		0.863765, -0.040931, 0.502229,
		40.544151, 38.759315, 37.383823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427578, 38.922359, 36.619339>,  <39.939518, 38.787968, 37.032261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427578, 38.922359, 36.619339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.651970, 38.758255, 36.906948>,  <40.786606, 38.659794, 37.079514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.651970, 38.758255, 36.906948>,  <40.427578, 38.922359, 36.619339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.651970, 38.758255, 36.906948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459813, -0.567835, -0.682742,
		0.688387, 0.713617, -0.129899,
		0.560977, -0.410262, 0.719020,
		40.820263, 38.635178, 37.122654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075844, 38.896366, 36.479206>,  <40.427578, 38.922359, 36.619339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.075844, 38.896366, 36.479206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037312, 38.576771, 36.716637>,  <41.014194, 38.385014, 36.859097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037312, 38.576771, 36.716637>,  <41.075844, 38.896366, 36.479206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.037312, 38.576771, 36.716637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564792, -0.534927, -0.628381,
		0.819592, 0.274719, 0.502791,
		-0.096328, -0.798989, 0.593581,
		41.008411, 38.337074, 36.894711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.670753, 38.625710, 36.447849>,  <41.075844, 38.896366, 36.479206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.670753, 38.625710, 36.447849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451485, 38.318298, 36.579826>,  <41.319923, 38.133850, 36.659012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451485, 38.318298, 36.579826>,  <41.670753, 38.625710, 36.447849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451485, 38.318298, 36.579826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286912, -0.543359, -0.788950,
		0.785612, -0.337817, 0.518357,
		-0.548175, -0.768531, 0.329946,
		41.287033, 38.087738, 36.678810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083889, 37.977890, 36.196259>,  <41.670753, 38.625710, 36.447849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083889, 37.977890, 36.196259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712196, 37.864674, 36.291271>,  <41.489182, 37.796741, 36.348278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712196, 37.864674, 36.291271>,  <42.083889, 37.977890, 36.196259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.712196, 37.864674, 36.291271> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049606, -0.541463, -0.839260,
		0.366163, -0.791646, 0.489102,
		-0.929228, -0.283044, 0.237534,
		41.433430, 37.779762, 36.362530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939739, 37.268799, 36.049805>,  <42.083889, 37.977890, 36.196259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939739, 37.268799, 36.049805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.588806, 37.458321, 36.019329>,  <41.378246, 37.572033, 36.001045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.588806, 37.458321, 36.019329>,  <41.939739, 37.268799, 36.049805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.588806, 37.458321, 36.019329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270394, -0.619229, -0.737186,
		-0.396457, -0.626155, 0.671381,
		-0.877331, 0.473800, -0.076189,
		41.325607, 37.600460, 35.996471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.388542, 36.778404, 36.006462>,  <41.939739, 37.268799, 36.049805>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.388542, 36.778404, 36.006462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291126, 37.111717, 35.807934>,  <41.232677, 37.311707, 35.688816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291126, 37.111717, 35.807934>,  <41.388542, 36.778404, 36.006462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.291126, 37.111717, 35.807934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387707, -0.552701, -0.737703,
		-0.889029, 0.012768, 0.457672,
		-0.243537, 0.833282, -0.496317,
		41.218063, 37.361702, 35.659039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510609, 36.032063, 35.852692>,  <41.388542, 36.778404, 36.006462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510609, 36.032063, 35.852692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415516, 35.659542, 35.963085>,  <41.358459, 35.436031, 36.029320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415516, 35.659542, 35.963085>,  <41.510609, 36.032063, 35.852692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.415516, 35.659542, 35.963085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440864, 0.356629, 0.823683,
		-0.865519, 0.074144, -0.495358,
		-0.237730, -0.931299, 0.275981,
		41.344196, 35.380154, 36.045879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861366, 36.117794, 36.124802>,  <41.510609, 36.032063, 35.852692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861366, 36.117794, 36.124802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941208, 35.749592, 36.259163>,  <40.989113, 35.528671, 36.339779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941208, 35.749592, 36.259163>,  <40.861366, 36.117794, 36.124802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941208, 35.749592, 36.259163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603740, 0.154469, 0.782073,
		-0.771788, -0.358900, -0.524913,
		0.199604, -0.920505, 0.335900,
		41.001087, 35.473442, 36.359932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168819, 35.884247, 36.498550>,  <40.861366, 36.117794, 36.124802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168819, 35.884247, 36.498550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484432, 35.671021, 36.620708>,  <40.673801, 35.543087, 36.694004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484432, 35.671021, 36.620708>,  <40.168819, 35.884247, 36.498550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484432, 35.671021, 36.620708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381206, -0.034984, 0.923828,
		-0.481773, -0.845353, -0.230810,
		0.789035, -0.533062, 0.305399,
		40.721142, 35.511101, 36.712330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949032, 35.280777, 36.879814>,  <40.168819, 35.884247, 36.498550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949032, 35.280777, 36.879814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327682, 35.332203, 36.998047>,  <40.554874, 35.363060, 37.068989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327682, 35.332203, 36.998047>,  <39.949032, 35.280777, 36.879814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327682, 35.332203, 36.998047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278827, -0.133481, 0.951020,
		0.161724, -0.982677, -0.090508,
		0.946626, 0.128566, 0.295584,
		40.611671, 35.370773, 37.086723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084030, 34.788620, 37.351173>,  <39.949032, 35.280777, 36.879814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084030, 34.788620, 37.351173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361435, 35.059147, 37.450478>,  <40.527878, 35.221462, 37.510059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361435, 35.059147, 37.450478>,  <40.084030, 34.788620, 37.351173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361435, 35.059147, 37.450478> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147480, -0.204026, 0.967793,
		0.705187, -0.707791, -0.041751,
		0.693513, 0.676318, 0.248262,
		40.569489, 35.262043, 37.524956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542877, 34.511234, 37.871456>,  <40.084030, 34.788620, 37.351173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542877, 34.511234, 37.871456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575233, 34.908905, 37.899918>,  <40.594646, 35.147507, 37.916996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575233, 34.908905, 37.899918>,  <40.542877, 34.511234, 37.871456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575233, 34.908905, 37.899918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370712, -0.036259, 0.928040,
		0.925218, -0.101452, 0.365622,
		0.080894, 0.994180, 0.071157,
		40.599503, 35.207157, 37.921265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907452, 34.638794, 38.537525>,  <40.542877, 34.511234, 37.871456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.907452, 34.638794, 38.537525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721397, 34.973335, 38.421486>,  <40.609764, 35.174061, 38.351860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721397, 34.973335, 38.421486>,  <40.907452, 34.638794, 38.537525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721397, 34.973335, 38.421486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232264, 0.200929, 0.951673,
		0.854225, 0.510039, 0.100796,
		-0.465137, 0.836354, -0.290103,
		40.581856, 35.224243, 38.334454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123238, 35.180443, 39.068699>,  <40.907452, 34.638794, 38.537525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123238, 35.180443, 39.068699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817230, 35.332958, 38.861099>,  <40.633625, 35.424469, 38.736542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817230, 35.332958, 38.861099>,  <41.123238, 35.180443, 39.068699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817230, 35.332958, 38.861099> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377030, 0.388170, 0.840936,
		0.522100, 0.839012, -0.153201,
		-0.765023, 0.381291, -0.518996,
		40.587723, 35.447346, 38.705399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186153, 35.958652, 39.104218>,  <41.123238, 35.180443, 39.068699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.186153, 35.958652, 39.104218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813766, 35.828220, 39.038513>,  <40.590336, 35.749962, 38.999092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813766, 35.828220, 39.038513>,  <41.186153, 35.958652, 39.104218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813766, 35.828220, 39.038513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318146, 0.503739, 0.803138,
		-0.179140, 0.799951, -0.572702,
		-0.930963, -0.326077, -0.164261,
		40.534477, 35.730396, 38.989235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732841, 36.516136, 39.116238>,  <41.186153, 35.958652, 39.104218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732841, 36.516136, 39.116238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486671, 36.207916, 39.182568>,  <40.338970, 36.022984, 39.222366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486671, 36.207916, 39.182568>,  <40.732841, 36.516136, 39.116238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486671, 36.207916, 39.182568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237136, 0.381652, 0.893369,
		-0.751674, 0.510483, -0.417605,
		-0.615429, -0.770551, 0.165824,
		40.302044, 35.976749, 39.232315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202343, 36.880993, 39.433529>,  <40.732841, 36.516136, 39.116238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.202343, 36.880993, 39.433529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144470, 36.493885, 39.515987>,  <40.109745, 36.261620, 39.565460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144470, 36.493885, 39.515987>,  <40.202343, 36.880993, 39.433529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144470, 36.493885, 39.515987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231678, 0.235676, 0.943813,
		-0.961973, 0.088796, -0.258308,
		-0.144684, -0.967766, 0.206142,
		40.101067, 36.203556, 39.577831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563953, 36.832588, 39.722172>,  <40.202343, 36.880993, 39.433529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563953, 36.832588, 39.722172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753201, 36.500504, 39.840096>,  <39.866749, 36.301254, 39.910851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753201, 36.500504, 39.840096>,  <39.563953, 36.832588, 39.722172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753201, 36.500504, 39.840096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247871, 0.195673, 0.948827,
		-0.845410, -0.521982, -0.113209,
		0.473119, -0.830209, 0.294808,
		39.895138, 36.251442, 39.928539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109715, 36.611870, 40.264843>,  <39.563953, 36.832588, 39.722172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109715, 36.611870, 40.264843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459869, 36.422325, 40.303127>,  <39.669960, 36.308598, 40.326099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459869, 36.422325, 40.303127>,  <39.109715, 36.611870, 40.264843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459869, 36.422325, 40.303127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000280, 0.197490, 0.980305,
		-0.483427, -0.858170, 0.172747,
		0.875384, -0.473858, 0.095712,
		39.722485, 36.280167, 40.331841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981373, 36.283535, 40.815781>,  <39.109715, 36.611870, 40.264843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981373, 36.283535, 40.815781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379841, 36.290512, 40.781525>,  <39.618923, 36.294697, 40.760971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379841, 36.290512, 40.781525>,  <38.981373, 36.283535, 40.815781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379841, 36.290512, 40.781525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080014, 0.212176, 0.973950,
		0.035157, -0.977076, 0.209968,
		0.996173, 0.017441, -0.085639,
		39.678692, 36.295746, 40.755833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777042, 35.752075, 41.306229>,  <38.981373, 36.283535, 40.815781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777042, 35.752075, 41.306229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426353, 35.792496, 41.494335>,  <38.215942, 35.816750, 41.607201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426353, 35.792496, 41.494335>,  <38.777042, 35.752075, 41.306229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426353, 35.792496, 41.494335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475355, -0.032625, -0.879189,
		-0.073515, -0.994344, 0.076646,
		-0.876718, 0.101068, 0.470268,
		38.163338, 35.822811, 41.635414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381580, 35.292339, 40.952126>,  <38.777042, 35.752075, 41.306229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381580, 35.292339, 40.952126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102013, 35.512760, 41.134487>,  <37.934273, 35.645012, 41.243904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102013, 35.512760, 41.134487>,  <38.381580, 35.292339, 40.952126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102013, 35.512760, 41.134487> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553743, -0.013511, -0.832578,
		-0.452634, -0.834361, 0.314585,
		-0.698921, 0.551052, 0.455906,
		37.892338, 35.678074, 41.271259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638042, 34.993851, 41.060154>,  <38.381580, 35.292339, 40.952126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638042, 34.993851, 41.060154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577168, 35.388527, 41.037254>,  <37.540642, 35.625332, 41.023514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577168, 35.388527, 41.037254>,  <37.638042, 34.993851, 41.060154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577168, 35.388527, 41.037254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376733, -0.111463, -0.919592,
		-0.913735, -0.118383, 0.388683,
		-0.152188, 0.986692, -0.057248,
		37.531509, 35.684536, 41.020081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985260, 35.109234, 40.777039>,  <37.638042, 34.993851, 41.060154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985260, 35.109234, 40.777039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181320, 35.450401, 40.705177>,  <37.298958, 35.655102, 40.662060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181320, 35.450401, 40.705177>,  <36.985260, 35.109234, 40.777039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181320, 35.450401, 40.705177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490449, 0.099489, -0.865772,
		-0.720563, 0.512470, 0.467080,
		0.490152, 0.852922, -0.179653,
		37.328365, 35.706280, 40.651283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476963, 35.546780, 40.604969>,  <36.985260, 35.109234, 40.777039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476963, 35.546780, 40.604969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805534, 35.737846, 40.480339>,  <37.002678, 35.852486, 40.405560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805534, 35.737846, 40.480339>,  <36.476963, 35.546780, 40.604969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805534, 35.737846, 40.480339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425978, 0.150630, -0.892106,
		-0.379200, 0.865530, 0.327209,
		0.821432, 0.477670, -0.311577,
		37.051964, 35.881149, 40.386868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177216, 36.149723, 40.346504>,  <36.476963, 35.546780, 40.604969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177216, 36.149723, 40.346504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539333, 36.105675, 40.182396>,  <36.756603, 36.079247, 40.083931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539333, 36.105675, 40.182396>,  <36.177216, 36.149723, 40.346504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539333, 36.105675, 40.182396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416557, -0.040863, -0.908191,
		0.083249, 0.993077, -0.082866,
		0.905290, -0.110124, -0.410271,
		36.810921, 36.072639, 40.059315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162827, 36.595612, 39.780056>,  <36.177216, 36.149723, 40.346504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162827, 36.595612, 39.780056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474224, 36.359402, 39.694984>,  <36.661064, 36.217678, 39.643940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474224, 36.359402, 39.694984>,  <36.162827, 36.595612, 39.780056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474224, 36.359402, 39.694984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277109, -0.019336, -0.960644,
		0.563169, 0.806790, -0.178692,
		0.778493, -0.590522, -0.212679,
		36.707771, 36.182243, 39.631180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413792, 36.870541, 39.167850>,  <36.162827, 36.595612, 39.780056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413792, 36.870541, 39.167850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514755, 36.484623, 39.197411>,  <36.575333, 36.253071, 39.215149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514755, 36.484623, 39.197411>,  <36.413792, 36.870541, 39.167850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514755, 36.484623, 39.197411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393878, -0.172207, -0.902887,
		0.883827, 0.198787, -0.423478,
		0.252408, -0.964795, 0.073904,
		36.590477, 36.195183, 39.219582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690502, 36.626080, 38.496689>,  <36.413792, 36.870541, 39.167850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690502, 36.626080, 38.496689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596363, 36.277950, 38.669735>,  <36.539879, 36.069073, 38.773563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596363, 36.277950, 38.669735>,  <36.690502, 36.626080, 38.496689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596363, 36.277950, 38.669735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463020, -0.290962, -0.837230,
		0.854532, -0.397350, -0.334498,
		-0.235347, -0.870319, 0.432617,
		36.525761, 36.016853, 38.799519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826775, 36.106441, 37.964386>,  <36.690502, 36.626080, 38.496689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826775, 36.106441, 37.964386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597607, 35.927891, 38.239342>,  <36.460106, 35.820759, 38.404316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597607, 35.927891, 38.239342>,  <36.826775, 36.106441, 37.964386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597607, 35.927891, 38.239342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520220, -0.450036, -0.725837,
		0.633348, -0.773443, 0.025621,
		-0.572924, -0.446379, 0.687390,
		36.425728, 35.793976, 38.445560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869320, 35.288761, 38.006020>,  <36.826775, 36.106441, 37.964386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869320, 35.288761, 38.006020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515873, 35.458595, 38.084969>,  <36.303806, 35.560493, 38.132339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515873, 35.458595, 38.084969>,  <36.869320, 35.288761, 38.006020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515873, 35.458595, 38.084969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414271, -0.512518, -0.752133,
		-0.218185, -0.746361, 0.628761,
		-0.883615, 0.424582, 0.197372,
		36.250790, 35.585972, 38.144180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265446, 34.820141, 38.051952>,  <36.869320, 35.288761, 38.006020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265446, 34.820141, 38.051952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103615, 35.162109, 37.922081>,  <36.006516, 35.367290, 37.844158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103615, 35.162109, 37.922081>,  <36.265446, 34.820141, 38.051952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103615, 35.162109, 37.922081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501745, -0.504341, -0.702775,
		-0.764570, -0.121422, 0.633000,
		-0.404580, 0.854925, -0.324681,
		35.982239, 35.418587, 37.824677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.637497, 35.922028, 45.157642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.260735, 36.054844, 45.177860>,  <39.034676, 36.134533, 45.189991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.260735, 36.054844, 45.177860>,  <39.637497, 35.922028, 45.157642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260735, 36.054844, 45.177860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175417, -0.358018, -0.917089,
		-0.286416, -0.872681, 0.395466,
		-0.941910, 0.332041, 0.050541,
		38.978161, 36.154457, 45.193024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241951, 35.399986, 44.875084>,  <39.637497, 35.922028, 45.157642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241951, 35.399986, 44.875084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.004002, 35.720699, 44.852211>,  <38.861233, 35.913128, 44.838486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.004002, 35.720699, 44.852211>,  <39.241951, 35.399986, 44.875084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004002, 35.720699, 44.852211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297317, -0.285573, -0.911071,
		-0.746809, -0.524973, 0.408264,
		-0.594877, 0.801780, -0.057185,
		38.825539, 35.961235, 44.835056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603256, 35.143600, 44.622391>,  <39.241951, 35.399986, 44.875084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603256, 35.143600, 44.622391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.554848, 35.537552, 44.572807>,  <38.525803, 35.773922, 44.543056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.554848, 35.537552, 44.572807>,  <38.603256, 35.143600, 44.622391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554848, 35.537552, 44.572807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303515, -0.155611, -0.940034,
		-0.945110, -0.076139, 0.317758,
		-0.121020, 0.984880, -0.123960,
		38.518543, 35.833015, 44.535618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851910, 35.342983, 44.453838>,  <38.603256, 35.143600, 44.622391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851910, 35.342983, 44.453838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.118881, 35.595985, 44.296623>,  <38.279064, 35.747787, 44.202293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.118881, 35.595985, 44.296623>,  <37.851910, 35.342983, 44.453838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118881, 35.595985, 44.296623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501594, -0.008259, -0.865064,
		-0.550400, 0.774516, 0.311746,
		0.667431, 0.632501, -0.393038,
		38.319111, 35.785736, 44.178711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426258, 35.953827, 44.070992>,  <37.851910, 35.342983, 44.453838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426258, 35.953827, 44.070992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.794971, 35.938332, 43.916683>,  <38.016197, 35.929035, 43.824097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.794971, 35.938332, 43.916683>,  <37.426258, 35.953827, 44.070992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794971, 35.938332, 43.916683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383966, 0.046795, -0.922161,
		0.053774, 0.998153, 0.028261,
		0.921780, -0.038737, -0.385773,
		38.071507, 35.926712, 43.800953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379158, 36.246746, 43.466175>,  <37.426258, 35.953827, 44.070992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379158, 36.246746, 43.466175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.741821, 36.093391, 43.395756>,  <37.959419, 36.001381, 43.353504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.741821, 36.093391, 43.395756>,  <37.379158, 36.246746, 43.466175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741821, 36.093391, 43.395756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188937, 0.004103, -0.981981,
		0.377198, 0.923580, -0.068715,
		0.906656, -0.383384, -0.176046,
		38.013817, 35.978374, 43.342941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674030, 36.717838, 42.878338>,  <37.379158, 36.246746, 43.466175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674030, 36.717838, 42.878338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.903255, 36.390884, 42.854706>,  <38.040791, 36.194714, 42.840527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.903255, 36.390884, 42.854706>,  <37.674030, 36.717838, 42.878338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903255, 36.390884, 42.854706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029771, 0.092803, -0.995239,
		0.818972, 0.568573, 0.077515,
		0.573060, -0.817381, -0.059076,
		38.075172, 36.145672, 42.836983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167843, 36.893997, 42.240631>,  <37.674030, 36.717838, 42.878338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167843, 36.893997, 42.240631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.121227, 36.504303, 42.317860>,  <38.093258, 36.270485, 42.364197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.121227, 36.504303, 42.317860>,  <38.167843, 36.893997, 42.240631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121227, 36.504303, 42.317860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145295, -0.175580, -0.973684,
		0.982501, -0.141526, -0.121090,
		-0.116540, -0.974239, 0.193071,
		38.086266, 36.212032, 42.375782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693428, 36.538158, 41.879581>,  <38.167843, 36.893997, 42.240631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693428, 36.538158, 41.879581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.416767, 36.260807, 41.960415>,  <38.250771, 36.094395, 42.008915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.416767, 36.260807, 41.960415>,  <38.693428, 36.538158, 41.879581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416767, 36.260807, 41.960415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157804, -0.127956, -0.979145,
		0.704778, -0.709119, -0.020917,
		-0.691654, -0.693381, 0.202082,
		38.209270, 36.052792, 42.021038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351353, 35.987656, 41.674267>,  <38.693428, 36.538158, 41.879581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351353, 35.987656, 41.674267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.655125, 36.154331, 41.474411>,  <39.837387, 36.254337, 41.354496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.655125, 36.154331, 41.474411>,  <39.351353, 35.987656, 41.674267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655125, 36.154331, 41.474411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155716, 0.629243, 0.761450,
		0.631762, -0.656024, 0.412927,
		0.759361, 0.416756, -0.499685,
		39.882954, 36.279339, 41.324520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915428, 36.065895, 42.095997>,  <39.351353, 35.987656, 41.674267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915428, 36.065895, 42.095997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.989620, 36.325474, 41.800846>,  <40.034134, 36.481220, 41.623756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.989620, 36.325474, 41.800846>,  <39.915428, 36.065895, 42.095997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989620, 36.325474, 41.800846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327045, 0.667333, 0.669110,
		0.926627, -0.365427, -0.088457,
		0.185481, 0.648945, -0.737881,
		40.045265, 36.520157, 41.579483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561783, 36.252712, 42.257694>,  <39.915428, 36.065895, 42.095997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.561783, 36.252712, 42.257694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.405758, 36.535820, 42.022095>,  <40.312145, 36.705685, 41.880733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.405758, 36.535820, 42.022095>,  <40.561783, 36.252712, 42.257694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405758, 36.535820, 42.022095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316401, 0.703740, 0.636114,
		0.864722, 0.061762, -0.498438,
		-0.390059, 0.707768, -0.588998,
		40.288742, 36.748150, 41.845394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048176, 36.790413, 42.159828>,  <40.561783, 36.252712, 42.257694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048176, 36.790413, 42.159828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.704826, 36.976746, 42.073856>,  <40.498817, 37.088547, 42.022274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.704826, 36.976746, 42.073856>,  <41.048176, 36.790413, 42.159828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704826, 36.976746, 42.073856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171348, 0.655204, 0.735763,
		0.483565, 0.594733, -0.642229,
		-0.858374, 0.465834, -0.214927,
		40.447315, 37.116497, 42.009377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245644, 37.536907, 42.110413>,  <41.048176, 36.790413, 42.159828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245644, 37.536907, 42.110413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.849979, 37.526257, 42.168186>,  <40.612583, 37.519867, 42.202850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.849979, 37.526257, 42.168186>,  <41.245644, 37.536907, 42.110413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849979, 37.526257, 42.168186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075037, 0.753773, 0.652837,
		-0.126252, 0.656595, -0.743601,
		-0.989156, -0.026625, 0.144434,
		40.553234, 37.518269, 42.211517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984661, 38.274525, 41.997711>,  <41.245644, 37.536907, 42.110413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984661, 38.274525, 41.997711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.687160, 38.087811, 42.189102>,  <40.508659, 37.975780, 42.303936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.687160, 38.087811, 42.189102>,  <40.984661, 38.274525, 41.997711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687160, 38.087811, 42.189102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070181, 0.657314, 0.750342,
		-0.664765, 0.591646, -0.456117,
		-0.743749, -0.466790, 0.478481,
		40.464035, 37.947773, 42.332645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376125, 38.710331, 42.083729>,  <40.984661, 38.274525, 41.997711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376125, 38.710331, 42.083729> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.353256, 38.429214, 42.367367>,  <40.339535, 38.260544, 42.537552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.353256, 38.429214, 42.367367>,  <40.376125, 38.710331, 42.083729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353256, 38.429214, 42.367367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127694, 0.709574, 0.692964,
		-0.990164, -0.050929, -0.130310,
		-0.057173, -0.702788, 0.709098,
		40.336105, 38.218376, 42.580097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780994, 38.867275, 42.481884>,  <40.376125, 38.710331, 42.083729>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780994, 38.867275, 42.481884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.993446, 38.643085, 42.736057>,  <40.120918, 38.508572, 42.888561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.993446, 38.643085, 42.736057>,  <39.780994, 38.867275, 42.481884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993446, 38.643085, 42.736057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143956, 0.679362, 0.719544,
		-0.834972, -0.473645, 0.280146,
		0.531129, -0.560470, 0.635432,
		40.152786, 38.474945, 42.926685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434231, 38.674999, 43.160908>,  <39.780994, 38.867275, 42.481884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434231, 38.674999, 43.160908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.825932, 38.699970, 43.238018>,  <40.060951, 38.714951, 43.284286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.825932, 38.699970, 43.238018>,  <39.434231, 38.674999, 43.160908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825932, 38.699970, 43.238018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186287, 0.651706, 0.735239,
		-0.079738, -0.755898, 0.649815,
		0.979255, 0.062425, 0.192780,
		40.119709, 38.718697, 43.295853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481422, 38.834576, 43.883564>,  <39.434231, 38.674999, 43.160908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481422, 38.834576, 43.883564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.853790, 38.903507, 43.754757>,  <40.077209, 38.944866, 43.677471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.853790, 38.903507, 43.754757>,  <39.481422, 38.834576, 43.883564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853790, 38.903507, 43.754757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138125, 0.650085, 0.747202,
		0.338107, -0.740061, 0.581372,
		0.930916, 0.172332, -0.322019,
		40.133064, 38.955208, 43.658150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875557, 38.713074, 44.459641>,  <39.481422, 38.834576, 43.883564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875557, 38.713074, 44.459641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.110573, 38.939800, 44.228634>,  <40.251583, 39.075836, 44.090031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.110573, 38.939800, 44.228634>,  <39.875557, 38.713074, 44.459641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110573, 38.939800, 44.228634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140660, 0.631288, 0.762686,
		0.796879, -0.529339, 0.291177,
		0.587536, 0.566812, -0.577517,
		40.286835, 39.109844, 44.055378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541836, 38.749279, 44.818302>,  <39.875557, 38.713074, 44.459641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541836, 38.749279, 44.818302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.571583, 39.047569, 44.553467>,  <40.589432, 39.226543, 44.394566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.571583, 39.047569, 44.553467>,  <40.541836, 38.749279, 44.818302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571583, 39.047569, 44.553467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489522, 0.551134, 0.675736,
		0.868814, -0.374360, -0.324063,
		0.074366, 0.745725, -0.662091,
		40.593891, 39.271286, 44.354839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223637, 39.087860, 44.956699>,  <40.541836, 38.749279, 44.818302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223637, 39.087860, 44.956699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.020489, 39.358788, 44.743790>,  <40.898602, 39.521343, 44.616043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.020489, 39.358788, 44.743790>,  <41.223637, 39.087860, 44.956699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.020489, 39.358788, 44.743790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347701, 0.726500, 0.592707,
		0.788146, 0.115944, -0.604469,
		-0.507867, 0.677314, -0.532275,
		40.868130, 39.561981, 44.584106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707951, 39.684265, 44.812435>,  <41.223637, 39.087860, 44.956699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.707951, 39.684265, 44.812435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.338276, 39.836517, 44.799858>,  <41.116470, 39.927868, 44.792313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.338276, 39.836517, 44.799858>,  <41.707951, 39.684265, 44.812435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338276, 39.836517, 44.799858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252476, 0.670641, 0.697493,
		0.286579, 0.636677, -0.715901,
		-0.924191, 0.380634, -0.031446,
		41.061020, 39.950706, 44.790424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.722687, 39.745689, 45.032684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.093601, 39.869473, 45.116947>,  <35.316151, 39.943745, 45.167507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.093601, 39.869473, 45.116947>,  <34.722687, 39.745689, 45.032684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093601, 39.869473, 45.116947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281258, -0.204537, -0.937581,
		-0.247058, 0.928654, -0.276703,
		0.927284, 0.309461, 0.210659,
		35.371788, 39.962311, 45.180145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818405, 40.333538, 44.591583>,  <34.722687, 39.745689, 45.032684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818405, 40.333538, 44.591583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.174427, 40.173653, 44.679249>,  <35.388039, 40.077721, 44.731850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.174427, 40.173653, 44.679249>,  <34.818405, 40.333538, 44.591583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174427, 40.173653, 44.679249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280066, 0.100147, -0.954743,
		0.359673, 0.911154, 0.201082,
		0.890056, -0.399711, 0.219163,
		35.441444, 40.053738, 44.744999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285473, 40.732723, 44.193142>,  <34.818405, 40.333538, 44.591583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285473, 40.732723, 44.193142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.460335, 40.381721, 44.272018>,  <35.565250, 40.171120, 44.319344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.460335, 40.381721, 44.272018>,  <35.285473, 40.732723, 44.193142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460335, 40.381721, 44.272018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317449, -0.054595, -0.946702,
		0.841499, 0.476455, 0.254696,
		0.437156, -0.877502, 0.197191,
		35.591480, 40.118469, 44.331177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885319, 40.717979, 43.739986>,  <35.285473, 40.732723, 44.193142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885319, 40.717979, 43.739986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.858177, 40.330120, 43.833950>,  <35.841892, 40.097404, 43.890327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.858177, 40.330120, 43.833950>,  <35.885319, 40.717979, 43.739986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858177, 40.330120, 43.833950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395335, -0.242306, -0.886001,
		0.916027, 0.032746, 0.399777,
		-0.067856, -0.969647, 0.234905,
		35.837822, 40.039227, 43.904423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540771, 40.367260, 43.670082>,  <35.885319, 40.717979, 43.739986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540771, 40.367260, 43.670082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.275288, 40.069241, 43.643543>,  <36.115997, 39.890430, 43.627621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.275288, 40.069241, 43.643543>,  <36.540771, 40.367260, 43.670082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275288, 40.069241, 43.643543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419837, -0.297650, -0.857404,
		0.619058, -0.596918, 0.510349,
		-0.663705, -0.745047, -0.066345,
		36.076176, 39.845726, 43.623638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859203, 39.793247, 43.405552>,  <36.540771, 40.367260, 43.670082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859203, 39.793247, 43.405552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.476749, 39.698872, 43.336113>,  <36.247276, 39.642246, 43.294449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.476749, 39.698872, 43.336113>,  <36.859203, 39.793247, 43.405552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476749, 39.698872, 43.336113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280456, -0.566296, -0.775019,
		0.084554, -0.789709, 0.607627,
		-0.956135, -0.235943, -0.173596,
		36.189907, 39.628090, 43.284035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917385, 39.063934, 43.127342>,  <36.859203, 39.793247, 43.405552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917385, 39.063934, 43.127342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.551601, 39.189007, 43.024586>,  <36.332130, 39.264050, 42.962933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.551601, 39.189007, 43.024586>,  <36.917385, 39.063934, 43.127342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551601, 39.189007, 43.024586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130705, -0.372569, -0.918754,
		-0.382997, -0.873737, 0.299827,
		-0.914456, 0.312691, -0.256895,
		36.277264, 39.282810, 42.947517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714298, 38.567245, 42.673958>,  <36.917385, 39.063934, 43.127342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714298, 38.567245, 42.673958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.462486, 38.872627, 42.616226>,  <36.311398, 39.055855, 42.581589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.462486, 38.872627, 42.616226>,  <36.714298, 38.567245, 42.673958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462486, 38.872627, 42.616226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081884, -0.249913, -0.964800,
		-0.772650, -0.595551, 0.219842,
		-0.629529, 0.763455, -0.144329,
		36.273628, 39.101662, 42.572926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128487, 38.322750, 42.282711>,  <36.714298, 38.567245, 42.673958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128487, 38.322750, 42.282711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.144203, 38.719879, 42.237518>,  <36.153633, 38.958157, 42.210403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.144203, 38.719879, 42.237518>,  <36.128487, 38.322750, 42.282711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144203, 38.719879, 42.237518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091437, -0.109020, -0.989825,
		-0.995036, 0.049218, 0.086497,
		0.039287, 0.992820, -0.112979,
		36.155991, 39.017727, 42.203625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514938, 38.402710, 41.872150>,  <36.128487, 38.322750, 42.282711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514938, 38.402710, 41.872150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.745384, 38.726746, 41.828625>,  <35.883652, 38.921169, 41.802509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.745384, 38.726746, 41.828625>,  <35.514938, 38.402710, 41.872150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745384, 38.726746, 41.828625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266930, 0.060639, -0.961806,
		-0.772552, 0.583160, 0.251173,
		0.576118, 0.810091, -0.108816,
		35.918221, 38.969772, 41.795979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163708, 38.758385, 41.420910>,  <35.514938, 38.402710, 41.872150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163708, 38.758385, 41.420910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.527237, 38.922722, 41.391930>,  <35.745354, 39.021324, 41.374542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.527237, 38.922722, 41.391930>,  <35.163708, 38.758385, 41.420910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527237, 38.922722, 41.391930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168232, 0.202013, -0.964826,
		-0.381752, 0.889046, 0.252710,
		0.908825, 0.410838, -0.072447,
		35.799885, 39.045975, 41.370197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120564, 39.377308, 41.053352>,  <35.163708, 38.758385, 41.420910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120564, 39.377308, 41.053352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.506889, 39.306423, 40.977676>,  <35.738686, 39.263893, 40.932270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.506889, 39.306423, 40.977676>,  <35.120564, 39.377308, 41.053352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506889, 39.306423, 40.977676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155989, 0.185597, -0.970165,
		0.207040, 0.966514, 0.151609,
		0.965817, -0.177213, -0.189192,
		35.796635, 39.253258, 40.920918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404064, 40.005524, 40.537323>,  <35.120564, 39.377308, 41.053352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404064, 40.005524, 40.537323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.629482, 39.675495, 40.520947>,  <35.764732, 39.477478, 40.511120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.629482, 39.675495, 40.520947>,  <35.404064, 40.005524, 40.537323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629482, 39.675495, 40.520947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046046, 0.018112, -0.998775,
		0.824803, 0.564737, -0.027784,
		0.563542, -0.825072, -0.040943,
		35.798546, 39.427975, 40.508663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004597, 40.202717, 40.137501>,  <35.404064, 40.005524, 40.537323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004597, 40.202717, 40.137501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.940460, 39.807903, 40.134666>,  <35.901978, 39.571014, 40.132965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.940460, 39.807903, 40.134666>,  <36.004597, 40.202717, 40.137501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940460, 39.807903, 40.134666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170340, 0.034737, -0.984773,
		0.972253, -0.156692, -0.173702,
		-0.160340, -0.987037, -0.007082,
		35.892357, 39.511791, 40.132542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708794, 40.447838, 40.343204>,  <36.004597, 40.202717, 40.137501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708794, 40.447838, 40.343204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.943935, 40.674580, 40.112347>,  <37.085022, 40.810623, 39.973831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.943935, 40.674580, 40.112347>,  <36.708794, 40.447838, 40.343204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943935, 40.674580, 40.112347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039761, 0.692333, 0.720482,
		0.807987, -0.446488, 0.384453,
		0.587856, 0.566854, -0.577149,
		37.120293, 40.844635, 39.939201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144600, 40.737091, 40.876228>,  <36.708794, 40.447838, 40.343204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144600, 40.737091, 40.876228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.210251, 40.962025, 40.552044>,  <37.249641, 41.096985, 40.357533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.210251, 40.962025, 40.552044>,  <37.144600, 40.737091, 40.876228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210251, 40.962025, 40.552044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006645, 0.820950, 0.570961,
		0.986416, -0.099098, 0.131007,
		0.164132, 0.562335, -0.810457,
		37.259491, 41.130726, 40.308907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672508, 41.270264, 41.121624>,  <37.144600, 40.737091, 40.876228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672508, 41.270264, 41.121624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.455345, 41.399971, 40.811760>,  <37.325047, 41.477795, 40.625843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.455345, 41.399971, 40.811760>,  <37.672508, 41.270264, 41.121624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455345, 41.399971, 40.811760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206901, 0.842365, 0.497608,
		0.813903, 0.430436, -0.390239,
		-0.542912, 0.324264, -0.774661,
		37.292473, 41.497250, 40.579361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839287, 41.973732, 40.969009>,  <37.672508, 41.270264, 41.121624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839287, 41.973732, 40.969009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.458145, 41.920982, 40.859695>,  <37.229462, 41.889332, 40.794106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.458145, 41.920982, 40.859695>,  <37.839287, 41.973732, 40.969009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458145, 41.920982, 40.859695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253198, 0.841891, 0.476561,
		0.167228, 0.523286, -0.835587,
		-0.952851, -0.131875, -0.273283,
		37.172291, 41.881420, 40.777710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629284, 42.654877, 41.038834>,  <37.839287, 41.973732, 40.969009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629284, 42.654877, 41.038834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.293388, 42.446770, 40.976669>,  <37.091850, 42.321903, 40.939373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.293388, 42.446770, 40.976669>,  <37.629284, 42.654877, 41.038834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293388, 42.446770, 40.976669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486027, 0.592598, 0.642343,
		-0.242098, 0.614935, -0.750495,
		-0.839742, -0.520271, -0.155408,
		37.041466, 42.290688, 40.930046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126110, 43.246094, 40.927841>,  <37.629284, 42.654877, 41.038834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126110, 43.246094, 40.927841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.963894, 42.898388, 41.040920>,  <36.866566, 42.689766, 41.108768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.963894, 42.898388, 41.040920>,  <37.126110, 43.246094, 40.927841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963894, 42.898388, 41.040920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272938, 0.410317, 0.870141,
		-0.872378, 0.275715, -0.403655,
		-0.405538, -0.869265, 0.282699,
		36.842232, 42.637608, 41.125729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444237, 43.421967, 41.167645>,  <37.126110, 43.246094, 40.927841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444237, 43.421967, 41.167645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.546547, 43.072647, 41.333504>,  <36.607933, 42.863056, 41.433022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.546547, 43.072647, 41.333504>,  <36.444237, 43.421967, 41.167645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546547, 43.072647, 41.333504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223294, 0.363953, 0.904255,
		-0.940596, -0.323871, -0.101913,
		0.255771, -0.873295, 0.414652,
		36.623280, 42.810658, 41.457901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027054, 43.430416, 41.697189>,  <36.444237, 43.421967, 41.167645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027054, 43.430416, 41.697189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.294155, 43.151302, 41.800884>,  <36.454414, 42.983833, 41.863102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.294155, 43.151302, 41.800884>,  <36.027054, 43.430416, 41.697189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294155, 43.151302, 41.800884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178427, 0.188065, 0.965813,
		-0.722686, -0.691176, 0.001076,
		0.667749, -0.697788, 0.259236,
		36.494480, 42.941967, 41.878654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702465, 43.148285, 42.183590>,  <36.027054, 43.430416, 41.697189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702465, 43.148285, 42.183590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.084003, 43.041229, 42.238064>,  <36.312927, 42.976997, 42.270748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.084003, 43.041229, 42.238064>,  <35.702465, 43.148285, 42.183590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084003, 43.041229, 42.238064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118243, 0.082132, 0.989582,
		-0.276035, -0.960013, 0.046696,
		0.953846, -0.267638, 0.136186,
		36.370159, 42.960938, 42.278919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782368, 42.671791, 42.789333>,  <35.702465, 43.148285, 42.183590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782368, 42.671791, 42.789333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.139370, 42.848454, 42.752735>,  <36.353573, 42.954449, 42.730774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.139370, 42.848454, 42.752735>,  <35.782368, 42.671791, 42.789333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139370, 42.848454, 42.752735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057537, 0.089718, 0.994304,
		0.447347, -0.892689, 0.054662,
		0.892508, 0.441653, -0.091498,
		36.407124, 42.980949, 42.725285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169140, 42.235325, 43.279377>,  <35.782368, 42.671791, 42.789333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169140, 42.235325, 43.279377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.404495, 42.552311, 43.215130>,  <36.545708, 42.742504, 43.176582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.404495, 42.552311, 43.215130>,  <36.169140, 42.235325, 43.279377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404495, 42.552311, 43.215130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248765, 0.011598, 0.968494,
		0.769363, -0.609804, -0.190314,
		0.588385, 0.792467, -0.160621,
		36.581009, 42.790051, 43.166943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769100, 42.034595, 43.555218>,  <36.169140, 42.235325, 43.279377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769100, 42.034595, 43.555218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.796249, 42.433628, 43.549202>,  <36.812538, 42.673046, 43.545593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.796249, 42.433628, 43.549202>,  <36.769100, 42.034595, 43.555218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796249, 42.433628, 43.549202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348135, -0.009552, 0.937396,
		0.934984, -0.068865, -0.347941,
		0.067878, 0.997580, -0.015044,
		36.816612, 42.732903, 43.544689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268394, 42.129818, 44.053307>,  <36.769100, 42.034595, 43.555218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268394, 42.129818, 44.053307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.094017, 42.489422, 44.036625>,  <36.989391, 42.705185, 44.026615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.094017, 42.489422, 44.036625>,  <37.268394, 42.129818, 44.053307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094017, 42.489422, 44.036625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228661, 0.155456, 0.961014,
		0.870443, 0.409409, -0.273337,
		-0.435940, 0.899009, -0.041699,
		36.963234, 42.759125, 44.024117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682285, 42.579609, 44.390266>,  <37.268394, 42.129818, 44.053307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682285, 42.579609, 44.390266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.319527, 42.744980, 44.422783>,  <37.101871, 42.844204, 44.442291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.319527, 42.744980, 44.422783>,  <37.682285, 42.579609, 44.390266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319527, 42.744980, 44.422783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101615, 0.027380, 0.994447,
		0.408906, 0.910125, -0.066841,
		-0.906901, 0.413428, 0.081287,
		37.047455, 42.869007, 44.447170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040920, 43.153595, 44.319378>,  <37.682285, 42.579609, 44.390266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040920, 43.153595, 44.319378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.434883, 43.148972, 44.250294>,  <38.671261, 43.146198, 44.208843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.434883, 43.148972, 44.250294>,  <38.040920, 43.153595, 44.319378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434883, 43.148972, 44.250294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172309, -0.160469, -0.971884,
		-0.016479, 0.986973, -0.160038,
		0.984905, -0.011560, -0.172709,
		38.730354, 43.145504, 44.198483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055378, 43.166485, 43.587204>,  <38.040920, 43.153595, 44.319378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055378, 43.166485, 43.587204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.446217, 43.147236, 43.670116>,  <38.680721, 43.135685, 43.719864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.446217, 43.147236, 43.670116>,  <38.055378, 43.166485, 43.587204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446217, 43.147236, 43.670116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203537, -0.072833, -0.976354,
		0.062085, 0.996182, -0.061370,
		0.977097, -0.048126, 0.207282,
		38.739346, 43.132797, 43.732300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375637, 43.647995, 43.159618>,  <38.055378, 43.166485, 43.587204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375637, 43.647995, 43.159618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.606461, 43.334118, 43.250183>,  <38.744957, 43.145794, 43.304523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.606461, 43.334118, 43.250183>,  <38.375637, 43.647995, 43.159618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606461, 43.334118, 43.250183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128409, -0.186607, -0.974007,
		0.806542, 0.591136, -0.006923,
		0.577063, -0.784688, 0.226414,
		38.779579, 43.098713, 43.318108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981827, 43.559147, 42.722588>,  <38.375637, 43.647995, 43.159618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981827, 43.559147, 42.722588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.947437, 43.188118, 42.868031>,  <38.926804, 42.965500, 42.955296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.947437, 43.188118, 42.868031>,  <38.981827, 43.559147, 42.722588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947437, 43.188118, 42.868031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463948, -0.360246, -0.809305,
		0.881681, 0.099118, 0.461318,
		-0.085971, -0.927577, 0.363607,
		38.921646, 42.909843, 42.977112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680294, 43.240635, 42.681152>,  <38.981827, 43.559147, 42.722588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680294, 43.240635, 42.681152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.406155, 42.949879, 42.698666>,  <39.241669, 42.775425, 42.709175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.406155, 42.949879, 42.698666>,  <39.680294, 43.240635, 42.681152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406155, 42.949879, 42.698666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326151, -0.360157, -0.874021,
		0.651089, -0.584732, 0.483912,
		-0.685352, -0.726894, 0.043783,
		39.200550, 42.731812, 42.711800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040012, 42.666283, 42.633945>,  <39.680294, 43.240635, 42.681152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040012, 42.666283, 42.633945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.663143, 42.586166, 42.526474>,  <39.437019, 42.538097, 42.461990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.663143, 42.586166, 42.526474>,  <40.040012, 42.666283, 42.633945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663143, 42.586166, 42.526474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328868, -0.398541, -0.856160,
		0.064403, -0.895013, 0.441365,
		-0.942177, -0.200290, -0.268674,
		39.380489, 42.526081, 42.445873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065193, 41.984730, 42.430870>,  <40.040012, 42.666283, 42.633945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065193, 41.984730, 42.430870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.720833, 42.102577, 42.264954>,  <39.514217, 42.173286, 42.165405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.720833, 42.102577, 42.264954>,  <40.065193, 41.984730, 42.430870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720833, 42.102577, 42.264954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162371, -0.613534, -0.772795,
		-0.482169, -0.732648, 0.480354,
		-0.860900, 0.294622, -0.414788,
		39.462563, 42.190964, 42.140518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871109, 41.429073, 42.200825>,  <40.065193, 41.984730, 42.430870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871109, 41.429073, 42.200825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.630959, 41.666626, 41.986591>,  <39.486870, 41.809158, 41.858051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.630959, 41.666626, 41.986591>,  <39.871109, 41.429073, 42.200825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630959, 41.666626, 41.986591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141164, -0.580502, -0.801929,
		-0.787162, -0.557063, 0.264683,
		-0.600373, 0.593884, -0.535587,
		39.450848, 41.844791, 41.825916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385281, 40.883492, 41.976276>,  <39.871109, 41.429073, 42.200825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385281, 40.883492, 41.976276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.422024, 41.219475, 41.762352>,  <39.444069, 41.421066, 41.633995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.422024, 41.219475, 41.762352>,  <39.385281, 40.883492, 41.976276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422024, 41.219475, 41.762352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109214, -0.542342, -0.833029,
		-0.989765, 0.018108, -0.141552,
		0.091854, 0.839963, -0.534814,
		39.449581, 41.471462, 41.601910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063545, 40.715858, 41.365810>,  <39.385281, 40.883492, 41.976276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063545, 40.715858, 41.365810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.285522, 41.031055, 41.259144>,  <39.418709, 41.220173, 41.195145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.285522, 41.031055, 41.259144>,  <39.063545, 40.715858, 41.365810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285522, 41.031055, 41.259144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076665, -0.367630, -0.926807,
		-0.828350, 0.493878, -0.264424,
		0.554940, 0.787993, -0.266663,
		39.452003, 41.267452, 41.179146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841640, 40.884171, 40.713978>,  <39.063545, 40.715858, 41.365810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841640, 40.884171, 40.713978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.205700, 41.046429, 40.747646>,  <39.424133, 41.143784, 40.767849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.205700, 41.046429, 40.747646>,  <38.841640, 40.884171, 40.713978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205700, 41.046429, 40.747646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255217, -0.388948, -0.885203,
		-0.326341, 0.827146, -0.457527,
		0.910146, 0.405647, 0.084173,
		39.478745, 41.168121, 40.772900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954422, 41.230141, 40.014538>,  <38.841640, 40.884171, 40.713978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954422, 41.230141, 40.014538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.312809, 41.184402, 40.186192>,  <39.527843, 41.156960, 40.289185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.312809, 41.184402, 40.186192>,  <38.954422, 41.230141, 40.014538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312809, 41.184402, 40.186192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393508, -0.243531, -0.886478,
		0.205877, 0.963129, -0.173199,
		0.895972, -0.114350, 0.429137,
		39.581600, 41.150097, 40.314934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502483, 41.564137, 39.631699>,  <38.954422, 41.230141, 40.014538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502483, 41.564137, 39.631699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.705215, 41.296867, 39.849571>,  <39.826855, 41.136505, 39.980293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.705215, 41.296867, 39.849571>,  <39.502483, 41.564137, 39.631699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705215, 41.296867, 39.849571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493973, -0.292713, -0.818724,
		0.706481, 0.684009, 0.181703,
		0.506828, -0.668170, 0.544678,
		39.857265, 41.096416, 40.012974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275406, 41.625694, 39.426743>,  <39.502483, 41.564137, 39.631699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275406, 41.625694, 39.426743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.199776, 41.262947, 39.577393>,  <40.154400, 41.045300, 39.667782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.199776, 41.262947, 39.577393>,  <40.275406, 41.625694, 39.426743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199776, 41.262947, 39.577393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433796, -0.421230, -0.796484,
		0.880950, 0.012786, 0.473037,
		-0.189073, -0.906864, 0.376629,
		40.143055, 40.990887, 39.690380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.525341, 38.753323, 41.412468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.149469, 38.860504, 41.327423>,  <27.923946, 38.924812, 41.276398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.149469, 38.860504, 41.327423>,  <28.525341, 38.753323, 41.412468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.149469, 38.860504, 41.327423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078569, -0.435867, -0.896575,
		-0.332911, -0.859198, 0.388522,
		-0.939679, 0.267954, -0.212611,
		27.867565, 38.940891, 41.263641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.232800, 38.111340, 41.198189>,  <28.525341, 38.753323, 41.412468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.232800, 38.111340, 41.198189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.033920, 38.424938, 41.049515>,  <27.914593, 38.613098, 40.960312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.033920, 38.424938, 41.049515>,  <28.232800, 38.111340, 41.198189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.033920, 38.424938, 41.049515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162342, -0.504883, -0.847784,
		-0.852315, -0.361174, 0.378301,
		-0.497195, 0.783993, -0.371686,
		27.884762, 38.660137, 40.938007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.487822, 38.032539, 41.082947>,  <28.232800, 38.111340, 41.198189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.487822, 38.032539, 41.082947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.593790, 38.307407, 40.812355>,  <27.657372, 38.472328, 40.650002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.593790, 38.307407, 40.812355>,  <27.487822, 38.032539, 41.082947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.593790, 38.307407, 40.812355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313530, -0.602038, -0.734336,
		-0.911875, 0.406636, 0.055955,
		0.264920, 0.687166, -0.676476,
		27.673265, 38.513557, 40.609413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.946260, 38.106216, 40.549580>,  <27.487822, 38.032539, 41.082947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.946260, 38.106216, 40.549580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.263922, 38.257183, 40.359051>,  <27.454517, 38.347763, 40.244736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.263922, 38.257183, 40.359051>,  <26.946260, 38.106216, 40.549580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.263922, 38.257183, 40.359051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369357, -0.322653, -0.871476,
		-0.482596, 0.868016, -0.116833,
		0.794151, 0.377418, -0.476319,
		27.502167, 38.370407, 40.216156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.683395, 38.451019, 39.898594>,  <26.946260, 38.106216, 40.549580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.683395, 38.451019, 39.898594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.076727, 38.392216, 39.855789>,  <27.312727, 38.356934, 39.830105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.076727, 38.392216, 39.855789>,  <26.683395, 38.451019, 39.898594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.076727, 38.392216, 39.855789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127380, -0.136968, -0.982351,
		0.129755, 0.979607, -0.153411,
		0.983330, -0.147006, -0.107010,
		27.371725, 38.348114, 39.823685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.907028, 38.853374, 39.261959>,  <26.683395, 38.451019, 39.898594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.907028, 38.853374, 39.261959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.222504, 38.614456, 39.320206>,  <27.411789, 38.471104, 39.355152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.222504, 38.614456, 39.320206>,  <26.907028, 38.853374, 39.261959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.222504, 38.614456, 39.320206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044499, -0.291689, -0.955478,
		0.613180, 0.747095, -0.256631,
		0.788688, -0.597300, 0.145613,
		27.459110, 38.435265, 39.363888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.337107, 38.892830, 38.707176>,  <26.907028, 38.853374, 39.261959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.337107, 38.892830, 38.707176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.464199, 38.531361, 38.822010>,  <27.540455, 38.314480, 38.890911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.464199, 38.531361, 38.822010>,  <27.337107, 38.892830, 38.707176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.464199, 38.531361, 38.822010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058849, -0.320980, -0.945256,
		0.946353, 0.283442, -0.155165,
		0.317730, -0.903677, 0.287080,
		27.559519, 38.260258, 38.908134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.845774, 38.662498, 38.260815>,  <27.337107, 38.892830, 38.707176>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.845774, 38.662498, 38.260815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.719746, 38.314415, 38.412327>,  <27.644129, 38.105564, 38.503235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.719746, 38.314415, 38.412327>,  <27.845774, 38.662498, 38.260815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.719746, 38.314415, 38.412327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011309, -0.395634, -0.918338,
		0.949002, -0.293622, 0.114810,
		-0.315068, -0.870207, 0.378778,
		27.625225, 38.053352, 38.525959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.255259, 38.086990, 37.893681>,  <27.845774, 38.662498, 38.260815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.255259, 38.086990, 37.893681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.951744, 37.895531, 38.070381>,  <27.769636, 37.780655, 38.176403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.951744, 37.895531, 38.070381>,  <28.255259, 38.086990, 37.893681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.951744, 37.895531, 38.070381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131929, -0.551221, -0.823863,
		0.637841, -0.683414, 0.355111,
		-0.758784, -0.478645, 0.441753,
		27.724110, 37.751938, 38.202908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.387224, 37.320259, 37.900070>,  <28.255259, 38.086990, 37.893681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.387224, 37.320259, 37.900070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.996717, 37.406780, 37.904289>,  <27.762413, 37.458694, 37.906818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.996717, 37.406780, 37.904289>,  <28.387224, 37.320259, 37.900070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.996717, 37.406780, 37.904289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166298, -0.717599, -0.676311,
		-0.138722, -0.662015, 0.736541,
		-0.976269, 0.216305, 0.010545,
		27.703836, 37.471672, 37.907452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.148111, 36.702484, 37.832550>,  <28.387224, 37.320259, 37.900070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.148111, 36.702484, 37.832550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.846092, 36.947224, 37.738277>,  <27.664881, 37.094067, 37.681713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.846092, 36.947224, 37.738277>,  <28.148111, 36.702484, 37.832550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.846092, 36.947224, 37.738277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153247, -0.514169, -0.843887,
		-0.637513, -0.601056, 0.481985,
		-0.755045, 0.611852, -0.235680,
		27.619579, 37.130779, 37.667572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.464705, 36.236313, 37.572395>,  <28.148111, 36.702484, 37.832550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.464705, 36.236313, 37.572395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.426916, 36.605110, 37.422195>,  <27.404243, 36.826389, 37.332073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.426916, 36.605110, 37.422195>,  <27.464705, 36.236313, 37.572395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.426916, 36.605110, 37.422195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208356, -0.387147, -0.898168,
		-0.973480, -0.006612, 0.228677,
		-0.094470, 0.921994, -0.375502,
		27.398575, 36.881710, 37.309544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.774485, 36.223633, 37.239403>,  <27.464705, 36.236313, 37.572395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.774485, 36.223633, 37.239403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.988491, 36.529411, 37.095524>,  <27.116894, 36.712879, 37.009197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.988491, 36.529411, 37.095524>,  <26.774485, 36.223633, 37.239403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.988491, 36.529411, 37.095524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195694, -0.302044, -0.932991,
		-0.821866, 0.569554, -0.012001,
		0.535014, 0.764446, -0.359698,
		27.148994, 36.758743, 36.987614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.407303, 36.371315, 36.695831>,  <26.774485, 36.223633, 37.239403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.407303, 36.371315, 36.695831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.744978, 36.579037, 36.642658>,  <26.947584, 36.703671, 36.610756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.744978, 36.579037, 36.642658>,  <26.407303, 36.371315, 36.695831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.744978, 36.579037, 36.642658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043019, -0.181552, -0.982440,
		-0.534315, 0.835084, -0.130925,
		0.844190, 0.519301, -0.132931,
		26.998236, 36.734825, 36.602779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.284487, 36.771774, 36.145332>,  <26.407303, 36.371315, 36.695831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.284487, 36.771774, 36.145332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.683176, 36.739521, 36.147846>,  <26.922390, 36.720169, 36.149357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.683176, 36.739521, 36.147846>,  <26.284487, 36.771774, 36.145332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.683176, 36.739521, 36.147846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014132, -0.250179, -0.968096,
		0.079633, 0.964836, -0.250499,
		0.996724, -0.080633, 0.006287,
		26.982193, 36.715332, 36.149731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.477221, 36.888355, 35.454594>,  <26.284487, 36.771774, 36.145332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.477221, 36.888355, 35.454594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.809904, 36.734837, 35.615074>,  <27.009514, 36.642727, 35.711361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.809904, 36.734837, 35.615074>,  <26.477221, 36.888355, 35.454594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.809904, 36.734837, 35.615074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284589, -0.325767, -0.901601,
		0.476727, 0.864047, -0.161720,
		0.831709, -0.383794, 0.401200,
		27.059418, 36.619698, 35.735435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.942625, 36.982914, 34.966972>,  <26.477221, 36.888355, 35.454594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.942625, 36.982914, 34.966972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.121017, 36.709641, 35.198269>,  <27.228052, 36.545677, 35.337048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.121017, 36.709641, 35.198269>,  <26.942625, 36.982914, 34.966972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.121017, 36.709641, 35.198269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370761, -0.447000, -0.814081,
		0.814640, 0.577453, 0.053944,
		0.445980, -0.683183, 0.578241,
		27.254812, 36.504684, 35.371742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.644871, 36.948566, 34.757381>,  <26.942625, 36.982914, 34.966972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.644871, 36.948566, 34.757381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.556623, 36.597424, 34.927414>,  <27.503675, 36.386738, 35.029434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.556623, 36.597424, 34.927414>,  <27.644871, 36.948566, 34.757381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.556623, 36.597424, 34.927414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393138, -0.478887, -0.784927,
		0.892620, -0.006053, 0.450770,
		-0.220619, -0.877856, 0.425084,
		27.490438, 36.334068, 35.054939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.275801, 36.563290, 34.728619>,  <27.644871, 36.948566, 34.757381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.275801, 36.563290, 34.728619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.990887, 36.286121, 34.773365>,  <27.819939, 36.119820, 34.800213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.990887, 36.286121, 34.773365>,  <28.275801, 36.563290, 34.728619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.990887, 36.286121, 34.773365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354624, -0.492814, -0.794591,
		0.605718, -0.526303, 0.596750,
		-0.712283, -0.692921, 0.111867,
		27.777203, 36.078247, 34.806927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.552284, 35.817749, 34.674694>,  <28.275801, 36.563290, 34.728619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.552284, 35.817749, 34.674694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.178280, 35.795563, 34.534592>,  <27.953876, 35.782253, 34.450531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.178280, 35.795563, 34.534592>,  <28.552284, 35.817749, 34.674694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.178280, 35.795563, 34.534592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339041, -0.429344, -0.837087,
		-0.103953, -0.901437, 0.420245,
		-0.935011, -0.055463, -0.350256,
		27.897778, 35.778923, 34.429516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124790, 36.000591, 34.361862>,  <28.552284, 35.817749, 34.674694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124790, 36.000591, 34.361862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.505627, 35.915516, 34.449757>,  <29.734129, 35.864471, 34.502495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.505627, 35.915516, 34.449757>,  <29.124790, 36.000591, 34.361862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.505627, 35.915516, 34.449757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061076, 0.836304, 0.544854,
		-0.299652, -0.505330, 0.809228,
		0.952092, -0.212691, 0.219736,
		29.791254, 35.851707, 34.515678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.142801, 35.889679, 35.071732>,  <29.124790, 36.000591, 34.361862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.142801, 35.889679, 35.071732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.509123, 35.992580, 34.948364>,  <29.728916, 36.054321, 34.874344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.509123, 35.992580, 34.948364>,  <29.142801, 35.889679, 35.071732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.509123, 35.992580, 34.948364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045164, 0.829032, 0.557374,
		0.399076, -0.496516, 0.770851,
		0.915805, 0.257249, -0.308422,
		29.783865, 36.069756, 34.855839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657942, 35.819386, 35.605618>,  <29.142801, 35.889679, 35.071732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.657942, 35.819386, 35.605618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.788635, 36.089733, 35.341362>,  <29.867052, 36.251942, 35.182808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.788635, 36.089733, 35.341362>,  <29.657942, 35.819386, 35.605618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.788635, 36.089733, 35.341362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073221, 0.678799, 0.730665,
		0.942275, -0.287107, 0.172300,
		0.326736, 0.675871, -0.660638,
		29.886656, 36.292496, 35.143169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.266401, 36.144299, 35.897499>,  <29.657942, 35.819386, 35.605618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.266401, 36.144299, 35.897499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.151417, 36.403923, 35.615768>,  <30.082426, 36.559700, 35.446728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.151417, 36.403923, 35.615768>,  <30.266401, 36.144299, 35.897499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151417, 36.403923, 35.615768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057061, 0.722457, 0.689057,
		0.956091, 0.238266, -0.170641,
		-0.287460, 0.649065, -0.704331,
		30.065178, 36.598644, 35.404469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760704, 36.809357, 35.926365>,  <30.266401, 36.144299, 35.897499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760704, 36.809357, 35.926365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.420103, 36.906506, 35.740479>,  <30.215742, 36.964794, 35.628948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.420103, 36.906506, 35.740479>,  <30.760704, 36.809357, 35.926365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.420103, 36.906506, 35.740479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023497, 0.867699, 0.496535,
		0.523827, 0.433719, -0.733139,
		-0.851501, 0.242872, -0.464715,
		30.164654, 36.979366, 35.601063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856272, 37.499237, 35.766735>,  <30.760704, 36.809357, 35.926365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856272, 37.499237, 35.766735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.463831, 37.457909, 35.701302>,  <30.228367, 37.433113, 35.662041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.463831, 37.457909, 35.701302>,  <30.856272, 37.499237, 35.766735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463831, 37.457909, 35.701302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162403, 0.899317, 0.406022,
		0.105168, 0.424917, -0.899102,
		-0.981104, -0.103317, -0.163588,
		30.169500, 37.426914, 35.652225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.619730, 38.228733, 35.494614>,  <30.856272, 37.499237, 35.766735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.619730, 38.228733, 35.494614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.293377, 38.043106, 35.632584>,  <30.097565, 37.931728, 35.715366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.293377, 38.043106, 35.632584>,  <30.619730, 38.228733, 35.494614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.293377, 38.043106, 35.632584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283439, 0.840938, 0.460961,
		-0.503979, 0.278325, -0.817644,
		-0.815885, -0.464067, 0.344927,
		30.048611, 37.903885, 35.736061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907005, 38.642094, 35.360134>,  <30.619730, 38.228733, 35.494614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907005, 38.642094, 35.360134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.828264, 38.394367, 35.664158>,  <29.781019, 38.245731, 35.846573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.828264, 38.394367, 35.664158>,  <29.907005, 38.642094, 35.360134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.828264, 38.394367, 35.664158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443941, 0.747510, 0.494111,
		-0.874165, -0.240155, -0.422091,
		-0.196854, -0.619318, 0.760062,
		29.769207, 38.208572, 35.892178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382128, 38.906033, 35.736923>,  <29.907005, 38.642094, 35.360134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.382128, 38.906033, 35.736923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.519323, 38.667370, 36.027122>,  <29.601641, 38.524170, 36.201244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.519323, 38.667370, 36.027122>,  <29.382128, 38.906033, 35.736923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519323, 38.667370, 36.027122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010969, 0.774845, 0.632056,
		-0.939275, -0.208832, 0.272309,
		0.342991, -0.596661, 0.725502,
		29.622221, 38.488373, 36.244774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865314, 38.980152, 36.323814>,  <29.382128, 38.906033, 35.736923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.865314, 38.980152, 36.323814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.219435, 38.862911, 36.468220>,  <29.431908, 38.792564, 36.554863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.219435, 38.862911, 36.468220>,  <28.865314, 38.980152, 36.323814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.219435, 38.862911, 36.468220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114523, 0.615003, 0.780164,
		-0.450692, -0.732025, 0.510897,
		0.885303, -0.293104, 0.361011,
		29.485025, 38.774979, 36.576523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.723848, 38.606506, 36.966839>,  <28.865314, 38.980152, 36.323814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.723848, 38.606506, 36.966839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.111633, 38.699013, 36.999489>,  <29.344303, 38.754517, 37.019077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.111633, 38.699013, 36.999489>,  <28.723848, 38.606506, 36.966839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.111633, 38.699013, 36.999489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181135, 0.450828, 0.874039,
		0.165335, -0.862132, 0.478950,
		0.969461, 0.231264, 0.081625,
		29.402472, 38.768391, 37.023975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896042, 38.510761, 37.640110>,  <28.723848, 38.606506, 36.966839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896042, 38.510761, 37.640110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.189394, 38.740322, 37.494347>,  <29.365406, 38.878059, 37.406887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.189394, 38.740322, 37.494347>,  <28.896042, 38.510761, 37.640110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.189394, 38.740322, 37.494347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064072, 0.475304, 0.877486,
		0.676793, -0.666879, 0.311807,
		0.733379, 0.573898, -0.364411,
		29.409409, 38.912491, 37.385025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326767, 38.595997, 38.224632>,  <28.896042, 38.510761, 37.640110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326767, 38.595997, 38.224632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.468407, 38.876457, 37.977085>,  <29.553391, 39.044735, 37.828556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.468407, 38.876457, 37.977085>,  <29.326767, 38.595997, 38.224632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468407, 38.876457, 37.977085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121814, 0.621526, 0.773865,
		0.927241, -0.349412, 0.134671,
		0.354099, 0.701154, -0.618867,
		29.574636, 39.086803, 37.791424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071716, 38.750996, 38.372631>,  <29.326767, 38.595997, 38.224632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071716, 38.750996, 38.372631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.884359, 39.063839, 38.208233>,  <29.771944, 39.251545, 38.109592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.884359, 39.063839, 38.208233>,  <30.071716, 38.750996, 38.372631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.884359, 39.063839, 38.208233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252563, 0.564296, 0.785991,
		0.846651, 0.264351, -0.461844,
		-0.468395, 0.782105, -0.410996,
		29.743841, 39.298470, 38.084934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.509836, 39.421627, 38.546764>,  <30.071716, 38.750996, 38.372631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.509836, 39.421627, 38.546764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.156387, 39.577488, 38.442924>,  <29.944319, 39.671005, 38.380623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.156387, 39.577488, 38.442924>,  <30.509836, 39.421627, 38.546764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156387, 39.577488, 38.442924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008588, 0.567844, 0.823091,
		0.468125, 0.725070, -0.505105,
		-0.883620, 0.389648, -0.259595,
		29.891302, 39.694382, 38.365047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607641, 40.215801, 38.559738>,  <30.509836, 39.421627, 38.546764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607641, 40.215801, 38.559738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.215090, 40.142090, 38.581417>,  <29.979559, 40.097862, 38.594425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.215090, 40.142090, 38.581417>,  <30.607641, 40.215801, 38.559738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215090, 40.142090, 38.581417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112889, 0.781636, 0.613434,
		-0.155406, 0.595892, -0.787884,
		-0.981379, -0.184274, 0.054201,
		29.920675, 40.086807, 38.597679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304544, 40.864159, 38.682819>,  <30.607641, 40.215801, 38.559738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304544, 40.864159, 38.682819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.006914, 40.624283, 38.800613>,  <29.828335, 40.480358, 38.871288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.006914, 40.624283, 38.800613>,  <30.304544, 40.864159, 38.682819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.006914, 40.624283, 38.800613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206764, 0.625841, 0.752045,
		-0.635293, 0.498692, -0.589668,
		-0.744077, -0.599691, 0.294481,
		29.783691, 40.444374, 38.888958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790024, 41.359074, 38.839405>,  <30.304544, 40.864159, 38.682819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790024, 41.359074, 38.839405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.684401, 41.022926, 39.028740>,  <29.621027, 40.821236, 39.142342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.684401, 41.022926, 39.028740>,  <29.790024, 41.359074, 38.839405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.684401, 41.022926, 39.028740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301396, 0.538075, 0.787169,
		-0.916206, 0.065198, -0.395368,
		-0.264060, -0.840371, 0.473337,
		29.605183, 40.770813, 39.170742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.121399, 41.459187, 39.076225>,  <29.790024, 41.359074, 38.839405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.121399, 41.459187, 39.076225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.271433, 41.174206, 39.313450>,  <29.361454, 41.003216, 39.455784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.271433, 41.174206, 39.313450>,  <29.121399, 41.459187, 39.076225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.271433, 41.174206, 39.313450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151303, 0.584138, 0.797427,
		-0.914560, -0.388834, 0.111305,
		0.375084, -0.712454, 0.593061,
		29.383959, 40.960468, 39.491367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.621227, 41.295914, 39.596325>,  <29.121399, 41.459187, 39.076225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.621227, 41.295914, 39.596325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.963251, 41.172455, 39.762993>,  <29.168465, 41.098381, 39.862991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.963251, 41.172455, 39.762993>,  <28.621227, 41.295914, 39.596325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.963251, 41.172455, 39.762993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188276, 0.563912, 0.804086,
		-0.483140, -0.765990, 0.424069,
		0.855060, -0.308645, 0.416666,
		29.219769, 41.079861, 39.887993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.394793, 41.106148, 40.323475>,  <28.621227, 41.295914, 39.596325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.394793, 41.106148, 40.323475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.786831, 41.180641, 40.295979>,  <29.022055, 41.225338, 40.279480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.786831, 41.180641, 40.295979>,  <28.394793, 41.106148, 40.323475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.786831, 41.180641, 40.295979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029787, 0.480309, 0.876593,
		0.196266, -0.857100, 0.476298,
		0.980098, 0.186233, -0.068738,
		29.080860, 41.236511, 40.275356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.793499, 41.711727, 40.283669>,  <28.394793, 41.106148, 40.323475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.793499, 41.711727, 40.283669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.896847, 42.072296, 40.144711>,  <28.958855, 42.288639, 40.061337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.896847, 42.072296, 40.144711>,  <28.793499, 41.711727, 40.283669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.896847, 42.072296, 40.144711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056937, -0.373193, -0.926005,
		-0.964367, 0.219470, -0.147745,
		0.258368, 0.901421, -0.347399,
		28.974358, 42.342724, 40.040489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.801178, 40.453976, 44.771812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.414131, 40.419632, 44.866756>,  <41.181904, 40.399025, 44.923725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.414131, 40.419632, 44.866756>,  <41.801178, 40.453976, 44.771812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.414131, 40.419632, 44.866756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146933, 0.573032, 0.806254,
		-0.205238, 0.815023, -0.541862,
		-0.967620, -0.085856, 0.237362,
		41.123844, 40.393875, 44.937965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537823, 41.205730, 44.847504>,  <41.801178, 40.453976, 44.771812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.537823, 41.205730, 44.847504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.331707, 40.928959, 45.049778>,  <41.208038, 40.762897, 45.171143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.331707, 40.928959, 45.049778>,  <41.537823, 41.205730, 44.847504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.331707, 40.928959, 45.049778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156124, 0.504390, 0.849245,
		-0.842675, 0.516557, -0.151881,
		-0.515291, -0.691925, 0.505684,
		41.177120, 40.721382, 45.201485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955265, 41.474522, 45.177898>,  <41.537823, 41.205730, 44.847504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955265, 41.474522, 45.177898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.087299, 41.162102, 45.389938>,  <41.166519, 40.974651, 45.517162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.087299, 41.162102, 45.389938>,  <40.955265, 41.474522, 45.177898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087299, 41.162102, 45.389938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073691, 0.581186, 0.810428,
		-0.941071, -0.228445, 0.249396,
		0.330084, -0.781048, 0.530103,
		41.186325, 40.927788, 45.548969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.627373, 41.790970, 45.655411>,  <40.955265, 41.474522, 45.177898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.627373, 41.790970, 45.655411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.846077, 41.488686, 45.799606>,  <40.977299, 41.307316, 45.886124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.846077, 41.488686, 45.799606>,  <40.627373, 41.790970, 45.655411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846077, 41.488686, 45.799606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215293, 0.542962, 0.811691,
		-0.809136, -0.366189, 0.459570,
		0.546761, -0.755710, 0.360492,
		41.010105, 41.261974, 45.907753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471992, 41.713585, 46.433819>,  <40.627373, 41.790970, 45.655411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471992, 41.713585, 46.433819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.818474, 41.519100, 46.387711>,  <41.026363, 41.402409, 46.360046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.818474, 41.519100, 46.387711>,  <40.471992, 41.713585, 46.433819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818474, 41.519100, 46.387711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348537, 0.422588, 0.836625,
		-0.358068, -0.764863, 0.535511,
		0.866204, -0.486214, -0.115268,
		41.078335, 41.373238, 46.353130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609074, 41.459118, 47.125027>,  <40.471992, 41.713585, 46.433819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609074, 41.459118, 47.125027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.955883, 41.449184, 46.925964>,  <41.163967, 41.443222, 46.806526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.955883, 41.449184, 46.925964>,  <40.609074, 41.459118, 47.125027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.955883, 41.449184, 46.925964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456024, 0.442043, 0.772425,
		0.200799, -0.896650, 0.394586,
		0.867019, -0.024838, -0.497655,
		41.215988, 41.441734, 46.776669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973156, 41.053188, 47.522514>,  <40.609074, 41.459118, 47.125027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973156, 41.053188, 47.522514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.203636, 41.296921, 47.304630>,  <41.341923, 41.443161, 47.173901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.203636, 41.296921, 47.304630>,  <40.973156, 41.053188, 47.522514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.203636, 41.296921, 47.304630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449681, 0.320173, 0.833832,
		0.682484, -0.725398, -0.089524,
		0.576197, 0.609334, -0.544710,
		41.376495, 41.479721, 47.141216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.627705, 40.927925, 47.729965>,  <40.973156, 41.053188, 47.522514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.627705, 40.927925, 47.729965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.644741, 41.288670, 47.557999>,  <41.654964, 41.505116, 47.454819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.644741, 41.288670, 47.557999>,  <41.627705, 40.927925, 47.729965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.644741, 41.288670, 47.557999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332832, 0.392921, 0.857226,
		0.942024, -0.179602, -0.283433,
		0.042593, 0.901863, -0.429918,
		41.657520, 41.559227, 47.429024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057709, 41.265572, 48.141068>,  <41.627705, 40.927925, 47.729965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.057709, 41.265572, 48.141068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.875462, 41.569386, 47.955368>,  <41.766113, 41.751675, 47.843948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.875462, 41.569386, 47.955368>,  <42.057709, 41.265572, 48.141068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.875462, 41.569386, 47.955368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210764, 0.598738, 0.772717,
		0.864865, 0.254217, -0.432877,
		-0.455618, 0.759530, -0.464248,
		41.738777, 41.797245, 47.816093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.487434, 41.807926, 48.227299>,  <42.057709, 41.265572, 48.141068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.487434, 41.807926, 48.227299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.154491, 42.006672, 48.129066>,  <41.954727, 42.125919, 48.070126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.154491, 42.006672, 48.129066>,  <42.487434, 41.807926, 48.227299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.154491, 42.006672, 48.129066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158549, 0.638040, 0.753503,
		0.531076, 0.588248, -0.609855,
		-0.832358, 0.496860, -0.245582,
		41.904785, 42.155731, 48.055393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.704113, 42.508934, 48.389717>,  <42.487434, 41.807926, 48.227299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.704113, 42.508934, 48.389717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.304790, 42.528698, 48.377380>,  <42.065197, 42.540558, 48.369976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.304790, 42.528698, 48.377380>,  <42.704113, 42.508934, 48.389717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.304790, 42.528698, 48.377380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009472, 0.660201, 0.751029,
		0.057473, 0.749462, -0.659548,
		-0.998302, 0.049411, -0.030845,
		42.005299, 42.543522, 48.368126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.459648, 43.229595, 48.442852>,  <42.704113, 42.508934, 48.389717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.459648, 43.229595, 48.442852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.137691, 43.016266, 48.546936>,  <41.944519, 42.888268, 48.609386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.137691, 43.016266, 48.546936>,  <42.459648, 43.229595, 48.442852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.137691, 43.016266, 48.546936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104401, 0.558924, 0.822620,
		-0.584166, 0.634954, -0.505553,
		-0.804892, -0.533327, 0.260215,
		41.896225, 42.856266, 48.625000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.829914, 43.684971, 48.612965>,  <42.459648, 43.229595, 48.442852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.829914, 43.684971, 48.612965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.774815, 43.337395, 48.803112>,  <41.741753, 43.128849, 48.917198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.774815, 43.337395, 48.803112>,  <41.829914, 43.684971, 48.612965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.774815, 43.337395, 48.803112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120411, 0.491072, 0.862757,
		-0.983120, 0.061607, -0.172275,
		-0.137751, -0.868938, 0.475364,
		41.733490, 43.076714, 48.945721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.199001, 43.651791, 48.892189>,  <41.829914, 43.684971, 48.612965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.199001, 43.651791, 48.892189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.450497, 43.434788, 49.115036>,  <41.601395, 43.304588, 49.248745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.450497, 43.434788, 49.115036>,  <41.199001, 43.651791, 48.892189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.450497, 43.434788, 49.115036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182267, 0.593666, 0.783798,
		-0.755954, -0.594348, 0.274380,
		0.628739, -0.542505, 0.557114,
		41.639118, 43.272038, 49.282169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939259, 43.741695, 49.616104>,  <41.199001, 43.651791, 48.892189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939259, 43.741695, 49.616104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.621117, 43.984131, 49.619350>,  <40.430229, 44.129593, 49.621300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.621117, 43.984131, 49.619350>,  <40.939259, 43.741695, 49.616104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621117, 43.984131, 49.619350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253446, -0.320367, -0.912760,
		-0.550609, -0.728029, 0.408417,
		-0.795358, 0.606085, 0.008119,
		40.382507, 44.165955, 49.621788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450577, 43.398567, 49.265301>,  <40.939259, 43.741695, 49.616104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450577, 43.398567, 49.265301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.324577, 43.777512, 49.242401>,  <40.248978, 44.004879, 49.228661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.324577, 43.777512, 49.242401>,  <40.450577, 43.398567, 49.265301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324577, 43.777512, 49.242401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230160, -0.134765, -0.963777,
		-0.920761, -0.290415, 0.260496,
		-0.315000, 0.947364, -0.057245,
		40.230076, 44.061722, 49.225227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718918, 43.414024, 48.838573>,  <40.450577, 43.398567, 49.265301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718918, 43.414024, 48.838573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.857487, 43.788696, 48.818130>,  <39.940628, 44.013500, 48.805862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.857487, 43.788696, 48.818130>,  <39.718918, 43.414024, 48.838573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857487, 43.788696, 48.818130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485881, 0.132561, -0.863914,
		-0.802439, 0.324116, 0.501039,
		0.346427, 0.936684, -0.051109,
		39.961414, 44.069702, 48.802799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161987, 43.887909, 48.533787>,  <39.718918, 43.414024, 48.838573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161987, 43.887909, 48.533787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.512539, 44.072289, 48.477955>,  <39.722870, 44.182915, 48.444458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.512539, 44.072289, 48.477955>,  <39.161987, 43.887909, 48.533787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512539, 44.072289, 48.477955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248982, 0.185546, -0.950569,
		-0.412264, 0.867814, 0.277377,
		0.876383, 0.460947, -0.139576,
		39.775455, 44.210571, 48.436081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984394, 44.464794, 48.272701>,  <39.161987, 43.887909, 48.533787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984394, 44.464794, 48.272701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.361420, 44.391773, 48.160805>,  <39.587635, 44.347961, 48.093666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.361420, 44.391773, 48.160805>,  <38.984394, 44.464794, 48.272701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361420, 44.391773, 48.160805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257333, 0.137119, -0.956545,
		0.212976, 0.973588, 0.082266,
		0.942561, -0.182551, -0.279739,
		39.644188, 44.337009, 48.076881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065834, 44.817005, 47.640739>,  <38.984394, 44.464794, 48.272701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065834, 44.817005, 47.640739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.380577, 44.571613, 47.613903>,  <39.569424, 44.424377, 47.597801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.380577, 44.571613, 47.613903>,  <39.065834, 44.817005, 47.640739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380577, 44.571613, 47.613903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103326, -0.023781, -0.994363,
		0.608423, 0.789354, -0.082101,
		0.786857, -0.613477, -0.067092,
		39.616634, 44.387569, 47.593777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299751, 44.981842, 47.002995>,  <39.065834, 44.817005, 47.640739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299751, 44.981842, 47.002995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.435501, 44.616447, 47.092758>,  <39.516953, 44.397209, 47.146614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.435501, 44.616447, 47.092758>,  <39.299751, 44.981842, 47.002995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435501, 44.616447, 47.092758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198122, -0.302631, -0.932289,
		0.919548, 0.271939, -0.283689,
		0.339379, -0.913490, 0.224406,
		39.537315, 44.342400, 47.160080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744904, 44.789478, 46.520439>,  <39.299751, 44.981842, 47.002995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744904, 44.789478, 46.520439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.656525, 44.430603, 46.673405>,  <39.603497, 44.215279, 46.765182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.656525, 44.430603, 46.673405>,  <39.744904, 44.789478, 46.520439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656525, 44.430603, 46.673405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289092, -0.314236, -0.904258,
		0.931455, -0.310345, -0.189940,
		-0.220946, -0.897186, 0.382415,
		39.590240, 44.161446, 46.788128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332325, 44.468975, 46.165092>,  <39.744904, 44.789478, 46.520439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332325, 44.468975, 46.165092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.057308, 44.213181, 46.302696>,  <39.892300, 44.059704, 46.385258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.057308, 44.213181, 46.302696>,  <40.332325, 44.468975, 46.165092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057308, 44.213181, 46.302696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215977, -0.272214, -0.937685,
		0.693283, -0.718995, 0.049043,
		-0.687541, -0.639489, 0.344008,
		39.851048, 44.021336, 46.405899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447086, 43.708733, 45.872524>,  <40.332325, 44.468975, 46.165092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447086, 43.708733, 45.872524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.056778, 43.699703, 45.959568>,  <39.822594, 43.694286, 46.011795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.056778, 43.699703, 45.959568>,  <40.447086, 43.708733, 45.872524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056778, 43.699703, 45.959568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196058, -0.351172, -0.915554,
		0.097086, -0.936039, 0.338239,
		-0.975774, -0.022573, 0.217612,
		39.764046, 43.692932, 46.024853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258862, 43.091057, 45.409550>,  <40.447086, 43.708733, 45.872524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.258862, 43.091057, 45.409550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.932045, 43.291775, 45.523148>,  <39.735954, 43.412205, 45.591305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.932045, 43.291775, 45.523148>,  <40.258862, 43.091057, 45.409550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932045, 43.291775, 45.523148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444840, -0.235217, -0.864170,
		-0.366836, -0.832391, 0.415400,
		-0.817037, 0.501795, 0.283995,
		39.686935, 43.442314, 45.608345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610275, 42.598186, 45.436768>,  <40.258862, 43.091057, 45.409550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610275, 42.598186, 45.436768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.501171, 42.977196, 45.370083>,  <39.435707, 43.204601, 45.330074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.501171, 42.977196, 45.370083>,  <39.610275, 42.598186, 45.436768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501171, 42.977196, 45.370083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451487, -0.279081, -0.847510,
		-0.849564, -0.155903, 0.503919,
		-0.272764, 0.947527, -0.166709,
		39.419342, 43.261456, 45.320068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828835, 42.596653, 45.273296>,  <39.610275, 42.598186, 45.436768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828835, 42.596653, 45.273296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.978889, 42.932098, 45.115311>,  <39.068920, 43.133366, 45.020519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.978889, 42.932098, 45.115311>,  <38.828835, 42.596653, 45.273296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978889, 42.932098, 45.115311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592541, -0.110729, -0.797893,
		-0.712859, 0.533352, 0.455375,
		0.375135, 0.838614, -0.394967,
		39.091431, 43.183681, 44.996819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379936, 42.697395, 44.768036>,  <38.828835, 42.596653, 45.273296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379936, 42.697395, 44.768036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.651661, 42.976665, 44.677631>,  <38.814697, 43.144230, 44.623390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.651661, 42.976665, 44.677631>,  <38.379936, 42.697395, 44.768036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651661, 42.976665, 44.677631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332474, 0.018251, -0.942936,
		-0.654213, 0.715690, 0.244525,
		0.679313, 0.698179, -0.226009,
		38.855453, 43.186119, 44.609829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643810, 42.933907, 45.005909>,  <38.379936, 42.697395, 44.768036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643810, 42.933907, 45.005909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.253399, 42.932419, 44.918858>,  <37.019154, 42.931526, 44.866627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.253399, 42.932419, 44.918858>,  <37.643810, 42.933907, 45.005909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253399, 42.932419, 44.918858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216189, 0.132718, 0.967289,
		0.025285, 0.991147, -0.130341,
		-0.976024, -0.003720, -0.217631,
		36.960590, 42.931301, 44.853569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457779, 43.439087, 45.389832>,  <37.643810, 42.933907, 45.005909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457779, 43.439087, 45.389832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.129017, 43.219421, 45.329300>,  <36.931759, 43.087624, 45.292980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.129017, 43.219421, 45.329300>,  <37.457779, 43.439087, 45.389832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129017, 43.219421, 45.329300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251644, 0.111708, 0.961352,
		-0.511032, 0.828217, -0.230006,
		-0.821901, -0.549161, -0.151330,
		36.882446, 43.054672, 45.283901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877720, 43.838058, 45.624020>,  <37.457779, 43.439087, 45.389832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877720, 43.838058, 45.624020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.753902, 43.457848, 45.634380>,  <36.679611, 43.229721, 45.640594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.753902, 43.457848, 45.634380>,  <36.877720, 43.838058, 45.624020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753902, 43.457848, 45.634380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141375, 0.072940, 0.987265,
		-0.940315, 0.301944, -0.156960,
		-0.309548, -0.950531, 0.025899,
		36.661037, 43.172688, 45.642151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425323, 43.876453, 46.088764>,  <36.877720, 43.838058, 45.624020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425323, 43.876453, 46.088764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.484470, 43.481983, 46.058861>,  <36.519958, 43.245300, 46.040920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.484470, 43.481983, 46.058861>,  <36.425323, 43.876453, 46.088764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484470, 43.481983, 46.058861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013094, -0.077536, 0.996904,
		-0.988921, -0.146430, -0.024378,
		0.147866, -0.986178, -0.074760,
		36.528831, 43.186131, 46.036434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999668, 43.686157, 46.547630>,  <36.425323, 43.876453, 46.088764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999668, 43.686157, 46.547630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.241005, 43.367943, 46.525379>,  <36.385807, 43.177013, 46.512028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.241005, 43.367943, 46.525379>,  <35.999668, 43.686157, 46.547630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241005, 43.367943, 46.525379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043208, -0.102267, 0.993818,
		-0.796311, -0.597209, -0.096076,
		0.603343, -0.795540, -0.055632,
		36.422009, 43.129280, 46.508690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700607, 43.051273, 46.900940>,  <35.999668, 43.686157, 46.547630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700607, 43.051273, 46.900940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.096638, 43.005127, 46.868816>,  <36.334255, 42.977440, 46.849541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.096638, 43.005127, 46.868816>,  <35.700607, 43.051273, 46.900940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096638, 43.005127, 46.868816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055019, -0.207683, 0.976648,
		-0.129353, -0.971369, -0.199273,
		0.990071, -0.115368, -0.080308,
		36.393658, 42.970516, 46.844723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864166, 42.465313, 47.264301>,  <35.700607, 43.051273, 46.900940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864166, 42.465313, 47.264301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.224243, 42.638603, 47.246586>,  <36.440289, 42.742577, 47.235958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.224243, 42.638603, 47.246586>,  <35.864166, 42.465313, 47.264301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224243, 42.638603, 47.246586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120431, -0.149929, 0.981335,
		0.418501, -0.888727, -0.187139,
		0.900196, 0.433227, -0.044285,
		36.494301, 42.768570, 47.233299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407833, 42.048733, 47.438854>,  <35.864166, 42.465313, 47.264301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407833, 42.048733, 47.438854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.470245, 42.430660, 47.540035>,  <36.507694, 42.659817, 47.600742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.470245, 42.430660, 47.540035>,  <36.407833, 42.048733, 47.438854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470245, 42.430660, 47.540035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170750, -0.226157, 0.959008,
		0.972881, -0.192827, 0.127747,
		0.156032, 0.954814, 0.252949,
		36.517056, 42.717106, 47.615921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116947, 41.467205, 47.083336>,  <36.407833, 42.048733, 47.438854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116947, 41.467205, 47.083336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.946716, 41.189533, 47.315544>,  <35.844578, 41.022930, 47.454868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.946716, 41.189533, 47.315544>,  <36.116947, 41.467205, 47.083336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946716, 41.189533, 47.315544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204280, -0.698650, -0.685681,
		0.881561, -0.173226, 0.439139,
		-0.425582, -0.694177, 0.580516,
		35.819042, 40.981281, 47.489700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557304, 40.875458, 47.115623>,  <36.116947, 41.467205, 47.083336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557304, 40.875458, 47.115623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.177841, 40.759449, 47.166107>,  <35.950161, 40.689846, 47.196396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.177841, 40.759449, 47.166107>,  <36.557304, 40.875458, 47.115623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177841, 40.759449, 47.166107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112377, -0.682051, -0.722619,
		0.295655, -0.671338, 0.679627,
		-0.948662, -0.290020, 0.126209,
		35.893242, 40.672443, 47.203968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341995, 40.105736, 47.140324>,  <36.557304, 40.875458, 47.115623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341995, 40.105736, 47.140324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.022514, 40.299213, 46.997150>,  <35.830826, 40.415298, 46.911247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.022514, 40.299213, 46.997150>,  <36.341995, 40.105736, 47.140324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022514, 40.299213, 46.997150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054995, -0.651033, -0.757055,
		-0.599208, -0.584977, 0.546582,
		-0.798702, 0.483692, -0.357933,
		35.782902, 40.444321, 46.889771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915325, 39.582310, 46.904015>,  <36.341995, 40.105736, 47.140324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915325, 39.582310, 46.904015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.799053, 39.907757, 46.702606>,  <35.729290, 40.103024, 46.581760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.799053, 39.907757, 46.702606>,  <35.915325, 39.582310, 46.904015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799053, 39.907757, 46.702606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022576, -0.520263, -0.853708,
		-0.956555, -0.259520, 0.132859,
		-0.290676, 0.813619, -0.503519,
		35.711849, 40.151844, 46.551552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425407, 39.341572, 46.355305>,  <35.915325, 39.582310, 46.904015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425407, 39.341572, 46.355305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.491455, 39.715683, 46.230091>,  <35.531082, 39.940151, 46.154964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.491455, 39.715683, 46.230091>,  <35.425407, 39.341572, 46.355305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491455, 39.715683, 46.230091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104544, -0.299003, -0.948508,
		-0.980718, 0.189339, 0.048408,
		0.165115, 0.935279, -0.313032,
		35.540989, 39.996265, 46.136181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904716, 39.359932, 45.737186>,  <35.425407, 39.341572, 46.355305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904716, 39.359932, 45.737186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.171196, 39.656815, 45.708073>,  <35.331085, 39.834946, 45.690605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.171196, 39.656815, 45.708073>,  <34.904716, 39.359932, 45.737186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171196, 39.656815, 45.708073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133592, -0.214785, -0.967482,
		-0.733707, 0.634816, -0.242243,
		0.666203, 0.742210, -0.072783,
		35.371056, 39.879478, 45.686237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.139690, 41.713070, 49.207325> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.045063, 41.340504, 49.096691>,  <38.988285, 41.116962, 49.030312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.045063, 41.340504, 49.096691>,  <39.139690, 41.713070, 49.207325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045063, 41.340504, 49.096691> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073309, 0.266747, -0.960974,
		0.968845, -0.247614, 0.005177,
		-0.236569, -0.931415, -0.276589,
		38.974091, 41.061081, 49.013714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491646, 41.346653, 49.044613>,  <39.139690, 41.713070, 49.207325>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491646, 41.346653, 49.044613> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.873756, 41.229244, 49.030209>,  <39.103024, 41.158798, 49.021568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.873756, 41.229244, 49.030209>,  <38.491646, 41.346653, 49.044613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873756, 41.229244, 49.030209> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292738, -0.921352, -0.255765,
		0.041896, 0.254867, -0.966068,
		0.955275, -0.293521, -0.036008,
		39.160339, 41.141190, 49.019405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550354, 40.971382, 48.387386>,  <38.491646, 41.346653, 49.044613>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550354, 40.971382, 48.387386> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.887611, 40.849491, 48.564583>,  <39.089966, 40.776356, 48.670902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.887611, 40.849491, 48.564583>,  <38.550354, 40.971382, 48.387386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887611, 40.849491, 48.564583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093262, -0.894291, -0.437659,
		0.529531, 0.327697, -0.782439,
		0.843148, -0.304726, 0.442994,
		39.140556, 40.758072, 48.697479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102474, 40.731918, 47.809868>,  <38.550354, 40.971382, 48.387386>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102474, 40.731918, 47.809868> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.158741, 40.536911, 48.154552>,  <39.192501, 40.419907, 48.361362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.158741, 40.536911, 48.154552>,  <39.102474, 40.731918, 47.809868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158741, 40.536911, 48.154552> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030614, -0.872088, -0.488391,
		0.989583, 0.042322, -0.137602,
		0.140670, -0.487516, 0.861708,
		39.200943, 40.390656, 48.413063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633484, 40.319225, 47.642841>,  <39.102474, 40.731918, 47.809868>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633484, 40.319225, 47.642841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.498779, 40.150383, 47.979511>,  <39.417957, 40.049076, 48.181515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.498779, 40.150383, 47.979511>,  <39.633484, 40.319225, 47.642841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498779, 40.150383, 47.979511> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014145, -0.896055, -0.443718,
		0.941483, -0.137522, 0.307728,
		-0.336763, -0.422105, 0.841675,
		39.397751, 40.023750, 48.232014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035896, 39.711018, 47.644947>,  <39.633484, 40.319225, 47.642841>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035896, 39.711018, 47.644947> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.749310, 39.635841, 47.913681>,  <39.577358, 39.590736, 48.074921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.749310, 39.635841, 47.913681>,  <40.035896, 39.711018, 47.644947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749310, 39.635841, 47.913681> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073091, -0.937507, -0.340203,
		0.693785, -0.292848, 0.657953,
		-0.716463, -0.187937, 0.671833,
		39.534370, 39.579460, 48.115231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142334, 39.009033, 47.965912>,  <40.035896, 39.711018, 47.644947>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142334, 39.009033, 47.965912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.751488, 39.055874, 48.036938>,  <39.516979, 39.083977, 48.079552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.751488, 39.055874, 48.036938>,  <40.142334, 39.009033, 47.965912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751488, 39.055874, 48.036938> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150250, -0.970894, -0.186520,
		0.150551, -0.208931, 0.966272,
		-0.977118, 0.117102, 0.177561,
		39.458351, 39.091003, 48.090206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944935, 38.465542, 48.384022>,  <40.142334, 39.009033, 47.965912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944935, 38.465542, 48.384022> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.608047, 38.591427, 48.208920>,  <39.405914, 38.666958, 48.103859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.608047, 38.591427, 48.208920>,  <39.944935, 38.465542, 48.384022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608047, 38.591427, 48.208920> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228383, -0.943758, -0.239087,
		-0.488375, -0.101388, 0.866724,
		-0.842218, 0.314709, -0.437752,
		39.355381, 38.685841, 48.077595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437016, 37.954685, 48.489777>,  <39.944935, 38.465542, 48.384022>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437016, 37.954685, 48.489777> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.256279, 38.151718, 48.192265>,  <39.147839, 38.269936, 48.013760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.256279, 38.151718, 48.192265>,  <39.437016, 37.954685, 48.489777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256279, 38.151718, 48.192265> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281044, -0.869884, -0.405360,
		-0.846670, 0.025874, 0.531489,
		-0.451845, 0.492578, -0.743776,
		39.120728, 38.299492, 47.969131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903259, 37.589981, 48.460510>,  <39.437016, 37.954685, 48.489777>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903259, 37.589981, 48.460510> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.898102, 37.782452, 48.109898>,  <38.895008, 37.897934, 47.899532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.898102, 37.782452, 48.109898>,  <38.903259, 37.589981, 48.460510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898102, 37.782452, 48.109898> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103091, -0.872569, -0.477488,
		-0.994588, 0.084205, 0.060857,
		-0.012895, 0.481178, -0.876528,
		38.894234, 37.926804, 47.846939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505165, 37.177979, 48.070530>,  <38.903259, 37.589981, 48.460510>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505165, 37.177979, 48.070530> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.686283, 37.416344, 47.805241>,  <38.794952, 37.559364, 47.646069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.686283, 37.416344, 47.805241>,  <38.505165, 37.177979, 48.070530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686283, 37.416344, 47.805241> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059244, -0.722090, -0.689257,
		-0.889646, 0.351382, -0.291652,
		0.452792, 0.595916, -0.663222,
		38.822121, 37.595119, 47.606274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055843, 37.362804, 47.499836>,  <38.505165, 37.177979, 48.070530>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055843, 37.362804, 47.499836> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.436581, 37.392673, 47.380894>,  <38.665024, 37.410595, 47.309528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.436581, 37.392673, 47.380894>,  <38.055843, 37.362804, 47.499836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436581, 37.392673, 47.380894> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178905, -0.652339, -0.736510,
		-0.248976, 0.754239, -0.607564,
		0.951842, 0.074677, -0.297354,
		38.722134, 37.415077, 47.291687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531609, 37.832710, 47.729023>,  <38.055843, 37.362804, 47.499836>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531609, 37.832710, 47.729023> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.140923, 37.746990, 47.733082>,  <36.906509, 37.695560, 47.735516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.140923, 37.746990, 47.733082>,  <37.531609, 37.832710, 47.729023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140923, 37.746990, 47.733082> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116784, 0.570748, 0.812778,
		-0.179966, 0.792669, -0.582485,
		-0.976716, -0.214297, 0.010144,
		36.847908, 37.682701, 47.736126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130692, 38.503887, 47.714226>,  <37.531609, 37.832710, 47.729023>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130692, 38.503887, 47.714226> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.941616, 38.207218, 47.904587>,  <36.828171, 38.029217, 48.018803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.941616, 38.207218, 47.904587>,  <37.130692, 38.503887, 47.714226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941616, 38.207218, 47.904587> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008478, 0.543843, 0.839144,
		-0.881188, 0.392621, -0.263357,
		-0.472691, -0.741676, 0.475899,
		36.799809, 37.984715, 48.047356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478752, 38.733379, 47.946602>,  <37.130692, 38.503887, 47.714226>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478752, 38.733379, 47.946602> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.606499, 38.439178, 48.185616>,  <36.683147, 38.262657, 48.329021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.606499, 38.439178, 48.185616>,  <36.478752, 38.733379, 47.946602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606499, 38.439178, 48.185616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100557, 0.600690, 0.793133,
		-0.942280, -0.313388, 0.117882,
		0.319369, -0.735500, 0.597532,
		36.702309, 38.218529, 48.364876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104046, 38.995453, 48.552948>,  <36.478752, 38.733379, 47.946602>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104046, 38.995453, 48.552948> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.380325, 38.733757, 48.676174>,  <36.546093, 38.576740, 48.750111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.380325, 38.733757, 48.676174>,  <36.104046, 38.995453, 48.552948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380325, 38.733757, 48.676174> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237573, 0.607659, 0.757832,
		-0.683003, -0.450246, 0.575140,
		0.690699, -0.654240, 0.308067,
		36.587536, 38.537483, 48.768593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988205, 38.853081, 49.363621>,  <36.104046, 38.995453, 48.552948>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988205, 38.853081, 49.363621> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.366032, 38.744640, 49.289543>,  <36.592728, 38.679577, 49.245098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.366032, 38.744640, 49.289543>,  <35.988205, 38.853081, 49.363621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366032, 38.744640, 49.289543> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299923, 0.483034, 0.822633,
		-0.133559, -0.832577, 0.537567,
		0.944568, -0.271099, -0.185195,
		36.649403, 38.663311, 49.233986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149826, 38.436840, 49.915924>,  <35.988205, 38.853081, 49.363621>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149826, 38.436840, 49.915924> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.473652, 38.591446, 49.739193>,  <36.667946, 38.684208, 49.633156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.473652, 38.591446, 49.739193>,  <36.149826, 38.436840, 49.915924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473652, 38.591446, 49.739193> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305928, 0.364572, 0.879486,
		0.501011, -0.847169, 0.176900,
		0.809566, 0.386513, -0.441827,
		36.716522, 38.707401, 49.606644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688694, 38.206272, 50.371922>,  <36.149826, 38.436840, 49.915924>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688694, 38.206272, 50.371922> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.860214, 38.495670, 50.155518>,  <36.963127, 38.669308, 50.025677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.860214, 38.495670, 50.155518>,  <36.688694, 38.206272, 50.371922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860214, 38.495670, 50.155518> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483213, 0.322313, 0.814015,
		0.763308, -0.610470, -0.211394,
		0.428797, 0.723492, -0.541010,
		36.988853, 38.712719, 49.993214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515495, 38.200253, 50.615074>,  <36.688694, 38.206272, 50.371922>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515495, 38.200253, 50.615074> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.388721, 38.537205, 50.440739>,  <37.312656, 38.739376, 50.336140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.388721, 38.537205, 50.440739>,  <37.515495, 38.200253, 50.615074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388721, 38.537205, 50.440739> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224240, 0.513050, 0.828550,
		0.921558, 0.164863, -0.351498,
		-0.316933, 0.842377, -0.435837,
		37.293640, 38.789917, 50.309986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064869, 38.649544, 50.574593>,  <37.515495, 38.200253, 50.615074>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064869, 38.649544, 50.574593> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.720104, 38.852333, 50.578224>,  <37.513245, 38.974007, 50.580402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.720104, 38.852333, 50.578224>,  <38.064869, 38.649544, 50.574593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720104, 38.852333, 50.578224> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259135, 0.425028, 0.867295,
		0.435833, 0.749888, -0.497712,
		-0.861915, 0.506971, 0.009081,
		37.461529, 39.004425, 50.580948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107658, 38.982765, 51.189892>,  <38.064869, 38.649544, 50.574593>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107658, 38.982765, 51.189892> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.742634, 39.105625, 51.081905>,  <37.523617, 39.179340, 51.017113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.742634, 39.105625, 51.081905>,  <38.107658, 38.982765, 51.189892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742634, 39.105625, 51.081905> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092218, 0.488600, 0.867621,
		0.398396, 0.816657, -0.417555,
		-0.912566, 0.307150, -0.269967,
		37.468864, 39.197769, 51.000916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995552, 39.666264, 51.458508>,  <38.107658, 38.982765, 51.189892>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995552, 39.666264, 51.458508> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.631130, 39.508060, 51.411942>,  <37.412476, 39.413139, 51.384003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.631130, 39.508060, 51.411942>,  <37.995552, 39.666264, 51.458508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631130, 39.508060, 51.411942> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243077, 0.287219, 0.926509,
		-0.333006, 0.872397, -0.357812,
		-0.911055, -0.395509, -0.116414,
		37.357815, 39.389408, 51.377018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558788, 40.250053, 51.691551>,  <37.995552, 39.666264, 51.458508>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558788, 40.250053, 51.691551> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.312374, 39.935356, 51.707230>,  <37.164524, 39.746540, 51.716637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.312374, 39.935356, 51.707230>,  <37.558788, 40.250053, 51.691551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312374, 39.935356, 51.707230> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217579, 0.217766, 0.951440,
		-0.757070, 0.577597, -0.305331,
		-0.616039, -0.786740, 0.039191,
		37.127563, 39.699333, 51.718987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814816, 40.475689, 51.711334>,  <37.558788, 40.250053, 51.691551>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814816, 40.475689, 51.711334> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.860863, 40.118923, 51.886257>,  <36.888489, 39.904865, 51.991211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.860863, 40.118923, 51.886257>,  <36.814816, 40.475689, 51.711334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860863, 40.118923, 51.886257> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420270, 0.355167, 0.835003,
		-0.900068, -0.279909, -0.333959,
		0.115114, -0.891912, 0.437312,
		36.895397, 39.851349, 52.017452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830643, 40.299347, 50.867008>,  <36.814816, 40.475689, 51.711334>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830643, 40.299347, 50.867008> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.771824, 40.694904, 50.858341>,  <36.736530, 40.932240, 50.853142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.771824, 40.694904, 50.858341>,  <36.830643, 40.299347, 50.867008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771824, 40.694904, 50.858341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600849, -0.106703, -0.792209,
		-0.785721, -0.103476, 0.609865,
		-0.147049, 0.988892, -0.021665,
		36.727711, 40.991573, 50.851841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092350, 40.444363, 50.783474>,  <36.830643, 40.299347, 50.867008>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092350, 40.444363, 50.783474> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.287582, 40.772724, 50.664883>,  <36.404724, 40.969742, 50.593727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.287582, 40.772724, 50.664883>,  <36.092350, 40.444363, 50.783474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287582, 40.772724, 50.664883> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598870, 0.067878, -0.797965,
		-0.634926, 0.567023, 0.524743,
		0.488083, 0.820901, -0.296475,
		36.434006, 41.018993, 50.575939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513397, 41.002865, 50.501431>,  <36.092350, 40.444363, 50.783474>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513397, 41.002865, 50.501431> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.867699, 41.132561, 50.368580>,  <36.080280, 41.210381, 50.288868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.867699, 41.132561, 50.368580>,  <35.513397, 41.002865, 50.501431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867699, 41.132561, 50.368580> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385286, 0.114580, -0.915656,
		-0.258838, 0.939010, 0.226415,
		0.885752, 0.324241, -0.332130,
		36.133423, 41.229832, 50.268940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367554, 41.563786, 50.137882>,  <35.513397, 41.002865, 50.501431>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367554, 41.563786, 50.137882> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.722816, 41.462135, 49.984726>,  <35.935974, 41.401146, 49.892834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.722816, 41.462135, 49.984726>,  <35.367554, 41.563786, 50.137882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722816, 41.462135, 49.984726> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325832, 0.239307, -0.914640,
		0.324063, 0.937097, 0.129739,
		0.888154, -0.254128, -0.382887,
		35.989262, 41.385899, 49.869862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566612, 42.145679, 49.643818>,  <35.367554, 41.563786, 50.137882>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566612, 42.145679, 49.643818> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.761116, 41.806522, 49.559311>,  <35.877819, 41.603027, 49.508606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.761116, 41.806522, 49.559311>,  <35.566612, 42.145679, 49.643818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761116, 41.806522, 49.559311> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406582, -0.005528, -0.913597,
		0.773463, 0.530141, -0.347425,
		0.486256, -0.847891, -0.211271,
		35.906994, 41.552155, 49.495930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762955, 42.200611, 48.966846>,  <35.566612, 42.145679, 49.643818>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762955, 42.200611, 48.966846> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.802509, 41.806999, 49.026058>,  <35.826241, 41.570831, 49.061584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.802509, 41.806999, 49.026058>,  <35.762955, 42.200611, 48.966846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802509, 41.806999, 49.026058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233573, -0.167557, -0.957793,
		0.967298, 0.060138, -0.246412,
		0.098888, -0.984026, 0.148031,
		35.832176, 41.511791, 49.070469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021427, 42.082134, 48.375668>,  <35.762955, 42.200611, 48.966846>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021427, 42.082134, 48.375668> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.885708, 41.725212, 48.494781>,  <35.804276, 41.511059, 48.566250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.885708, 41.725212, 48.494781>,  <36.021427, 42.082134, 48.375668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885708, 41.725212, 48.494781> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073427, -0.290477, -0.954061,
		0.937810, -0.345574, 0.033038,
		-0.339295, -0.892302, 0.297786,
		35.783920, 41.457523, 48.584118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361576, 41.518677, 47.986382>,  <36.021427, 42.082134, 48.375668>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361576, 41.518677, 47.986382> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.000862, 41.399326, 48.111443>,  <35.784431, 41.327717, 48.186478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.000862, 41.399326, 48.111443>,  <36.361576, 41.518677, 47.986382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000862, 41.399326, 48.111443> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165239, -0.430433, -0.887369,
		0.399343, -0.851881, 0.338856,
		-0.901788, -0.298373, 0.312654,
		35.730328, 41.309814, 48.205238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174339, 41.754330, 47.993504>,  <36.361576, 41.518677, 47.986382>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174339, 41.754330, 47.993504> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.213341, 42.118637, 47.833004>,  <37.236740, 42.337219, 47.736702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.213341, 42.118637, 47.833004>,  <37.174339, 41.754330, 47.993504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213341, 42.118637, 47.833004> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767108, 0.188089, 0.613326,
		0.634066, -0.367602, -0.680315,
		0.097500, 0.910764, -0.401251,
		37.242592, 42.391865, 47.712627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870815, 41.964005, 47.836601>,  <37.174339, 41.754330, 47.993504>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870815, 41.964005, 47.836601> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.684002, 42.310616, 47.907024>,  <37.571915, 42.518585, 47.949280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.684002, 42.310616, 47.907024>,  <37.870815, 41.964005, 47.836601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684002, 42.310616, 47.907024> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692548, 0.234670, 0.682134,
		0.549775, 0.440513, -0.709715,
		-0.467038, 0.866532, 0.176061,
		37.543892, 42.570576, 47.959843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392662, 42.437771, 47.918064>,  <37.870815, 41.964005, 47.836601>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392662, 42.437771, 47.918064> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.070370, 42.615875, 48.074287>,  <37.876995, 42.722736, 48.168022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.070370, 42.615875, 48.074287>,  <38.392662, 42.437771, 47.918064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070370, 42.615875, 48.074287> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562418, 0.368465, 0.740216,
		0.185684, 0.816073, -0.547308,
		-0.805735, 0.445262, 0.390556,
		37.828648, 42.749454, 48.191456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593536, 43.092525, 48.147846>,  <38.392662, 42.437771, 47.918064>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593536, 43.092525, 48.147846> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.252151, 43.044979, 48.350815>,  <38.047321, 43.016449, 48.472595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.252151, 43.044979, 48.350815>,  <38.593536, 43.092525, 48.147846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252151, 43.044979, 48.350815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417775, 0.426016, 0.802480,
		-0.311560, 0.896872, -0.313927,
		-0.853460, -0.118870, 0.507421,
		37.996113, 43.009319, 48.503040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454113, 43.777813, 48.379547>,  <38.593536, 43.092525, 48.147846>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454113, 43.777813, 48.379547> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.229130, 43.536964, 48.606209>,  <38.094139, 43.392456, 48.742207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.229130, 43.536964, 48.606209>,  <38.454113, 43.777813, 48.379547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229130, 43.536964, 48.606209> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368368, 0.431076, 0.823698,
		-0.740237, 0.672029, -0.020658,
		-0.562454, -0.602122, 0.566652,
		38.060394, 43.356327, 48.776203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082821, 44.203846, 48.805412>,  <38.454113, 43.777813, 48.379547>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082821, 44.203846, 48.805412> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.136475, 43.840744, 48.964401>,  <38.168667, 43.622883, 49.059795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.136475, 43.840744, 48.964401>,  <38.082821, 44.203846, 48.805412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136475, 43.840744, 48.964401> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299243, 0.419473, 0.857027,
		-0.944702, 0.003983, 0.327906,
		0.134134, -0.907759, 0.397469,
		38.176716, 43.568417, 49.083641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668785, 44.277191, 49.444153>,  <38.082821, 44.203846, 48.805412>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668785, 44.277191, 49.444153> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.891991, 43.951431, 49.507874>,  <38.025913, 43.755978, 49.546104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.891991, 43.951431, 49.507874>,  <37.668785, 44.277191, 49.444153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891991, 43.951431, 49.507874> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278954, 0.364887, 0.888281,
		-0.781539, -0.451237, 0.430792,
		0.558015, -0.814397, 0.159299,
		38.059395, 43.707111, 49.555664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586830, 44.136250, 50.111195>,  <37.668785, 44.277191, 49.444153>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586830, 44.136250, 50.111195> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.916561, 43.926094, 50.026867>,  <38.114399, 43.799999, 49.976269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.916561, 43.926094, 50.026867>,  <37.586830, 44.136250, 50.111195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916561, 43.926094, 50.026867> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295592, 0.081847, 0.951802,
		-0.482815, -0.846914, 0.222771,
		0.824327, -0.525394, -0.210824,
		38.163860, 43.768475, 49.963619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669178, 43.621300, 50.585728>,  <37.586830, 44.136250, 50.111195>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669178, 43.621300, 50.585728> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.034683, 43.701019, 50.444126>,  <38.253986, 43.748852, 50.359165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.034683, 43.701019, 50.444126>,  <37.669178, 43.621300, 50.585728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034683, 43.701019, 50.444126> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347225, 0.069220, 0.935224,
		0.210893, -0.977491, -0.005951,
		0.913761, 0.199298, -0.354008,
		38.308811, 43.760807, 50.337925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.696297, 37.213486, 37.052742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094948, 37.181068, 37.057961>,  <38.334137, 37.161617, 37.061092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094948, 37.181068, 37.057961>,  <37.696297, 37.213486, 37.052742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094948, 37.181068, 37.057961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059404, 0.821693, 0.566826,
		-0.056658, -0.564138, 0.823734,
		0.996625, -0.081048, 0.013043,
		38.393936, 37.156754, 37.061874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974899, 36.989513, 37.703396>,  <37.696297, 37.213486, 37.052742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974899, 36.989513, 37.703396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252243, 37.224503, 37.536476>,  <38.418648, 37.365494, 37.436325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252243, 37.224503, 37.536476>,  <37.974899, 36.989513, 37.703396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252243, 37.224503, 37.536476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149325, 0.683668, 0.714352,
		0.704957, -0.432985, 0.561748,
		0.693353, 0.587471, -0.417301,
		38.460251, 37.400742, 37.411285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480190, 37.163609, 38.264744>,  <37.974899, 36.989513, 37.703396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480190, 37.163609, 38.264744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501801, 37.435223, 37.971897>,  <38.514767, 37.598190, 37.796188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501801, 37.435223, 37.971897>,  <38.480190, 37.163609, 38.264744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501801, 37.435223, 37.971897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162088, 0.729426, 0.664579,
		0.985296, 0.082761, 0.149473,
		0.054028, 0.679035, -0.732115,
		38.518009, 37.638931, 37.752262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776863, 37.709839, 38.630894>,  <38.480190, 37.163609, 38.264744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776863, 37.709839, 38.630894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691708, 37.909351, 38.294823>,  <38.640614, 38.029060, 38.093182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691708, 37.909351, 38.294823>,  <38.776863, 37.709839, 38.630894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691708, 37.909351, 38.294823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264153, 0.798488, 0.540963,
		0.940693, 0.337099, -0.038233,
		-0.212886, 0.498780, -0.840177,
		38.627842, 38.058987, 38.042770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963169, 38.347816, 38.717449>,  <38.776863, 37.709839, 38.630894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963169, 38.347816, 38.717449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700928, 38.385197, 38.417728>,  <38.543583, 38.407623, 38.237896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700928, 38.385197, 38.417728>,  <38.963169, 38.347816, 38.717449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700928, 38.385197, 38.417728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269270, 0.898143, 0.347611,
		0.705462, 0.429659, -0.563664,
		-0.655604, 0.093448, -0.749300,
		38.504246, 38.413231, 38.192940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054409, 38.898285, 38.428631>,  <38.963169, 38.347816, 38.717449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054409, 38.898285, 38.428631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671894, 38.840488, 38.326935>,  <38.442387, 38.805809, 38.265915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671894, 38.840488, 38.326935>,  <39.054409, 38.898285, 38.428631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671894, 38.840488, 38.326935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246442, 0.866230, 0.434640,
		0.157430, 0.478296, -0.863973,
		-0.956285, -0.144494, -0.254243,
		38.385010, 38.797142, 38.250664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832977, 39.608688, 38.181004>,  <39.054409, 38.898285, 38.428631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832977, 39.608688, 38.181004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517342, 39.378635, 38.267326>,  <38.327961, 39.240604, 38.319118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517342, 39.378635, 38.267326>,  <38.832977, 39.608688, 38.181004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517342, 39.378635, 38.267326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445089, 0.777427, 0.444413,
		-0.423368, 0.254627, -0.869439,
		-0.789085, -0.575129, 0.215806,
		38.280617, 39.206097, 38.332069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355667, 40.072117, 38.046478>,  <38.832977, 39.608688, 38.181004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355667, 40.072117, 38.046478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.152256, 39.816212, 38.276993>,  <38.030209, 39.662670, 38.415302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.152256, 39.816212, 38.276993>,  <38.355667, 40.072117, 38.046478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152256, 39.816212, 38.276993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385503, 0.767625, 0.511996,
		-0.769926, 0.038205, -0.636989,
		-0.508529, -0.639760, 0.576286,
		37.999699, 39.624283, 38.449879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766109, 40.371655, 38.098892>,  <38.355667, 40.072117, 38.046478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766109, 40.371655, 38.098892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743198, 40.097843, 38.389587>,  <37.729454, 39.933556, 38.564003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743198, 40.097843, 38.389587>,  <37.766109, 40.371655, 38.098892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743198, 40.097843, 38.389587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503042, 0.648558, 0.571246,
		-0.862362, -0.332861, -0.381491,
		-0.057274, -0.684527, 0.726735,
		37.726017, 39.892487, 38.607609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065880, 40.353355, 38.324718>,  <37.766109, 40.371655, 38.098892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065880, 40.353355, 38.324718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.284576, 40.241161, 38.640285>,  <37.415794, 40.173843, 38.829628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.284576, 40.241161, 38.640285>,  <37.065880, 40.353355, 38.324718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284576, 40.241161, 38.640285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439640, 0.705716, 0.555591,
		-0.712591, -0.650608, 0.262533,
		0.546746, -0.280489, 0.788920,
		37.448601, 40.157013, 38.876961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622906, 40.447651, 38.943993>,  <37.065880, 40.353355, 38.324718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622906, 40.447651, 38.943993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980747, 40.429569, 39.121822>,  <37.195450, 40.418720, 39.228519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980747, 40.429569, 39.121822>,  <36.622906, 40.447651, 38.943993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980747, 40.429569, 39.121822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300145, 0.676265, 0.672739,
		-0.331062, -0.735270, 0.591419,
		0.894600, -0.045207, 0.444574,
		37.249126, 40.416008, 39.255196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565269, 40.270050, 39.672688>,  <36.622906, 40.447651, 38.943993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565269, 40.270050, 39.672688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923687, 40.440544, 39.622997>,  <37.138737, 40.542843, 39.593185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923687, 40.440544, 39.622997>,  <36.565269, 40.270050, 39.672688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923687, 40.440544, 39.622997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178481, 0.602022, 0.778277,
		0.406515, -0.675197, 0.615512,
		0.896041, 0.426239, -0.124221,
		37.192501, 40.568417, 39.585732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675087, 39.632923, 39.187378>,  <36.565269, 40.270050, 39.672688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675087, 39.632923, 39.187378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372311, 39.417866, 39.335960>,  <36.190643, 39.288830, 39.425110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372311, 39.417866, 39.335960>,  <36.675087, 39.632923, 39.187378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372311, 39.417866, 39.335960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325597, -0.182553, -0.927718,
		0.566593, -0.823173, -0.036873,
		-0.756941, -0.537644, 0.371456,
		36.145229, 39.256573, 39.447399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592960, 39.124794, 38.695641>,  <36.675087, 39.632923, 39.187378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592960, 39.124794, 38.695641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250565, 39.076290, 38.896671>,  <36.045128, 39.047188, 39.017288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250565, 39.076290, 38.896671>,  <36.592960, 39.124794, 38.695641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250565, 39.076290, 38.896671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454104, -0.288346, -0.842998,
		0.247135, -0.949817, 0.191758,
		-0.855987, -0.121256, 0.502576,
		35.993767, 39.039913, 39.047443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350414, 38.450790, 38.455006>,  <36.592960, 39.124794, 38.695641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350414, 38.450790, 38.455006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.031658, 38.634586, 38.611893>,  <35.840405, 38.744862, 38.706024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.031658, 38.634586, 38.611893>,  <36.350414, 38.450790, 38.455006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031658, 38.634586, 38.611893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524960, -0.205382, -0.825975,
		-0.298970, -0.864112, 0.404879,
		-0.796890, 0.459487, 0.392222,
		35.792591, 38.772434, 38.729561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840481, 37.978428, 38.516865>,  <36.350414, 38.450790, 38.455006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840481, 37.978428, 38.516865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606735, 38.302540, 38.534607>,  <35.466488, 38.497005, 38.545254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606735, 38.302540, 38.534607>,  <35.840481, 37.978428, 38.516865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606735, 38.302540, 38.534607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583938, -0.381914, -0.716350,
		-0.563501, -0.444513, 0.696329,
		-0.584365, 0.810278, 0.044359,
		35.431427, 38.545624, 38.547916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162960, 37.688206, 38.647671>,  <35.840481, 37.978428, 38.516865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162960, 37.688206, 38.647671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123848, 38.062302, 38.511570>,  <35.100380, 38.286758, 38.429909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123848, 38.062302, 38.511570>,  <35.162960, 37.688206, 38.647671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123848, 38.062302, 38.511570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853685, -0.254551, -0.454342,
		-0.511528, 0.246040, 0.823288,
		-0.097782, 0.935237, -0.340251,
		35.094513, 38.342873, 38.409496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479893, 37.845306, 38.665234>,  <35.162960, 37.688206, 38.647671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479893, 37.845306, 38.665234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608776, 38.116955, 38.401424>,  <34.686108, 38.279945, 38.243137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608776, 38.116955, 38.401424>,  <34.479893, 37.845306, 38.665234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608776, 38.116955, 38.401424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803111, -0.172742, -0.570239,
		-0.501190, 0.713409, 0.489752,
		0.322212, 0.679123, -0.659523,
		34.705441, 38.320690, 38.203568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009140, 38.498528, 38.683636>,  <34.479893, 37.845306, 38.665234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009140, 38.498528, 38.683636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187580, 38.459743, 38.327751>,  <34.294643, 38.436474, 38.114220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187580, 38.459743, 38.327751>,  <34.009140, 38.498528, 38.683636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187580, 38.459743, 38.327751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892983, 0.018173, -0.449723,
		0.059774, 0.995122, -0.078476,
		0.446103, -0.096959, -0.889714,
		34.321411, 38.430656, 38.060837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665955, 38.980888, 38.238556>,  <34.009140, 38.498528, 38.683636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665955, 38.980888, 38.238556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831879, 38.731472, 37.973488>,  <33.931435, 38.581821, 37.814445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831879, 38.731472, 37.973488>,  <33.665955, 38.980888, 38.238556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831879, 38.731472, 37.973488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772918, 0.142836, -0.618220,
		0.480137, 0.768634, -0.422693,
		0.414809, -0.623538, -0.662672,
		33.956322, 38.544411, 37.774685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440910, 39.221760, 37.550037>,  <33.665955, 38.980888, 38.238556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440910, 39.221760, 37.550037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548237, 38.844131, 37.473377>,  <33.612633, 38.617554, 37.427380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548237, 38.844131, 37.473377>,  <33.440910, 39.221760, 37.550037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548237, 38.844131, 37.473377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922963, -0.194946, -0.331868,
		0.275945, 0.265934, -0.923652,
		0.268317, -0.944074, -0.191653,
		33.628731, 38.560909, 37.415882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087753, 38.982403, 36.894581>,  <33.440910, 39.221760, 37.550037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087753, 38.982403, 36.894581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198780, 38.623718, 37.032486>,  <33.265396, 38.408508, 37.115231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198780, 38.623718, 37.032486>,  <33.087753, 38.982403, 36.894581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198780, 38.623718, 37.032486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745409, -0.427413, -0.511550,
		0.606070, -0.115002, -0.787054,
		0.277568, -0.896712, 0.344766,
		33.282051, 38.354706, 37.135914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991119, 38.503929, 36.306171>,  <33.087753, 38.982403, 36.894581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991119, 38.503929, 36.306171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014561, 38.292824, 36.645119>,  <33.028625, 38.166161, 36.848488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014561, 38.292824, 36.645119>,  <32.991119, 38.503929, 36.306171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014561, 38.292824, 36.645119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702051, -0.625244, -0.340872,
		0.709712, -0.574919, -0.407158,
		0.058600, -0.527767, 0.847366,
		33.032139, 38.134495, 36.899330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115559, 37.757618, 36.093975>,  <32.991119, 38.503929, 36.306171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115559, 37.757618, 36.093975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939514, 37.770561, 36.452919>,  <32.833889, 37.778328, 36.668285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939514, 37.770561, 36.452919>,  <33.115559, 37.757618, 36.093975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939514, 37.770561, 36.452919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612985, -0.741095, -0.273913,
		0.656165, -0.670620, 0.346001,
		-0.440111, 0.032361, 0.897360,
		32.807480, 37.780270, 36.722126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107006, 36.989876, 36.360512>,  <33.115559, 37.757618, 36.093975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107006, 36.989876, 36.360512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837826, 37.192181, 36.576416>,  <32.676315, 37.313564, 36.705959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837826, 37.192181, 36.576416>,  <33.107006, 36.989876, 36.360512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837826, 37.192181, 36.576416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583788, -0.811263, 0.032318,
		0.454232, -0.293356, 0.841199,
		-0.672953, 0.505762, 0.539759,
		32.635941, 37.343910, 36.738342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002453, 36.601994, 36.931610>,  <33.107006, 36.989876, 36.360512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002453, 36.601994, 36.931610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691628, 36.851742, 36.899769>,  <32.505131, 37.001591, 36.880665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691628, 36.851742, 36.899769>,  <33.002453, 36.601994, 36.931610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691628, 36.851742, 36.899769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627688, -0.778083, 0.024388,
		-0.046712, 0.068917, 0.996528,
		-0.777062, 0.624370, -0.079604,
		32.458508, 37.039051, 36.875889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510181, 36.366867, 37.382019>,  <33.002453, 36.601994, 36.931610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510181, 36.366867, 37.382019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321991, 36.562885, 37.088486>,  <32.209076, 36.680496, 36.912365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321991, 36.562885, 37.088486>,  <32.510181, 36.366867, 37.382019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321991, 36.562885, 37.088486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614038, -0.779060, -0.126579,
		-0.633727, 0.391047, 0.667437,
		-0.470475, 0.490049, -0.733829,
		32.180847, 36.709900, 36.868336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634628, 35.821911, 37.815998>,  <32.510181, 36.366867, 37.382019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634628, 35.821911, 37.815998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025410, 35.882984, 37.875652>,  <33.259880, 35.919628, 37.911446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025410, 35.882984, 37.875652>,  <32.634628, 35.821911, 37.815998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025410, 35.882984, 37.875652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101326, -0.283212, 0.953690,
		0.187848, -0.946826, -0.261215,
		0.976958, 0.152681, 0.149139,
		33.318497, 35.928787, 37.920395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620377, 35.664509, 38.499664>,  <32.634628, 35.821911, 37.815998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620377, 35.664509, 38.499664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011417, 35.687473, 38.418671>,  <33.246040, 35.701252, 38.370075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011417, 35.687473, 38.418671>,  <32.620377, 35.664509, 38.499664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011417, 35.687473, 38.418671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210416, -0.246360, 0.946061,
		0.004429, -0.967476, -0.252922,
		0.977602, 0.057409, -0.202482,
		33.304699, 35.704697, 38.357925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991760, 35.033203, 38.810421>,  <32.620377, 35.664509, 38.499664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991760, 35.033203, 38.810421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269657, 35.315323, 38.754017>,  <33.436394, 35.484596, 38.720173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269657, 35.315323, 38.754017>,  <32.991760, 35.033203, 38.810421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269657, 35.315323, 38.754017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311345, -0.118167, 0.942921,
		0.648382, -0.698988, -0.301688,
		0.694740, 0.705303, -0.141009,
		33.478081, 35.526913, 38.711716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495544, 34.723434, 39.187744>,  <32.991760, 35.033203, 38.810421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495544, 34.723434, 39.187744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611706, 35.102985, 39.138279>,  <33.681404, 35.330715, 39.108601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611706, 35.102985, 39.138279>,  <33.495544, 34.723434, 39.187744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611706, 35.102985, 39.138279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430504, -0.014139, 0.902478,
		0.854593, -0.315325, -0.412602,
		0.290408, 0.948878, -0.123666,
		33.698830, 35.387650, 39.101181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282154, 34.835175, 39.144524>,  <33.495544, 34.723434, 39.187744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282154, 34.835175, 39.144524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148827, 35.199379, 39.242393>,  <34.068832, 35.417904, 39.301117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148827, 35.199379, 39.242393>,  <34.282154, 34.835175, 39.144524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148827, 35.199379, 39.242393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504673, -0.046901, 0.862035,
		0.796370, 0.410811, -0.443879,
		-0.333315, 0.910513, 0.244676,
		34.048832, 35.472534, 39.315796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846855, 35.085354, 39.517231>,  <34.282154, 34.835175, 39.144524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846855, 35.085354, 39.517231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543747, 35.322781, 39.625648>,  <34.361881, 35.465237, 39.690697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543747, 35.322781, 39.625648>,  <34.846855, 35.085354, 39.517231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543747, 35.322781, 39.625648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440505, 0.158899, 0.883576,
		0.481391, 0.788944, -0.381877,
		-0.757772, 0.593564, 0.271041,
		34.316414, 35.500851, 39.706963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172276, 35.632011, 39.857887>,  <34.846855, 35.085354, 39.517231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172276, 35.632011, 39.857887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795959, 35.683334, 39.983391>,  <34.570168, 35.714127, 40.058693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795959, 35.683334, 39.983391>,  <35.172276, 35.632011, 39.857887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795959, 35.683334, 39.983391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337673, 0.273573, 0.900630,
		0.029721, 0.953255, -0.300701,
		-0.940794, 0.128306, 0.313758,
		34.513721, 35.721825, 40.077518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142601, 36.220318, 40.236374>,  <35.172276, 35.632011, 39.857887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142601, 36.220318, 40.236374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812374, 36.036350, 40.367165>,  <34.614239, 35.925972, 40.445641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812374, 36.036350, 40.367165>,  <35.142601, 36.220318, 40.236374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812374, 36.036350, 40.367165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259394, 0.205302, 0.943698,
		-0.501152, 0.863902, -0.050191,
		-0.825567, -0.459917, 0.326979,
		34.564705, 35.898376, 40.465260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697575, 36.671375, 40.664509>,  <35.142601, 36.220318, 40.236374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697575, 36.671375, 40.664509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552944, 36.319637, 40.788456>,  <34.466167, 36.108593, 40.862823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552944, 36.319637, 40.788456>,  <34.697575, 36.671375, 40.664509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552944, 36.319637, 40.788456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006013, 0.334542, 0.942362,
		-0.932325, 0.338868, -0.126248,
		-0.361571, -0.879347, 0.309864,
		34.444473, 36.055832, 40.881416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253101, 36.909344, 41.252228>,  <34.697575, 36.671375, 40.664509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253101, 36.909344, 41.252228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333050, 36.517712, 41.267433>,  <34.381020, 36.282730, 41.276558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333050, 36.517712, 41.267433>,  <34.253101, 36.909344, 41.252228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333050, 36.517712, 41.267433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141061, 0.067143, 0.987721,
		-0.969615, -0.192053, 0.151531,
		0.199869, -0.979085, 0.038012,
		34.393009, 36.223988, 41.278835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790428, 36.567482, 41.785725>,  <34.253101, 36.909344, 41.252228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790428, 36.567482, 41.785725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099594, 36.316410, 41.748589>,  <34.285095, 36.165768, 41.726307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099594, 36.316410, 41.748589>,  <33.790428, 36.567482, 41.785725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099594, 36.316410, 41.748589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139863, 0.025816, 0.989834,
		-0.618903, -0.778043, 0.107743,
		0.772915, -0.627680, -0.092842,
		34.331470, 36.128105, 41.720737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695515, 36.045876, 42.291603>,  <33.790428, 36.567482, 41.785725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695515, 36.045876, 42.291603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084499, 36.054142, 42.198750>,  <34.317890, 36.059101, 42.143040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084499, 36.054142, 42.198750>,  <33.695515, 36.045876, 42.291603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084499, 36.054142, 42.198750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230098, -0.243141, 0.942304,
		-0.036966, -0.969771, -0.241201,
		0.972466, 0.020667, -0.232130,
		34.376240, 36.060341, 42.129112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011517, 35.500900, 42.731846>,  <33.695515, 36.045876, 42.291603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011517, 35.500900, 42.731846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304661, 35.740856, 42.603443>,  <34.480549, 35.884830, 42.526402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304661, 35.740856, 42.603443>,  <34.011517, 35.500900, 42.731846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304661, 35.740856, 42.603443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380256, 0.030107, 0.924391,
		0.564194, -0.799518, -0.206046,
		0.732864, 0.599886, -0.321007,
		34.524521, 35.920822, 42.507141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580124, 35.295925, 43.191132>,  <34.011517, 35.500900, 42.731846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580124, 35.295925, 43.191132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688957, 35.651150, 43.042904>,  <34.754257, 35.864285, 42.953968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688957, 35.651150, 43.042904>,  <34.580124, 35.295925, 43.191132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688957, 35.651150, 43.042904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557283, 0.168521, 0.813042,
		0.784478, -0.427726, -0.449049,
		0.272085, 0.888061, -0.370565,
		34.770584, 35.917568, 42.931736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277927, 35.352146, 43.344147>,  <34.580124, 35.295925, 43.191132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277927, 35.352146, 43.344147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156147, 35.730072, 43.295746>,  <35.083080, 35.956825, 43.266705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156147, 35.730072, 43.295746>,  <35.277927, 35.352146, 43.344147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156147, 35.730072, 43.295746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474889, 0.260679, 0.840552,
		0.825706, 0.198441, -0.528044,
		-0.304450, 0.944811, -0.121006,
		35.064812, 36.013515, 43.259445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903732, 35.764450, 43.309505>,  <35.277927, 35.352146, 43.344147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903732, 35.764450, 43.309505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.590317, 35.983982, 43.426022>,  <35.402267, 36.115700, 43.495930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.590317, 35.983982, 43.426022>,  <35.903732, 35.764450, 43.309505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590317, 35.983982, 43.426022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509311, 0.298788, 0.807049,
		0.355897, 0.780714, -0.513637,
		-0.783543, 0.548827, 0.291288,
		35.355255, 36.148632, 43.513409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139874, 36.441940, 43.413704>,  <35.903732, 35.764450, 43.309505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139874, 36.441940, 43.413704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.793175, 36.400852, 43.608921>,  <35.585155, 36.376198, 43.726051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.793175, 36.400852, 43.608921>,  <36.139874, 36.441940, 43.413704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793175, 36.400852, 43.608921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427753, 0.350075, 0.833351,
		-0.256455, 0.931072, -0.259490,
		-0.866752, -0.102719, 0.488048,
		35.533150, 36.370037, 43.755337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232918, 36.927097, 43.909920>,  <36.139874, 36.441940, 43.413704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232918, 36.927097, 43.909920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922737, 36.712585, 44.043232>,  <35.736629, 36.583878, 44.123219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922737, 36.712585, 44.043232>,  <36.232918, 36.927097, 43.909920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922737, 36.712585, 44.043232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158934, 0.345066, 0.925024,
		-0.611076, 0.770283, -0.182349,
		-0.775453, -0.536278, 0.333285,
		35.690102, 36.551701, 44.143219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890255, 37.341499, 44.338467>,  <36.232918, 36.927097, 43.909920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890255, 37.341499, 44.338467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699299, 37.012730, 44.462749>,  <35.584724, 36.815468, 44.537319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699299, 37.012730, 44.462749>,  <35.890255, 37.341499, 44.338467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699299, 37.012730, 44.462749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132896, 0.282001, 0.950165,
		-0.868585, 0.494889, -0.025393,
		-0.477387, -0.821925, 0.310710,
		35.556084, 36.766151, 44.555962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339626, 37.570972, 44.829525>,  <35.890255, 37.341499, 44.338467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339626, 37.570972, 44.829525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439064, 37.190762, 44.904026>,  <35.498726, 36.962635, 44.948727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439064, 37.190762, 44.904026>,  <35.339626, 37.570972, 44.829525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439064, 37.190762, 44.904026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209314, 0.240467, 0.947820,
		-0.945722, -0.196634, 0.258738,
		0.248592, -0.950532, 0.186256,
		35.513641, 36.905602, 44.959904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950653, 37.399994, 45.382042>,  <35.339626, 37.570972, 44.829525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950653, 37.399994, 45.382042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235947, 37.119907, 45.369389>,  <35.407124, 36.951855, 45.361797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235947, 37.119907, 45.369389>,  <34.950653, 37.399994, 45.382042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235947, 37.119907, 45.369389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123491, 0.081109, 0.989026,
		-0.689966, -0.709309, 0.144320,
		0.713230, -0.700216, -0.031631,
		35.449917, 36.909843, 45.359898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831532, 36.911263, 45.975666>,  <34.950653, 37.399994, 45.382042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831532, 36.911263, 45.975666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209686, 36.904175, 45.845478>,  <35.436581, 36.899921, 45.767365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209686, 36.904175, 45.845478>,  <34.831532, 36.911263, 45.975666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209686, 36.904175, 45.845478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323456, -0.072318, 0.943476,
		-0.040250, -0.997225, -0.062638,
		0.945387, -0.017714, -0.325469,
		35.493301, 36.898861, 45.747837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161243, 36.452858, 46.494724>,  <34.831532, 36.911263, 45.975666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161243, 36.452858, 46.494724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464066, 36.641720, 46.314091>,  <35.645760, 36.755039, 46.205711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464066, 36.641720, 46.314091>,  <35.161243, 36.452858, 46.494724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464066, 36.641720, 46.314091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474222, 0.078342, 0.876912,
		0.449420, -0.878025, -0.164599,
		0.757057, 0.472159, -0.451588,
		35.691181, 36.783367, 46.178616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800140, 36.190601, 46.763035>,  <35.161243, 36.452858, 46.494724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800140, 36.190601, 46.763035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883770, 36.560181, 46.634907>,  <35.933949, 36.781929, 46.558029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883770, 36.560181, 46.634907>,  <35.800140, 36.190601, 46.763035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883770, 36.560181, 46.634907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429303, 0.207585, 0.878981,
		0.878627, -0.321290, -0.353252,
		0.209077, 0.923949, -0.320321,
		35.946495, 36.837364, 46.538811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376316, 36.299561, 47.115261>,  <35.800140, 36.190601, 46.763035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376316, 36.299561, 47.115261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301117, 36.657581, 46.953499>,  <36.255997, 36.872395, 46.856441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301117, 36.657581, 46.953499>,  <36.376316, 36.299561, 47.115261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301117, 36.657581, 46.953499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428677, 0.445236, 0.786130,
		0.883681, -0.025568, -0.467391,
		-0.187999, 0.895048, -0.404407,
		36.244717, 36.926094, 46.832176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993702, 36.541504, 47.127972>,  <36.376316, 36.299561, 47.115261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993702, 36.541504, 47.127972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735229, 36.845566, 47.100792>,  <36.580147, 37.028004, 47.084484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735229, 36.845566, 47.100792>,  <36.993702, 36.541504, 47.127972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735229, 36.845566, 47.100792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439160, 0.443172, 0.781497,
		0.624166, 0.475152, -0.620199,
		-0.646185, 0.760150, -0.067945,
		36.541374, 37.073612, 47.080410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312233, 37.228069, 46.965050>,  <36.993702, 36.541504, 47.127972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312233, 37.228069, 46.965050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968884, 37.306828, 47.154541>,  <36.762875, 37.354084, 47.268238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968884, 37.306828, 47.154541>,  <37.312233, 37.228069, 46.965050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968884, 37.306828, 47.154541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504237, 0.493930, 0.708363,
		-0.094517, 0.846915, -0.523260,
		-0.858378, 0.196895, 0.473730,
		36.711369, 37.365894, 47.296661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998432, 37.527058, 46.787758>,  <37.312233, 37.228069, 46.965050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998432, 37.527058, 46.787758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378750, 37.405876, 46.813694>,  <38.606941, 37.333168, 46.829254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378750, 37.405876, 46.813694>,  <37.998432, 37.527058, 46.787758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378750, 37.405876, 46.813694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131212, -0.583342, -0.801558,
		0.280662, 0.753610, -0.594391,
		0.950795, -0.302958, 0.064839,
		38.663990, 37.314987, 46.833145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396339, 37.857002, 46.221508>,  <37.998432, 37.527058, 46.787758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396339, 37.857002, 46.221508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558819, 37.513874, 46.347458>,  <38.656307, 37.307999, 46.423027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558819, 37.513874, 46.347458>,  <38.396339, 37.857002, 46.221508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558819, 37.513874, 46.347458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026160, -0.355362, -0.934363,
		0.913412, 0.371297, -0.166787,
		0.406195, -0.857821, 0.314879,
		38.680679, 37.256527, 46.441921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806118, 37.706944, 45.742470>,  <38.396339, 37.857002, 46.221508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806118, 37.706944, 45.742470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818256, 37.351681, 45.925888>,  <38.825539, 37.138523, 46.035938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818256, 37.351681, 45.925888>,  <38.806118, 37.706944, 45.742470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818256, 37.351681, 45.925888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008826, -0.458978, -0.888404,
		0.999501, 0.022915, -0.021768,
		0.030349, -0.888152, 0.458546,
		38.827362, 37.085236, 46.063454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330509, 37.323807, 45.400047>,  <38.806118, 37.706944, 45.742470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330509, 37.323807, 45.400047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112663, 37.046410, 45.588711>,  <38.981956, 36.879971, 45.701908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112663, 37.046410, 45.588711>,  <39.330509, 37.323807, 45.400047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112663, 37.046410, 45.588711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008457, -0.557811, -0.829925,
		0.838643, -0.455978, 0.297927,
		-0.544615, -0.693491, 0.471661,
		38.949280, 36.838364, 45.730209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631020, 36.585007, 45.402920>,  <39.330509, 37.323807, 45.400047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631020, 36.585007, 45.402920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240097, 36.513798, 45.448833>,  <39.005543, 36.471073, 45.476383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240097, 36.513798, 45.448833>,  <39.631020, 36.585007, 45.402920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240097, 36.513798, 45.448833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017181, -0.473486, -0.880634,
		0.211126, -0.862622, 0.459683,
		-0.977308, -0.178026, 0.114786,
		38.946903, 36.460388, 45.483269>
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
