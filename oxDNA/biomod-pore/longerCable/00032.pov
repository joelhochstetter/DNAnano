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
	<24.069324, 35.227970, 35.473598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.404781, 35.133591, 35.277229>,  <24.606056, 35.076962, 35.159409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.404781, 35.133591, 35.277229>,  <24.069324, 35.227970, 35.473598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.404781, 35.133591, 35.277229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149720, 0.966444, -0.208732,
		0.523699, 0.101551, 0.845829,
		0.838644, -0.235950, -0.490922,
		24.656374, 35.062805, 35.129951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.622234, 35.448193, 35.824646>,  <24.069324, 35.227970, 35.473598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.622234, 35.448193, 35.824646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.698090, 35.468636, 35.432438>,  <24.743603, 35.480900, 35.197113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.698090, 35.468636, 35.432438>,  <24.622234, 35.448193, 35.824646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.698090, 35.468636, 35.432438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145607, 0.986139, 0.079557,
		0.970998, -0.157858, 0.179568,
		0.189637, 0.051103, -0.980523,
		24.754980, 35.483967, 35.138279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.226908, 35.781044, 35.579071>,  <24.622234, 35.448193, 35.824646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.226908, 35.781044, 35.579071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.986109, 35.853348, 35.267963>,  <24.841629, 35.896729, 35.081299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.986109, 35.853348, 35.267963>,  <25.226908, 35.781044, 35.579071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.986109, 35.853348, 35.267963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015831, 0.976550, 0.214706,
		0.798340, 0.116940, -0.590744,
		-0.601999, 0.180761, -0.777768,
		24.805510, 35.907578, 35.034634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.534042, 36.388523, 35.369720>,  <25.226908, 35.781044, 35.579071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.534042, 36.388523, 35.369720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.159634, 36.369408, 35.230247>,  <24.934988, 36.357941, 35.146564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.159634, 36.369408, 35.230247>,  <25.534042, 36.388523, 35.369720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.159634, 36.369408, 35.230247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096284, 0.987711, 0.123107,
		0.338511, 0.148803, -0.929122,
		-0.936023, -0.047787, -0.348679,
		24.878826, 36.355072, 35.125645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.429255, 36.985878, 34.768307>,  <25.534042, 36.388523, 35.369720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.429255, 36.985878, 34.768307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.085371, 36.940083, 34.967422>,  <24.879042, 36.912605, 35.086891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.085371, 36.940083, 34.967422>,  <25.429255, 36.985878, 34.768307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.085371, 36.940083, 34.967422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098249, 0.993423, 0.058807,
		-0.501246, 0.001650, -0.865303,
		-0.859709, -0.114492, 0.497787,
		24.827457, 36.905735, 35.116760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.890715, 37.496784, 34.463634>,  <25.429255, 36.985878, 34.768307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.890715, 37.496784, 34.463634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.800407, 37.425629, 34.846756>,  <24.746223, 37.382935, 35.076630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.800407, 37.425629, 34.846756>,  <24.890715, 37.496784, 34.463634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.800407, 37.425629, 34.846756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175203, 0.974570, 0.139707,
		-0.958297, -0.136268, -0.251194,
		-0.225769, -0.177890, 0.957801,
		24.732677, 37.372261, 35.134098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.327690, 37.891518, 34.646370>,  <24.890715, 37.496784, 34.463634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.327690, 37.891518, 34.646370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.578167, 37.847980, 34.955185>,  <24.728453, 37.821857, 35.140472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.578167, 37.847980, 34.955185>,  <24.327690, 37.891518, 34.646370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.578167, 37.847980, 34.955185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081897, 0.993912, 0.073703,
		-0.775356, 0.017075, 0.631293,
		0.626191, -0.108847, 0.772034,
		24.766024, 37.815327, 35.186794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.041723, 38.263783, 35.252663>,  <24.327690, 37.891518, 34.646370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.041723, 38.263783, 35.252663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.441557, 38.252842, 35.256226>,  <24.681458, 38.246277, 35.258362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.441557, 38.252842, 35.256226>,  <24.041723, 38.263783, 35.252663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.441557, 38.252842, 35.256226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026781, 0.997914, 0.058744,
		-0.010494, -0.058481, 0.998233,
		0.999586, -0.027350, 0.008905,
		24.741432, 38.244637, 35.258896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.365814, 38.515915, 35.902645>,  <24.041723, 38.263783, 35.252663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.365814, 38.515915, 35.902645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.653000, 38.564445, 35.628475>,  <24.825312, 38.593563, 35.463974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.653000, 38.564445, 35.628475>,  <24.365814, 38.515915, 35.902645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.653000, 38.564445, 35.628475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129938, 0.944023, 0.303211,
		0.683847, -0.306757, 0.662007,
		0.717962, 0.121330, -0.685426,
		24.868389, 38.600845, 35.422848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.934591, 38.970211, 36.187553>,  <24.365814, 38.515915, 35.902645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.934591, 38.970211, 36.187553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.967897, 38.988464, 35.789360>,  <24.987881, 38.999416, 35.550446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.967897, 38.988464, 35.789360>,  <24.934591, 38.970211, 36.187553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.967897, 38.988464, 35.789360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109234, 0.992514, 0.054631,
		0.990522, -0.113290, 0.077659,
		0.083267, 0.045630, -0.995482,
		24.992878, 39.002151, 35.490715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.557968, 39.354511, 36.052383>,  <24.934591, 38.970211, 36.187553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.557968, 39.354511, 36.052383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.324455, 39.349522, 35.727657>,  <25.184347, 39.346527, 35.532822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.324455, 39.349522, 35.727657>,  <25.557968, 39.354511, 36.052383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.324455, 39.349522, 35.727657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008785, 0.999920, -0.009046,
		0.811861, 0.001851, -0.583848,
		-0.583785, -0.012473, -0.811813,
		25.149321, 39.345779, 35.484112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.949764, 39.707836, 35.446999>,  <25.557968, 39.354511, 36.052383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.949764, 39.707836, 35.446999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.549986, 39.721081, 35.448204>,  <25.310118, 39.729027, 35.448925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.549986, 39.721081, 35.448204>,  <25.949764, 39.707836, 35.446999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.549986, 39.721081, 35.448204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033083, 0.999418, -0.008353,
		-0.003286, -0.008248, -0.999961,
		-0.999447, 0.033109, 0.003012,
		25.250153, 39.731014, 35.449108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.633463, 40.048927, 34.875122>,  <25.949764, 39.707836, 35.446999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.633463, 40.048927, 34.875122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.361830, 40.122742, 35.159317>,  <25.198849, 40.167030, 35.329834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.361830, 40.122742, 35.159317>,  <25.633463, 40.048927, 34.875122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.361830, 40.122742, 35.159317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092814, 0.981703, -0.166268,
		-0.728169, -0.046967, -0.683787,
		-0.679084, 0.184536, 0.710486,
		25.158104, 40.178104, 35.372463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.164219, 40.574982, 34.631886>,  <25.633463, 40.048927, 34.875122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.164219, 40.574982, 34.631886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.215517, 40.573063, 35.028580>,  <25.246296, 40.571911, 35.266594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.215517, 40.573063, 35.028580>,  <25.164219, 40.574982, 34.631886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.215517, 40.573063, 35.028580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341520, 0.939039, -0.039623,
		-0.931084, 0.343778, 0.122064,
		0.128245, -0.004795, 0.991731,
		25.253990, 40.571625, 35.326099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.545233, 40.187351, 35.001659>,  <25.164219, 40.574982, 34.631886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.545233, 40.187351, 35.001659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.597626, 40.299068, 34.621166>,  <24.629061, 40.366100, 34.392872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.597626, 40.299068, 34.621166>,  <24.545233, 40.187351, 35.001659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.597626, 40.299068, 34.621166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236727, 0.940552, 0.243562,
		0.962707, 0.193280, 0.189312,
		0.130982, 0.279294, -0.951230,
		24.636921, 40.382858, 34.335796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.106735, 39.743519, 34.953224>,  <24.545233, 40.187351, 35.001659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.106735, 39.743519, 34.953224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.506069, 39.757107, 34.971863>,  <24.745670, 39.765259, 34.983047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.506069, 39.757107, 34.971863>,  <24.106735, 39.743519, 34.953224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.506069, 39.757107, 34.971863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036532, -0.997804, -0.055258,
		0.044616, 0.056868, -0.997384,
		0.998336, 0.033971, 0.046595,
		24.805571, 39.767300, 34.985840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.324520, 39.295677, 34.440529>,  <24.106735, 39.743519, 34.953224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.324520, 39.295677, 34.440529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.593390, 39.331066, 34.734562>,  <24.754711, 39.352299, 34.910984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.593390, 39.331066, 34.734562>,  <24.324520, 39.295677, 34.440529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.593390, 39.331066, 34.734562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244893, -0.963519, -0.107973,
		0.698718, 0.252594, -0.669320,
		0.672176, 0.088469, 0.735087,
		24.795042, 39.357609, 34.955090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.041079, 39.035564, 34.199562>,  <24.324520, 39.295677, 34.440529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.041079, 39.035564, 34.199562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.056681, 39.023464, 34.599075>,  <25.066042, 39.016205, 34.838783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.056681, 39.023464, 34.599075>,  <25.041079, 39.035564, 34.199562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.056681, 39.023464, 34.599075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433810, -0.899920, -0.044200,
		0.900160, 0.435005, -0.021976,
		0.039004, -0.030253, 0.998781,
		25.068382, 39.014389, 34.898708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.675741, 38.561436, 34.448986>,  <25.041079, 39.035564, 34.199562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.675741, 38.561436, 34.448986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.408361, 38.574532, 34.746201>,  <25.247934, 38.582390, 34.924530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.408361, 38.574532, 34.746201>,  <25.675741, 38.561436, 34.448986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.408361, 38.574532, 34.746201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247853, -0.932120, 0.264048,
		0.701246, 0.360666, 0.614958,
		-0.668448, 0.032744, 0.743038,
		25.207827, 38.584354, 34.969112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.972467, 38.215496, 34.969501>,  <25.675741, 38.561436, 34.448986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.972467, 38.215496, 34.969501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.578043, 38.229385, 35.034592>,  <25.341389, 38.237720, 35.073647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.578043, 38.229385, 35.034592>,  <25.972467, 38.215496, 34.969501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.578043, 38.229385, 35.034592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007220, -0.968131, 0.250339,
		0.166237, 0.248024, 0.954384,
		-0.986059, 0.034725, 0.162730,
		25.282225, 38.239803, 35.083412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.863569, 37.799934, 35.452126>,  <25.972467, 38.215496, 34.969501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.863569, 37.799934, 35.452126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.519068, 37.795280, 35.248909>,  <25.312366, 37.792488, 35.126980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.519068, 37.795280, 35.248909>,  <25.863569, 37.799934, 35.452126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.519068, 37.795280, 35.248909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149237, -0.949863, 0.274752,
		-0.485764, 0.312450, 0.816338,
		-0.861256, -0.011637, -0.508039,
		25.260691, 37.791790, 35.096497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.259665, 37.658031, 35.911449>,  <25.863569, 37.799934, 35.452126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.259665, 37.658031, 35.911449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.238897, 37.543476, 35.528767>,  <25.226437, 37.474743, 35.299156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.238897, 37.543476, 35.528767>,  <25.259665, 37.658031, 35.911449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.238897, 37.543476, 35.528767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053463, -0.955826, 0.289031,
		-0.997219, 0.066154, 0.034314,
		-0.051919, -0.286392, -0.956705,
		25.223322, 37.457558, 35.241756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.772404, 37.869019, 36.563019>,  <25.259665, 37.658031, 35.911449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.772404, 37.869019, 36.563019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.707697, 37.747616, 36.938618>,  <24.668873, 37.674774, 37.163979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.707697, 37.747616, 36.938618>,  <24.772404, 37.869019, 36.563019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.707697, 37.747616, 36.938618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933917, 0.260307, 0.245030,
		-0.318795, 0.916583, 0.241341,
		-0.161767, -0.303507, 0.938997,
		24.659166, 37.656563, 37.220318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.799885, 38.487019, 36.939274>,  <24.772404, 37.869019, 36.563019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.799885, 38.487019, 36.939274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.945362, 38.140396, 37.075981>,  <25.032648, 37.932423, 37.158005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.945362, 38.140396, 37.075981>,  <24.799885, 38.487019, 36.939274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.945362, 38.140396, 37.075981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930882, 0.351663, -0.098956,
		-0.034435, 0.354132, 0.934561,
		0.363694, -0.866559, 0.341765,
		25.054470, 37.880428, 37.178509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.075308, 38.675617, 37.557190>,  <24.799885, 38.487019, 36.939274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.075308, 38.675617, 37.557190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.240747, 38.384380, 37.338531>,  <25.340012, 38.209637, 37.207336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.240747, 38.384380, 37.338531>,  <25.075308, 38.675617, 37.557190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.240747, 38.384380, 37.338531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823212, 0.555532, -0.117077,
		0.388922, -0.401582, 0.829139,
		0.413597, -0.728091, -0.546645,
		25.364826, 38.165955, 37.174538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.705502, 38.335880, 37.821194>,  <25.075308, 38.675617, 37.557190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.705502, 38.335880, 37.821194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.672443, 38.380478, 37.425064>,  <25.652609, 38.407238, 37.187386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.672443, 38.380478, 37.425064>,  <25.705502, 38.335880, 37.821194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.672443, 38.380478, 37.425064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677809, 0.734772, 0.026158,
		0.730578, -0.669088, -0.136300,
		-0.082647, 0.111496, -0.990322,
		25.647650, 38.413925, 37.127968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.460016, 38.443645, 37.583141>,  <25.705502, 38.335880, 37.821194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.460016, 38.443645, 37.583141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.202669, 38.547756, 37.295158>,  <26.048262, 38.610222, 37.122368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.202669, 38.547756, 37.295158>,  <26.460016, 38.443645, 37.583141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.202669, 38.547756, 37.295158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592584, 0.764716, -0.253087,
		0.484687, -0.589461, -0.646231,
		-0.643368, 0.260279, -0.719953,
		26.009659, 38.625839, 37.079174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.814131, 38.956062, 37.396046>,  <26.460016, 38.443645, 37.583141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.814131, 38.956062, 37.396046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494104, 38.965057, 37.156250>,  <26.302090, 38.970455, 37.012371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494104, 38.965057, 37.156250>,  <26.814131, 38.956062, 37.396046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.494104, 38.965057, 37.156250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236430, 0.930237, -0.280642,
		0.551360, -0.366270, -0.749566,
		-0.800064, 0.022485, -0.599492,
		26.254086, 38.971802, 36.976402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.047543, 38.957527, 36.637383>,  <26.814131, 38.956062, 37.396046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.047543, 38.957527, 36.637383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.710979, 39.162144, 36.707081>,  <26.509041, 39.284912, 36.748901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.710979, 39.162144, 36.707081>,  <27.047543, 38.957527, 36.637383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.710979, 39.162144, 36.707081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471259, 0.852368, -0.226679,
		-0.264477, -0.108615, -0.958256,
		-0.841407, 0.511539, 0.174246,
		26.458557, 39.315605, 36.759354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.028563, 39.450195, 36.187183>,  <27.047543, 38.957527, 36.637383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.028563, 39.450195, 36.187183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.786129, 39.605736, 36.464733>,  <26.640669, 39.699059, 36.631264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.786129, 39.605736, 36.464733>,  <27.028563, 39.450195, 36.187183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.786129, 39.605736, 36.464733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360306, 0.911939, -0.196336,
		-0.709113, 0.131009, -0.692817,
		-0.606085, 0.388850, 0.693870,
		26.604303, 39.722389, 36.672894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.679064, 39.842358, 35.812721>,  <27.028563, 39.450195, 36.187183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.679064, 39.842358, 35.812721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.736237, 39.953476, 36.192699>,  <26.770540, 40.020145, 36.420689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.736237, 39.953476, 36.192699>,  <26.679064, 39.842358, 35.812721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.736237, 39.953476, 36.192699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249603, 0.918663, -0.306198,
		-0.957742, 0.280875, 0.061967,
		0.142930, 0.277792, 0.949949,
		26.779116, 40.036812, 36.477684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.530752, 40.462193, 35.764111>,  <26.679064, 39.842358, 35.812721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.530752, 40.462193, 35.764111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.734447, 40.467514, 36.108318>,  <26.856665, 40.470707, 36.314842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.734447, 40.467514, 36.108318>,  <26.530752, 40.462193, 35.764111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.734447, 40.467514, 36.108318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143869, 0.984495, -0.100361,
		-0.848516, 0.174910, 0.499426,
		0.509236, 0.013306, 0.860524,
		26.887218, 40.471504, 36.366474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.221521, 40.983589, 36.239025>,  <26.530752, 40.462193, 35.764111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.221521, 40.983589, 36.239025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592762, 40.915443, 36.371449>,  <26.815506, 40.874557, 36.450905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592762, 40.915443, 36.371449>,  <26.221521, 40.983589, 36.239025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.592762, 40.915443, 36.371449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259527, 0.933575, -0.247151,
		-0.266966, 0.315301, 0.910667,
		0.928103, -0.170362, 0.331062,
		26.871193, 40.864334, 36.470768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.428080, 41.464943, 36.539566>,  <26.221521, 40.983589, 36.239025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.428080, 41.464943, 36.539566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.796951, 41.325207, 36.473171>,  <27.018274, 41.241367, 36.433334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.796951, 41.325207, 36.473171>,  <26.428080, 41.464943, 36.539566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.796951, 41.325207, 36.473171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274012, 0.892989, -0.357054,
		0.272959, 0.283784, 0.919217,
		0.922177, -0.349337, -0.165989,
		27.073605, 41.220406, 36.423374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.956646, 42.046783, 36.743073>,  <26.428080, 41.464943, 36.539566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.956646, 42.046783, 36.743073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.115557, 41.773720, 36.497749>,  <27.210903, 41.609882, 36.350555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.115557, 41.773720, 36.497749>,  <26.956646, 42.046783, 36.743073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.115557, 41.773720, 36.497749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434331, 0.728590, -0.529635,
		0.808411, -0.055968, 0.585951,
		0.397276, -0.682660, -0.613309,
		27.234739, 41.568920, 36.313755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.532463, 42.532242, 36.498325>,  <26.956646, 42.046783, 36.743073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.532463, 42.532242, 36.498325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.755535, 42.453384, 36.175804>,  <27.889378, 42.406071, 35.982292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.755535, 42.453384, 36.175804>,  <27.532463, 42.532242, 36.498325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.755535, 42.453384, 36.175804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197408, -0.912013, 0.359532,
		-0.806240, -0.359675, -0.469692,
		0.557680, -0.197148, -0.806304,
		27.922838, 42.394241, 35.933914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.212233, 42.026798, 35.967319>,  <27.532463, 42.532242, 36.498325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.212233, 42.026798, 35.967319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.606348, 42.027817, 36.035671>,  <27.842817, 42.028427, 36.076683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.606348, 42.027817, 36.035671>,  <27.212233, 42.026798, 35.967319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.606348, 42.027817, 36.035671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060936, -0.928937, 0.365187,
		0.159669, -0.370228, -0.915116,
		0.985288, 0.002545, 0.170883,
		27.901934, 42.028580, 36.086937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.465414, 41.450584, 35.654449>,  <27.212233, 42.026798, 35.967319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.465414, 41.450584, 35.654449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.694048, 41.551796, 35.966671>,  <27.831228, 41.612522, 36.154003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.694048, 41.551796, 35.966671>,  <27.465414, 41.450584, 35.654449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.694048, 41.551796, 35.966671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225633, -0.866129, 0.445993,
		0.788913, -0.431041, -0.437973,
		0.571582, 0.253029, 0.780557,
		27.865522, 41.627705, 36.200840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012918, 41.080753, 35.786919>,  <27.465414, 41.450584, 35.654449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012918, 41.080753, 35.786919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.839630, 41.236061, 36.112267>,  <27.735657, 41.329247, 36.307476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.839630, 41.236061, 36.112267>,  <28.012918, 41.080753, 35.786919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.839630, 41.236061, 36.112267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373641, -0.898617, 0.229957,
		0.820191, -0.204286, 0.534372,
		-0.433219, 0.388272, 0.813367,
		27.709665, 41.352543, 36.356277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.197500, 40.623619, 36.246506>,  <28.012918, 41.080753, 35.786919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.197500, 40.623619, 36.246506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.874382, 40.835670, 36.349602>,  <27.680511, 40.962902, 36.411457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.874382, 40.835670, 36.349602>,  <28.197500, 40.623619, 36.246506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.874382, 40.835670, 36.349602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382097, -0.803855, 0.455872,
		0.448855, 0.269771, 0.851911,
		-0.807794, 0.530133, 0.257736,
		27.632044, 40.994709, 36.426922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.096991, 40.618843, 37.026703>,  <28.197500, 40.623619, 36.246506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.096991, 40.618843, 37.026703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.741158, 40.686817, 36.857105>,  <27.527658, 40.727600, 36.755348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.741158, 40.686817, 36.857105>,  <28.096991, 40.618843, 37.026703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.741158, 40.686817, 36.857105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366821, -0.818892, 0.441428,
		-0.272192, 0.548215, 0.790805,
		-0.889581, 0.169931, -0.423993,
		27.474283, 40.737797, 36.729908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.553440, 40.514278, 37.601955>,  <28.096991, 40.618843, 37.026703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.553440, 40.514278, 37.601955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.394413, 40.496532, 37.235355>,  <27.298996, 40.485886, 37.015396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.394413, 40.496532, 37.235355>,  <27.553440, 40.514278, 37.601955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.394413, 40.496532, 37.235355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679606, -0.656860, 0.326604,
		-0.616502, 0.752706, 0.230995,
		-0.397568, -0.044366, -0.916500,
		27.275143, 40.483223, 36.960407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.566069, 41.051155, 38.123913>,  <27.553440, 40.514278, 37.601955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.566069, 41.051155, 38.123913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.760290, 40.761391, 38.319653>,  <27.876823, 40.587532, 38.437096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.760290, 40.761391, 38.319653>,  <27.566069, 41.051155, 38.123913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.760290, 40.761391, 38.319653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863554, 0.310331, -0.397452,
		0.136057, 0.615568, 0.776251,
		0.485554, -0.724411, 0.489353,
		27.905956, 40.544067, 38.466457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.244070, 41.390942, 38.248272>,  <27.566069, 41.051155, 38.123913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.244070, 41.390942, 38.248272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.371571, 41.013321, 38.282139>,  <28.448071, 40.786751, 38.302460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.371571, 41.013321, 38.282139>,  <28.244070, 41.390942, 38.248272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.371571, 41.013321, 38.282139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816616, 0.228175, -0.530165,
		0.481183, 0.238131, 0.843657,
		0.318750, -0.944050, 0.084668,
		28.467196, 40.730106, 38.307541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.942558, 41.351528, 38.520756>,  <28.244070, 41.390942, 38.248272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.942558, 41.351528, 38.520756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.854607, 41.039852, 38.285973>,  <28.801836, 40.852848, 38.145103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.854607, 41.039852, 38.285973>,  <28.942558, 41.351528, 38.520756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.854607, 41.039852, 38.285973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842004, 0.152255, -0.517540,
		0.492628, -0.608019, 0.622600,
		-0.219880, -0.779186, -0.586960,
		28.788643, 40.806095, 38.109886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.502480, 41.870880, 38.552299>,  <28.942558, 41.351528, 38.520756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.502480, 41.870880, 38.552299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.115396, 41.912071, 38.644329>,  <28.883146, 41.936787, 38.699547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.115396, 41.912071, 38.644329>,  <29.502480, 41.870880, 38.552299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.115396, 41.912071, 38.644329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225500, 0.761558, 0.607601,
		-0.112645, 0.639863, -0.760188,
		-0.967709, 0.102979, 0.230075,
		28.825085, 41.942966, 38.713352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591337, 41.757504, 37.857853>,  <29.502480, 41.870880, 38.552299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.591337, 41.757504, 37.857853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.211159, 41.712761, 37.741825>,  <28.983051, 41.685917, 37.672207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.211159, 41.712761, 37.741825>,  <29.591337, 41.757504, 37.857853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.211159, 41.712761, 37.741825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298183, -0.063927, -0.952366,
		0.087983, -0.991666, 0.094112,
		-0.950445, -0.111855, -0.290073,
		28.926025, 41.679203, 37.654804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.383078, 41.146061, 37.462273>,  <29.591337, 41.757504, 37.857853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.383078, 41.146061, 37.462273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.128071, 41.434776, 37.354500>,  <28.975067, 41.608006, 37.289837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.128071, 41.434776, 37.354500>,  <29.383078, 41.146061, 37.462273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.128071, 41.434776, 37.354500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251775, -0.135328, -0.958278,
		-0.728135, -0.678754, -0.095454,
		-0.637517, 0.721789, -0.269430,
		28.936815, 41.651314, 37.273670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.664846, 41.073978, 36.750065>,  <29.383078, 41.146061, 37.462273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.664846, 41.073978, 36.750065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.694407, 41.407055, 36.969578>,  <29.712143, 41.606903, 37.101284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.694407, 41.407055, 36.969578>,  <29.664846, 41.073978, 36.750065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694407, 41.407055, 36.969578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973170, 0.060022, -0.222120,
		-0.217897, 0.550473, -0.805916,
		0.073899, 0.832693, 0.548782,
		29.716576, 41.656864, 37.134212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.576696, 41.755184, 36.464890>,  <29.664846, 41.073978, 36.750065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.576696, 41.755184, 36.464890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.898155, 41.544159, 36.575039>,  <30.091030, 41.417545, 36.641129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.898155, 41.544159, 36.575039>,  <29.576696, 41.755184, 36.464890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.898155, 41.544159, 36.575039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163023, -0.640198, -0.750713,
		0.572342, 0.558415, -0.600498,
		0.803647, -0.527559, 0.275378,
		30.139250, 41.385891, 36.657654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.168364, 41.651920, 35.874062>,  <29.576696, 41.755184, 36.464890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.168364, 41.651920, 35.874062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.178288, 41.358746, 36.146000>,  <30.184242, 41.182842, 36.309162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.178288, 41.358746, 36.146000>,  <30.168364, 41.651920, 35.874062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.178288, 41.358746, 36.146000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090380, -0.678914, -0.728633,
		0.995598, -0.043366, -0.083088,
		0.024812, -0.732936, 0.679845,
		30.185732, 41.138866, 36.349953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784313, 41.135746, 35.870323>,  <30.168364, 41.651920, 35.874062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784313, 41.135746, 35.870323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465103, 40.953869, 36.028515>,  <30.273577, 40.844742, 36.123428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465103, 40.953869, 36.028515>,  <30.784313, 41.135746, 35.870323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465103, 40.953869, 36.028515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078503, -0.729110, -0.679879,
		0.597486, -0.511516, 0.617545,
		-0.798027, -0.454698, 0.395478,
		30.225695, 40.817459, 36.147160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874716, 40.285484, 35.948055>,  <30.784313, 41.135746, 35.870323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874716, 40.285484, 35.948055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493223, 40.376904, 35.869911>,  <30.264328, 40.431755, 35.823025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493223, 40.376904, 35.869911>,  <30.874716, 40.285484, 35.948055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.493223, 40.376904, 35.869911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011158, -0.676220, -0.736615,
		-0.300459, -0.700352, 0.647481,
		-0.953730, 0.228547, -0.195361,
		30.207104, 40.445469, 35.811302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561787, 39.658569, 36.072926>,  <30.874716, 40.285484, 35.948055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.561787, 39.658569, 36.072926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368416, 39.891838, 35.811790>,  <30.252394, 40.031799, 35.655109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368416, 39.891838, 35.811790>,  <30.561787, 39.658569, 36.072926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.368416, 39.891838, 35.811790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027419, -0.735324, -0.677161,
		-0.874955, -0.345259, 0.339486,
		-0.483428, 0.583177, -0.652842,
		30.223387, 40.066792, 35.615936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.904953, 39.221111, 35.681499>,  <30.561787, 39.658569, 36.072926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.904953, 39.221111, 35.681499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.087008, 39.508141, 35.470619>,  <30.196241, 39.680359, 35.344090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.087008, 39.508141, 35.470619>,  <29.904953, 39.221111, 35.681499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.087008, 39.508141, 35.470619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088713, -0.625679, -0.775020,
		-0.885991, 0.305971, -0.348428,
		0.455138, 0.717571, -0.527202,
		30.223549, 39.723412, 35.312458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.630709, 39.298313, 34.969753>,  <29.904953, 39.221111, 35.681499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.630709, 39.298313, 34.969753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.003412, 39.441776, 34.947182>,  <30.227036, 39.527855, 34.933640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.003412, 39.441776, 34.947182>,  <29.630709, 39.298313, 34.969753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.003412, 39.441776, 34.947182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193349, -0.621709, -0.759009,
		-0.307308, 0.696305, -0.648631,
		0.931761, 0.358661, -0.056426,
		30.282940, 39.549374, 34.930252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.761019, 39.644703, 34.312824>,  <29.630709, 39.298313, 34.969753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.761019, 39.644703, 34.312824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.080070, 39.453804, 34.460346>,  <30.271502, 39.339264, 34.548859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.080070, 39.453804, 34.460346>,  <29.761019, 39.644703, 34.312824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.080070, 39.453804, 34.460346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035665, -0.573075, -0.818727,
		0.602090, 0.666195, -0.440081,
		0.797631, -0.477252, 0.368803,
		30.319361, 39.310627, 34.570988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309258, 39.675663, 33.759285>,  <29.761019, 39.644703, 34.312824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309258, 39.675663, 33.759285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358658, 39.377991, 34.021870>,  <30.388298, 39.199387, 34.179420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358658, 39.377991, 34.021870>,  <30.309258, 39.675663, 33.759285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358658, 39.377991, 34.021870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038754, -0.657400, -0.752545,
		0.991587, 0.118382, -0.052351,
		0.123503, -0.744185, 0.656457,
		30.395708, 39.154736, 34.218807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848433, 39.301064, 33.470825>,  <30.309258, 39.675663, 33.759285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848433, 39.301064, 33.470825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.641386, 39.051060, 33.704556>,  <30.517159, 38.901058, 33.844795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.641386, 39.051060, 33.704556>,  <30.848433, 39.301064, 33.470825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.641386, 39.051060, 33.704556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096621, -0.721266, -0.685886,
		0.850141, -0.298567, 0.433726,
		-0.517615, -0.625007, 0.584330,
		30.486101, 38.863556, 33.879856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334454, 38.816650, 33.796810>,  <30.848433, 39.301064, 33.470825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334454, 38.816650, 33.796810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.964933, 38.700115, 33.697437>,  <30.743221, 38.630196, 33.637814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.964933, 38.700115, 33.697437>,  <31.334454, 38.816650, 33.796810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.964933, 38.700115, 33.697437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375562, -0.563270, -0.735989,
		0.074488, -0.773207, 0.629764,
		-0.923799, -0.291338, -0.248430,
		30.687794, 38.612713, 33.622910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262114, 38.083588, 33.924210>,  <31.334454, 38.816650, 33.796810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262114, 38.083588, 33.924210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.043114, 38.227695, 33.622097>,  <30.911715, 38.314159, 33.440830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.043114, 38.227695, 33.622097>,  <31.262114, 38.083588, 33.924210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043114, 38.227695, 33.622097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545585, -0.530683, -0.648624,
		-0.634492, -0.767193, 0.093993,
		-0.547500, 0.360265, -0.755283,
		30.878864, 38.335773, 33.395512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909414, 37.609341, 33.441547>,  <31.262114, 38.083588, 33.924210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.909414, 37.609341, 33.441547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.022392, 37.945385, 33.256313>,  <31.090179, 38.147011, 33.145172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.022392, 37.945385, 33.256313>,  <30.909414, 37.609341, 33.441547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.022392, 37.945385, 33.256313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501887, -0.540811, -0.675006,
		-0.817517, -0.041762, -0.574388,
		0.282446, 0.840107, -0.463082,
		31.107126, 38.197418, 33.117390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634342, 37.931030, 32.789467>,  <30.909414, 37.609341, 33.441547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634342, 37.931030, 32.789467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030817, 37.982338, 32.802711>,  <31.268702, 38.013123, 32.810658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030817, 37.982338, 32.802711>,  <30.634342, 37.931030, 32.789467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.030817, 37.982338, 32.802711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112159, -0.679565, -0.724991,
		-0.070496, 0.722314, -0.687962,
		0.991187, 0.128270, 0.033108,
		31.328173, 38.020821, 32.812645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864683, 38.023098, 32.074879>,  <30.634342, 37.931030, 32.789467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.864683, 38.023098, 32.074879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184307, 37.899101, 32.280949>,  <31.376081, 37.824703, 32.404591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184307, 37.899101, 32.280949>,  <30.864683, 38.023098, 32.074879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184307, 37.899101, 32.280949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260238, -0.594107, -0.761126,
		0.542016, 0.742253, -0.394055,
		0.799059, -0.309994, 0.515178,
		31.424025, 37.806103, 32.435501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.458515, 38.101822, 31.656784>,  <30.864683, 38.023098, 32.074879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.458515, 38.101822, 31.656784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524794, 37.802181, 31.913342>,  <31.564560, 37.622395, 32.067276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524794, 37.802181, 31.913342>,  <31.458515, 38.101822, 31.656784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524794, 37.802181, 31.913342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207979, -0.609213, -0.765248,
		0.963997, 0.260194, 0.054855,
		0.165694, -0.749105, 0.641394,
		31.574501, 37.577450, 32.105759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861122, 38.229984, 32.202499>,  <31.458515, 38.101822, 31.656784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861122, 38.229984, 32.202499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180725, 38.448334, 32.303383>,  <32.372486, 38.579346, 32.363914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180725, 38.448334, 32.303383>,  <31.861122, 38.229984, 32.202499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180725, 38.448334, 32.303383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553639, -0.831500, 0.045736,
		0.234679, 0.103090, -0.966591,
		0.799005, 0.545876, 0.252210,
		32.420425, 38.612095, 32.379047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480095, 38.144829, 31.775717>,  <31.861122, 38.229984, 32.202499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480095, 38.144829, 31.775717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581676, 38.244514, 32.149540>,  <32.642624, 38.304325, 32.373833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581676, 38.244514, 32.149540>,  <32.480095, 38.144829, 31.775717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581676, 38.244514, 32.149540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538079, -0.839314, 0.077601,
		0.803728, 0.483160, -0.347243,
		0.253953, 0.249215, 0.934559,
		32.657864, 38.319279, 32.429909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672794, 37.905575, 31.091618>,  <32.480095, 38.144829, 31.775717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672794, 37.905575, 31.091618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066109, 37.964832, 31.133945>,  <33.302097, 38.000385, 31.159342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066109, 37.964832, 31.133945>,  <32.672794, 37.905575, 31.091618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066109, 37.964832, 31.133945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160045, -0.426331, -0.890296,
		-0.086776, 0.892354, -0.442916,
		0.983288, 0.148143, 0.105822,
		33.361095, 38.009274, 31.165691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874683, 38.200684, 30.482613>,  <32.672794, 37.905575, 31.091618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874683, 38.200684, 30.482613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210487, 38.046055, 30.635340>,  <33.411972, 37.953278, 30.726976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210487, 38.046055, 30.635340>,  <32.874683, 38.200684, 30.482613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210487, 38.046055, 30.635340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164305, -0.489205, -0.856553,
		0.517903, 0.781821, -0.347178,
		0.839512, -0.386568, 0.381817,
		33.462341, 37.930084, 30.749886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270477, 38.189922, 29.904955>,  <32.874683, 38.200684, 30.482613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270477, 38.189922, 29.904955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483944, 37.974728, 30.165960>,  <33.612022, 37.845612, 30.322563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483944, 37.974728, 30.165960>,  <33.270477, 38.189922, 29.904955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483944, 37.974728, 30.165960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340808, -0.569335, -0.748136,
		0.773986, 0.621635, -0.120483,
		0.533663, -0.537985, 0.652515,
		33.644043, 37.813332, 30.361715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082615, 38.112823, 29.725531>,  <33.270477, 38.189922, 29.904955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082615, 38.112823, 29.725531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996540, 37.795940, 29.953951>,  <33.944893, 37.605812, 30.091003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996540, 37.795940, 29.953951>,  <34.082615, 38.112823, 29.725531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996540, 37.795940, 29.953951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422006, -0.602770, -0.677185,
		0.880684, 0.095263, 0.464027,
		-0.215190, -0.792208, 0.571051,
		33.931984, 37.558277, 30.125267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668083, 37.769676, 29.546360>,  <34.082615, 38.112823, 29.725531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668083, 37.769676, 29.546360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431816, 37.522552, 29.753984>,  <34.290058, 37.374279, 29.878559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431816, 37.522552, 29.753984>,  <34.668083, 37.769676, 29.546360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431816, 37.522552, 29.753984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336246, -0.773207, -0.537671,
		0.733521, -0.143051, 0.664443,
		-0.590666, -0.617809, 0.519063,
		34.254616, 37.337212, 29.909702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042797, 37.296921, 29.906908>,  <34.668083, 37.769676, 29.546360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042797, 37.296921, 29.906908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696651, 37.103779, 29.853247>,  <34.488964, 36.987896, 29.821051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696651, 37.103779, 29.853247>,  <35.042797, 37.296921, 29.906908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696651, 37.103779, 29.853247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461479, -0.663422, -0.588990,
		0.195394, -0.571600, 0.796928,
		-0.865366, -0.482850, -0.134153,
		34.437042, 36.958923, 29.813002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222801, 36.605484, 29.955318>,  <35.042797, 37.296921, 29.906908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222801, 36.605484, 29.955318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887657, 36.631516, 29.738520>,  <34.686573, 36.647133, 29.608440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887657, 36.631516, 29.738520>,  <35.222801, 36.605484, 29.955318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887657, 36.631516, 29.738520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384114, -0.635200, -0.670058,
		-0.387879, -0.769602, 0.507211,
		-0.837858, 0.065075, -0.541995,
		34.636299, 36.651039, 29.575922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163692, 35.970024, 29.680347>,  <35.222801, 36.605484, 29.955318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163692, 35.970024, 29.680347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935383, 36.195370, 29.441402>,  <34.798397, 36.330578, 29.298037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935383, 36.195370, 29.441402>,  <35.163692, 35.970024, 29.680347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935383, 36.195370, 29.441402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334301, -0.505045, -0.795721,
		-0.749973, -0.653876, 0.099935,
		-0.570775, 0.563361, -0.597361,
		34.764149, 36.364376, 29.262194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832554, 35.444824, 29.346897>,  <35.163692, 35.970024, 29.680347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832554, 35.444824, 29.346897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809593, 35.767242, 29.111275>,  <34.795815, 35.960693, 28.969900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809593, 35.767242, 29.111275>,  <34.832554, 35.444824, 29.346897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809593, 35.767242, 29.111275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242358, -0.561130, -0.791452,
		-0.968487, -0.188195, -0.163141,
		-0.057404, 0.806049, -0.589058,
		34.792374, 36.009056, 28.934557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533562, 35.155518, 28.729471>,  <34.832554, 35.444824, 29.346897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533562, 35.155518, 28.729471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711872, 35.498466, 28.626560>,  <34.818859, 35.704235, 28.564814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711872, 35.498466, 28.626560>,  <34.533562, 35.155518, 28.729471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711872, 35.498466, 28.626560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472812, -0.469573, -0.745620,
		-0.760087, 0.210735, -0.614702,
		0.445776, 0.857375, -0.257279,
		34.845604, 35.755680, 28.549377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629929, 35.050098, 27.987606>,  <34.533562, 35.155518, 28.729471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629929, 35.050098, 27.987606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835876, 35.382298, 28.072634>,  <34.959446, 35.581615, 28.123652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835876, 35.382298, 28.072634>,  <34.629929, 35.050098, 27.987606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835876, 35.382298, 28.072634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521744, -0.106821, -0.846388,
		-0.680213, 0.546690, -0.488304,
		0.514873, 0.830493, 0.212571,
		34.990337, 35.631447, 28.136406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647110, 35.611607, 27.404175>,  <34.629929, 35.050098, 27.987606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647110, 35.611607, 27.404175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968025, 35.651356, 27.639616>,  <35.160576, 35.675205, 27.780880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968025, 35.651356, 27.639616>,  <34.647110, 35.611607, 27.404175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968025, 35.651356, 27.639616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581037, 0.096026, -0.808192,
		-0.136836, 0.990406, 0.019300,
		0.802291, 0.099376, 0.588603,
		35.208714, 35.681168, 27.816196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915882, 36.260899, 27.170177>,  <34.647110, 35.611607, 27.404175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915882, 36.260899, 27.170177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182770, 36.016983, 27.341280>,  <35.342903, 35.870632, 27.443941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182770, 36.016983, 27.341280>,  <34.915882, 36.260899, 27.170177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182770, 36.016983, 27.341280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562727, 0.036414, -0.825840,
		0.488012, 0.791727, 0.367441,
		0.667220, -0.609789, 0.427756,
		35.382935, 35.834045, 27.469606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593563, 36.466766, 26.930887>,  <34.915882, 36.260899, 27.170177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593563, 36.466766, 26.930887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662083, 36.096970, 27.067101>,  <35.703194, 35.875092, 27.148829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662083, 36.096970, 27.067101>,  <35.593563, 36.466766, 26.930887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662083, 36.096970, 27.067101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631274, -0.162376, -0.758372,
		0.756406, 0.344878, 0.555795,
		0.171298, -0.924496, 0.340535,
		35.713470, 35.819622, 27.169260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342567, 36.350754, 27.034800>,  <35.593563, 36.466766, 26.930887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342567, 36.350754, 27.034800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171234, 35.990055, 27.011528>,  <36.068436, 35.773636, 26.997564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171234, 35.990055, 27.011528>,  <36.342567, 36.350754, 27.034800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171234, 35.990055, 27.011528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622862, -0.247989, -0.741987,
		0.654657, -0.354053, 0.667886,
		-0.428331, -0.901747, -0.058179,
		36.042736, 35.719532, 26.994074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903316, 35.906929, 26.766762>,  <36.342567, 36.350754, 27.034800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903316, 35.906929, 26.766762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572243, 35.691986, 26.702040>,  <36.373600, 35.563019, 26.663206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572243, 35.691986, 26.702040>,  <36.903316, 35.906929, 26.766762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572243, 35.691986, 26.702040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449889, -0.462997, -0.763697,
		0.335464, -0.704896, 0.624968,
		-0.827686, -0.537360, -0.161806,
		36.323936, 35.530777, 26.653498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186043, 35.171299, 26.900583>,  <36.903316, 35.906929, 26.766762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186043, 35.171299, 26.900583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883778, 35.229839, 26.645224>,  <36.702419, 35.264961, 26.492008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883778, 35.229839, 26.645224>,  <37.186043, 35.171299, 26.900583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883778, 35.229839, 26.645224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499474, -0.501748, -0.706240,
		-0.423670, -0.852544, 0.306059,
		-0.755665, 0.146344, -0.638399,
		36.657078, 35.273743, 26.453703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184898, 34.574837, 26.558380>,  <37.186043, 35.171299, 26.900583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184898, 34.574837, 26.558380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974014, 34.781914, 26.288849>,  <36.847485, 34.906158, 26.127131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974014, 34.781914, 26.288849>,  <37.184898, 34.574837, 26.558380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974014, 34.781914, 26.288849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448103, -0.504382, -0.738108,
		-0.721978, -0.691083, 0.033938,
		-0.527212, 0.517690, -0.673829,
		36.815849, 34.937222, 26.086700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036678, 34.126350, 26.058794>,  <37.184898, 34.574837, 26.558380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036678, 34.126350, 26.058794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948139, 34.463833, 25.863174>,  <36.895016, 34.666321, 25.745802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948139, 34.463833, 25.863174>,  <37.036678, 34.126350, 26.058794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948139, 34.463833, 25.863174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283481, -0.424164, -0.860072,
		-0.933083, -0.329010, -0.145286,
		-0.221347, 0.843704, -0.489048,
		36.881737, 34.716946, 25.716459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779766, 33.898045, 25.506227>,  <37.036678, 34.126350, 26.058794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779766, 33.898045, 25.506227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859764, 34.280697, 25.421501>,  <36.907764, 34.510288, 25.370665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859764, 34.280697, 25.421501>,  <36.779766, 33.898045, 25.506227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859764, 34.280697, 25.421501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305521, -0.266294, -0.914190,
		-0.930945, 0.118120, -0.345527,
		0.199996, 0.956627, -0.211817,
		36.919762, 34.567684, 25.357956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275070, 34.124435, 25.036177>,  <36.779766, 33.898045, 25.506227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275070, 34.124435, 25.036177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623882, 34.318638, 25.011385>,  <36.833172, 34.435162, 24.996510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623882, 34.318638, 25.011385>,  <36.275070, 34.124435, 25.036177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623882, 34.318638, 25.011385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004624, -0.134795, -0.990863,
		-0.489426, 0.863778, -0.119790,
		0.872032, 0.485508, -0.061979,
		36.885490, 34.464291, 24.992792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228718, 34.345970, 24.367609>,  <36.275070, 34.124435, 25.036177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228718, 34.345970, 24.367609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606735, 34.451092, 24.445410>,  <36.833546, 34.514164, 24.492090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606735, 34.451092, 24.445410>,  <36.228718, 34.345970, 24.367609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606735, 34.451092, 24.445410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172496, 0.104595, -0.979441,
		-0.277745, 0.959163, 0.053514,
		0.945041, 0.262804, 0.194503,
		36.890247, 34.529934, 24.503761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476456, 34.927376, 23.930685>,  <36.228718, 34.345970, 24.367609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476456, 34.927376, 23.930685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819260, 34.753330, 24.041107>,  <37.024940, 34.648903, 24.107361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819260, 34.753330, 24.041107>,  <36.476456, 34.927376, 23.930685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819260, 34.753330, 24.041107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246877, -0.123535, -0.961141,
		0.452312, 0.891859, 0.001550,
		0.857010, -0.435118, 0.276055,
		37.076363, 34.622795, 24.123924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849983, 35.191689, 23.414568>,  <36.476456, 34.927376, 23.930685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849983, 35.191689, 23.414568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047897, 34.886036, 23.580122>,  <37.166645, 34.702644, 23.679455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047897, 34.886036, 23.580122>,  <36.849983, 35.191689, 23.414568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047897, 34.886036, 23.580122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304357, -0.293728, -0.906141,
		0.813976, 0.574311, 0.087236,
		0.494782, -0.764128, 0.413883,
		37.196331, 34.656799, 23.704287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521114, 35.208309, 23.383335>,  <36.849983, 35.191689, 23.414568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521114, 35.208309, 23.383335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.473808, 34.811760, 23.405918>,  <37.445423, 34.573830, 23.419468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.473808, 34.811760, 23.405918>,  <37.521114, 35.208309, 23.383335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473808, 34.811760, 23.405918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310475, -0.090924, -0.946223,
		0.943195, -0.094381, 0.318551,
		-0.118270, -0.991375, 0.056456,
		37.438328, 34.514347, 23.422855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111549, 34.926655, 23.096931>,  <37.521114, 35.208309, 23.383335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111549, 34.926655, 23.096931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877190, 34.602917, 23.080568>,  <37.736572, 34.408672, 23.070751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877190, 34.602917, 23.080568>,  <38.111549, 34.926655, 23.096931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877190, 34.602917, 23.080568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306883, -0.174872, -0.935544,
		0.750029, -0.560690, 0.350834,
		-0.585901, -0.809350, -0.040907,
		37.701420, 34.360111, 23.068296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503761, 34.364319, 22.955580>,  <38.111549, 34.926655, 23.096931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503761, 34.364319, 22.955580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144451, 34.213551, 22.865221>,  <37.928864, 34.123089, 22.811005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144451, 34.213551, 22.865221>,  <38.503761, 34.364319, 22.955580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144451, 34.213551, 22.865221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385991, -0.431109, -0.815571,
		0.210016, -0.819804, 0.532743,
		-0.898278, -0.376917, -0.225897,
		37.874969, 34.100475, 22.797451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643589, 33.729172, 22.626173>,  <38.503761, 34.364319, 22.955580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643589, 33.729172, 22.626173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273003, 33.813293, 22.501310>,  <38.050652, 33.863766, 22.426394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273003, 33.813293, 22.501310>,  <38.643589, 33.729172, 22.626173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273003, 33.813293, 22.501310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258164, -0.248455, -0.933607,
		-0.273905, -0.945536, 0.175888,
		-0.926460, 0.210312, -0.312157,
		37.995064, 33.876385, 22.407663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455643, 33.263390, 22.282238>,  <38.643589, 33.729172, 22.626173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455643, 33.263390, 22.282238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.218010, 33.554821, 22.145864>,  <38.075432, 33.729679, 22.064041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.218010, 33.554821, 22.145864>,  <38.455643, 33.263390, 22.282238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218010, 33.554821, 22.145864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225083, -0.256341, -0.940014,
		-0.772272, -0.635184, -0.011704,
		-0.594082, 0.728581, -0.340934,
		38.039783, 33.773396, 22.043585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061253, 32.982212, 21.732920>,  <38.455643, 33.263390, 22.282238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061253, 32.982212, 21.732920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108898, 33.373402, 21.664358>,  <38.137486, 33.608116, 21.623222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108898, 33.373402, 21.664358>,  <38.061253, 32.982212, 21.732920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108898, 33.373402, 21.664358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296462, -0.199787, -0.933914,
		-0.947588, 0.060425, -0.313729,
		0.119111, 0.977974, -0.171402,
		38.144630, 33.666794, 21.612938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607975, 33.176910, 21.097946>,  <38.061253, 32.982212, 21.732920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607975, 33.176910, 21.097946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.912975, 33.431515, 21.144342>,  <38.095974, 33.584278, 21.172180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.912975, 33.431515, 21.144342>,  <37.607975, 33.176910, 21.097946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912975, 33.431515, 21.144342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426363, -0.359496, -0.830047,
		-0.486632, 0.682364, -0.545498,
		0.762498, 0.636508, 0.115993,
		38.141724, 33.622467, 21.179140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782238, 33.455086, 20.447674>,  <37.607975, 33.176910, 21.097946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782238, 33.455086, 20.447674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111885, 33.549679, 20.653547>,  <38.309673, 33.606434, 20.777071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111885, 33.549679, 20.653547>,  <37.782238, 33.455086, 20.447674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111885, 33.549679, 20.653547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566373, -0.354766, -0.743884,
		0.006675, 0.904553, -0.426309,
		0.824122, 0.236484, 0.514682,
		38.359123, 33.620625, 20.807951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235199, 33.713421, 19.974554>,  <37.782238, 33.455086, 20.447674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235199, 33.713421, 19.974554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454704, 33.568417, 20.275871>,  <38.586407, 33.481415, 20.456661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454704, 33.568417, 20.275871>,  <38.235199, 33.713421, 19.974554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454704, 33.568417, 20.275871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706338, -0.280928, -0.649743,
		0.447159, 0.888632, 0.101891,
		0.548759, -0.362508, 0.753294,
		38.619331, 33.459663, 20.501860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929695, 33.869190, 19.955261>,  <38.235199, 33.713421, 19.974554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929695, 33.869190, 19.955261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999279, 33.559723, 20.198957>,  <39.041027, 33.374043, 20.345175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999279, 33.559723, 20.198957>,  <38.929695, 33.869190, 19.955261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999279, 33.559723, 20.198957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834492, -0.212659, -0.508329,
		0.522840, 0.596833, 0.608629,
		0.173957, -0.773671, 0.609239,
		39.051468, 33.327621, 20.381729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643929, 33.902424, 20.093657>,  <38.929695, 33.869190, 19.955261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643929, 33.902424, 20.093657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.547653, 33.523815, 20.179598>,  <39.489887, 33.296650, 20.231163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.547653, 33.523815, 20.179598>,  <39.643929, 33.902424, 20.093657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547653, 33.523815, 20.179598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774958, -0.320679, -0.544615,
		0.584390, 0.035421, 0.810699,
		-0.240683, -0.946525, 0.214852,
		39.475449, 33.239857, 20.244053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213055, 33.644672, 20.345818>,  <39.643929, 33.902424, 20.093657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213055, 33.644672, 20.345818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026695, 33.313766, 20.220234>,  <39.914879, 33.115223, 20.144884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026695, 33.313766, 20.220234>,  <40.213055, 33.644672, 20.345818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026695, 33.313766, 20.220234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794777, -0.235281, -0.559440,
		0.388937, -0.510169, 0.767109,
		-0.465895, -0.827267, -0.313961,
		39.886929, 33.065586, 20.126045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695053, 33.106445, 20.306303>,  <40.213055, 33.644672, 20.345818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695053, 33.106445, 20.306303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414566, 32.935188, 20.078274>,  <40.246273, 32.832432, 19.941456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414566, 32.935188, 20.078274>,  <40.695053, 33.106445, 20.306303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414566, 32.935188, 20.078274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711211, -0.364305, -0.601217,
		0.049727, -0.827027, 0.559959,
		-0.701218, -0.428146, -0.570074,
		40.204201, 32.806744, 19.907251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941830, 32.491463, 20.221270>,  <40.695053, 33.106445, 20.306303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941830, 32.491463, 20.221270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685368, 32.529266, 19.916641>,  <40.531490, 32.551949, 19.733864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685368, 32.529266, 19.916641>,  <40.941830, 32.491463, 20.221270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685368, 32.529266, 19.916641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691614, -0.358891, -0.626792,
		-0.332556, -0.928583, 0.164743,
		-0.641153, 0.094505, -0.761572,
		40.493023, 32.557617, 19.688169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063202, 31.910002, 19.841291>,  <40.941830, 32.491463, 20.221270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063202, 31.910002, 19.841291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900593, 32.169403, 19.583864>,  <40.803028, 32.325043, 19.429407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900593, 32.169403, 19.583864>,  <41.063202, 31.910002, 19.841291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900593, 32.169403, 19.583864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746523, -0.170325, -0.643189,
		-0.526726, -0.741912, -0.414881,
		-0.406525, 0.648503, -0.643569,
		40.778637, 32.363953, 19.390793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116898, 31.565010, 19.164545>,  <41.063202, 31.910002, 19.841291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116898, 31.565010, 19.164545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.052837, 31.947514, 19.066628>,  <41.014400, 32.177013, 19.007877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.052837, 31.947514, 19.066628>,  <41.116898, 31.565010, 19.164545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.052837, 31.947514, 19.066628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606874, -0.100201, -0.788456,
		-0.778495, -0.274833, -0.564280,
		-0.160152, 0.956257, -0.244795,
		41.004791, 32.234390, 18.993189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967392, 31.517345, 18.486849>,  <41.116898, 31.565010, 19.164545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967392, 31.517345, 18.486849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.068439, 31.899445, 18.548410>,  <41.129066, 32.128704, 18.585346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.068439, 31.899445, 18.548410>,  <40.967392, 31.517345, 18.486849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068439, 31.899445, 18.548410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429072, 0.031968, -0.902704,
		-0.867227, 0.294074, -0.401794,
		0.252617, 0.955248, 0.153902,
		41.144226, 32.186020, 18.594582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770447, 31.841642, 17.882734>,  <40.967392, 31.517345, 18.486849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770447, 31.841642, 17.882734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.049416, 32.078911, 18.043606>,  <41.216797, 32.221272, 18.140129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.049416, 32.078911, 18.043606>,  <40.770447, 31.841642, 17.882734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049416, 32.078911, 18.043606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381255, 0.168097, -0.909059,
		-0.606832, 0.787332, -0.108915,
		0.697423, 0.593170, 0.402181,
		41.258644, 32.256863, 18.164261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907948, 32.329617, 17.371778>,  <40.770447, 31.841642, 17.882734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.907948, 32.329617, 17.371778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.236668, 32.354546, 17.598320>,  <41.433899, 32.369503, 17.734245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.236668, 32.354546, 17.598320>,  <40.907948, 32.329617, 17.371778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.236668, 32.354546, 17.598320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569370, -0.127226, -0.812177,
		0.021440, 0.989914, -0.140037,
		0.821801, 0.062320, 0.566356,
		41.483208, 32.373241, 17.768227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484280, 32.901478, 17.130009>,  <40.907948, 32.329617, 17.371778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.484280, 32.901478, 17.130009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.618477, 32.587029, 17.337643>,  <41.698994, 32.398357, 17.462223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.618477, 32.587029, 17.337643>,  <41.484280, 32.901478, 17.130009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618477, 32.587029, 17.337643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661535, -0.195695, -0.723930,
		0.670682, 0.586268, 0.454395,
		0.335494, -0.786125, 0.519086,
		41.719124, 32.351192, 17.493368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.288380, 32.760853, 17.317080>,  <41.484280, 32.901478, 17.130009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.288380, 32.760853, 17.317080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.144348, 32.396553, 17.236206>,  <42.057930, 32.177975, 17.187681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.144348, 32.396553, 17.236206>,  <42.288380, 32.760853, 17.317080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.144348, 32.396553, 17.236206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726488, -0.137774, -0.673226,
		0.585285, -0.389299, 0.711258,
		-0.360079, -0.910749, -0.202184,
		42.036324, 32.123329, 17.175550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.883698, 33.260277, 17.490843>,  <42.288380, 32.760853, 17.317080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.883698, 33.260277, 17.490843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.217697, 33.392582, 17.666739>,  <43.418098, 33.471966, 17.772276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.217697, 33.392582, 17.666739>,  <42.883698, 33.260277, 17.490843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.217697, 33.392582, 17.666739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475566, -0.031799, -0.879105,
		-0.276794, 0.943177, -0.183853,
		0.834998, 0.330765, 0.439741,
		43.468197, 33.491810, 17.798660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.022713, 33.775604, 17.104237>,  <42.883698, 33.260277, 17.490843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.022713, 33.775604, 17.104237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.370560, 33.675117, 17.274250>,  <43.579269, 33.614826, 17.376257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.370560, 33.675117, 17.274250>,  <43.022713, 33.775604, 17.104237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.370560, 33.675117, 17.274250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449185, 0.045249, -0.892292,
		0.204930, 0.966872, 0.152194,
		0.869619, -0.251221, 0.425031,
		43.631447, 33.599751, 17.401760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.433968, 33.739204, 16.463938>,  <43.022713, 33.775604, 17.104237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.433968, 33.739204, 16.463938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.289593, 34.006264, 16.724390>,  <43.202969, 34.166500, 16.880661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.289593, 34.006264, 16.724390>,  <43.433968, 33.739204, 16.463938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.289593, 34.006264, 16.724390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926617, 0.177839, 0.331291,
		0.105389, 0.722925, -0.682842,
		-0.360934, 0.667647, 0.651132,
		43.181313, 34.206558, 16.919729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.774178, 33.210533, 16.336683>,  <43.433968, 33.739204, 16.463938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.774178, 33.210533, 16.336683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.149616, 33.253899, 16.467695>,  <44.374882, 33.279919, 16.546303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.149616, 33.253899, 16.467695>,  <43.774178, 33.210533, 16.336683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.149616, 33.253899, 16.467695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335208, 0.061898, 0.940108,
		0.081650, -0.992177, 0.094440,
		0.938600, 0.108416, 0.327532,
		44.431198, 33.286423, 16.565954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.909863, 32.686207, 16.864307>,  <43.774178, 33.210533, 16.336683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.909863, 32.686207, 16.864307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.179367, 32.974316, 16.930344>,  <44.341068, 33.147182, 16.969965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.179367, 32.974316, 16.930344>,  <43.909863, 32.686207, 16.864307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.179367, 32.974316, 16.930344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406499, 0.174696, 0.896794,
		0.617095, -0.671334, 0.410493,
		0.673760, 0.720272, 0.165092,
		44.381496, 33.190399, 16.979872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.363884, 32.618507, 17.502087>,  <43.909863, 32.686207, 16.864307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.363884, 32.618507, 17.502087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.287399, 32.991287, 17.378853>,  <44.241508, 33.214954, 17.304913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.287399, 32.991287, 17.378853>,  <44.363884, 32.618507, 17.502087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.287399, 32.991287, 17.378853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415361, 0.207562, 0.885660,
		0.889334, 0.297311, 0.347406,
		-0.191209, 0.931947, -0.308083,
		44.230038, 33.270870, 17.286428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.685299, 33.145206, 17.940437>,  <44.363884, 32.618507, 17.502087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.685299, 33.145206, 17.940437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.355156, 33.295528, 17.771891>,  <44.157070, 33.385719, 17.670763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.355156, 33.295528, 17.771891>,  <44.685299, 33.145206, 17.940437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.355156, 33.295528, 17.771891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333248, 0.278192, 0.900863,
		0.455767, 0.883959, -0.104375,
		-0.825362, 0.375801, -0.421368,
		44.107548, 33.408268, 17.645479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.670879, 33.834599, 18.162302>,  <44.685299, 33.145206, 17.940437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.670879, 33.834599, 18.162302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.295414, 33.731041, 18.071194>,  <44.070133, 33.668907, 18.016529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.295414, 33.731041, 18.071194>,  <44.670879, 33.834599, 18.162302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.295414, 33.731041, 18.071194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289524, 0.232938, 0.928394,
		-0.187298, 0.937398, -0.293607,
		-0.938667, -0.258893, -0.227770,
		44.013813, 33.653374, 18.002863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.178467, 34.370815, 18.458221>,  <44.670879, 33.834599, 18.162302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.178467, 34.370815, 18.458221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.939812, 34.054363, 18.404352>,  <43.796619, 33.864491, 18.372030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.939812, 34.054363, 18.404352>,  <44.178467, 34.370815, 18.458221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.939812, 34.054363, 18.404352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443426, 0.185121, 0.876986,
		-0.668881, 0.582957, -0.461258,
		-0.596634, -0.791133, -0.134674,
		43.760822, 33.817024, 18.363951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.374645, 34.600624, 18.514570>,  <44.178467, 34.370815, 18.458221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.374645, 34.600624, 18.514570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.401123, 34.206062, 18.574724>,  <43.417011, 33.969326, 18.610817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.401123, 34.206062, 18.574724>,  <43.374645, 34.600624, 18.514570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.401123, 34.206062, 18.574724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438206, 0.106667, 0.892523,
		-0.896434, -0.124979, -0.425189,
		0.066193, -0.986409, 0.150387,
		43.420982, 33.910141, 18.619841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.788769, 34.499420, 18.674129>,  <43.374645, 34.600624, 18.514570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.788769, 34.499420, 18.674129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.995014, 34.195274, 18.832111>,  <43.118763, 34.012787, 18.926901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.995014, 34.195274, 18.832111>,  <42.788769, 34.499420, 18.674129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.995014, 34.195274, 18.832111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378131, 0.211705, 0.901220,
		-0.768866, -0.614031, -0.178357,
		0.515618, -0.760360, 0.394957,
		43.149700, 33.967167, 18.950598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421272, 34.443054, 19.224495>,  <42.788769, 34.499420, 18.674129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.421272, 34.443054, 19.224495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.733105, 34.207527, 19.309864>,  <42.920204, 34.066212, 19.361086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.733105, 34.207527, 19.309864>,  <42.421272, 34.443054, 19.224495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.733105, 34.207527, 19.309864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244952, 0.026973, 0.969160,
		-0.576417, -0.807814, -0.123205,
		0.779578, -0.588820, 0.213423,
		42.966980, 34.030880, 19.373892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.187588, 33.746407, 19.634865>,  <42.421272, 34.443054, 19.224495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.187588, 33.746407, 19.634865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.578545, 33.799068, 19.701048>,  <42.813118, 33.830666, 19.740757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.578545, 33.799068, 19.701048>,  <42.187588, 33.746407, 19.634865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.578545, 33.799068, 19.701048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171064, 0.032415, 0.984727,
		0.124286, -0.990765, 0.054204,
		0.977390, 0.131660, 0.165455,
		42.871761, 33.838566, 19.750685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.374249, 33.291641, 20.195751>,  <42.187588, 33.746407, 19.634865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.374249, 33.291641, 20.195751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.656998, 33.574574, 20.197378>,  <42.826645, 33.744331, 20.198355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.656998, 33.574574, 20.197378>,  <42.374249, 33.291641, 20.195751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.656998, 33.574574, 20.197378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148710, 0.142985, 0.978489,
		0.691534, -0.692270, 0.206259,
		0.706871, 0.707331, 0.004069,
		42.869061, 33.786774, 20.198599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.777817, 33.121670, 20.781084>,  <42.374249, 33.291641, 20.195751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.777817, 33.121670, 20.781084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.851730, 33.507042, 20.703465>,  <42.896080, 33.738266, 20.656893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.851730, 33.507042, 20.703465>,  <42.777817, 33.121670, 20.781084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.851730, 33.507042, 20.703465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275308, 0.240291, 0.930841,
		0.943430, -0.118584, 0.309643,
		0.184787, 0.963431, -0.194050,
		42.907166, 33.796070, 20.645250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.218311, 33.318813, 21.308020>,  <42.777817, 33.121670, 20.781084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.218311, 33.318813, 21.308020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.038338, 33.646648, 21.166122>,  <42.930355, 33.843349, 21.080984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.038338, 33.646648, 21.166122>,  <43.218311, 33.318813, 21.308020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.038338, 33.646648, 21.166122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181665, 0.304921, 0.934891,
		0.874391, 0.485081, 0.011697,
		-0.449932, 0.819585, -0.354742,
		42.903358, 33.892525, 21.059700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.524815, 33.961353, 21.694551>,  <43.218311, 33.318813, 21.308020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.524815, 33.961353, 21.694551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.161224, 34.046082, 21.550938>,  <42.943069, 34.096920, 21.464769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.161224, 34.046082, 21.550938>,  <43.524815, 33.961353, 21.694551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.161224, 34.046082, 21.550938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262205, 0.379042, 0.887455,
		0.324069, 0.900811, -0.288998,
		-0.908971, 0.211820, -0.359032,
		42.888535, 34.109627, 21.443228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.393948, 34.538956, 22.056482>,  <43.524815, 33.961353, 21.694551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.393948, 34.538956, 22.056482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.034393, 34.435280, 21.915163>,  <42.818661, 34.373074, 21.830372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.034393, 34.435280, 21.915163>,  <43.393948, 34.538956, 22.056482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.034393, 34.435280, 21.915163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416354, 0.253963, 0.873013,
		-0.136549, 0.931840, -0.336198,
		-0.898890, -0.259187, -0.353296,
		42.764725, 34.357525, 21.809174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.998764, 35.032547, 22.307182>,  <43.393948, 34.538956, 22.056482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.998764, 35.032547, 22.307182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.719444, 34.755169, 22.236176>,  <42.551853, 34.588741, 22.193571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.719444, 34.755169, 22.236176>,  <42.998764, 35.032547, 22.307182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.719444, 34.755169, 22.236176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487546, 0.279182, 0.827259,
		-0.524101, 0.664219, -0.533039,
		-0.698296, -0.693448, -0.177518,
		42.509956, 34.547134, 22.182920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387772, 35.388924, 22.423872>,  <42.998764, 35.032547, 22.307182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.387772, 35.388924, 22.423872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.268681, 35.007084, 22.419737>,  <42.197227, 34.777981, 22.417255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.268681, 35.007084, 22.419737>,  <42.387772, 35.388924, 22.423872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.268681, 35.007084, 22.419737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638803, 0.191167, 0.745242,
		-0.709428, 0.228482, -0.666714,
		-0.297728, -0.954595, -0.010336,
		42.179363, 34.720707, 22.416636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529530, 35.417706, 22.480652>,  <42.387772, 35.388924, 22.423872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.529530, 35.417706, 22.480652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658001, 35.058857, 22.601990>,  <41.735085, 34.843548, 22.674793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658001, 35.058857, 22.601990>,  <41.529530, 35.417706, 22.480652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.658001, 35.058857, 22.601990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556914, 0.080152, 0.826694,
		-0.765959, -0.434450, -0.473877,
		0.321175, -0.897123, 0.303344,
		41.754353, 34.789719, 22.692993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994904, 35.193489, 22.747032>,  <41.529530, 35.417706, 22.480652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994904, 35.193489, 22.747032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253277, 34.933960, 22.907928>,  <41.408298, 34.778240, 23.004465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253277, 34.933960, 22.907928>,  <40.994904, 35.193489, 22.747032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253277, 34.933960, 22.907928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621141, -0.140373, 0.771025,
		-0.443797, -0.747877, -0.493685,
		0.645931, -0.648827, 0.402240,
		41.447056, 34.739311, 23.028601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522991, 34.707916, 22.972424>,  <40.994904, 35.193489, 22.747032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522991, 34.707916, 22.972424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.865803, 34.682129, 23.176910>,  <41.071491, 34.666656, 23.299603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.865803, 34.682129, 23.176910>,  <40.522991, 34.707916, 22.972424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865803, 34.682129, 23.176910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515254, -0.099979, 0.851186,
		-0.003761, -0.992899, -0.118902,
		0.857029, -0.064466, 0.511219,
		41.122913, 34.662788, 23.330276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451061, 34.125248, 23.449402>,  <40.522991, 34.707916, 22.972424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.451061, 34.125248, 23.449402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.752865, 34.337990, 23.603207>,  <40.933949, 34.465633, 23.695490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.752865, 34.337990, 23.603207>,  <40.451061, 34.125248, 23.449402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.752865, 34.337990, 23.603207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480662, 0.048904, 0.875541,
		0.446858, -0.845422, 0.292541,
		0.754508, 0.531856, 0.384510,
		40.979218, 34.497547, 23.718559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477829, 33.959309, 24.130220>,  <40.451061, 34.125248, 23.449402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477829, 33.959309, 24.130220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700817, 34.291378, 24.132746>,  <40.834610, 34.490620, 24.134260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700817, 34.291378, 24.132746>,  <40.477829, 33.959309, 24.130220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700817, 34.291378, 24.132746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393076, 0.257241, 0.882790,
		0.731244, -0.494611, 0.469726,
		0.557470, 0.830173, 0.006314,
		40.868057, 34.540428, 24.134640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743301, 34.029232, 24.828981>,  <40.477829, 33.959309, 24.130220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743301, 34.029232, 24.828981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.746487, 34.396313, 24.670109>,  <40.748398, 34.616562, 24.574785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.746487, 34.396313, 24.670109>,  <40.743301, 34.029232, 24.828981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.746487, 34.396313, 24.670109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353253, 0.374167, 0.857444,
		0.935494, 0.133481, 0.327161,
		0.007960, 0.917704, -0.397183,
		40.748875, 34.671623, 24.550953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146736, 34.524498, 25.320459>,  <40.743301, 34.029232, 24.828981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146736, 34.524498, 25.320459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918083, 34.744057, 25.076508>,  <40.780891, 34.875790, 24.930136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918083, 34.744057, 25.076508>,  <41.146736, 34.524498, 25.320459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918083, 34.744057, 25.076508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420991, 0.441795, 0.792202,
		0.704276, 0.709602, -0.021464,
		-0.571631, 0.548892, -0.609882,
		40.746593, 34.908726, 24.893543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212402, 35.164700, 25.544779>,  <41.146736, 34.524498, 25.320459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212402, 35.164700, 25.544779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875175, 35.203045, 25.333099>,  <40.672840, 35.226051, 25.206091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875175, 35.203045, 25.333099>,  <41.212402, 35.164700, 25.544779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875175, 35.203045, 25.333099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425136, 0.483874, 0.764935,
		0.329395, 0.869871, -0.367182,
		-0.843065, 0.095863, -0.529199,
		40.622257, 35.231804, 25.174339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966908, 35.858475, 25.804180>,  <41.212402, 35.164700, 25.544779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.966908, 35.858475, 25.804180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659348, 35.694618, 25.607821>,  <40.474812, 35.596302, 25.490005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659348, 35.694618, 25.607821>,  <40.966908, 35.858475, 25.804180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659348, 35.694618, 25.607821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639357, 0.488492, 0.593800,
		-0.003446, 0.770434, -0.637511,
		-0.768903, -0.409643, -0.490898,
		40.428677, 35.571724, 25.460550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502422, 36.413887, 25.694963>,  <40.966908, 35.858475, 25.804180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.502422, 36.413887, 25.694963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269802, 36.089367, 25.670988>,  <40.130230, 35.894657, 25.656603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269802, 36.089367, 25.670988>,  <40.502422, 36.413887, 25.694963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269802, 36.089367, 25.670988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605345, 0.382346, 0.698118,
		-0.543464, 0.442277, -0.713469,
		-0.581553, -0.811297, -0.059938,
		40.095337, 35.845978, 25.653008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788715, 36.685760, 25.655544>,  <40.502422, 36.413887, 25.694963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788715, 36.685760, 25.655544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.774853, 36.309753, 25.791285>,  <39.766537, 36.084148, 25.872728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.774853, 36.309753, 25.791285>,  <39.788715, 36.685760, 25.655544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774853, 36.309753, 25.791285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655239, 0.277761, 0.702503,
		-0.754627, -0.198010, -0.625564,
		-0.034655, -0.940022, 0.339350,
		39.764458, 36.027748, 25.893089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018253, 36.610645, 25.760214>,  <39.788715, 36.685760, 25.655544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018253, 36.610645, 25.760214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.194881, 36.332253, 25.986706>,  <39.300858, 36.165215, 26.122601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.194881, 36.332253, 25.986706>,  <39.018253, 36.610645, 25.760214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194881, 36.332253, 25.986706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666469, 0.168079, 0.726339,
		-0.600693, -0.698108, -0.389633,
		0.441574, -0.695985, 0.566231,
		39.327354, 36.123459, 26.156574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362411, 36.308659, 26.155653>,  <39.018253, 36.610645, 25.760214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362411, 36.308659, 26.155653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701202, 36.217178, 26.347624>,  <38.904476, 36.162289, 26.462807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701202, 36.217178, 26.347624>,  <38.362411, 36.308659, 26.155653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701202, 36.217178, 26.347624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466911, 0.111678, 0.877224,
		-0.254223, -0.967069, -0.012197,
		0.846974, -0.228705, 0.479926,
		38.955296, 36.148567, 26.491602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165840, 35.885677, 26.813801>,  <38.362411, 36.308659, 26.155653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165840, 35.885677, 26.813801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529266, 36.032597, 26.893400>,  <38.747322, 36.120747, 26.941160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529266, 36.032597, 26.893400>,  <38.165840, 35.885677, 26.813801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529266, 36.032597, 26.893400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299698, 0.241267, 0.923023,
		0.291018, -0.898264, 0.329287,
		0.908565, 0.367303, 0.198995,
		38.801838, 36.142784, 26.953100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313698, 35.682613, 27.507318>,  <38.165840, 35.885677, 26.813801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313698, 35.682613, 27.507318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549202, 35.999306, 27.442179>,  <38.690506, 36.189320, 27.403095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549202, 35.999306, 27.442179>,  <38.313698, 35.682613, 27.507318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549202, 35.999306, 27.442179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306079, 0.404843, 0.861637,
		0.748114, -0.457454, 0.480689,
		0.588763, 0.791731, -0.162851,
		38.725830, 36.236824, 27.393324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685242, 35.836300, 28.110027>,  <38.313698, 35.682613, 27.507318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685242, 35.836300, 28.110027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731365, 36.179642, 27.910053>,  <38.759037, 36.385647, 27.790070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731365, 36.179642, 27.910053>,  <38.685242, 35.836300, 28.110027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731365, 36.179642, 27.910053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249723, 0.512176, 0.821775,
		0.961428, 0.030090, 0.273407,
		0.115305, 0.858354, -0.499934,
		38.765957, 36.437149, 27.760073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870049, 36.319794, 28.742329>,  <38.685242, 35.836300, 28.110027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870049, 36.319794, 28.742329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.788410, 36.543362, 28.420843>,  <38.739426, 36.677502, 28.227953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.788410, 36.543362, 28.420843>,  <38.870049, 36.319794, 28.742329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788410, 36.543362, 28.420843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413556, 0.694910, 0.588278,
		0.887307, 0.452448, 0.089313,
		-0.204101, 0.558919, -0.803712,
		38.727180, 36.711037, 28.179729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133141, 36.954178, 28.911936>,  <38.870049, 36.319794, 28.742329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133141, 36.954178, 28.911936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.852444, 37.014969, 28.633524>,  <38.684025, 37.051445, 28.466476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.852444, 37.014969, 28.633524>,  <39.133141, 36.954178, 28.911936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852444, 37.014969, 28.633524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500005, 0.590880, 0.633131,
		0.507494, 0.792315, -0.338656,
		-0.701744, 0.151980, -0.696030,
		38.641922, 37.060562, 28.424715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942135, 37.717987, 28.926517>,  <39.133141, 36.954178, 28.911936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942135, 37.717987, 28.926517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638760, 37.519238, 28.757807>,  <38.456734, 37.399990, 28.656580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638760, 37.519238, 28.757807>,  <38.942135, 37.717987, 28.926517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638760, 37.519238, 28.757807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636956, 0.427985, 0.641183,
		-0.138071, 0.754949, -0.641084,
		-0.758435, -0.496871, -0.421777,
		38.411228, 37.370174, 28.631273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541740, 38.242355, 28.837135>,  <38.942135, 37.717987, 28.926517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541740, 38.242355, 28.837135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316666, 37.911720, 28.841946>,  <38.181622, 37.713341, 28.844831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316666, 37.911720, 28.841946>,  <38.541740, 38.242355, 28.837135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316666, 37.911720, 28.841946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632444, 0.439801, 0.637644,
		-0.532355, 0.351187, -0.770238,
		-0.562684, -0.826585, 0.012024,
		38.147861, 37.663746, 28.845552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971809, 38.617119, 28.843222>,  <38.541740, 38.242355, 28.837135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971809, 38.617119, 28.843222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923965, 38.230896, 28.935652>,  <37.895260, 37.999165, 28.991110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923965, 38.230896, 28.935652>,  <37.971809, 38.617119, 28.843222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923965, 38.230896, 28.935652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417618, 0.260086, 0.870604,
		-0.900716, 0.007631, -0.434342,
		-0.119610, -0.965555, 0.231077,
		37.888084, 37.941231, 29.004974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274876, 38.539951, 29.046719>,  <37.971809, 38.617119, 28.843222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274876, 38.539951, 29.046719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450027, 38.218449, 29.207836>,  <37.555119, 38.025547, 29.304506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450027, 38.218449, 29.207836>,  <37.274876, 38.539951, 29.046719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450027, 38.218449, 29.207836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415354, 0.216487, 0.883524,
		-0.797336, -0.554176, -0.239049,
		0.437877, -0.803755, 0.402792,
		37.581390, 37.977322, 29.328674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767033, 38.140289, 29.338976>,  <37.274876, 38.539951, 29.046719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767033, 38.140289, 29.338976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104996, 38.029675, 29.522125>,  <37.307774, 37.963303, 29.632015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104996, 38.029675, 29.522125>,  <36.767033, 38.140289, 29.338976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104996, 38.029675, 29.522125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477405, -0.003775, 0.878675,
		-0.241262, -0.960994, -0.135212,
		0.844912, -0.276542, 0.457873,
		37.358471, 37.946712, 29.659487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488861, 37.626202, 29.773115>,  <36.767033, 38.140289, 29.338976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488861, 37.626202, 29.773115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850418, 37.738209, 29.902460>,  <37.067352, 37.805412, 29.980066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850418, 37.738209, 29.902460>,  <36.488861, 37.626202, 29.773115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850418, 37.738209, 29.902460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355636, 0.071888, 0.931856,
		0.237692, -0.957299, 0.164564,
		0.903895, 0.280020, 0.323363,
		37.121586, 37.822216, 29.999470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527046, 37.304199, 30.412670>,  <36.488861, 37.626202, 29.773115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527046, 37.304199, 30.412670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761395, 37.627674, 30.391586>,  <36.902004, 37.821758, 30.378937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761395, 37.627674, 30.391586>,  <36.527046, 37.304199, 30.412670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761395, 37.627674, 30.391586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334496, 0.300550, 0.893186,
		0.738149, -0.505664, 0.446587,
		0.585874, 0.808686, -0.052708,
		36.937157, 37.870281, 30.375774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787663, 37.237247, 31.053488>,  <36.527046, 37.304199, 30.412670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787663, 37.237247, 31.053488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818832, 37.606918, 30.903913>,  <36.837536, 37.828720, 30.814169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818832, 37.606918, 30.903913>,  <36.787663, 37.237247, 31.053488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818832, 37.606918, 30.903913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404006, 0.372170, 0.835625,
		0.911431, 0.085956, 0.402374,
		0.077925, 0.924176, -0.373934,
		36.842209, 37.884171, 30.791733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931313, 36.619713, 31.372370>,  <36.787663, 37.237247, 31.053488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931313, 36.619713, 31.372370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194885, 36.790150, 31.620323>,  <37.353027, 36.892414, 31.769094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194885, 36.790150, 31.620323>,  <36.931313, 36.619713, 31.372370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194885, 36.790150, 31.620323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749109, -0.446400, -0.489452,
		0.068162, 0.786874, -0.613338,
		0.658931, 0.426095, 0.619881,
		37.392563, 36.917980, 31.806288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556850, 36.894489, 31.112038>,  <36.931313, 36.619713, 31.372370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556850, 36.894489, 31.112038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678146, 36.836147, 31.488712>,  <37.750923, 36.801144, 31.714718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678146, 36.836147, 31.488712>,  <37.556850, 36.894489, 31.112038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678146, 36.836147, 31.488712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922477, -0.202836, -0.328470,
		0.238917, 0.968289, 0.073041,
		0.303239, -0.145856, 0.941686,
		37.769119, 36.792389, 31.771217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138405, 37.381550, 31.320658>,  <37.556850, 36.894489, 31.112038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138405, 37.381550, 31.320658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160328, 37.049927, 31.543247>,  <38.173481, 36.850952, 31.676802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160328, 37.049927, 31.543247>,  <38.138405, 37.381550, 31.320658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160328, 37.049927, 31.543247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886568, -0.215974, -0.409086,
		0.459339, 0.515775, 0.723176,
		0.054809, -0.829055, 0.556475,
		38.176769, 36.801208, 31.710190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801701, 37.396210, 31.643236>,  <38.138405, 37.381550, 31.320658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801701, 37.396210, 31.643236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.683830, 37.014339, 31.626427>,  <38.613106, 36.785217, 31.616341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.683830, 37.014339, 31.626427>,  <38.801701, 37.396210, 31.643236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683830, 37.014339, 31.626427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862007, -0.246581, -0.442879,
		0.412443, -0.166730, 0.895596,
		-0.294678, -0.954672, -0.042022,
		38.595428, 36.727940, 31.613819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304298, 37.035984, 31.775883>,  <38.801701, 37.396210, 31.643236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304298, 37.035984, 31.775883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064003, 36.770302, 31.597918>,  <38.919827, 36.610893, 31.491138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064003, 36.770302, 31.597918>,  <39.304298, 37.035984, 31.775883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064003, 36.770302, 31.597918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783475, -0.378444, -0.492896,
		0.159012, -0.644677, 0.747735,
		-0.600734, -0.664208, -0.444911,
		38.883781, 36.571041, 31.464443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646492, 36.385948, 31.916914>,  <39.304298, 37.035984, 31.775883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646492, 36.385948, 31.916914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417236, 36.346237, 31.591545>,  <39.279682, 36.322411, 31.396324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417236, 36.346237, 31.591545>,  <39.646492, 36.385948, 31.916914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417236, 36.346237, 31.591545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780316, -0.369232, -0.504752,
		-0.250231, -0.924019, 0.289089,
		-0.573142, -0.099276, -0.813420,
		39.245293, 36.316456, 31.347519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960968, 35.807991, 31.542904>,  <39.646492, 36.385948, 31.916914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960968, 35.807991, 31.542904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721790, 35.943375, 31.252277>,  <39.578281, 36.024605, 31.077902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721790, 35.943375, 31.252277>,  <39.960968, 35.807991, 31.542904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721790, 35.943375, 31.252277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621793, -0.376140, -0.686943,
		-0.505796, -0.862532, 0.014458,
		-0.597949, 0.338464, -0.726567,
		39.542404, 36.044914, 31.034307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768787, 35.171837, 31.076056>,  <39.960968, 35.807991, 31.542904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768787, 35.171837, 31.076056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715229, 35.521187, 30.888741>,  <39.683094, 35.730797, 30.776352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715229, 35.521187, 30.888741>,  <39.768787, 35.171837, 31.076056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715229, 35.521187, 30.888741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598204, -0.305508, -0.740822,
		-0.790078, -0.379325, -0.481549,
		-0.133895, 0.873371, -0.468289,
		39.675060, 35.783199, 30.748255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510311, 34.990715, 30.352064>,  <39.768787, 35.171837, 31.076056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510311, 34.990715, 30.352064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.656265, 35.362244, 30.326313>,  <39.743839, 35.585163, 30.310862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.656265, 35.362244, 30.326313>,  <39.510311, 34.990715, 30.352064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656265, 35.362244, 30.326313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540294, -0.267550, -0.797810,
		-0.758249, 0.256327, -0.599463,
		0.364886, 0.928824, -0.064377,
		39.765732, 35.640892, 30.306999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518387, 35.114513, 29.700422>,  <39.510311, 34.990715, 30.352064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518387, 35.114513, 29.700422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.769104, 35.397057, 29.831991>,  <39.919537, 35.566582, 29.910933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.769104, 35.397057, 29.831991>,  <39.518387, 35.114513, 29.700422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769104, 35.397057, 29.831991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672093, -0.276534, -0.686892,
		-0.394230, 0.651609, -0.648066,
		0.626797, 0.706354, 0.328924,
		39.957142, 35.608963, 29.930668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740314, 35.500057, 29.064272>,  <39.518387, 35.114513, 29.700422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740314, 35.500057, 29.064272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.009476, 35.595005, 29.344517>,  <40.170975, 35.651974, 29.512663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.009476, 35.595005, 29.344517>,  <39.740314, 35.500057, 29.064272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009476, 35.595005, 29.344517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737026, -0.134255, -0.662396,
		-0.063170, 0.962098, -0.265287,
		0.672906, 0.237367, 0.700610,
		40.211346, 35.666214, 29.554699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163868, 35.962662, 28.848099>,  <39.740314, 35.500057, 29.064272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163868, 35.962662, 28.848099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408707, 35.802898, 29.121101>,  <40.555611, 35.707043, 29.284903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408707, 35.802898, 29.121101>,  <40.163868, 35.962662, 28.848099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408707, 35.802898, 29.121101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719710, -0.076242, -0.690076,
		0.327655, 0.913599, 0.240789,
		0.612094, -0.399405, 0.682507,
		40.592335, 35.683075, 29.325853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726994, 36.225483, 28.624830>,  <40.163868, 35.962662, 28.848099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.726994, 36.225483, 28.624830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883080, 35.951958, 28.871450>,  <40.976730, 35.787842, 29.019423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883080, 35.951958, 28.871450>,  <40.726994, 36.225483, 28.624830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883080, 35.951958, 28.871450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767545, -0.128256, -0.628032,
		0.508531, 0.718299, 0.474808,
		0.390218, -0.683810, 0.616549,
		41.000145, 35.746815, 29.056416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.353695, 36.414349, 28.703159>,  <40.726994, 36.225483, 28.624830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.353695, 36.414349, 28.703159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394608, 36.030037, 28.806259>,  <41.419155, 35.799450, 28.868118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394608, 36.030037, 28.806259>,  <41.353695, 36.414349, 28.703159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394608, 36.030037, 28.806259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679992, -0.121590, -0.723068,
		0.726051, 0.249220, 0.640889,
		0.102278, -0.960783, 0.257748,
		41.425289, 35.741802, 28.883583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.140484, 36.241112, 28.516756>,  <41.353695, 36.414349, 28.703159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.140484, 36.241112, 28.516756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.974911, 35.878876, 28.553787>,  <41.875568, 35.661533, 28.576006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.974911, 35.878876, 28.553787>,  <42.140484, 36.241112, 28.516756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.974911, 35.878876, 28.553787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679726, -0.375126, -0.630280,
		0.605503, -0.197964, 0.770829,
		-0.413931, -0.905588, 0.092578,
		41.850731, 35.607201, 28.581560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.791393, 35.731815, 28.645237>,  <42.140484, 36.241112, 28.516756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.791393, 35.731815, 28.645237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.485043, 35.500317, 28.533175>,  <42.301231, 35.361416, 28.465937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.485043, 35.500317, 28.533175>,  <42.791393, 35.731815, 28.645237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.485043, 35.500317, 28.533175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593066, -0.467501, -0.655527,
		0.248413, -0.668202, 0.701283,
		-0.765875, -0.578748, -0.280154,
		42.255280, 35.326691, 28.449129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.061802, 35.037777, 28.587803>,  <42.791393, 35.731815, 28.645237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.061802, 35.037777, 28.587803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.744080, 35.080235, 28.348534>,  <42.553448, 35.105709, 28.204971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.744080, 35.080235, 28.348534>,  <43.061802, 35.037777, 28.587803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.744080, 35.080235, 28.348534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509450, -0.420029, -0.751023,
		-0.330967, -0.901282, 0.279557,
		-0.794306, 0.106143, -0.598174,
		42.505787, 35.112080, 28.169081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.108719, 34.443386, 28.084024>,  <43.061802, 35.037777, 28.587803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.108719, 34.443386, 28.084024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.851223, 34.698204, 27.914421>,  <42.696728, 34.851093, 27.812660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.851223, 34.698204, 27.914421>,  <43.108719, 34.443386, 28.084024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.851223, 34.698204, 27.914421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233565, -0.364078, -0.901607,
		-0.728734, -0.679429, 0.085579,
		-0.643735, 0.637043, -0.424006,
		42.658104, 34.889317, 27.787220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.836269, 34.001766, 27.474878>,  <43.108719, 34.443386, 28.084024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.836269, 34.001766, 27.474878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.752254, 34.384739, 27.395683>,  <42.701843, 34.614525, 27.348166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.752254, 34.384739, 27.395683>,  <42.836269, 34.001766, 27.474878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.752254, 34.384739, 27.395683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328908, -0.121507, -0.936512,
		-0.920708, -0.261825, -0.289388,
		-0.210040, 0.957436, -0.197988,
		42.689243, 34.671970, 27.336287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.355087, 33.963634, 26.865944>,  <42.836269, 34.001766, 27.474878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.355087, 33.963634, 26.865944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490784, 34.339775, 26.855736>,  <42.572201, 34.565460, 26.849611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490784, 34.339775, 26.855736>,  <42.355087, 33.963634, 26.865944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.490784, 34.339775, 26.855736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147939, -0.080122, -0.985746,
		-0.928994, 0.330629, -0.166296,
		0.339240, 0.940354, -0.025520,
		42.592556, 34.621880, 26.848080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.912415, 34.298664, 26.361748>,  <42.355087, 33.963634, 26.865944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.912415, 34.298664, 26.361748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259373, 34.491760, 26.410049>,  <42.467548, 34.607620, 26.439032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259373, 34.491760, 26.410049>,  <41.912415, 34.298664, 26.361748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259373, 34.491760, 26.410049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245216, -0.203500, -0.947870,
		-0.433004, 0.851790, -0.294891,
		0.867397, 0.482743, 0.120756,
		42.519592, 34.636581, 26.446276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939724, 34.736683, 25.838942>,  <41.912415, 34.298664, 26.361748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939724, 34.736683, 25.838942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.321545, 34.680790, 25.944241>,  <42.550636, 34.647255, 26.007420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.321545, 34.680790, 25.944241>,  <41.939724, 34.736683, 25.838942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.321545, 34.680790, 25.944241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225893, -0.236983, -0.944887,
		0.194417, 0.961412, -0.194649,
		0.954555, -0.139732, 0.263250,
		42.607910, 34.638870, 26.023216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.283806, 34.894257, 25.298103>,  <41.939724, 34.736683, 25.838942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.283806, 34.894257, 25.298103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.560780, 34.699165, 25.510765>,  <42.726963, 34.582111, 25.638363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.560780, 34.699165, 25.510765>,  <42.283806, 34.894257, 25.298103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.560780, 34.699165, 25.510765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297721, -0.478070, -0.826324,
		0.657188, 0.730460, -0.185826,
		0.692435, -0.487726, 0.531655,
		42.768509, 34.552849, 25.670261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.928913, 35.059296, 25.040770>,  <42.283806, 34.894257, 25.298103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.928913, 35.059296, 25.040770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974030, 34.706123, 25.223070>,  <43.001099, 34.494221, 25.332451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974030, 34.706123, 25.223070>,  <42.928913, 35.059296, 25.040770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.974030, 34.706123, 25.223070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299619, -0.407108, -0.862839,
		0.947369, 0.233869, 0.218627,
		0.112786, -0.882932, 0.455753,
		43.007866, 34.441242, 25.359797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.637558, 34.817677, 24.843445>,  <42.928913, 35.059296, 25.040770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.637558, 34.817677, 24.843445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.405071, 34.503620, 24.928991>,  <43.265579, 34.315186, 24.980320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.405071, 34.503620, 24.928991>,  <43.637558, 34.817677, 24.843445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.405071, 34.503620, 24.928991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436741, -0.522733, -0.732126,
		0.686617, -0.332120, 0.646725,
		-0.581218, -0.785141, 0.213867,
		43.230705, 34.268078, 24.993151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.039898, 34.218788, 24.455301>,  <43.637558, 34.817677, 24.843445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.039898, 34.218788, 24.455301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.693115, 34.051693, 24.564022>,  <43.485046, 33.951435, 24.629255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.693115, 34.051693, 24.564022>,  <44.039898, 34.218788, 24.455301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.693115, 34.051693, 24.564022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174868, -0.765670, -0.619008,
		0.466694, -0.489125, 0.736854,
		-0.866958, -0.417740, 0.271802,
		43.433029, 33.926373, 24.645563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.174797, 33.579227, 24.356234>,  <44.039898, 34.218788, 24.455301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.174797, 33.579227, 24.356234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.775894, 33.588383, 24.384388>,  <43.536552, 33.593876, 24.401279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.775894, 33.588383, 24.384388>,  <44.174797, 33.579227, 24.356234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.775894, 33.588383, 24.384388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059295, -0.816191, -0.574732,
		0.044294, -0.577329, 0.815310,
		-0.997258, 0.022887, 0.070385,
		43.476715, 33.595249, 24.405504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.790104, 32.946095, 24.701538>,  <44.174797, 33.579227, 24.356234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.790104, 32.946095, 24.701538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.576771, 33.113976, 24.407761>,  <43.448769, 33.214703, 24.231495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.576771, 33.113976, 24.407761>,  <43.790104, 32.946095, 24.701538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.576771, 33.113976, 24.407761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080294, -0.839196, -0.537869,
		-0.842099, -0.345824, 0.413854,
		-0.533312, 0.419709, -0.734454,
		43.416771, 33.239883, 24.187428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.610321, 32.374321, 24.472315>,  <43.790104, 32.946095, 24.701538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.610321, 32.374321, 24.472315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.529621, 32.634907, 24.179770>,  <43.481201, 32.791256, 24.004242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.529621, 32.634907, 24.179770>,  <43.610321, 32.374321, 24.472315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.529621, 32.634907, 24.179770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132245, -0.721763, -0.679389,
		-0.970467, -0.233789, 0.059467,
		-0.201754, 0.651461, -0.731365,
		43.469093, 32.830345, 23.960360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.172283, 31.981230, 23.964262>,  <43.610321, 32.374321, 24.472315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.172283, 31.981230, 23.964262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.323933, 32.297913, 23.772652>,  <43.414921, 32.487923, 23.657686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.323933, 32.297913, 23.772652>,  <43.172283, 31.981230, 23.964262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.323933, 32.297913, 23.772652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353441, -0.602316, -0.715747,
		-0.855188, 0.102047, -0.508173,
		0.379121, 0.791708, -0.479026,
		43.437668, 32.535423, 23.628944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.947784, 31.866381, 23.206633>,  <43.172283, 31.981230, 23.964262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.947784, 31.866381, 23.206633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.278900, 32.089695, 23.228817>,  <43.477570, 32.223682, 23.242126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.278900, 32.089695, 23.228817>,  <42.947784, 31.866381, 23.206633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.278900, 32.089695, 23.228817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388323, -0.498810, -0.774851,
		-0.404924, 0.662953, -0.629706,
		0.827793, 0.558285, 0.055460,
		43.527237, 32.257179, 23.245455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.949860, 32.148315, 22.533794>,  <42.947784, 31.866381, 23.206633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.949860, 32.148315, 22.533794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.322517, 32.184368, 22.674606>,  <43.546112, 32.205997, 22.759092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.322517, 32.184368, 22.674606>,  <42.949860, 32.148315, 22.533794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.322517, 32.184368, 22.674606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356271, -0.417282, -0.836031,
		0.071544, 0.904297, -0.420867,
		0.931640, 0.090130, 0.352029,
		43.602009, 32.211407, 22.780214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.268024, 32.424908, 21.904924>,  <42.949860, 32.148315, 22.533794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.268024, 32.424908, 21.904924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.564693, 32.286873, 22.134998>,  <43.742695, 32.204052, 22.273043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.564693, 32.286873, 22.134998>,  <43.268024, 32.424908, 21.904924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.564693, 32.286873, 22.134998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414802, -0.437918, -0.797601,
		0.527126, 0.830145, -0.181648,
		0.741672, -0.345088, 0.575185,
		43.787193, 32.183346, 22.307554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.774147, 32.665298, 21.506266>,  <43.268024, 32.424908, 21.904924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.774147, 32.665298, 21.506266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.886311, 32.361244, 21.740726>,  <43.953609, 32.178814, 21.881403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.886311, 32.361244, 21.740726>,  <43.774147, 32.665298, 21.506266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.886311, 32.361244, 21.740726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549153, -0.373805, -0.747463,
		0.787276, 0.531479, 0.312612,
		0.280405, -0.760131, 0.586151,
		43.970432, 32.133205, 21.916573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.467304, 32.582253, 21.269804>,  <43.774147, 32.665298, 21.506266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.467304, 32.582253, 21.269804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.379757, 32.250671, 21.475691>,  <44.327229, 32.051723, 21.599224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.379757, 32.250671, 21.475691>,  <44.467304, 32.582253, 21.269804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.379757, 32.250671, 21.475691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373154, -0.558517, -0.740820,
		0.901584, 0.029928, 0.431567,
		-0.218866, -0.828953, 0.514718,
		44.314098, 32.001984, 21.630106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.134373, 32.160439, 21.371719>,  <44.467304, 32.582253, 21.269804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.134373, 32.160439, 21.371719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.823189, 31.909525, 21.386091>,  <44.636478, 31.758978, 21.394714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.823189, 31.909525, 21.386091>,  <45.134373, 32.160439, 21.371719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.823189, 31.909525, 21.386091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392307, -0.529621, -0.752062,
		0.490784, -0.570980, 0.658112,
		-0.777962, -0.627282, 0.035930,
		44.589802, 31.721340, 21.396870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.420006, 31.490700, 21.294964>,  <45.134373, 32.160439, 21.371719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.420006, 31.490700, 21.294964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.029644, 31.434141, 21.228500>,  <44.795425, 31.400206, 21.188622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.029644, 31.434141, 21.228500>,  <45.420006, 31.490700, 21.294964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.029644, 31.434141, 21.228500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216758, -0.715101, -0.664564,
		-0.024856, -0.684571, 0.728522,
		-0.975909, -0.141395, -0.166161,
		44.736870, 31.391724, 21.178652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.293186, 30.740654, 21.398514>,  <45.420006, 31.490700, 21.294964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.293186, 30.740654, 21.398514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.001896, 30.889585, 21.168362>,  <44.827122, 30.978945, 21.030272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.001896, 30.889585, 21.168362>,  <45.293186, 30.740654, 21.398514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.001896, 30.889585, 21.168362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130082, -0.749199, -0.649446,
		-0.672879, -0.547789, 0.497152,
		-0.728225, 0.372328, -0.575378,
		44.783428, 31.001284, 20.995749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.037960, 30.117674, 21.167957>,  <45.293186, 30.740654, 21.398514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.037960, 30.117674, 21.167957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.906151, 30.423456, 20.946320>,  <44.827065, 30.606926, 20.813337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.906151, 30.423456, 20.946320>,  <45.037960, 30.117674, 21.167957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.906151, 30.423456, 20.946320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003588, -0.585855, -0.810408,
		-0.944140, -0.269039, 0.190311,
		-0.329526, 0.764455, -0.554095,
		44.807293, 30.652792, 20.780090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.572041, 29.531225, 21.361254>,  <45.037960, 30.117674, 21.167957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.572041, 29.531225, 21.361254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625526, 29.182217, 21.549223>,  <44.657619, 28.972813, 21.662004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625526, 29.182217, 21.549223>,  <44.572041, 29.531225, 21.361254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.625526, 29.182217, 21.549223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386340, 0.390773, 0.835487,
		-0.912613, -0.293267, -0.284838,
		0.133713, -0.872520, 0.469925,
		44.665642, 28.920460, 21.690201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.941006, 29.439915, 21.825644>,  <44.572041, 29.531225, 21.361254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.941006, 29.439915, 21.825644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.231480, 29.205601, 21.969595>,  <44.405766, 29.065012, 22.055965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.231480, 29.205601, 21.969595>,  <43.941006, 29.439915, 21.825644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.231480, 29.205601, 21.969595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240939, 0.273414, 0.931232,
		-0.643898, -0.762954, 0.057410,
		0.726184, -0.585786, 0.359876,
		44.449333, 29.029865, 22.077559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.670284, 28.917318, 22.410990>,  <43.941006, 29.439915, 21.825644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.670284, 28.917318, 22.410990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.063999, 28.929943, 22.480482>,  <44.300228, 28.937517, 22.522179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.063999, 28.929943, 22.480482>,  <43.670284, 28.917318, 22.410990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.063999, 28.929943, 22.480482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173535, -0.008898, 0.984788,
		0.032629, -0.999462, -0.003281,
		0.984287, 0.031563, 0.173732,
		44.359283, 28.939411, 22.532602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.798622, 28.524363, 23.070425>,  <43.670284, 28.917318, 22.410990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.798622, 28.524363, 23.070425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.118027, 28.761976, 23.031437>,  <44.309669, 28.904545, 23.008043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.118027, 28.761976, 23.031437>,  <43.798622, 28.524363, 23.070425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.118027, 28.761976, 23.031437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157445, 0.362373, 0.918638,
		0.581023, -0.718199, 0.382888,
		0.798513, 0.594034, -0.097471,
		44.357582, 28.940186, 23.002195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.207466, 28.426134, 23.658558>,  <43.798622, 28.524363, 23.070425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.207466, 28.426134, 23.658558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.364353, 28.765934, 23.517408>,  <44.458485, 28.969814, 23.432718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.364353, 28.765934, 23.517408>,  <44.207466, 28.426134, 23.658558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.364353, 28.765934, 23.517408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132665, 0.327361, 0.935540,
		0.910256, -0.413748, 0.015698,
		0.392216, 0.849499, -0.352872,
		44.482018, 29.020784, 23.411547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.764729, 28.424795, 24.053082>,  <44.207466, 28.426134, 23.658558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.764729, 28.424795, 24.053082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.670132, 28.787464, 23.913361>,  <44.613373, 29.005066, 23.829529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.670132, 28.787464, 23.913361>,  <44.764729, 28.424795, 24.053082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.670132, 28.787464, 23.913361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012630, 0.356600, 0.934172,
		0.971550, 0.225340, -0.072883,
		-0.236496, 0.906674, -0.349301,
		44.599182, 29.059467, 23.808571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.223610, 28.843185, 24.396482>,  <44.764729, 28.424795, 24.053082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.223610, 28.843185, 24.396482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.939064, 29.085655, 24.254211>,  <44.768337, 29.231138, 24.168848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.939064, 29.085655, 24.254211>,  <45.223610, 28.843185, 24.396482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.939064, 29.085655, 24.254211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057194, 0.454463, 0.888927,
		0.700488, 0.652698, -0.288621,
		-0.711368, 0.606176, -0.355677,
		44.725655, 29.267508, 24.147509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.278893, 29.410219, 24.925030>,  <45.223610, 28.843185, 24.396482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.278893, 29.410219, 24.925030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.921391, 29.445938, 24.749201>,  <44.706890, 29.467369, 24.643703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.921391, 29.445938, 24.749201>,  <45.278893, 29.410219, 24.925030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.921391, 29.445938, 24.749201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370875, 0.404086, 0.836161,
		0.252291, 0.910352, -0.328037,
		-0.893757, 0.089295, -0.439574,
		44.653263, 29.472727, 24.617329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.040878, 30.054989, 25.056240>,  <45.278893, 29.410219, 24.925030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.040878, 30.054989, 25.056240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.693157, 29.882191, 24.960159>,  <44.484524, 29.778513, 24.902512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.693157, 29.882191, 24.960159>,  <45.040878, 30.054989, 25.056240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.693157, 29.882191, 24.960159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474936, 0.595384, 0.648038,
		-0.136937, 0.677420, -0.722738,
		-0.869301, -0.431994, -0.240201,
		44.432365, 29.752592, 24.888100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.537449, 30.608137, 24.897905>,  <45.040878, 30.054989, 25.056240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.537449, 30.608137, 24.897905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.297112, 30.296911, 24.971224>,  <44.152908, 30.110176, 25.015215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.297112, 30.296911, 24.971224>,  <44.537449, 30.608137, 24.897905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.297112, 30.296911, 24.971224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658884, 0.611893, 0.437560,
		-0.452609, 0.142134, -0.880309,
		-0.600847, -0.778064, 0.183298,
		44.116856, 30.063492, 25.026213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.906635, 30.825294, 24.711426>,  <44.537449, 30.608137, 24.897905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.906635, 30.825294, 24.711426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.846409, 30.525978, 24.969849>,  <43.810272, 30.346388, 25.124903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.846409, 30.525978, 24.969849>,  <43.906635, 30.825294, 24.711426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.846409, 30.525978, 24.969849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569385, 0.599869, 0.562101,
		-0.808165, -0.283225, -0.516384,
		-0.150562, -0.748292, 0.646057,
		43.801239, 30.301491, 25.163666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.215950, 30.743572, 24.751131>,  <43.906635, 30.825294, 24.711426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.215950, 30.743572, 24.751131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.337063, 30.565996, 25.088472>,  <43.409729, 30.459450, 25.290876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.337063, 30.565996, 25.088472>,  <43.215950, 30.743572, 24.751131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.337063, 30.565996, 25.088472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695505, 0.502078, 0.513994,
		-0.651611, -0.742182, -0.156744,
		0.302780, -0.443941, 0.843351,
		43.427898, 30.432814, 25.341478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.645267, 30.434668, 25.083670>,  <43.215950, 30.743572, 24.751131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.645267, 30.434668, 25.083670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.910732, 30.504826, 25.374540>,  <43.070011, 30.546921, 25.549063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.910732, 30.504826, 25.374540>,  <42.645267, 30.434668, 25.083670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.910732, 30.504826, 25.374540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730174, 0.363032, 0.578839,
		-0.162463, -0.915120, 0.368999,
		0.663666, 0.175393, 0.727176,
		43.109833, 30.557444, 25.592693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.322380, 30.249651, 25.739302>,  <42.645267, 30.434668, 25.083670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.322380, 30.249651, 25.739302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.628384, 30.495817, 25.815222>,  <42.811985, 30.643517, 25.860775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.628384, 30.495817, 25.815222>,  <42.322380, 30.249651, 25.739302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.628384, 30.495817, 25.815222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552904, 0.476484, 0.683565,
		0.330236, -0.627877, 0.704779,
		0.765011, 0.615413, 0.189804,
		42.857887, 30.680441, 25.872162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298088, 30.358648, 26.463209>,  <42.322380, 30.249651, 25.739302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.298088, 30.358648, 26.463209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541218, 30.659697, 26.361923>,  <42.687096, 30.840324, 26.301151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541218, 30.659697, 26.361923>,  <42.298088, 30.358648, 26.463209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.541218, 30.659697, 26.361923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416935, 0.573869, 0.704869,
		0.675809, -0.322861, 0.662603,
		0.607822, 0.752619, -0.253214,
		42.723564, 30.885483, 26.285959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.825497, 30.625601, 27.057659>,  <42.298088, 30.358648, 26.463209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.825497, 30.625601, 27.057659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.741627, 30.922083, 26.802584>,  <42.691303, 31.099972, 26.649538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.741627, 30.922083, 26.802584>,  <42.825497, 30.625601, 27.057659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.741627, 30.922083, 26.802584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291155, 0.575271, 0.764390,
		0.933415, 0.345942, 0.095185,
		-0.209677, 0.741207, -0.637689,
		42.678722, 31.144445, 26.611277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.789673, 31.272724, 27.480198>,  <42.825497, 30.625601, 27.057659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.789673, 31.272724, 27.480198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678329, 31.423561, 27.126856>,  <42.611523, 31.514063, 26.914850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678329, 31.423561, 27.126856>,  <42.789673, 31.272724, 27.480198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.678329, 31.423561, 27.126856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341474, 0.820764, 0.457976,
		0.897726, 0.429125, -0.099699,
		-0.278359, 0.377092, -0.883356,
		42.594822, 31.536690, 26.861849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.067364, 31.943062, 27.493225>,  <42.789673, 31.272724, 27.480198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.067364, 31.943062, 27.493225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.725563, 31.898008, 27.290388>,  <42.520485, 31.870975, 27.168686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.725563, 31.898008, 27.290388>,  <43.067364, 31.943062, 27.493225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.725563, 31.898008, 27.290388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373683, 0.811382, 0.449467,
		0.360822, 0.573561, -0.735415,
		-0.854499, -0.112635, -0.507094,
		42.469212, 31.864218, 27.138260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.853127, 32.638371, 27.385624>,  <43.067364, 31.943062, 27.493225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.853127, 32.638371, 27.385624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.508923, 32.478275, 27.259560>,  <42.302399, 32.382217, 27.183920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.508923, 32.478275, 27.259560>,  <42.853127, 32.638371, 27.385624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.508923, 32.478275, 27.259560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509211, 0.693835, 0.509213,
		0.014865, 0.598669, -0.800859,
		-0.860513, -0.400237, -0.315163,
		42.250767, 32.358204, 27.165010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.463112, 33.119072, 27.043116>,  <42.853127, 32.638371, 27.385624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.463112, 33.119072, 27.043116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256737, 32.833942, 27.233145>,  <42.132912, 32.662865, 27.347162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256737, 32.833942, 27.233145>,  <42.463112, 33.119072, 27.043116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.256737, 32.833942, 27.233145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278926, 0.664156, 0.693612,
		-0.809943, 0.225351, -0.541488,
		-0.515939, -0.712821, 0.475072,
		42.101955, 32.620094, 27.375666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.877995, 33.528423, 27.347033>,  <42.463112, 33.119072, 27.043116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.877995, 33.528423, 27.347033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.852459, 33.174103, 27.530895>,  <41.837139, 32.961510, 27.641212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.852459, 33.174103, 27.530895>,  <41.877995, 33.528423, 27.347033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.852459, 33.174103, 27.530895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165941, 0.463606, 0.870364,
		-0.984067, -0.020715, -0.176585,
		-0.063836, -0.885799, 0.459657,
		41.833309, 32.908363, 27.668793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.305935, 33.657513, 27.740400>,  <41.877995, 33.528423, 27.347033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.305935, 33.657513, 27.740400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483715, 33.347336, 27.919800>,  <41.590382, 33.161228, 28.027439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483715, 33.347336, 27.919800>,  <41.305935, 33.657513, 27.740400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483715, 33.347336, 27.919800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331278, 0.322892, 0.886564,
		-0.832299, -0.542608, -0.113381,
		0.444447, -0.775447, 0.448497,
		41.617050, 33.114700, 28.054350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861519, 33.570450, 28.288467>,  <41.305935, 33.657513, 27.740400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861519, 33.570450, 28.288467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.177723, 33.349747, 28.394787>,  <41.367447, 33.217323, 28.458578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.177723, 33.349747, 28.394787>,  <40.861519, 33.570450, 28.288467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.177723, 33.349747, 28.394787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129836, 0.273150, 0.953169,
		-0.598525, -0.788003, 0.144290,
		0.790513, -0.551762, 0.265798,
		41.414875, 33.184219, 28.474525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662643, 33.434105, 28.956488>,  <40.861519, 33.570450, 28.288467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.662643, 33.434105, 28.956488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.037750, 33.297604, 28.982195>,  <41.262814, 33.215702, 28.997620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.037750, 33.297604, 28.982195>,  <40.662643, 33.434105, 28.956488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.037750, 33.297604, 28.982195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011665, 0.154018, 0.987999,
		-0.347062, -0.927265, 0.140452,
		0.937770, -0.341259, 0.064270,
		41.319080, 33.195225, 29.001476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.620327, 32.999355, 29.459946>,  <40.662643, 33.434105, 28.956488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.620327, 32.999355, 29.459946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994476, 33.135418, 29.421234>,  <41.218967, 33.217056, 29.398008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994476, 33.135418, 29.421234>,  <40.620327, 32.999355, 29.459946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994476, 33.135418, 29.421234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005218, 0.260348, 0.965501,
		0.353614, -0.903612, 0.241749,
		0.935377, 0.340153, -0.096777,
		41.275089, 33.237465, 29.392200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095551, 32.637814, 29.896269>,  <40.620327, 32.999355, 29.459946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.095551, 32.637814, 29.896269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.282894, 32.981293, 29.813063>,  <41.395302, 33.187382, 29.763140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.282894, 32.981293, 29.813063>,  <41.095551, 32.637814, 29.896269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.282894, 32.981293, 29.813063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111856, 0.175910, 0.978031,
		0.876427, -0.481341, -0.013661,
		0.468363, 0.858701, -0.208013,
		41.423405, 33.238903, 29.750658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.646404, 32.674316, 30.327124>,  <41.095551, 32.637814, 29.896269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.646404, 32.674316, 30.327124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620773, 33.053371, 30.201986>,  <41.605392, 33.280804, 30.126904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620773, 33.053371, 30.201986>,  <41.646404, 32.674316, 30.327124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620773, 33.053371, 30.201986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240729, 0.318908, 0.916704,
		0.968474, -0.016566, -0.248561,
		-0.064082, 0.947641, -0.312843,
		41.601547, 33.337666, 30.108133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206093, 33.060463, 30.343182>,  <41.646404, 32.674316, 30.327124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.206093, 33.060463, 30.343182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.905144, 33.318371, 30.397148>,  <41.724575, 33.473118, 30.429529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.905144, 33.318371, 30.397148>,  <42.206093, 33.060463, 30.343182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905144, 33.318371, 30.397148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400327, 0.284883, 0.870965,
		0.523140, 0.709301, -0.472458,
		-0.752372, 0.644774, 0.134918,
		41.679432, 33.511803, 30.437624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.412357, 33.713322, 30.673584>,  <42.206093, 33.060463, 30.343182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.412357, 33.713322, 30.673584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.015007, 33.735180, 30.714001>,  <41.776596, 33.748295, 30.738251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.015007, 33.735180, 30.714001>,  <42.412357, 33.713322, 30.673584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.015007, 33.735180, 30.714001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114539, 0.404277, 0.907436,
		0.008742, 0.913002, -0.407860,
		-0.993380, 0.054649, 0.101041,
		41.716991, 33.751575, 30.744312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.317783, 34.399700, 30.962509>,  <42.412357, 33.713322, 30.673584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.317783, 34.399700, 30.962509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.988533, 34.189148, 31.047729>,  <41.790985, 34.062817, 31.098862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.988533, 34.189148, 31.047729>,  <42.317783, 34.399700, 30.962509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.988533, 34.189148, 31.047729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042846, 0.316540, 0.947611,
		-0.566244, 0.789129, -0.237998,
		-0.823123, -0.526382, 0.213050,
		41.741596, 34.031235, 31.111645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881989, 34.867599, 31.326391>,  <42.317783, 34.399700, 30.962509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.881989, 34.867599, 31.326391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.747326, 34.505638, 31.430552>,  <41.666527, 34.288460, 31.493048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.747326, 34.505638, 31.430552>,  <41.881989, 34.867599, 31.326391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.747326, 34.505638, 31.430552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258516, 0.354738, 0.898516,
		-0.905444, 0.235177, -0.353359,
		-0.336660, -0.904904, 0.260399,
		41.646328, 34.234165, 31.508671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096004, 34.926231, 31.452484>,  <41.881989, 34.867599, 31.326391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096004, 34.926231, 31.452484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.244553, 34.618011, 31.659689>,  <41.333679, 34.433079, 31.784012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.244553, 34.618011, 31.659689>,  <41.096004, 34.926231, 31.452484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244553, 34.618011, 31.659689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381985, 0.381713, 0.841655,
		-0.846270, -0.510436, -0.152584,
		0.371368, -0.770552, 0.518011,
		41.355965, 34.386845, 31.815092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453846, 34.808758, 31.811726>,  <41.096004, 34.926231, 31.452484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.453846, 34.808758, 31.811726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.731789, 34.585339, 31.992924>,  <40.898552, 34.451286, 32.101643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.731789, 34.585339, 31.992924>,  <40.453846, 34.808758, 31.811726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.731789, 34.585339, 31.992924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413604, 0.204920, 0.887096,
		-0.588312, -0.803762, -0.088627,
		0.694853, -0.558546, 0.452996,
		40.940243, 34.417774, 32.128822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084480, 34.370926, 32.245632>,  <40.453846, 34.808758, 31.811726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084480, 34.370926, 32.245632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453922, 34.375217, 32.398907>,  <40.675587, 34.377792, 32.490871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453922, 34.375217, 32.398907>,  <40.084480, 34.370926, 32.245632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453922, 34.375217, 32.398907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381685, 0.118466, 0.916669,
		-0.035565, -0.992900, 0.113509,
		0.923608, 0.010723, 0.383188,
		40.731007, 34.378437, 32.513863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141006, 33.767040, 32.625931>,  <40.084480, 34.370926, 32.245632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141006, 33.767040, 32.625931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412365, 34.017586, 32.779526>,  <40.575180, 34.167915, 32.871681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412365, 34.017586, 32.779526>,  <40.141006, 33.767040, 32.625931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412365, 34.017586, 32.779526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445405, -0.065017, 0.892965,
		0.584291, -0.776811, 0.234881,
		0.678394, 0.626368, 0.383985,
		40.615883, 34.205498, 32.894722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324306, 33.466084, 33.205631>,  <40.141006, 33.767040, 32.625931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324306, 33.466084, 33.205631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433781, 33.848587, 33.246960>,  <40.499466, 34.078087, 33.271755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433781, 33.848587, 33.246960>,  <40.324306, 33.466084, 33.205631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433781, 33.848587, 33.246960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460765, 0.036058, 0.886790,
		0.844272, -0.290304, 0.450477,
		0.273682, 0.956255, 0.103319,
		40.515884, 34.135464, 33.277954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634861, 33.552242, 33.874340>,  <40.324306, 33.466084, 33.205631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.634861, 33.552242, 33.874340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523254, 33.924358, 33.779083>,  <40.456291, 34.147629, 33.721931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523254, 33.924358, 33.779083>,  <40.634861, 33.552242, 33.874340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523254, 33.924358, 33.779083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521265, 0.061547, 0.851173,
		0.806494, 0.361625, 0.467755,
		-0.279017, 0.930290, -0.238140,
		40.439548, 34.203445, 33.707642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807392, 33.899323, 34.451759>,  <40.634861, 33.552242, 33.874340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807392, 33.899323, 34.451759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.542614, 34.118618, 34.247299>,  <40.383747, 34.250195, 34.124622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.542614, 34.118618, 34.247299>,  <40.807392, 33.899323, 34.451759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542614, 34.118618, 34.247299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502181, 0.181888, 0.845417,
		0.556460, 0.816305, 0.154915,
		-0.661941, 0.548236, -0.511146,
		40.344032, 34.283089, 34.093956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727108, 34.538380, 34.848812>,  <40.807392, 33.899323, 34.451759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727108, 34.538380, 34.848812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420452, 34.515079, 34.593040>,  <40.236458, 34.501099, 34.439575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420452, 34.515079, 34.593040>,  <40.727108, 34.538380, 34.848812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420452, 34.515079, 34.593040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611908, 0.367971, 0.700118,
		0.194513, 0.928011, -0.317742,
		-0.766637, -0.058247, -0.639433,
		40.190460, 34.497604, 34.401211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306046, 35.144779, 34.968147>,  <40.727108, 34.538380, 34.848812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306046, 35.144779, 34.968147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065422, 34.881870, 34.786549>,  <39.921047, 34.724125, 34.677589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065422, 34.881870, 34.786549>,  <40.306046, 35.144779, 34.968147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065422, 34.881870, 34.786549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685656, 0.133230, 0.715629,
		-0.409876, 0.741784, -0.530809,
		-0.601562, -0.657272, -0.454001,
		39.884953, 34.684689, 34.650349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886120, 35.420483, 35.482971>,  <40.306046, 35.144779, 34.968147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886120, 35.420483, 35.482971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151466, 35.665215, 35.655300>,  <40.310677, 35.812054, 35.758698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151466, 35.665215, 35.655300>,  <39.886120, 35.420483, 35.482971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151466, 35.665215, 35.655300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713103, 0.342404, 0.611755,
		0.226773, -0.713040, 0.663436,
		0.663369, 0.611828, 0.430823,
		40.350475, 35.848763, 35.784546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133873, 35.306793, 36.246620>,  <39.886120, 35.420483, 35.482971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133873, 35.306793, 36.246620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148975, 35.696072, 36.155872>,  <40.158039, 35.929638, 36.101421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148975, 35.696072, 36.155872>,  <40.133873, 35.306793, 36.246620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148975, 35.696072, 36.155872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673649, 0.192482, 0.713546,
		0.738086, 0.125890, 0.662858,
		0.037760, 0.973192, -0.226874,
		40.160305, 35.988029, 36.087811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349762, 35.721653, 36.827332>,  <40.133873, 35.306793, 36.246620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349762, 35.721653, 36.827332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151707, 35.996902, 36.615173>,  <40.032875, 36.162052, 36.487877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151707, 35.996902, 36.615173>,  <40.349762, 35.721653, 36.827332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151707, 35.996902, 36.615173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580148, 0.192571, 0.791420,
		0.646737, 0.699569, 0.303867,
		-0.495137, 0.688128, -0.530396,
		40.003166, 36.203342, 36.456055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318104, 36.310825, 37.234344>,  <40.349762, 35.721653, 36.827332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318104, 36.310825, 37.234344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024826, 36.322906, 36.962605>,  <39.848862, 36.330154, 36.799561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024826, 36.322906, 36.962605>,  <40.318104, 36.310825, 37.234344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024826, 36.322906, 36.962605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678684, 0.030157, 0.733811,
		0.042651, 0.999088, -0.001613,
		-0.733191, 0.030203, -0.679351,
		39.804867, 36.331966, 36.758801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854275, 36.732170, 37.456852>,  <40.318104, 36.310825, 37.234344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854275, 36.732170, 37.456852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633751, 36.547485, 37.178894>,  <39.501434, 36.436676, 37.012119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633751, 36.547485, 37.178894>,  <39.854275, 36.732170, 37.456852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633751, 36.547485, 37.178894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834260, 0.313157, 0.453808,
		0.008083, 0.829912, -0.557835,
		-0.551311, -0.461712, -0.694894,
		39.468357, 36.408974, 36.970425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444878, 37.163315, 36.958755>,  <39.854275, 36.732170, 37.456852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444878, 37.163315, 36.958755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271732, 36.810501, 37.033207>,  <39.167847, 36.598812, 37.077877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271732, 36.810501, 37.033207>,  <39.444878, 37.163315, 36.958755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271732, 36.810501, 37.033207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727804, 0.463775, 0.505188,
		-0.531916, 0.083211, -0.842699,
		-0.432859, -0.882037, 0.186128,
		39.141876, 36.545891, 37.089046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816296, 37.368431, 37.213230>,  <39.444878, 37.163315, 36.958755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816296, 37.368431, 37.213230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803581, 36.969734, 37.242886>,  <38.795952, 36.730515, 37.260677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803581, 36.969734, 37.242886>,  <38.816296, 37.368431, 37.213230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803581, 36.969734, 37.242886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806040, 0.069418, 0.587776,
		-0.591007, -0.041075, -0.805620,
		-0.031782, -0.996742, 0.074135,
		38.794048, 36.670712, 37.265125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085747, 37.154690, 37.284401>,  <38.816296, 37.368431, 37.213230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085747, 37.154690, 37.284401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284336, 36.866070, 37.477432>,  <38.403492, 36.692898, 37.593250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284336, 36.866070, 37.477432>,  <38.085747, 37.154690, 37.284401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284336, 36.866070, 37.477432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742424, -0.064894, 0.666780,
		-0.449796, -0.689318, -0.567912,
		0.496478, -0.721546, 0.482577,
		38.433281, 36.649605, 37.622204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655605, 36.590553, 37.373814>,  <38.085747, 37.154690, 37.284401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655605, 36.590553, 37.373814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.918831, 36.575043, 37.674599>,  <38.076767, 36.565735, 37.855068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.918831, 36.575043, 37.674599>,  <37.655605, 36.590553, 37.373814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918831, 36.575043, 37.674599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738189, -0.230067, 0.634150,
		0.148410, -0.972402, -0.180026,
		0.658067, -0.038779, 0.751961,
		38.116249, 36.563408, 37.900188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609833, 35.905514, 37.604939>,  <37.655605, 36.590553, 37.373814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609833, 35.905514, 37.604939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755669, 36.151169, 37.884914>,  <37.843170, 36.298561, 38.052898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755669, 36.151169, 37.884914>,  <37.609833, 35.905514, 37.604939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755669, 36.151169, 37.884914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736468, -0.269797, 0.620343,
		0.569816, -0.741651, 0.353926,
		0.364589, 0.614136, 0.699937,
		37.865044, 36.335411, 38.094894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568157, 35.668488, 38.332306>,  <37.609833, 35.905514, 37.604939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568157, 35.668488, 38.332306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578632, 36.065617, 38.378971>,  <37.584919, 36.303894, 38.406971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578632, 36.065617, 38.378971>,  <37.568157, 35.668488, 38.332306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578632, 36.065617, 38.378971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777503, -0.053121, 0.626632,
		0.628334, -0.107113, 0.770534,
		0.026190, 0.992827, 0.116658,
		37.586491, 36.363464, 38.413967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398888, 35.702534, 39.013535>,  <37.568157, 35.668488, 38.332306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398888, 35.702534, 39.013535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300079, 36.032478, 38.810131>,  <37.240795, 36.230446, 38.688091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300079, 36.032478, 38.810131>,  <37.398888, 35.702534, 39.013535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300079, 36.032478, 38.810131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884492, 0.022413, 0.466017,
		0.395798, 0.564884, 0.724051,
		-0.247017, 0.824866, -0.508507,
		37.225975, 36.279938, 38.657578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941113, 35.586460, 39.542759>,  <37.398888, 35.702534, 39.013535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941113, 35.586460, 39.542759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806698, 35.932228, 39.393166>,  <37.726048, 36.139687, 39.303410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806698, 35.932228, 39.393166>,  <37.941113, 35.586460, 39.542759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806698, 35.932228, 39.393166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652605, 0.072605, 0.754212,
		0.679105, 0.497508, 0.539724,
		-0.336040, 0.864416, -0.373982,
		37.705887, 36.191551, 39.280972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135681, 36.160847, 40.037823>,  <37.941113, 35.586460, 39.542759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135681, 36.160847, 40.037823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825146, 36.264114, 39.807816>,  <37.638824, 36.326073, 39.669811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825146, 36.264114, 39.807816>,  <38.135681, 36.160847, 40.037823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825146, 36.264114, 39.807816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588765, 0.028727, 0.807794,
		0.225063, 0.965674, 0.129697,
		-0.776339, 0.258166, -0.575020,
		37.592243, 36.341564, 39.635311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864784, 36.915894, 40.230923>,  <38.135681, 36.160847, 40.037823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864784, 36.915894, 40.230923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597965, 36.664589, 40.070755>,  <37.437874, 36.513805, 39.974655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597965, 36.664589, 40.070755>,  <37.864784, 36.915894, 40.230923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597965, 36.664589, 40.070755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574160, 0.091012, 0.813669,
		-0.474753, 0.772661, -0.421431,
		-0.667046, -0.628261, -0.400422,
		37.397850, 36.476112, 39.950630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256210, 37.134312, 40.342541>,  <37.864784, 36.915894, 40.230923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256210, 37.134312, 40.342541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116055, 36.780262, 40.220047>,  <37.031960, 36.567833, 40.146553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116055, 36.780262, 40.220047>,  <37.256210, 37.134312, 40.342541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116055, 36.780262, 40.220047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760547, 0.078067, 0.644572,
		-0.546621, 0.458756, -0.700534,
		-0.350390, -0.885127, -0.306233,
		37.010937, 36.514725, 40.128178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549736, 37.124855, 40.379330>,  <37.256210, 37.134312, 40.342541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549736, 37.124855, 40.379330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626137, 36.732609, 40.361813>,  <36.671978, 36.497261, 40.351303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626137, 36.732609, 40.361813>,  <36.549736, 37.124855, 40.379330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626137, 36.732609, 40.361813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766166, -0.176823, 0.617837,
		-0.613603, -0.084455, -0.785085,
		0.191000, -0.980613, -0.043792,
		36.683437, 36.438423, 40.348675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961979, 36.784790, 40.105183>,  <36.549736, 37.124855, 40.379330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961979, 36.784790, 40.105183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163460, 36.539631, 40.348705>,  <36.284348, 36.392536, 40.494820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163460, 36.539631, 40.348705>,  <35.961979, 36.784790, 40.105183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163460, 36.539631, 40.348705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814878, -0.103118, 0.570386,
		-0.286809, -0.783406, -0.551376,
		0.503701, -0.612896, 0.608805,
		36.314571, 36.355762, 40.531345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492840, 36.301750, 40.175526>,  <35.961979, 36.784790, 40.105183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492840, 36.301750, 40.175526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739746, 36.271015, 40.488724>,  <35.887890, 36.252575, 40.676643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739746, 36.271015, 40.488724>,  <35.492840, 36.301750, 40.175526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739746, 36.271015, 40.488724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783227, -0.154173, 0.602317,
		0.074434, -0.985051, -0.155350,
		0.617264, -0.076841, 0.782995,
		35.924927, 36.247963, 40.723621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531734, 35.489616, 40.504471>,  <35.492840, 36.301750, 40.175526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531734, 35.489616, 40.504471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551048, 35.828266, 40.716469>,  <35.562637, 36.031456, 40.843670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551048, 35.828266, 40.716469>,  <35.531734, 35.489616, 40.504471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551048, 35.828266, 40.716469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821275, -0.268350, 0.503484,
		0.568486, -0.459585, 0.682353,
		0.048284, 0.846623, 0.529998,
		35.565533, 36.082253, 40.875469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497730, 35.466869, 41.275627>,  <35.531734, 35.489616, 40.504471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497730, 35.466869, 41.275627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326561, 35.793106, 41.119839>,  <35.223862, 35.988850, 41.026367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326561, 35.793106, 41.119839>,  <35.497730, 35.466869, 41.275627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326561, 35.793106, 41.119839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722830, -0.050132, 0.689206,
		0.542588, 0.576447, 0.610989,
		-0.427920, 0.815596, -0.389472,
		35.198185, 36.037785, 41.002998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773129, 35.810364, 41.243397>,  <35.497730, 35.466869, 41.275627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773129, 35.810364, 41.243397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040852, 36.052395, 41.415871>,  <35.201485, 36.197613, 41.519356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040852, 36.052395, 41.415871>,  <34.773129, 35.810364, 41.243397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040852, 36.052395, 41.415871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237819, 0.375336, -0.895860,
		-0.703899, 0.702146, 0.107316,
		0.669304, 0.605073, 0.431182,
		35.241642, 36.233917, 41.545227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439564, 36.214966, 41.779438>,  <34.773129, 35.810364, 41.243397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439564, 36.214966, 41.779438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698399, 36.145184, 42.076313>,  <34.853699, 36.103313, 42.254436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698399, 36.145184, 42.076313>,  <34.439564, 36.214966, 41.779438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698399, 36.145184, 42.076313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741261, -0.083753, -0.665971,
		0.178340, 0.981097, 0.075118,
		0.647091, -0.174451, 0.742186,
		34.892525, 36.092850, 42.298969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972439, 36.691433, 41.655880>,  <34.439564, 36.214966, 41.779438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972439, 36.691433, 41.655880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151878, 36.381973, 41.834866>,  <35.259544, 36.196297, 41.942257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151878, 36.381973, 41.834866>,  <34.972439, 36.691433, 41.655880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151878, 36.381973, 41.834866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843218, 0.200442, -0.498805,
		0.296207, 0.601078, 0.742271,
		0.448603, -0.773646, 0.447468,
		35.286461, 36.149879, 41.969105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696201, 36.848633, 41.706352>,  <34.972439, 36.691433, 41.655880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696201, 36.848633, 41.706352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672474, 36.449467, 41.696163>,  <35.658237, 36.209969, 41.690052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672474, 36.449467, 41.696163>,  <35.696201, 36.848633, 41.706352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672474, 36.449467, 41.696163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734632, -0.026369, -0.677953,
		0.675867, -0.058927, 0.734664,
		-0.059322, -0.997914, -0.025468,
		35.654678, 36.150093, 41.688522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293774, 36.741756, 41.648003>,  <35.696201, 36.848633, 41.706352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293774, 36.741756, 41.648003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118553, 36.405956, 41.519413>,  <36.013420, 36.204475, 41.442261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118553, 36.405956, 41.519413>,  <36.293774, 36.741756, 41.648003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118553, 36.405956, 41.519413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597042, -0.004346, -0.802198,
		0.672052, -0.543335, 0.503124,
		-0.438048, -0.839505, -0.321474,
		35.987137, 36.154106, 41.422970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698616, 36.112041, 41.753635>,  <36.293774, 36.741756, 41.648003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698616, 36.112041, 41.753635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468704, 36.161812, 41.430119>,  <36.330757, 36.191673, 41.236008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468704, 36.161812, 41.430119>,  <36.698616, 36.112041, 41.753635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468704, 36.161812, 41.430119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817389, 0.134059, -0.560270,
		0.038716, -0.983131, -0.178757,
		-0.574783, 0.124423, -0.808791,
		36.296268, 36.199139, 41.187481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000183, 35.608788, 41.359020>,  <36.698616, 36.112041, 41.753635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000183, 35.608788, 41.359020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810837, 35.840023, 41.093166>,  <36.697227, 35.978764, 40.933655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810837, 35.840023, 41.093166>,  <37.000183, 35.608788, 41.359020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810837, 35.840023, 41.093166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717615, -0.184480, -0.671562,
		-0.510835, -0.794845, -0.327520,
		-0.473366, 0.578091, -0.664631,
		36.668827, 36.013451, 40.893776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037479, 35.280312, 40.638065>,  <37.000183, 35.608788, 41.359020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037479, 35.280312, 40.638065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941521, 35.658691, 40.550777>,  <36.883945, 35.885719, 40.498405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941521, 35.658691, 40.550777>,  <37.037479, 35.280312, 40.638065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941521, 35.658691, 40.550777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557590, -0.049747, -0.828625,
		-0.794696, -0.320466, -0.515519,
		-0.239900, 0.945953, -0.218223,
		36.869549, 35.942478, 40.485310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560326, 35.346611, 40.093006>,  <37.037479, 35.280312, 40.638065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560326, 35.346611, 40.093006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824039, 35.647259, 40.101021>,  <36.982269, 35.827648, 40.105831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824039, 35.647259, 40.101021>,  <36.560326, 35.346611, 40.093006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824039, 35.647259, 40.101021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367437, -0.298822, -0.880736,
		-0.655994, 0.588021, -0.473184,
		0.659289, 0.751623, 0.020035,
		37.021828, 35.872746, 40.107033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765568, 35.442345, 39.381912>,  <36.560326, 35.346611, 40.093006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765568, 35.442345, 39.381912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945831, 35.737068, 39.583511>,  <37.053989, 35.913902, 39.704472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945831, 35.737068, 39.583511>,  <36.765568, 35.442345, 39.381912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945831, 35.737068, 39.583511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760937, -0.021854, -0.648457,
		-0.466775, 0.675746, -0.570515,
		0.450661, 0.736810, 0.504000,
		37.081028, 35.958111, 39.734711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463810, 35.992878, 39.076687>,  <36.765568, 35.442345, 39.381912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463810, 35.992878, 39.076687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.648643, 36.244698, 39.326534>,  <36.759544, 36.395790, 39.476444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.648643, 36.244698, 39.326534>,  <36.463810, 35.992878, 39.076687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648643, 36.244698, 39.326534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670839, 0.212544, -0.710492,
		-0.580047, 0.747327, -0.324111,
		0.462083, 0.629545, 0.624622,
		36.787270, 36.433559, 39.513920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538746, 36.747395, 38.891346>,  <36.463810, 35.992878, 39.076687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538746, 36.747395, 38.891346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854168, 36.639606, 39.112457>,  <37.043423, 36.574932, 39.245125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854168, 36.639606, 39.112457>,  <36.538746, 36.747395, 38.891346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854168, 36.639606, 39.112457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604208, 0.172138, -0.778011,
		0.114500, 0.947498, 0.298559,
		0.788557, -0.269474, 0.552776,
		37.090736, 36.558765, 39.278290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151451, 37.117191, 38.616123>,  <36.538746, 36.747395, 38.891346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151451, 37.117191, 38.616123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332870, 36.845802, 38.847286>,  <37.441723, 36.682968, 38.985985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332870, 36.845802, 38.847286>,  <37.151451, 37.117191, 38.616123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332870, 36.845802, 38.847286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722480, -0.099780, -0.684154,
		0.521843, 0.727818, 0.444928,
		0.453544, -0.678473, 0.577903,
		37.468933, 36.642262, 39.020657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752979, 37.363369, 38.830410>,  <37.151451, 37.117191, 38.616123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752979, 37.363369, 38.830410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.761086, 36.964024, 38.809029>,  <37.765949, 36.724415, 38.796200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.761086, 36.964024, 38.809029>,  <37.752979, 37.363369, 38.830410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761086, 36.964024, 38.809029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728263, 0.051369, -0.683370,
		0.684998, -0.025084, 0.728113,
		0.020261, -0.998365, -0.053455,
		37.767162, 36.664513, 38.792992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439224, 37.083801, 39.077259>,  <37.752979, 37.363369, 38.830410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439224, 37.083801, 39.077259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272274, 36.841621, 38.806194>,  <38.172104, 36.696312, 38.643555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272274, 36.841621, 38.806194>,  <38.439224, 37.083801, 39.077259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272274, 36.841621, 38.806194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804238, 0.101085, -0.585647,
		0.423081, -0.789438, 0.444735,
		-0.417376, -0.605449, -0.677664,
		38.147060, 36.659988, 38.602894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917339, 36.559143, 38.926788>,  <38.439224, 37.083801, 39.077259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917339, 36.559143, 38.926788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675171, 36.574524, 38.608799>,  <38.529869, 36.583752, 38.418003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675171, 36.574524, 38.608799>,  <38.917339, 36.559143, 38.926788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675171, 36.574524, 38.608799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795725, 0.007991, -0.605605,
		-0.016936, -0.999228, -0.035438,
		-0.605421, 0.038455, -0.794976,
		38.493546, 36.586060, 38.370308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876961, 35.831638, 38.521709>,  <38.917339, 36.559143, 38.926788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876961, 35.831638, 38.521709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871216, 36.182678, 38.330036>,  <38.867767, 36.393303, 38.215034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871216, 36.182678, 38.330036>,  <38.876961, 35.831638, 38.521709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871216, 36.182678, 38.330036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852660, -0.239560, -0.464307,
		-0.522268, -0.415248, -0.744853,
		-0.014365, 0.877599, -0.479180,
		38.866905, 36.445957, 38.186283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962467, 35.684513, 37.767403>,  <38.876961, 35.831638, 38.521709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962467, 35.684513, 37.767403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.084145, 36.023636, 37.941162>,  <39.157150, 36.227108, 38.045418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.084145, 36.023636, 37.941162>,  <38.962467, 35.684513, 37.767403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084145, 36.023636, 37.941162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928036, -0.160825, -0.335984,
		-0.214986, 0.505337, -0.835713,
		0.304189, 0.847803, 0.434395,
		39.175400, 36.277977, 38.071480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758812, 35.367149, 37.171974>,  <38.962467, 35.684513, 37.767403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758812, 35.367149, 37.171974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749321, 35.765362, 37.208542>,  <38.743626, 36.004288, 37.230484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749321, 35.765362, 37.208542>,  <38.758812, 35.367149, 37.171974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749321, 35.765362, 37.208542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511993, 0.090644, -0.854194,
		-0.858662, 0.026537, -0.511855,
		-0.023729, 0.995530, 0.091419,
		38.742203, 36.064022, 37.235966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598282, 35.536549, 36.499733>,  <38.758812, 35.367149, 37.171974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598282, 35.536549, 36.499733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756180, 35.846828, 36.696697>,  <38.850918, 36.032997, 36.814877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756180, 35.846828, 36.696697>,  <38.598282, 35.536549, 36.499733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756180, 35.846828, 36.696697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659854, 0.133592, -0.739423,
		-0.639351, 0.616803, -0.459113,
		0.394744, 0.775698, 0.492411,
		38.874603, 36.079536, 36.844421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772293, 35.982941, 36.012344>,  <38.598282, 35.536549, 36.499733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772293, 35.982941, 36.012344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992710, 36.114300, 36.319202>,  <39.124958, 36.193115, 36.503319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992710, 36.114300, 36.319202>,  <38.772293, 35.982941, 36.012344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992710, 36.114300, 36.319202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709457, 0.299647, -0.637873,
		-0.439349, 0.895749, -0.067866,
		0.551038, 0.328397, 0.767146,
		39.158020, 36.212818, 36.549347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046616, 36.578732, 35.800060>,  <38.772293, 35.982941, 36.012344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046616, 36.578732, 35.800060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289516, 36.465290, 36.096928>,  <39.435257, 36.397224, 36.275047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289516, 36.465290, 36.096928>,  <39.046616, 36.578732, 35.800060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289516, 36.465290, 36.096928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791915, 0.291436, -0.536596,
		-0.064115, 0.913584, 0.401564,
		0.607256, -0.283601, 0.742166,
		39.471695, 36.380211, 36.319576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561069, 37.101658, 35.690559>,  <39.046616, 36.578732, 35.800060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561069, 37.101658, 35.690559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720459, 36.809746, 35.912781>,  <39.816093, 36.634598, 36.046112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720459, 36.809746, 35.912781>,  <39.561069, 37.101658, 35.690559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720459, 36.809746, 35.912781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861788, 0.090600, -0.499113,
		0.313911, 0.677648, 0.665020,
		0.398474, -0.729784, 0.555549,
		39.840000, 36.590809, 36.079445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283928, 37.247032, 35.842258>,  <39.561069, 37.101658, 35.690559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283928, 37.247032, 35.842258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220909, 36.852997, 35.869907>,  <40.183098, 36.616577, 35.886497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220909, 36.852997, 35.869907>,  <40.283928, 37.247032, 35.842258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220909, 36.852997, 35.869907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894555, -0.172016, -0.412531,
		0.418270, -0.003159, 0.908317,
		-0.157548, -0.985089, 0.069124,
		40.173645, 36.557468, 35.890644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.900070, 36.881821, 36.232990>,  <40.283928, 37.247032, 35.842258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.900070, 36.881821, 36.232990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711384, 36.652069, 35.965385>,  <40.598171, 36.514217, 35.804825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711384, 36.652069, 35.965385>,  <40.900070, 36.881821, 36.232990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.711384, 36.652069, 35.965385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880161, -0.261189, -0.396355,
		0.052920, -0.775803, 0.628752,
		-0.471716, -0.574378, -0.669009,
		40.569870, 36.479755, 35.764683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.076702, 36.109772, 36.190659>,  <40.900070, 36.881821, 36.232990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.076702, 36.109772, 36.190659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970791, 36.229416, 35.823959>,  <40.907242, 36.301201, 35.603939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970791, 36.229416, 35.823959>,  <41.076702, 36.109772, 36.190659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970791, 36.229416, 35.823959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873291, -0.328809, -0.359510,
		-0.408968, -0.895778, -0.174148,
		-0.264780, 0.299109, -0.916747,
		40.891357, 36.319149, 35.548935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.586975, 35.711357, 35.868286>,  <41.076702, 36.109772, 36.190659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.586975, 35.711357, 35.868286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.855549, 35.701916, 36.164562>,  <42.016693, 35.696251, 36.342327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.855549, 35.701916, 36.164562>,  <41.586975, 35.711357, 35.868286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.855549, 35.701916, 36.164562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669141, 0.448850, -0.592270,
		-0.318478, 0.893296, 0.317167,
		0.671433, -0.023605, 0.740689,
		42.056980, 35.694836, 36.386768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.839096, 36.411198, 36.086868>,  <41.586975, 35.711357, 35.868286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.839096, 36.411198, 36.086868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101055, 36.109871, 36.110943>,  <42.258232, 35.929073, 36.125385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101055, 36.109871, 36.110943>,  <41.839096, 36.411198, 36.086868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101055, 36.109871, 36.110943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669897, 0.541827, -0.507604,
		0.349777, 0.372746, 0.859486,
		0.654900, -0.753315, 0.060183,
		42.297523, 35.883877, 36.128998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.486217, 36.716797, 35.968815>,  <41.839096, 36.411198, 36.086868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.486217, 36.716797, 35.968815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549950, 36.330952, 35.884781>,  <42.588188, 36.099445, 35.834362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549950, 36.330952, 35.884781>,  <42.486217, 36.716797, 35.968815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.549950, 36.330952, 35.884781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727015, 0.258617, -0.636056,
		0.667879, -0.051390, 0.742494,
		0.159334, -0.964612, -0.210086,
		42.597752, 36.041569, 35.821754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.195946, 36.522484, 36.104343>,  <42.486217, 36.716797, 35.968815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.195946, 36.522484, 36.104343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.057278, 36.252075, 35.844246>,  <42.974075, 36.089828, 35.688187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.057278, 36.252075, 35.844246>,  <43.195946, 36.522484, 36.104343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.057278, 36.252075, 35.844246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771131, 0.189268, -0.607893,
		0.534019, -0.712161, 0.455687,
		-0.346671, -0.676021, -0.650242,
		42.953278, 36.049271, 35.649174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.687412, 35.988544, 35.820251>,  <43.195946, 36.522484, 36.104343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.687412, 35.988544, 35.820251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.372822, 36.103703, 35.601685>,  <43.184067, 36.172798, 35.470543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.372822, 36.103703, 35.601685>,  <43.687412, 35.988544, 35.820251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.372822, 36.103703, 35.601685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598883, 0.571755, -0.560746,
		0.150982, -0.768253, -0.622086,
		-0.786476, 0.287894, -0.546418,
		43.136879, 36.190071, 35.437759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.942291, 36.091625, 35.189301>,  <43.687412, 35.988544, 35.820251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.942291, 36.091625, 35.189301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.587547, 36.276443, 35.189335>,  <43.374702, 36.387333, 35.189354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.587547, 36.276443, 35.189335>,  <43.942291, 36.091625, 35.189301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.587547, 36.276443, 35.189335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369345, 0.709031, -0.600716,
		-0.277617, -0.532719, -0.799462,
		-0.886856, 0.462046, 0.000082,
		43.321491, 36.415058, 35.189358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.740540, 36.195862, 34.397064>,  <43.942291, 36.091625, 35.189301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.740540, 36.195862, 34.397064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.566940, 36.456074, 34.646370>,  <43.462780, 36.612202, 34.795952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.566940, 36.456074, 34.646370>,  <43.740540, 36.195862, 34.397064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.566940, 36.456074, 34.646370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245458, 0.751021, -0.612958,
		-0.866832, -0.113037, -0.485618,
		-0.433996, 0.650531, 0.623263,
		43.436741, 36.651234, 34.833347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.406399, 36.070782, 34.205288>,  <43.740540, 36.195862, 34.397064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.406399, 36.070782, 34.205288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.672234, 35.848145, 34.404694>,  <44.831734, 35.714561, 34.524338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.672234, 35.848145, 34.404694>,  <44.406399, 36.070782, 34.205288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.672234, 35.848145, 34.404694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730778, 0.345037, -0.588993,
		0.155825, 0.755744, 0.636057,
		0.664591, -0.556597, 0.498516,
		44.871613, 35.681164, 34.554249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.100708, 36.429985, 34.384460>,  <44.406399, 36.070782, 34.205288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.100708, 36.429985, 34.384460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.134762, 36.039322, 34.305584>,  <45.155193, 35.804924, 34.258259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.134762, 36.039322, 34.305584>,  <45.100708, 36.429985, 34.384460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.134762, 36.039322, 34.305584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771100, 0.189918, -0.607730,
		0.630996, -0.100311, 0.769273,
		0.085137, -0.976662, -0.197187,
		45.160301, 35.746323, 34.246429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.791550, 36.250359, 34.398800>,  <45.100708, 36.429985, 34.384460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.791550, 36.250359, 34.398800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.666855, 35.977669, 34.134048>,  <45.592037, 35.814056, 33.975197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.666855, 35.977669, 34.134048>,  <45.791550, 36.250359, 34.398800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.666855, 35.977669, 34.134048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847974, 0.114667, -0.517487,
		0.428676, -0.722571, 0.542336,
		-0.311733, -0.681720, -0.661876,
		45.573334, 35.773151, 33.935486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.132069, 35.584930, 34.353851>,  <45.791550, 36.250359, 34.398800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.132069, 35.584930, 34.353851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.056637, 35.645073, 33.965660>,  <46.011375, 35.681156, 33.732746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.056637, 35.645073, 33.965660>,  <46.132069, 35.584930, 34.353851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.056637, 35.645073, 33.965660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970431, 0.180138, -0.160666,
		0.150664, -0.972082, -0.179878,
		-0.188584, 0.150353, -0.970479,
		46.000061, 35.690178, 33.674515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.514111, 35.027931, 34.102287>,  <46.132069, 35.584930, 34.353851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.514111, 35.027931, 34.102287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.465588, 35.353073, 33.874409>,  <46.436474, 35.548157, 33.737682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.465588, 35.353073, 33.874409>,  <46.514111, 35.027931, 34.102287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.465588, 35.353073, 33.874409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949921, -0.071448, -0.304213,
		-0.287984, -0.578068, -0.763481,
		-0.121307, 0.812855, -0.569695,
		46.429195, 35.596928, 33.703499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.677292, 34.971096, 33.377560>,  <46.514111, 35.027931, 34.102287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.677292, 34.971096, 33.377560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.741016, 35.355919, 33.466160>,  <46.779251, 35.586815, 33.519321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.741016, 35.355919, 33.466160>,  <46.677292, 34.971096, 33.377560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.741016, 35.355919, 33.466160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934040, -0.074233, -0.349368,
		-0.319670, 0.262548, -0.910428,
		0.159310, 0.962059, 0.221500,
		46.788811, 35.644535, 33.532608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.724922, 35.446255, 32.750481>,  <46.677292, 34.971096, 33.377560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.724922, 35.446255, 32.750481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.941967, 35.603870, 33.047211>,  <47.072193, 35.698441, 33.225250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.941967, 35.603870, 33.047211>,  <46.724922, 35.446255, 32.750481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.941967, 35.603870, 33.047211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829831, -0.114557, -0.546129,
		-0.130217, 0.911925, -0.389149,
		0.542608, 0.394043, 0.741827,
		47.104748, 35.722084, 33.269760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.202953, 36.143421, 32.802647>,  <46.724922, 35.446255, 32.750481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.202953, 36.143421, 32.802647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.371208, 35.845013, 33.009148>,  <47.472160, 35.665966, 33.133049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.371208, 35.845013, 33.009148>,  <47.202953, 36.143421, 32.802647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.371208, 35.845013, 33.009148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885082, 0.212475, -0.414108,
		0.199241, 0.631117, 0.749662,
		0.420635, -0.746020, 0.516257,
		47.497398, 35.621208, 33.164024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.853271, 36.376041, 33.187645>,  <47.202953, 36.143421, 32.802647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.853271, 36.376041, 33.187645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.853104, 35.992592, 33.073772>,  <47.853004, 35.762524, 33.005447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.853104, 35.992592, 33.073772>,  <47.853271, 36.376041, 33.187645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.853104, 35.992592, 33.073772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838969, 0.154582, -0.521762,
		0.544179, -0.239062, 0.804188,
		-0.000421, -0.958621, -0.284686,
		47.852978, 35.705006, 32.988365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.555725, 36.267727, 33.890949>,  <47.853271, 36.376041, 33.187645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.555725, 36.267727, 33.890949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.800312, 36.193211, 34.198559>,  <47.947063, 36.148502, 34.383125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.800312, 36.193211, 34.198559>,  <47.555725, 36.267727, 33.890949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.800312, 36.193211, 34.198559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195168, -0.977371, -0.081577,
		0.766823, -0.100208, -0.633988,
		0.611467, -0.186289, 0.769028,
		47.983753, 36.137325, 34.429268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.980843, 35.745255, 33.769978>,  <47.555725, 36.267727, 33.890949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.980843, 35.745255, 33.769978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.872242, 35.766685, 34.154354>,  <47.807079, 35.779545, 34.384979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.872242, 35.766685, 34.154354>,  <47.980843, 35.745255, 33.769978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.872242, 35.766685, 34.154354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256929, -0.966249, -0.018722,
		0.927509, -0.251978, 0.276105,
		-0.271504, 0.053574, 0.960945,
		47.790791, 35.782757, 34.442638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.165051, 35.101845, 34.178215>,  <47.980843, 35.745255, 33.769978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.165051, 35.101845, 34.178215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.847900, 35.299820, 34.320415>,  <47.657612, 35.418606, 34.405735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.847900, 35.299820, 34.320415>,  <48.165051, 35.101845, 34.178215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.847900, 35.299820, 34.320415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348705, -0.846928, 0.401394,
		0.499753, 0.194289, 0.844096,
		-0.792875, 0.494938, 0.355506,
		47.610039, 35.448303, 34.427067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.103340, 35.042278, 34.907719>,  <48.165051, 35.101845, 34.178215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.103340, 35.042278, 34.907719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.738884, 35.098564, 34.752785>,  <47.520210, 35.132336, 34.659824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.738884, 35.098564, 34.752785>,  <48.103340, 35.042278, 34.907719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.738884, 35.098564, 34.752785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305012, -0.862305, 0.404225,
		-0.277120, 0.486446, 0.828598,
		-0.911138, 0.140714, -0.387333,
		47.465542, 35.140778, 34.636585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.985519, 30.957230, 24.936407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.674576, 31.092857, 24.724468>,  <37.488010, 31.174234, 24.597305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.674576, 31.092857, 24.724468>,  <37.985519, 30.957230, 24.936407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674576, 31.092857, 24.724468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235282, 0.624440, 0.744793,
		0.583395, 0.703638, -0.405639,
		-0.777362, 0.339069, -0.529849,
		37.441368, 31.194578, 24.565514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934216, 31.737576, 24.995514>,  <37.985519, 30.957230, 24.936407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934216, 31.737576, 24.995514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.575516, 31.611723, 24.871029>,  <37.360298, 31.536211, 24.796337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.575516, 31.611723, 24.871029>,  <37.934216, 31.737576, 24.995514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575516, 31.611723, 24.871029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439262, 0.547334, 0.712372,
		-0.053797, 0.775521, -0.629025,
		-0.896747, -0.314630, -0.311212,
		37.306492, 31.517334, 24.777666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549034, 32.347580, 24.999176>,  <37.934216, 31.737576, 24.995514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549034, 32.347580, 24.999176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.237473, 32.097050, 25.011961>,  <37.050533, 31.946732, 25.019632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.237473, 32.097050, 25.011961>,  <37.549034, 32.347580, 24.999176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237473, 32.097050, 25.011961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369007, 0.498922, 0.784162,
		-0.507085, 0.598996, -0.619732,
		-0.778908, -0.626323, 0.031962,
		37.003799, 31.909153, 25.021549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018986, 32.827965, 25.022293>,  <37.549034, 32.347580, 24.999176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018986, 32.827965, 25.022293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.945332, 32.469116, 25.182930>,  <36.901138, 32.253807, 25.279312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.945332, 32.469116, 25.182930>,  <37.018986, 32.827965, 25.022293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945332, 32.469116, 25.182930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356951, 0.441717, 0.823087,
		-0.915796, 0.008208, -0.401561,
		-0.184133, -0.897117, 0.401593,
		36.890091, 32.199982, 25.303408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290432, 32.988194, 25.122814>,  <37.018986, 32.827965, 25.022293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290432, 32.988194, 25.122814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.401779, 32.683277, 25.356541>,  <36.468590, 32.500328, 25.496777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.401779, 32.683277, 25.356541>,  <36.290432, 32.988194, 25.122814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401779, 32.683277, 25.356541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532106, 0.384073, 0.754554,
		-0.799608, -0.520963, -0.298705,
		0.278370, -0.762290, 0.584316,
		36.485291, 32.454590, 25.531836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773495, 32.953671, 25.607803>,  <36.290432, 32.988194, 25.122814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773495, 32.953671, 25.607803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.071030, 32.743668, 25.773247>,  <36.249550, 32.617664, 25.872513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.071030, 32.743668, 25.773247>,  <35.773495, 32.953671, 25.607803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071030, 32.743668, 25.773247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271223, 0.328489, 0.904728,
		-0.610859, -0.785149, 0.101946,
		0.743835, -0.525011, 0.413610,
		36.294182, 32.586163, 25.897329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518929, 32.614864, 26.202393>,  <35.773495, 32.953671, 25.607803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518929, 32.614864, 26.202393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.912830, 32.640720, 26.266981>,  <36.149174, 32.656235, 26.305735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.912830, 32.640720, 26.266981>,  <35.518929, 32.614864, 26.202393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912830, 32.640720, 26.266981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170331, 0.170530, 0.970519,
		0.035196, -0.983230, 0.178941,
		0.984758, 0.064638, 0.161472,
		36.208260, 32.660114, 26.315422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592041, 32.408890, 26.811810>,  <35.518929, 32.614864, 26.202393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592041, 32.408890, 26.811810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.944851, 32.592556, 26.769478>,  <36.156536, 32.702755, 26.744078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.944851, 32.592556, 26.769478>,  <35.592041, 32.408890, 26.811810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944851, 32.592556, 26.769478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051978, 0.318038, 0.946652,
		0.468326, -0.829471, 0.304384,
		0.882026, 0.459163, -0.105831,
		36.209457, 32.730305, 26.737728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891796, 32.147369, 27.288528>,  <35.592041, 32.408890, 26.811810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891796, 32.147369, 27.288528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.113194, 32.473438, 27.220249>,  <36.246033, 32.669079, 27.179281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.113194, 32.473438, 27.220249>,  <35.891796, 32.147369, 27.288528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113194, 32.473438, 27.220249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012063, 0.197089, 0.980311,
		0.832769, -0.544651, 0.099253,
		0.553490, 0.815175, -0.170699,
		36.279240, 32.717991, 27.169039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397327, 32.226940, 27.834944>,  <35.891796, 32.147369, 27.288528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397327, 32.226940, 27.834944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.347374, 32.586594, 27.667150>,  <36.317402, 32.802387, 27.566475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.347374, 32.586594, 27.667150>,  <36.397327, 32.226940, 27.834944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347374, 32.586594, 27.667150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042310, 0.427233, 0.903151,
		0.991268, 0.095044, -0.091399,
		-0.124888, 0.899132, -0.419481,
		36.309906, 32.856335, 27.541306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907597, 32.556591, 28.058971>,  <36.397327, 32.226940, 27.834944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907597, 32.556591, 28.058971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.606869, 32.806686, 27.975212>,  <36.426434, 32.956745, 27.924957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.606869, 32.806686, 27.975212>,  <36.907597, 32.556591, 28.058971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606869, 32.806686, 27.975212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001107, 0.318766, 0.947833,
		0.659373, 0.712364, -0.240346,
		-0.751816, 0.625241, -0.209397,
		36.381325, 32.994259, 27.912394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144009, 33.195000, 28.375229>,  <36.907597, 32.556591, 28.058971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144009, 33.195000, 28.375229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.748985, 33.224194, 28.319515>,  <36.511971, 33.241711, 28.286087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.748985, 33.224194, 28.319515>,  <37.144009, 33.195000, 28.375229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748985, 33.224194, 28.319515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110526, 0.307867, 0.944988,
		0.111855, 0.948626, -0.295970,
		-0.987559, 0.072989, -0.139285,
		36.452717, 33.246090, 28.277729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892097, 33.800774, 28.736139>,  <37.144009, 33.195000, 28.375229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892097, 33.800774, 28.736139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.541351, 33.612301, 28.698000>,  <36.330902, 33.499218, 28.675116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.541351, 33.612301, 28.698000>,  <36.892097, 33.800774, 28.736139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541351, 33.612301, 28.698000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348166, 0.485686, 0.801804,
		-0.331485, 0.736273, -0.589931,
		-0.876868, -0.471180, -0.095348,
		36.278290, 33.470947, 28.669395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422501, 34.333450, 28.739164>,  <36.892097, 33.800774, 28.736139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422501, 34.333450, 28.739164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.221420, 34.007664, 28.855051>,  <36.100773, 33.812191, 28.924583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.221420, 34.007664, 28.855051>,  <36.422501, 34.333450, 28.739164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221420, 34.007664, 28.855051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323169, 0.487902, 0.810872,
		-0.801781, 0.313999, -0.508479,
		-0.502701, -0.814467, 0.289716,
		36.070610, 33.763325, 28.941965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802883, 34.584656, 29.067757>,  <36.422501, 34.333450, 28.739164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802883, 34.584656, 29.067757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.794388, 34.209339, 29.205832>,  <35.789291, 33.984150, 29.288677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.794388, 34.209339, 29.205832>,  <35.802883, 34.584656, 29.067757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794388, 34.209339, 29.205832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312399, 0.334208, 0.889220,
		-0.949714, -0.088948, -0.300221,
		-0.021242, -0.938293, 0.345189,
		35.788013, 33.927853, 29.309389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168407, 34.518597, 29.575476>,  <35.802883, 34.584656, 29.067757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168407, 34.518597, 29.575476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.391479, 34.200909, 29.671984>,  <35.525322, 34.010296, 29.729889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.391479, 34.200909, 29.671984>,  <35.168407, 34.518597, 29.575476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391479, 34.200909, 29.671984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149533, 0.189783, 0.970372,
		-0.816478, -0.577232, -0.012925,
		0.557677, -0.794220, 0.241269,
		35.558784, 33.962643, 29.744364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838364, 34.269783, 30.046808>,  <35.168407, 34.518597, 29.575476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838364, 34.269783, 30.046808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.182732, 34.080364, 30.121178>,  <35.389351, 33.966713, 30.165800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.182732, 34.080364, 30.121178>,  <34.838364, 34.269783, 30.046808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182732, 34.080364, 30.121178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147012, 0.118296, 0.982035,
		-0.487036, -0.872787, 0.032226,
		0.860920, -0.473549, 0.185924,
		35.441010, 33.938301, 30.176954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633022, 33.810009, 30.472328>,  <34.838364, 34.269783, 30.046808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633022, 33.810009, 30.472328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.027771, 33.850327, 30.522818>,  <35.264618, 33.874516, 30.553112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.027771, 33.850327, 30.522818>,  <34.633022, 33.810009, 30.472328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027771, 33.850327, 30.522818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120307, -0.062787, 0.990749,
		0.107786, -0.992924, -0.049836,
		0.986868, 0.100793, 0.126223,
		35.323830, 33.880566, 30.560684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862167, 33.281399, 30.993732>,  <34.633022, 33.810009, 30.472328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862167, 33.281399, 30.993732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.147247, 33.561897, 31.000689>,  <35.318295, 33.730198, 31.004862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.147247, 33.561897, 31.000689>,  <34.862167, 33.281399, 30.993732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147247, 33.561897, 31.000689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011129, -0.036095, 0.999286,
		0.701377, -0.712001, -0.033529,
		0.712703, 0.701250, 0.017392,
		35.361057, 33.772274, 31.005907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181118, 32.990616, 31.485949>,  <34.862167, 33.281399, 30.993732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181118, 32.990616, 31.485949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.290813, 33.374962, 31.470270>,  <35.356632, 33.605568, 31.460863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.290813, 33.374962, 31.470270>,  <35.181118, 32.990616, 31.485949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290813, 33.374962, 31.470270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042329, 0.052781, 0.997708,
		0.960729, -0.271955, 0.055147,
		0.274242, 0.960862, -0.039196,
		35.373085, 33.663219, 31.458511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864643, 33.046772, 31.776375>,  <35.181118, 32.990616, 31.485949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864643, 33.046772, 31.776375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.667927, 33.394295, 31.799393>,  <35.549896, 33.602810, 31.813204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.667927, 33.394295, 31.799393>,  <35.864643, 33.046772, 31.776375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667927, 33.394295, 31.799393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118918, 0.001551, 0.992903,
		0.862555, 0.495143, -0.104080,
		-0.491790, 0.868810, 0.057543,
		35.520390, 33.654938, 31.816656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322617, 33.632168, 32.100574>,  <35.864643, 33.046772, 31.776375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322617, 33.632168, 32.100574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.934490, 33.700397, 32.169140>,  <35.701614, 33.741337, 32.210281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.934490, 33.700397, 32.169140>,  <36.322617, 33.632168, 32.100574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934490, 33.700397, 32.169140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190096, 0.099874, 0.976672,
		0.149477, 0.980270, -0.129336,
		-0.970320, 0.170576, 0.171417,
		35.643394, 33.751572, 32.220566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365696, 33.894070, 32.819508>,  <36.322617, 33.632168, 32.100574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365696, 33.894070, 32.819508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.658413, 33.751804, 33.052055>,  <36.834042, 33.666447, 33.191582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.658413, 33.751804, 33.052055>,  <36.365696, 33.894070, 32.819508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658413, 33.751804, 33.052055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112634, -0.778188, -0.617849,
		0.672160, 0.517617, -0.529409,
		0.731789, -0.355664, 0.581368,
		36.877949, 33.645103, 33.226467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976246, 33.905930, 32.458237>,  <36.365696, 33.894070, 32.819508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976246, 33.905930, 32.458237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.078979, 33.632805, 32.731819>,  <37.140617, 33.468929, 32.895969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.078979, 33.632805, 32.731819>,  <36.976246, 33.905930, 32.458237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078979, 33.632805, 32.731819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240446, -0.640301, -0.729521,
		0.936068, 0.351820, -0.000270,
		0.256832, -0.682816, 0.683959,
		37.156029, 33.427959, 32.937008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649567, 33.691856, 32.265068>,  <36.976246, 33.905930, 32.458237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649567, 33.691856, 32.265068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.499672, 33.408108, 32.503857>,  <37.409737, 33.237858, 32.647129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.499672, 33.408108, 32.503857>,  <37.649567, 33.691856, 32.265068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499672, 33.408108, 32.503857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188972, -0.688810, -0.699879,
		0.907670, -0.149457, 0.392170,
		-0.374732, -0.709369, 0.596969,
		37.387253, 33.195297, 32.682949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175026, 33.119328, 32.386951>,  <37.649567, 33.691856, 32.265068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175026, 33.119328, 32.386951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.833023, 32.927223, 32.465244>,  <37.627823, 32.811962, 32.512222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.833023, 32.927223, 32.465244>,  <38.175026, 33.119328, 32.386951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833023, 32.927223, 32.465244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284992, -0.750422, -0.596361,
		0.433292, -0.454110, 0.778487,
		-0.855007, -0.480261, 0.195734,
		37.576519, 32.783146, 32.523964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392590, 32.432194, 32.628654>,  <38.175026, 33.119328, 32.386951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392590, 32.432194, 32.628654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.009388, 32.414589, 32.515312>,  <37.779469, 32.404026, 32.447308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.009388, 32.414589, 32.515312>,  <38.392590, 32.432194, 32.628654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009388, 32.414589, 32.515312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211945, -0.774275, -0.596302,
		-0.193150, -0.631316, 0.751088,
		-0.958004, -0.044014, -0.283356,
		37.721985, 32.401386, 32.430305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290302, 31.641302, 32.487282>,  <38.392590, 32.432194, 32.628654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290302, 31.641302, 32.487282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.016834, 31.863745, 32.298244>,  <37.852753, 31.997210, 32.184822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.016834, 31.863745, 32.298244>,  <38.290302, 31.641302, 32.487282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016834, 31.863745, 32.298244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084107, -0.583215, -0.807952,
		-0.724931, -0.592118, 0.351952,
		-0.683667, 0.556108, -0.472592,
		37.811733, 32.030579, 32.156467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712696, 31.146482, 32.153675>,  <38.290302, 31.641302, 32.487282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712696, 31.146482, 32.153675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.680050, 31.490772, 31.952681>,  <37.660461, 31.697346, 31.832083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.680050, 31.490772, 31.952681>,  <37.712696, 31.146482, 32.153675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680050, 31.490772, 31.952681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267601, -0.466735, -0.842940,
		-0.960067, -0.203261, -0.192239,
		-0.081612, 0.860722, -0.502490,
		37.655567, 31.748989, 31.801933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619053, 30.896078, 31.525326>,  <37.712696, 31.146482, 32.153675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619053, 30.896078, 31.525326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.691830, 31.279102, 31.435907>,  <37.735497, 31.508917, 31.382257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.691830, 31.279102, 31.435907>,  <37.619053, 30.896078, 31.525326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691830, 31.279102, 31.435907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239684, -0.263669, -0.934361,
		-0.953650, 0.116421, -0.277486,
		0.181944, 0.957562, -0.223544,
		37.746414, 31.566370, 31.368845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158020, 31.112783, 30.999962>,  <37.619053, 30.896078, 31.525326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158020, 31.112783, 30.999962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.489365, 31.336760, 30.993223>,  <37.688171, 31.471146, 30.989180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.489365, 31.336760, 30.993223>,  <37.158020, 31.112783, 30.999962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489365, 31.336760, 30.993223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216900, -0.348311, -0.911940,
		-0.516501, 0.751761, -0.409979,
		0.828361, 0.559942, -0.016846,
		37.737873, 31.504742, 30.988169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124367, 31.399420, 30.440031>,  <37.158020, 31.112783, 30.999962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124367, 31.399420, 30.440031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.502510, 31.504187, 30.517698>,  <37.729397, 31.567047, 30.564299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.502510, 31.504187, 30.517698>,  <37.124367, 31.399420, 30.440031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502510, 31.504187, 30.517698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258958, -0.241341, -0.935251,
		-0.198098, 0.934427, -0.295979,
		0.945356, 0.261917, 0.194168,
		37.786118, 31.582762, 30.575949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237507, 31.636736, 29.830086>,  <37.124367, 31.399420, 30.440031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237507, 31.636736, 29.830086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.585598, 31.557743, 30.010624>,  <37.794453, 31.510347, 30.118946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.585598, 31.557743, 30.010624>,  <37.237507, 31.636736, 29.830086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585598, 31.557743, 30.010624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393804, -0.271649, -0.878137,
		0.296024, 0.941917, -0.158626,
		0.870223, -0.197482, 0.451345,
		37.846664, 31.498499, 30.146027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797276, 31.984453, 29.530645>,  <37.237507, 31.636736, 29.830086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797276, 31.984453, 29.530645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.958454, 31.655342, 29.690983>,  <38.055161, 31.457876, 29.787186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.958454, 31.655342, 29.690983>,  <37.797276, 31.984453, 29.530645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958454, 31.655342, 29.690983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437901, -0.211269, -0.873847,
		0.803666, 0.527641, 0.275165,
		0.402944, -0.822776, 0.400844,
		38.079338, 31.408510, 29.811235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611423, 31.956476, 29.456680>,  <37.797276, 31.984453, 29.530645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611423, 31.956476, 29.456680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.487217, 31.583574, 29.530956>,  <38.412693, 31.359833, 29.575521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.487217, 31.583574, 29.530956>,  <38.611423, 31.956476, 29.456680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487217, 31.583574, 29.530956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352673, -0.294389, -0.888233,
		0.882724, -0.210324, 0.420194,
		-0.310517, -0.932255, 0.185688,
		38.394062, 31.303898, 29.586662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222988, 31.576166, 29.195724>,  <38.611423, 31.956476, 29.456680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222988, 31.576166, 29.195724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.906708, 31.331949, 29.177732>,  <38.716938, 31.185419, 29.166937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.906708, 31.331949, 29.177732>,  <39.222988, 31.576166, 29.195724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906708, 31.331949, 29.177732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269707, -0.281450, -0.920893,
		0.549585, -0.740286, 0.387212,
		-0.790705, -0.610542, -0.044979,
		38.669495, 31.148787, 29.164238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429359, 30.917107, 28.991755>,  <39.222988, 31.576166, 29.195724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429359, 30.917107, 28.991755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.043827, 30.945665, 28.889048>,  <38.812508, 30.962801, 28.827423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.043827, 30.945665, 28.889048>,  <39.429359, 30.917107, 28.991755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043827, 30.945665, 28.889048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208635, -0.397336, -0.893641,
		-0.165829, -0.914891, 0.368069,
		-0.963832, 0.071399, -0.256768,
		38.754677, 30.967085, 28.812017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272240, 30.146498, 28.659409>,  <39.429359, 30.917107, 28.991755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272240, 30.146498, 28.659409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.948227, 30.354902, 28.551785>,  <38.753819, 30.479944, 28.487209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.948227, 30.354902, 28.551785>,  <39.272240, 30.146498, 28.659409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948227, 30.354902, 28.551785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031047, -0.420099, -0.906947,
		-0.585561, -0.743011, 0.324119,
		-0.810034, 0.521010, -0.269062,
		38.705215, 30.511206, 28.471066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687656, 29.657875, 28.296431>,  <39.272240, 30.146498, 28.659409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687656, 29.657875, 28.296431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.632069, 30.028780, 28.157362>,  <38.598717, 30.251322, 28.073921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.632069, 30.028780, 28.157362>,  <38.687656, 29.657875, 28.296431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632069, 30.028780, 28.157362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030194, -0.346949, -0.937398,
		-0.989836, -0.140767, 0.020218,
		-0.138969, 0.927260, -0.347673,
		38.590378, 30.306957, 28.053061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185150, 29.562439, 27.722837>,  <38.687656, 29.657875, 28.296431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185150, 29.562439, 27.722837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.352932, 29.921816, 27.670904>,  <38.453602, 30.137442, 27.639744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.352932, 29.921816, 27.670904>,  <38.185150, 29.562439, 27.722837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352932, 29.921816, 27.670904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178709, -0.221954, -0.958540,
		-0.890011, 0.378863, -0.253659,
		0.419456, 0.898443, -0.129835,
		38.478767, 30.191349, 27.631954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.675102, 30.247869, 26.856438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.048283, 30.333099, 26.972511>,  <38.272190, 30.384237, 27.042154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.048283, 30.333099, 26.972511>,  <37.675102, 30.247869, 26.856438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048283, 30.333099, 26.972511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256997, 0.170284, -0.951292,
		-0.252108, 0.962083, 0.104107,
		0.932949, 0.213073, 0.290182,
		38.328167, 30.397022, 27.059566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789375, 30.821865, 26.534517>,  <37.675102, 30.247869, 26.856438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789375, 30.821865, 26.534517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.160412, 30.712070, 26.635893>,  <38.383034, 30.646194, 26.696718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.160412, 30.712070, 26.635893>,  <37.789375, 30.821865, 26.534517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160412, 30.712070, 26.635893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309010, 0.182435, -0.933397,
		0.209967, 0.944127, 0.254043,
		0.927592, -0.274485, 0.253440,
		38.438690, 30.629725, 26.711926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158958, 31.185287, 26.038094>,  <37.789375, 30.821865, 26.534517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158958, 31.185287, 26.038094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.418167, 30.935972, 26.213171>,  <38.573692, 30.786383, 26.318216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.418167, 30.935972, 26.213171>,  <38.158958, 31.185287, 26.038094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418167, 30.935972, 26.213171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487776, -0.101714, -0.867023,
		0.584925, 0.775348, 0.238112,
		0.648025, -0.623289, 0.437692,
		38.612576, 30.748985, 26.344479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939400, 31.426172, 25.921398>,  <38.158958, 31.185287, 26.038094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939400, 31.426172, 25.921398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.897949, 31.031761, 25.973564>,  <38.873077, 30.795115, 26.004864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.897949, 31.031761, 25.973564>,  <38.939400, 31.426172, 25.921398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897949, 31.031761, 25.973564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453168, -0.163529, -0.876297,
		0.885381, -0.031709, 0.463783,
		-0.103629, -0.986029, 0.130416,
		38.866859, 30.735952, 26.012690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489090, 31.200073, 25.461367>,  <38.939400, 31.426172, 25.921398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489090, 31.200073, 25.461367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.312286, 30.855169, 25.560272>,  <39.206203, 30.648228, 25.619616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.312286, 30.855169, 25.560272>,  <39.489090, 31.200073, 25.461367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312286, 30.855169, 25.560272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351347, -0.420047, -0.836729,
		0.825340, -0.282964, 0.488616,
		-0.442006, -0.862260, 0.247264,
		39.179684, 30.596491, 25.634451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075302, 30.650631, 25.261612>,  <39.489090, 31.200073, 25.461367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075302, 30.650631, 25.261612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.716766, 30.473328, 25.265465>,  <39.501644, 30.366945, 25.267776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.716766, 30.473328, 25.265465>,  <40.075302, 30.650631, 25.261612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716766, 30.473328, 25.265465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293193, -0.608897, -0.737076,
		0.332581, -0.657848, 0.675741,
		-0.896341, -0.443261, 0.009631,
		39.447865, 30.340349, 25.268354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221817, 29.914831, 25.357691>,  <40.075302, 30.650631, 25.261612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221817, 29.914831, 25.357691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.880623, 29.989473, 25.162716>,  <39.675907, 30.034258, 25.045731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.880623, 29.989473, 25.162716>,  <40.221817, 29.914831, 25.357691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880623, 29.989473, 25.162716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332199, -0.526218, -0.782776,
		-0.402568, -0.829622, 0.386867,
		-0.852985, 0.186604, -0.487438,
		39.624729, 30.045456, 25.016483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064873, 29.272207, 25.058252>,  <40.221817, 29.914831, 25.357691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064873, 29.272207, 25.058252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.816128, 29.521461, 24.868519>,  <39.666882, 29.671015, 24.754679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.816128, 29.521461, 24.868519>,  <40.064873, 29.272207, 25.058252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816128, 29.521461, 24.868519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230693, -0.433056, -0.871346,
		-0.748380, -0.651279, 0.125546,
		-0.621858, 0.623135, -0.474336,
		39.629570, 29.708403, 24.726217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783638, 28.788685, 24.473097>,  <40.064873, 29.272207, 25.058252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783638, 28.788685, 24.473097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.727116, 29.171419, 24.371511>,  <39.693203, 29.401060, 24.310560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.727116, 29.171419, 24.371511>,  <39.783638, 28.788685, 24.473097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727116, 29.171419, 24.371511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317566, -0.199168, -0.927084,
		-0.937648, -0.211653, -0.275714,
		-0.141307, 0.956836, -0.253963,
		39.684723, 29.458469, 24.295322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284630, 28.836229, 23.841272>,  <39.783638, 28.788685, 24.473097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284630, 28.836229, 23.841272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.539375, 29.142471, 23.877626>,  <39.692223, 29.326216, 23.899439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.539375, 29.142471, 23.877626>,  <39.284630, 28.836229, 23.841272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539375, 29.142471, 23.877626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327457, -0.161884, -0.930895,
		-0.697983, 0.622612, -0.353800,
		0.636861, 0.765603, 0.090886,
		39.730434, 29.372152, 23.904892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478230, 29.031448, 23.183298>,  <39.284630, 28.836229, 23.841272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478230, 29.031448, 23.183298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.750412, 29.247328, 23.381575>,  <39.913723, 29.376856, 23.500540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.750412, 29.247328, 23.381575>,  <39.478230, 29.031448, 23.183298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750412, 29.247328, 23.381575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607858, -0.037928, -0.793139,
		-0.409254, 0.841005, -0.353867,
		0.680455, 0.539697, 0.495690,
		39.954548, 29.409237, 23.530281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760475, 29.477491, 22.704123>,  <39.478230, 29.031448, 23.183298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760475, 29.477491, 22.704123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.031910, 29.508314, 22.996307>,  <40.194771, 29.526808, 23.171619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.031910, 29.508314, 22.996307>,  <39.760475, 29.477491, 22.704123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031910, 29.508314, 22.996307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732942, -0.005946, -0.680265,
		-0.048076, 0.997009, -0.060513,
		0.678591, 0.077057, 0.730464,
		40.235489, 29.531431, 23.215446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105339, 30.023952, 22.543823>,  <39.760475, 29.477491, 22.704123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105339, 30.023952, 22.543823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.357426, 29.826035, 22.783157>,  <40.508678, 29.707283, 22.926758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.357426, 29.826035, 22.783157>,  <40.105339, 30.023952, 22.543823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357426, 29.826035, 22.783157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693795, 0.012941, -0.720057,
		0.348537, 0.868914, 0.351441,
		0.630215, -0.494795, 0.598337,
		40.546490, 29.677597, 22.962658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785061, 30.272020, 22.342049>,  <40.105339, 30.023952, 22.543823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785061, 30.272020, 22.342049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.857307, 29.933849, 22.543098>,  <40.900658, 29.730947, 22.663729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.857307, 29.933849, 22.543098>,  <40.785061, 30.272020, 22.342049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.857307, 29.933849, 22.543098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822338, -0.150540, -0.548725,
		0.539571, 0.512438, 0.668035,
		0.180621, -0.845426, 0.502624,
		40.911495, 29.680222, 22.693886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522663, 30.189291, 22.187357>,  <40.785061, 30.272020, 22.342049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.522663, 30.189291, 22.187357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.405296, 29.832273, 22.324335>,  <41.334877, 29.618063, 22.406523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.405296, 29.832273, 22.324335>,  <41.522663, 30.189291, 22.187357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.405296, 29.832273, 22.324335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691047, -0.445547, -0.569159,
		0.660575, 0.069645, 0.747522,
		-0.293417, -0.892545, 0.342446,
		41.317272, 29.564510, 22.427069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158806, 29.889547, 22.292131>,  <41.522663, 30.189291, 22.187357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.158806, 29.889547, 22.292131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.888950, 29.595354, 22.267076>,  <41.727036, 29.418839, 22.252043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.888950, 29.595354, 22.267076>,  <42.158806, 29.889547, 22.292131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.888950, 29.595354, 22.267076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647488, -0.548904, -0.528643,
		0.354426, -0.397202, 0.846530,
		-0.674641, -0.735483, -0.062638,
		41.686558, 29.374710, 22.248285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.477070, 29.364500, 22.469526>,  <42.158806, 29.889547, 22.292131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.477070, 29.364500, 22.469526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.164867, 29.188440, 22.291954>,  <41.977547, 29.082806, 22.185411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.164867, 29.188440, 22.291954>,  <42.477070, 29.364500, 22.469526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164867, 29.188440, 22.291954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624486, -0.516439, -0.585925,
		0.028632, -0.734547, 0.677953,
		-0.780511, -0.440148, -0.443928,
		41.930714, 29.056396, 22.158775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.721806, 28.740423, 22.418371>,  <42.477070, 29.364500, 22.469526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.721806, 28.740423, 22.418371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.439449, 28.757088, 22.135534>,  <42.270035, 28.767086, 21.965832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.439449, 28.757088, 22.135534>,  <42.721806, 28.740423, 22.418371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.439449, 28.757088, 22.135534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577240, -0.544698, -0.608356,
		-0.410495, -0.837597, 0.360451,
		-0.705895, 0.041660, -0.707091,
		42.227680, 28.769587, 21.923407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.741253, 28.066597, 22.105665>,  <42.721806, 28.740423, 22.418371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.741253, 28.066597, 22.105665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.563637, 28.312992, 21.845392>,  <42.457066, 28.460829, 21.689228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.563637, 28.312992, 21.845392>,  <42.741253, 28.066597, 22.105665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.563637, 28.312992, 21.845392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322008, -0.567977, -0.757438,
		-0.836145, -0.545859, 0.053853,
		-0.444042, 0.615987, -0.650682,
		42.430424, 28.497787, 21.650188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.436802, 27.550043, 21.643711>,  <42.741253, 28.066597, 22.105665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.436802, 27.550043, 21.643711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.442314, 27.894716, 21.440805>,  <42.445621, 28.101521, 21.319063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.442314, 27.894716, 21.440805>,  <42.436802, 27.550043, 21.643711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.442314, 27.894716, 21.440805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445481, -0.459469, -0.768397,
		-0.895185, -0.215390, -0.390192,
		0.013776, 0.861681, -0.507262,
		42.446445, 28.153221, 21.288628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.103432, 27.427731, 20.981987>,  <42.436802, 27.550043, 21.643711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.103432, 27.427731, 20.981987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.328999, 27.751026, 20.914164>,  <42.464336, 27.945004, 20.873470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.328999, 27.751026, 20.914164>,  <42.103432, 27.427731, 20.981987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.328999, 27.751026, 20.914164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236389, -0.354702, -0.904603,
		-0.791279, 0.470036, -0.391080,
		0.563913, 0.808241, -0.169557,
		42.498173, 27.993498, 20.863297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.923210, 27.713623, 20.334581>,  <42.103432, 27.427731, 20.981987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.923210, 27.713623, 20.334581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.285137, 27.875809, 20.386574>,  <42.502293, 27.973120, 20.417770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.285137, 27.875809, 20.386574>,  <41.923210, 27.713623, 20.334581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.285137, 27.875809, 20.386574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233402, -0.216989, -0.947860,
		-0.356120, 0.887983, -0.290973,
		0.904821, 0.405466, 0.129983,
		42.556583, 27.997448, 20.425570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931885, 28.308321, 19.797354>,  <41.923210, 27.713623, 20.334581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.931885, 28.308321, 19.797354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.252602, 28.104366, 19.922029>,  <42.445030, 27.981995, 19.996836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.252602, 28.104366, 19.922029>,  <41.931885, 28.308321, 19.797354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.252602, 28.104366, 19.922029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271742, -0.153452, -0.950057,
		0.532249, 0.846445, 0.015521,
		0.801790, -0.509885, 0.311689,
		42.493137, 27.951401, 20.015537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.973839, 28.196758, 18.988371>,  <41.931885, 28.308321, 19.797354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.973839, 28.196758, 18.988371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.968422, 28.352444, 18.619951>,  <41.965172, 28.445854, 18.398899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.968422, 28.352444, 18.619951>,  <41.973839, 28.196758, 18.988371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.968422, 28.352444, 18.619951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659696, 0.688734, 0.300743,
		0.751411, 0.611685, 0.247435,
		-0.013543, 0.389213, -0.921048,
		41.964359, 28.469208, 18.343637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266304, 29.005873, 18.970123>,  <41.973839, 28.196758, 18.988371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.266304, 29.005873, 18.970123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.975754, 28.918137, 18.709579>,  <41.801426, 28.865494, 18.553253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.975754, 28.918137, 18.709579>,  <42.266304, 29.005873, 18.970123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.975754, 28.918137, 18.709579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541295, 0.766573, 0.345493,
		0.423535, 0.603536, -0.675547,
		-0.726373, -0.219342, -0.651361,
		41.757843, 28.852335, 18.514172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074963, 29.672695, 18.656551>,  <42.266304, 29.005873, 18.970123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074963, 29.672695, 18.656551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.739952, 29.458099, 18.615131>,  <41.538944, 29.329342, 18.590281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.739952, 29.458099, 18.615131>,  <42.074963, 29.672695, 18.656551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.739952, 29.458099, 18.615131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524640, 0.736681, 0.426678,
		-0.152625, 0.411682, -0.898456,
		-0.837531, -0.536488, -0.103548,
		41.488693, 29.297153, 18.584066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568527, 30.102526, 18.402515>,  <42.074963, 29.672695, 18.656551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568527, 30.102526, 18.402515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.341515, 29.808304, 18.550497>,  <41.205307, 29.631771, 18.639286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.341515, 29.808304, 18.550497>,  <41.568527, 30.102526, 18.402515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341515, 29.808304, 18.550497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582284, 0.676240, 0.451270,
		-0.582112, 0.040691, -0.812090,
		-0.567530, -0.735556, 0.369954,
		41.171257, 29.587637, 18.661484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949036, 30.339966, 18.256382>,  <41.568527, 30.102526, 18.402515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949036, 30.339966, 18.256382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.904682, 30.075178, 18.552896>,  <40.878071, 29.916306, 18.730804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.904682, 30.075178, 18.552896>,  <40.949036, 30.339966, 18.256382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904682, 30.075178, 18.552896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516634, 0.675575, 0.526011,
		-0.848996, -0.324647, -0.416905,
		-0.110883, -0.661969, 0.741284,
		40.871418, 29.876587, 18.775282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222347, 30.344233, 18.482471>,  <40.949036, 30.339966, 18.256382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222347, 30.344233, 18.482471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.423618, 30.209209, 18.800684>,  <40.544380, 30.128195, 18.991611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.423618, 30.209209, 18.800684>,  <40.222347, 30.344233, 18.482471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423618, 30.209209, 18.800684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589929, 0.538527, 0.601641,
		-0.631502, -0.772039, 0.071840,
		0.503178, -0.337558, 0.795529,
		40.574574, 30.107943, 19.039343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750072, 30.232321, 19.038300>,  <40.222347, 30.344233, 18.482471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750072, 30.232321, 19.038300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.089291, 30.209206, 19.249008>,  <40.292820, 30.195337, 19.375433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.089291, 30.209206, 19.249008>,  <39.750072, 30.232321, 19.038300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089291, 30.209206, 19.249008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495694, 0.264993, 0.827083,
		-0.187385, -0.962517, 0.196080,
		0.848042, -0.057787, 0.526770,
		40.343704, 30.191870, 19.407040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582859, 29.699429, 19.492624>,  <39.750072, 30.232321, 19.038300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582859, 29.699429, 19.492624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.870178, 29.926594, 19.653379>,  <40.042572, 30.062893, 19.749832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.870178, 29.926594, 19.653379>,  <39.582859, 29.699429, 19.492624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870178, 29.926594, 19.653379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551710, 0.113042, 0.826340,
		0.423862, -0.815287, 0.394523,
		0.718302, 0.567916, 0.401887,
		40.085670, 30.096968, 19.773945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730770, 29.425638, 20.092875>,  <39.582859, 29.699429, 19.492624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730770, 29.425638, 20.092875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.862392, 29.801579, 20.129557>,  <39.941364, 30.027142, 20.151566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.862392, 29.801579, 20.129557>,  <39.730770, 29.425638, 20.092875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862392, 29.801579, 20.129557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463482, 0.076131, 0.882830,
		0.822745, -0.332999, 0.460654,
		0.329052, 0.939849, 0.091703,
		39.961109, 30.083532, 20.157068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907330, 29.496387, 20.755713>,  <39.730770, 29.425638, 20.092875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907330, 29.496387, 20.755713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.854538, 29.870462, 20.624254>,  <39.822861, 30.094908, 20.545380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.854538, 29.870462, 20.624254>,  <39.907330, 29.496387, 20.755713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854538, 29.870462, 20.624254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327920, 0.271685, 0.904796,
		0.935441, 0.227186, 0.270809,
		-0.131982, 0.935186, -0.328644,
		39.814941, 30.151018, 20.525661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122856, 29.870956, 21.250710>,  <39.907330, 29.496387, 20.755713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122856, 29.870956, 21.250710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.899204, 30.128933, 21.042315>,  <39.765015, 30.283720, 20.917278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.899204, 30.128933, 21.042315>,  <40.122856, 29.870956, 21.250710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899204, 30.128933, 21.042315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380828, 0.358389, 0.852366,
		0.736443, 0.674986, 0.045228,
		-0.559125, 0.644943, -0.520987,
		39.731468, 30.322416, 20.886019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233818, 30.440655, 21.698233>,  <40.122856, 29.870956, 21.250710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233818, 30.440655, 21.698233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.910065, 30.502035, 21.471479>,  <39.715813, 30.538864, 21.335428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.910065, 30.502035, 21.471479>,  <40.233818, 30.440655, 21.698233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910065, 30.502035, 21.471479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542627, 0.173800, 0.821796,
		0.224631, 0.972752, -0.057402,
		-0.809380, 0.153453, -0.566882,
		39.667252, 30.548071, 21.301414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848206, 31.074095, 21.842930>,  <40.233818, 30.440655, 21.698233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848206, 31.074095, 21.842930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.546017, 30.890747, 21.655672>,  <39.364704, 30.780739, 21.543318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.546017, 30.890747, 21.655672>,  <39.848206, 31.074095, 21.842930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546017, 30.890747, 21.655672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566175, 0.097157, 0.818539,
		-0.329709, 0.883436, -0.332916,
		-0.755472, -0.458368, -0.468146,
		39.319374, 30.753237, 21.515228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298737, 31.541874, 21.820639>,  <39.848206, 31.074095, 21.842930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298737, 31.541874, 21.820639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.132801, 31.180916, 21.774008>,  <39.033241, 30.964340, 21.746029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.132801, 31.180916, 21.774008>,  <39.298737, 31.541874, 21.820639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132801, 31.180916, 21.774008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525024, 0.132757, 0.840670,
		-0.743141, 0.409948, -0.528852,
		-0.414840, -0.902396, -0.116575,
		39.008350, 30.910196, 21.739035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662960, 31.658035, 22.060524>,  <39.298737, 31.541874, 21.820639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662960, 31.658035, 22.060524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.644676, 31.258789, 22.044138>,  <38.633705, 31.019241, 22.034307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.644676, 31.258789, 22.044138>,  <38.662960, 31.658035, 22.060524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644676, 31.258789, 22.044138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769147, 0.008999, 0.639008,
		-0.637435, 0.060717, -0.768108,
		-0.045711, -0.998114, -0.040964,
		38.630962, 30.959354, 22.031849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932835, 31.460640, 22.104080>,  <38.662960, 31.658035, 22.060524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932835, 31.460640, 22.104080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.153503, 31.146400, 22.216148>,  <38.285904, 30.957857, 22.283388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.153503, 31.146400, 22.216148>,  <37.932835, 31.460640, 22.104080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153503, 31.146400, 22.216148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553030, -0.093082, 0.827945,
		-0.624355, -0.611693, -0.485811,
		0.551669, -0.785600, 0.280168,
		38.319004, 30.910721, 22.300200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412884, 31.053762, 22.316690>,  <37.932835, 31.460640, 22.104080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412884, 31.053762, 22.316690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.736126, 30.889957, 22.486048>,  <37.930073, 30.791674, 22.587662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.736126, 30.889957, 22.486048>,  <37.412884, 31.053762, 22.316690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736126, 30.889957, 22.486048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533020, -0.202458, 0.821523,
		-0.250704, -0.889557, -0.381886,
		0.808107, -0.409512, 0.423394,
		37.978558, 30.767103, 22.613066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224129, 30.446310, 22.582220>,  <37.412884, 31.053762, 22.316690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224129, 30.446310, 22.582220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.536743, 30.596855, 22.781240>,  <37.724312, 30.687181, 22.900652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.536743, 30.596855, 22.781240>,  <37.224129, 30.446310, 22.582220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536743, 30.596855, 22.781240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554884, 0.054824, 0.830119,
		0.285147, -0.924850, 0.251683,
		0.781534, 0.376361, 0.497551,
		37.771202, 30.709763, 22.930506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247219, 30.063265, 23.277630>,  <37.224129, 30.446310, 22.582220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247219, 30.063265, 23.277630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.454166, 30.401066, 23.332981>,  <37.578335, 30.603746, 23.366192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.454166, 30.401066, 23.332981>,  <37.247219, 30.063265, 23.277630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454166, 30.401066, 23.332981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402875, 0.097698, 0.910025,
		0.754998, -0.526567, 0.390775,
		0.517368, 0.844501, 0.138379,
		37.609375, 30.654415, 23.374495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447262, 30.018393, 24.005148>,  <37.247219, 30.063265, 23.277630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447262, 30.018393, 24.005148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.505512, 30.403139, 23.912539>,  <37.540462, 30.633987, 23.856972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.505512, 30.403139, 23.912539>,  <37.447262, 30.018393, 24.005148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505512, 30.403139, 23.912539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373277, 0.270143, 0.887517,
		0.916219, -0.042825, 0.398383,
		0.145629, 0.961867, -0.231525,
		37.549202, 30.691700, 23.843081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544216, 30.335560, 24.614061>,  <37.447262, 30.018393, 24.005148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544216, 30.335560, 24.614061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.453682, 30.656534, 24.393202>,  <37.399361, 30.849119, 24.260687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.453682, 30.656534, 24.393202>,  <37.544216, 30.335560, 24.614061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453682, 30.656534, 24.393202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462933, 0.410126, 0.785805,
		0.857008, 0.433467, 0.278646,
		-0.226340, 0.802436, -0.552147,
		37.385780, 30.897264, 24.227558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.498493, 30.254484, 30.471075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.378094, 30.596367, 30.301901>,  <38.305855, 30.801497, 30.200396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.378094, 30.596367, 30.301901>,  <38.498493, 30.254484, 30.471075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378094, 30.596367, 30.301901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087139, 0.416998, 0.904720,
		0.949636, 0.309170, -0.051036,
		-0.300995, 0.854708, -0.422937,
		38.287796, 30.852779, 30.175020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874352, 30.908663, 30.752466>,  <38.498493, 30.254484, 30.471075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874352, 30.908663, 30.752466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.569782, 31.098286, 30.575600>,  <38.387043, 31.212059, 30.469481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.569782, 31.098286, 30.575600>,  <38.874352, 30.908663, 30.752466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569782, 31.098286, 30.575600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111090, 0.576575, 0.809457,
		0.638670, 0.665457, -0.386352,
		-0.761419, 0.474056, -0.442166,
		38.341358, 31.240503, 30.442949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040379, 31.642664, 30.921577>,  <38.874352, 30.908663, 30.752466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040379, 31.642664, 30.921577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.654591, 31.605539, 30.822636>,  <38.423119, 31.583263, 30.763271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.654591, 31.605539, 30.822636>,  <39.040379, 31.642664, 30.921577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654591, 31.605539, 30.822636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257548, 0.538981, 0.801978,
		0.058886, 0.837189, -0.543735,
		-0.964470, -0.092813, -0.247354,
		38.365250, 31.577696, 30.748430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784576, 32.316143, 31.069834>,  <39.040379, 31.642664, 30.921577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784576, 32.316143, 31.069834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.475616, 32.065052, 31.031147>,  <38.290241, 31.914398, 31.007935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.475616, 32.065052, 31.031147>,  <38.784576, 32.316143, 31.069834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475616, 32.065052, 31.031147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484234, 0.483486, 0.729218,
		-0.410989, 0.610082, -0.677413,
		-0.772402, -0.627727, -0.096715,
		38.243896, 31.876734, 31.002132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184872, 32.749138, 31.162987>,  <38.784576, 32.316143, 31.069834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184872, 32.749138, 31.162987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.039143, 32.380234, 31.214684>,  <37.951706, 32.158890, 31.245701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.039143, 32.380234, 31.214684>,  <38.184872, 32.749138, 31.162987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039143, 32.380234, 31.214684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494826, 0.309278, 0.812093,
		-0.788933, 0.231914, -0.569036,
		-0.364326, -0.922260, 0.129242,
		37.929844, 32.103558, 31.253456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363121, 32.916332, 31.274216>,  <38.184872, 32.749138, 31.162987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363121, 32.916332, 31.274216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.479839, 32.564518, 31.424557>,  <37.549870, 32.353428, 31.514761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.479839, 32.564518, 31.424557>,  <37.363121, 32.916332, 31.274216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479839, 32.564518, 31.424557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310134, 0.284722, 0.907056,
		-0.904805, -0.381241, -0.189694,
		0.291797, -0.879539, 0.375853,
		37.567379, 32.300655, 31.537313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791302, 32.582222, 31.572428>,  <37.363121, 32.916332, 31.274216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791302, 32.582222, 31.572428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.108376, 32.419872, 31.754379>,  <37.298618, 32.322464, 31.863550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.108376, 32.419872, 31.754379>,  <36.791302, 32.582222, 31.572428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108376, 32.419872, 31.754379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311517, 0.371711, 0.874521,
		-0.524029, -0.834924, 0.168213,
		0.792686, -0.405873, 0.454881,
		37.346180, 32.298111, 31.890844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465263, 32.264427, 32.153004>,  <36.791302, 32.582222, 31.572428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465263, 32.264427, 32.153004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.856445, 32.317059, 32.217876>,  <37.091152, 32.348637, 32.256798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.856445, 32.317059, 32.217876>,  <36.465263, 32.264427, 32.153004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856445, 32.317059, 32.217876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196674, 0.319081, 0.927096,
		0.070233, -0.938550, 0.337923,
		0.977950, 0.131573, 0.162179,
		37.149830, 32.356529, 32.266529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448364, 32.201733, 32.790180>,  <36.465263, 32.264427, 32.153004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448364, 32.201733, 32.790180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.797401, 32.382023, 32.714890>,  <37.006824, 32.490196, 32.669716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.797401, 32.382023, 32.714890>,  <36.448364, 32.201733, 32.790180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797401, 32.382023, 32.714890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112621, 0.560631, 0.820372,
		0.475291, -0.694650, 0.539963,
		0.872591, 0.450726, -0.188230,
		37.059177, 32.517242, 32.658421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814678, 32.297268, 33.466953>,  <36.448364, 32.201733, 32.790180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814678, 32.297268, 33.466953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.996338, 32.552952, 33.218708>,  <37.105331, 32.706364, 33.069759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.996338, 32.552952, 33.218708>,  <36.814678, 32.297268, 33.466953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996338, 32.552952, 33.218708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111201, 0.650477, 0.751341,
		0.883961, -0.410231, 0.224330,
		0.454145, 0.639211, -0.620614,
		37.132580, 32.744717, 33.032524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303650, 32.523342, 33.829411>,  <36.814678, 32.297268, 33.466953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303650, 32.523342, 33.829411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.282738, 32.813080, 33.554428>,  <37.270191, 32.986923, 33.389439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.282738, 32.813080, 33.554428>,  <37.303650, 32.523342, 33.829411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282738, 32.813080, 33.554428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010276, 0.688747, 0.724929,
		0.998579, 0.030838, -0.043454,
		-0.052284, 0.724346, -0.687452,
		37.267052, 33.030384, 33.348194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687256, 33.049294, 34.002125>,  <37.303650, 32.523342, 33.829411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687256, 33.049294, 34.002125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.422832, 33.240311, 33.770622>,  <37.264179, 33.354923, 33.631721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.422832, 33.240311, 33.770622>,  <37.687256, 33.049294, 34.002125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422832, 33.240311, 33.770622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154184, 0.668412, 0.727635,
		0.734324, 0.570242, -0.368228,
		-0.661057, 0.477545, -0.578753,
		37.224514, 33.383575, 33.596996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835281, 33.806583, 34.032845>,  <37.687256, 33.049294, 34.002125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835281, 33.806583, 34.032845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.457333, 33.694927, 33.964390>,  <37.230564, 33.627934, 33.923317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.457333, 33.694927, 33.964390>,  <37.835281, 33.806583, 34.032845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457333, 33.694927, 33.964390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312870, 0.615618, 0.723275,
		-0.096544, 0.736949, -0.669019,
		-0.944877, -0.279144, -0.171135,
		37.173870, 33.611183, 33.913048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583649, 33.414829, 34.005993>,  <37.835281, 33.806583, 34.032845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583649, 33.414829, 34.005993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.591042, 33.644958, 33.678905>,  <38.595478, 33.783035, 33.482655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.591042, 33.644958, 33.678905>,  <38.583649, 33.414829, 34.005993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591042, 33.644958, 33.678905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884306, -0.391037, -0.255133,
		-0.466542, -0.718396, -0.515991,
		0.018485, 0.575324, -0.817716,
		38.596588, 33.817554, 33.433590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028866, 33.879143, 34.143955>,  <38.583649, 33.414829, 34.005993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028866, 33.879143, 34.143955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.303974, 34.136551, 34.278332>,  <39.469040, 34.290997, 34.358959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.303974, 34.136551, 34.278332>,  <39.028866, 33.879143, 34.143955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303974, 34.136551, 34.278332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411824, 0.035219, -0.910583,
		-0.597808, 0.764620, -0.240794,
		0.687769, 0.643518, 0.335943,
		39.510303, 34.329605, 34.379116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096249, 34.452339, 33.613132>,  <39.028866, 33.879143, 34.143955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096249, 34.452339, 33.613132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.417301, 34.443710, 33.851566>,  <39.609932, 34.438534, 33.994629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.417301, 34.443710, 33.851566>,  <39.096249, 34.452339, 33.613132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417301, 34.443710, 33.851566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596294, 0.053806, -0.800961,
		-0.014791, 0.998318, 0.056052,
		0.802630, -0.021576, 0.596087,
		39.658089, 34.437237, 34.030392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504723, 35.012417, 33.415558>,  <39.096249, 34.452339, 33.613132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504723, 35.012417, 33.415558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.765568, 34.792870, 33.624744>,  <39.922073, 34.661140, 33.750256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.765568, 34.792870, 33.624744>,  <39.504723, 35.012417, 33.415558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765568, 34.792870, 33.624744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689707, 0.143135, -0.709800,
		0.314730, 0.823565, 0.471896,
		0.652111, -0.548866, 0.522970,
		39.961201, 34.628208, 33.781635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098854, 35.405880, 33.526737>,  <39.504723, 35.012417, 33.415558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098854, 35.405880, 33.526737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.200211, 35.019230, 33.541828>,  <40.261024, 34.787239, 33.550880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.200211, 35.019230, 33.541828>,  <40.098854, 35.405880, 33.526737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200211, 35.019230, 33.541828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628060, 0.134731, -0.766413,
		0.735753, 0.217897, 0.641240,
		0.253394, -0.966627, 0.037724,
		40.276230, 34.729240, 33.553146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878708, 35.357227, 33.512287>,  <40.098854, 35.405880, 33.526737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.878708, 35.357227, 33.512287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.769184, 34.978951, 33.442211>,  <40.703472, 34.751984, 33.400166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.769184, 34.978951, 33.442211>,  <40.878708, 35.357227, 33.512287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769184, 34.978951, 33.442211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746699, -0.094211, -0.658457,
		0.606193, -0.311107, 0.731944,
		-0.273807, -0.945694, -0.175193,
		40.687042, 34.695244, 33.389652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.486889, 35.067608, 33.316223>,  <40.878708, 35.357227, 33.512287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.486889, 35.067608, 33.316223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.239155, 34.779106, 33.192146>,  <41.090515, 34.606003, 33.117699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.239155, 34.779106, 33.192146>,  <41.486889, 35.067608, 33.316223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239155, 34.779106, 33.192146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564440, -0.134401, -0.814459,
		0.545744, -0.679504, 0.490344,
		-0.619331, -0.721256, -0.310191,
		41.053356, 34.562729, 33.099091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.925934, 34.411507, 33.106438>,  <41.486889, 35.067608, 33.316223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.925934, 34.411507, 33.106438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.569851, 34.403893, 32.924370>,  <41.356201, 34.399323, 32.815128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.569851, 34.403893, 32.924370>,  <41.925934, 34.411507, 33.106438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.569851, 34.403893, 32.924370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432959, -0.346182, -0.832289,
		-0.141722, -0.937974, 0.316416,
		-0.890203, -0.019041, -0.455166,
		41.302792, 34.398182, 32.787819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.848473, 33.773228, 32.844105>,  <41.925934, 34.411507, 33.106438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.848473, 33.773228, 32.844105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.587353, 33.977795, 32.620564>,  <41.430683, 34.100533, 32.486439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.587353, 33.977795, 32.620564>,  <41.848473, 33.773228, 32.844105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.587353, 33.977795, 32.620564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371777, -0.426481, -0.824558,
		-0.660029, -0.746036, 0.088273,
		-0.652796, 0.511414, -0.558849,
		41.391514, 34.131218, 32.452908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.602364, 33.293545, 32.392441>,  <41.848473, 33.773228, 32.844105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.602364, 33.293545, 32.392441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.487564, 33.630032, 32.209141>,  <41.418686, 33.831924, 32.099163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.487564, 33.630032, 32.209141>,  <41.602364, 33.293545, 32.392441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.487564, 33.630032, 32.209141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102331, -0.448712, -0.887798,
		-0.952450, -0.301688, 0.042697,
		-0.286997, 0.841214, -0.458248,
		41.401466, 33.882397, 32.071667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091991, 33.152924, 31.922245>,  <41.602364, 33.293545, 32.392441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091991, 33.152924, 31.922245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.237453, 33.496540, 31.778131>,  <41.324730, 33.702709, 31.691664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.237453, 33.496540, 31.778131>,  <41.091991, 33.152924, 31.922245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237453, 33.496540, 31.778131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072176, -0.411584, -0.908509,
		-0.928734, 0.304379, -0.211676,
		0.363653, 0.859042, -0.360283,
		41.346550, 33.754253, 31.670046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713177, 33.273464, 31.336239>,  <41.091991, 33.152924, 31.922245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713177, 33.273464, 31.336239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.011333, 33.531006, 31.267130>,  <41.190228, 33.685532, 31.225664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.011333, 33.531006, 31.267130>,  <40.713177, 33.273464, 31.336239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011333, 33.531006, 31.267130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083253, -0.167233, -0.982396,
		-0.661413, 0.746649, -0.071051,
		0.745387, 0.643854, -0.172771,
		41.234951, 33.724163, 31.215298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467354, 33.690948, 30.845770>,  <40.713177, 33.273464, 31.336239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.467354, 33.690948, 30.845770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.866035, 33.715454, 30.824533>,  <41.105244, 33.730160, 30.811790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.866035, 33.715454, 30.824533>,  <40.467354, 33.690948, 30.845770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866035, 33.715454, 30.824533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055951, 0.045923, -0.997377,
		-0.058669, 0.997064, 0.049200,
		0.996708, 0.061268, -0.053092,
		41.165047, 33.733833, 30.808605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590305, 34.205162, 30.357885>,  <40.467354, 33.690948, 30.845770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590305, 34.205162, 30.357885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.936283, 34.005817, 30.381571>,  <41.143871, 33.886211, 30.395782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.936283, 34.005817, 30.381571>,  <40.590305, 34.205162, 30.357885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.936283, 34.005817, 30.381571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030512, -0.065548, -0.997383,
		0.500935, 0.864490, -0.041489,
		0.864947, -0.498358, 0.059213,
		41.195766, 33.856308, 30.399334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103600, 34.556911, 29.929523>,  <40.590305, 34.205162, 30.357885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103600, 34.556911, 29.929523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.261707, 34.192833, 29.979010>,  <41.356571, 33.974384, 30.008701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.261707, 34.192833, 29.979010>,  <41.103600, 34.556911, 29.929523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.261707, 34.192833, 29.979010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041726, -0.116754, -0.992284,
		0.917619, 0.397378, -0.008170,
		0.395266, -0.910197, 0.123717,
		41.380287, 33.919773, 30.016125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713631, 34.908997, 29.723816>,  <41.103600, 34.556911, 29.929523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713631, 34.908997, 29.723816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.448799, 35.150318, 29.545973>,  <41.289902, 35.295113, 29.439268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.448799, 35.150318, 29.545973>,  <41.713631, 34.908997, 29.723816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448799, 35.150318, 29.545973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375547, 0.246312, 0.893473,
		0.648550, 0.758520, 0.063493,
		-0.662078, 0.603306, -0.444605,
		41.250175, 35.331310, 29.412592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280289, 35.261654, 30.302681>,  <41.713631, 34.908997, 29.723816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280289, 35.261654, 30.302681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.094128, 35.435230, 29.994110>,  <40.982433, 35.539375, 29.808968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.094128, 35.435230, 29.994110>,  <41.280289, 35.261654, 30.302681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094128, 35.435230, 29.994110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563864, 0.526454, 0.636320,
		0.682246, 0.731123, -0.000328,
		-0.465401, 0.433942, -0.771425,
		40.954506, 35.565414, 29.762682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108383, 35.958424, 30.452820>,  <41.280289, 35.261654, 30.302681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.108383, 35.958424, 30.452820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.836395, 35.851414, 30.179743>,  <40.673203, 35.787209, 30.015896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.836395, 35.851414, 30.179743>,  <41.108383, 35.958424, 30.452820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836395, 35.851414, 30.179743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702214, 0.505571, 0.501293,
		0.211040, 0.820260, -0.531634,
		-0.679969, -0.267528, -0.682693,
		40.632404, 35.771156, 29.974936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770535, 36.544254, 30.336123>,  <41.108383, 35.958424, 30.452820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770535, 36.544254, 30.336123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.520004, 36.255199, 30.219160>,  <40.369686, 36.081764, 30.148983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.520004, 36.255199, 30.219160>,  <40.770535, 36.544254, 30.336123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.520004, 36.255199, 30.219160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759385, 0.480794, 0.438375,
		-0.176199, 0.496617, -0.849897,
		-0.626330, -0.722640, -0.292408,
		40.332104, 36.038406, 30.131437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214970, 36.870659, 30.333431>,  <40.770535, 36.544254, 30.336123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214970, 36.870659, 30.333431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.078907, 36.495831, 30.301954>,  <39.997269, 36.270935, 30.283068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.078907, 36.495831, 30.301954>,  <40.214970, 36.870659, 30.333431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078907, 36.495831, 30.301954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814290, 0.251665, 0.523064,
		-0.470343, 0.242005, -0.848652,
		-0.340161, -0.937069, -0.078693,
		39.976860, 36.214710, 30.278347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428410, 36.914890, 30.164930>,  <40.214970, 36.870659, 30.333431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428410, 36.914890, 30.164930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.503204, 36.552643, 30.317188>,  <39.548080, 36.335293, 30.408543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.503204, 36.552643, 30.317188>,  <39.428410, 36.914890, 30.164930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503204, 36.552643, 30.317188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757039, 0.114091, 0.643331,
		-0.626041, -0.408460, -0.664254,
		0.186989, -0.905618, 0.380646,
		39.559299, 36.280956, 30.431381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787483, 36.622597, 30.150280>,  <39.428410, 36.914890, 30.164930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787483, 36.622597, 30.150280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.029110, 36.463284, 30.426388>,  <39.174088, 36.367695, 30.592052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.029110, 36.463284, 30.426388>,  <38.787483, 36.622597, 30.150280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029110, 36.463284, 30.426388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696681, 0.156649, 0.700069,
		-0.386957, -0.903786, -0.182851,
		0.604069, -0.398285, 0.690267,
		39.210331, 36.343800, 30.633469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453159, 35.932262, 30.388996>,  <38.787483, 36.622597, 30.150280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453159, 35.932262, 30.388996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.696198, 36.067890, 30.676289>,  <38.842022, 36.149269, 30.848665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.696198, 36.067890, 30.676289>,  <38.453159, 35.932262, 30.388996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696198, 36.067890, 30.676289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758688, -0.019778, 0.651154,
		0.234994, -0.940552, 0.245234,
		0.607594, 0.339073, 0.718233,
		38.878475, 36.169613, 30.891758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269802, 35.582771, 30.947136>,  <38.453159, 35.932262, 30.388996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269802, 35.582771, 30.947136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.459412, 35.894646, 31.110790>,  <38.573177, 36.081772, 31.208982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.459412, 35.894646, 31.110790>,  <38.269802, 35.582771, 30.947136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459412, 35.894646, 31.110790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610652, -0.043657, 0.790695,
		0.634357, -0.624644, 0.455424,
		0.474020, 0.779688, 0.409135,
		38.601616, 36.128551, 31.233530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056717, 35.567936, 31.630583>,  <38.269802, 35.582771, 30.947136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056717, 35.567936, 31.630583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.255527, 35.915028, 31.632235>,  <38.374813, 36.123283, 31.633226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.255527, 35.915028, 31.632235>,  <38.056717, 35.567936, 31.630583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255527, 35.915028, 31.632235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587665, 0.333102, 0.737355,
		0.638445, -0.368913, 0.675493,
		0.497028, 0.867725, 0.004130,
		38.404636, 36.175346, 31.633474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219368, 35.673111, 32.319481>,  <38.056717, 35.567936, 31.630583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219368, 35.673111, 32.319481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.190014, 36.013931, 32.112164>,  <38.172401, 36.218422, 31.987772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.190014, 36.013931, 32.112164>,  <38.219368, 35.673111, 32.319481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190014, 36.013931, 32.112164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695546, 0.328719, 0.638873,
		0.714724, 0.407382, 0.568516,
		-0.073383, 0.852047, -0.518296,
		38.167999, 36.269547, 31.956675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284081, 36.216122, 32.803528>,  <38.219368, 35.673111, 32.319481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284081, 36.216122, 32.803528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.086239, 36.360588, 32.487320>,  <37.967533, 36.447269, 32.297596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.086239, 36.360588, 32.487320>,  <38.284081, 36.216122, 32.803528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086239, 36.360588, 32.487320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676209, 0.411488, 0.611080,
		0.545991, 0.836802, 0.040699,
		-0.494606, 0.361166, -0.790522,
		37.937859, 36.468937, 32.250164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<43.848911, 34.514809, 26.380713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.459553, 34.540215, 26.292646>,  <43.225937, 34.555458, 26.239807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.459553, 34.540215, 26.292646>,  <43.848911, 34.514809, 26.380713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.459553, 34.540215, 26.292646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162129, 0.488073, 0.857613,
		0.161929, 0.870489, -0.464788,
		-0.973393, 0.063517, -0.220165,
		43.167534, 34.559269, 26.226597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.747360, 35.144028, 26.677475>,  <43.848911, 34.514809, 26.380713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.747360, 35.144028, 26.677475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.386650, 34.986702, 26.605810>,  <43.170223, 34.892307, 26.562811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.386650, 34.986702, 26.605810>,  <43.747360, 35.144028, 26.677475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.386650, 34.986702, 26.605810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368086, 0.481654, 0.795313,
		-0.226511, 0.783144, -0.579118,
		-0.901779, -0.393312, -0.179164,
		43.116116, 34.868710, 26.552061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206375, 35.702431, 26.890902>,  <43.747360, 35.144028, 26.677475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206375, 35.702431, 26.890902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.025894, 35.345531, 26.883850>,  <42.917606, 35.131393, 26.879620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.025894, 35.345531, 26.883850>,  <43.206375, 35.702431, 26.890902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.025894, 35.345531, 26.883850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544402, 0.259535, 0.797664,
		-0.707140, 0.369503, -0.602844,
		-0.451199, -0.892249, -0.017631,
		42.890533, 35.077858, 26.878561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.577858, 35.935291, 27.026398>,  <43.206375, 35.702431, 26.890902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.577858, 35.935291, 27.026398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.610157, 35.549435, 27.126753>,  <42.629536, 35.317921, 27.186966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.610157, 35.549435, 27.126753>,  <42.577858, 35.935291, 27.026398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.610157, 35.549435, 27.126753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411918, 0.196913, 0.889690,
		-0.907636, -0.175185, -0.381453,
		0.080748, -0.964642, 0.250887,
		42.634380, 35.260040, 27.202019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.927692, 35.738670, 27.238335>,  <42.577858, 35.935291, 27.026398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.927692, 35.738670, 27.238335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.164886, 35.460625, 27.400906>,  <42.307201, 35.293797, 27.498447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.164886, 35.460625, 27.400906>,  <41.927692, 35.738670, 27.238335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164886, 35.460625, 27.400906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520306, 0.054440, 0.852243,
		-0.614534, -0.716832, -0.329392,
		0.592983, -0.695117, 0.406428,
		42.342781, 35.252090, 27.522835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508411, 35.145836, 27.355831>,  <41.927692, 35.738670, 27.238335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508411, 35.145836, 27.355831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.817326, 35.168369, 27.608942>,  <42.002674, 35.181889, 27.760809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.817326, 35.168369, 27.608942>,  <41.508411, 35.145836, 27.355831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.817326, 35.168369, 27.608942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635281, 0.069251, 0.769170,
		-0.000493, -0.996008, 0.089266,
		0.772281, 0.056330, 0.632778,
		42.049011, 35.185268, 27.798775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.316208, 34.640610, 27.855631>,  <41.508411, 35.145836, 27.355831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.316208, 34.640610, 27.855631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584805, 34.881065, 28.028944>,  <41.745960, 35.025337, 28.132933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584805, 34.881065, 28.028944>,  <41.316208, 34.640610, 27.855631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.584805, 34.881065, 28.028944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598616, 0.095419, 0.795333,
		0.436763, -0.793427, 0.423925,
		0.671489, 0.601140, 0.433282,
		41.786251, 35.061405, 28.158930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242218, 34.464787, 28.490383>,  <41.316208, 34.640610, 27.855631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242218, 34.464787, 28.490383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452171, 34.801144, 28.543131>,  <41.578144, 35.002960, 28.574780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452171, 34.801144, 28.543131>,  <41.242218, 34.464787, 28.490383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452171, 34.801144, 28.543131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400529, 0.107307, 0.909979,
		0.751047, -0.530452, 0.393127,
		0.524886, 0.840896, 0.131869,
		41.609638, 35.053413, 28.582691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678185, 34.483326, 29.103075>,  <41.242218, 34.464787, 28.490383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.678185, 34.483326, 29.103075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.575336, 34.864773, 29.040447>,  <41.513630, 35.093639, 29.002871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.575336, 34.864773, 29.040447>,  <41.678185, 34.483326, 29.103075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575336, 34.864773, 29.040447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395411, 0.044021, 0.917449,
		0.881783, 0.297800, 0.365750,
		-0.257116, 0.953613, -0.156570,
		41.498203, 35.150856, 28.993477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.208237, 34.251099, 29.423645>,  <41.678185, 34.483326, 29.103075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.208237, 34.251099, 29.423645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984760, 33.938770, 29.535488>,  <41.850674, 33.751373, 29.602594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984760, 33.938770, 29.535488>,  <42.208237, 34.251099, 29.423645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.984760, 33.938770, 29.535488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036737, -0.360096, -0.932192,
		0.828564, -0.510532, 0.229867,
		-0.558688, -0.780825, 0.279607,
		41.817154, 33.704521, 29.619370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.506927, 33.614491, 29.208950>,  <42.208237, 34.251099, 29.423645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.506927, 33.614491, 29.208950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.121548, 33.515991, 29.251137>,  <41.890320, 33.456894, 29.276449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.121548, 33.515991, 29.251137>,  <42.506927, 33.614491, 29.208950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.121548, 33.515991, 29.251137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038598, -0.517204, -0.854991,
		0.265084, -0.819673, 0.507806,
		-0.963453, -0.246245, 0.105465,
		41.832512, 33.442120, 29.282776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.545174, 32.916931, 29.205835>,  <42.506927, 33.614491, 29.208950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.545174, 32.916931, 29.205835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.188019, 33.060040, 29.096474>,  <41.973724, 33.145905, 29.030857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.188019, 33.060040, 29.096474>,  <42.545174, 32.916931, 29.205835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.188019, 33.060040, 29.096474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058348, -0.510137, -0.858112,
		-0.446477, -0.782153, 0.434621,
		-0.892891, 0.357768, -0.273401,
		41.920151, 33.167370, 29.014454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.539074, 32.576603, 28.574913>,  <42.545174, 32.916931, 29.205835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.539074, 32.576603, 28.574913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171467, 32.734272, 28.576954>,  <41.950901, 32.828873, 28.578178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171467, 32.734272, 28.576954>,  <42.539074, 32.576603, 28.574913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.171467, 32.734272, 28.576954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204190, -0.464920, -0.861485,
		-0.337201, -0.792766, 0.507757,
		-0.919022, 0.394173, 0.005103,
		41.895760, 32.852524, 28.578485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.058990, 32.079536, 28.648836>,  <42.539074, 32.576603, 28.574913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.058990, 32.079536, 28.648836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935661, 32.392185, 28.431950>,  <41.861664, 32.579777, 28.301817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935661, 32.392185, 28.431950>,  <42.058990, 32.079536, 28.648836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.935661, 32.392185, 28.431950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022477, -0.563842, -0.825577,
		-0.951017, -0.266730, 0.156276,
		-0.308321, 0.781625, -0.542218,
		41.843166, 32.626671, 28.269283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514610, 31.797634, 28.235071>,  <42.058990, 32.079536, 28.648836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.514610, 31.797634, 28.235071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633961, 32.142086, 28.070427>,  <41.705570, 32.348759, 27.971640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633961, 32.142086, 28.070427>,  <41.514610, 31.797634, 28.235071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.633961, 32.142086, 28.070427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159200, -0.470118, -0.868127,
		-0.941078, 0.193500, -0.277364,
		0.298376, 0.861131, -0.411613,
		41.723473, 32.400425, 27.946943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127895, 31.775269, 27.600769>,  <41.514610, 31.797634, 28.235071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127895, 31.775269, 27.600769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422585, 32.038391, 27.538126>,  <41.599400, 32.196266, 27.500540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422585, 32.038391, 27.538126>,  <41.127895, 31.775269, 27.600769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422585, 32.038391, 27.538126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305496, -0.530415, -0.790779,
		-0.603246, 0.534745, -0.591728,
		0.736727, 0.657805, -0.156608,
		41.643604, 32.235733, 27.491144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.161060, 31.789158, 26.872654>,  <41.127895, 31.775269, 27.600769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.161060, 31.789158, 26.872654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494202, 31.978346, 26.987652>,  <41.694088, 32.091858, 27.056650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494202, 31.978346, 26.987652>,  <41.161060, 31.789158, 26.872654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.494202, 31.978346, 26.987652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475192, -0.344673, -0.809564,
		-0.283809, 0.810863, -0.511814,
		0.832854, 0.472971, 0.287494,
		41.744057, 32.120235, 27.073900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.456123, 31.883116, 26.315685>,  <41.161060, 31.789158, 26.872654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.456123, 31.883116, 26.315685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.765602, 31.886583, 26.569084>,  <41.951290, 31.888664, 26.721125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.765602, 31.886583, 26.569084>,  <41.456123, 31.883116, 26.315685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.765602, 31.886583, 26.569084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548274, -0.510215, -0.662629,
		0.317477, 0.860003, -0.399503,
		0.773695, 0.008667, 0.633499,
		41.997711, 31.889183, 26.759134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.024460, 32.082989, 25.881964>,  <41.456123, 31.883116, 26.315685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.024460, 32.082989, 25.881964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.222107, 31.915108, 26.186514>,  <42.340694, 31.814379, 26.369244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.222107, 31.915108, 26.186514>,  <42.024460, 32.082989, 25.881964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.222107, 31.915108, 26.186514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430597, -0.642651, -0.633708,
		0.755270, 0.640973, -0.136822,
		0.494119, -0.419706, 0.761376,
		42.370342, 31.789196, 26.414927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.736588, 32.054493, 25.681841>,  <42.024460, 32.082989, 25.881964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.736588, 32.054493, 25.681841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.722988, 31.780815, 25.973244>,  <42.714828, 31.616610, 26.148087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.722988, 31.780815, 25.973244>,  <42.736588, 32.054493, 25.681841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.722988, 31.780815, 25.973244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616075, -0.588314, -0.523773,
		0.786953, 0.431008, 0.441517,
		-0.034001, -0.684193, 0.728509,
		42.712788, 31.575558, 26.191795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.452328, 31.879807, 25.794382>,  <42.736588, 32.054493, 25.681841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.452328, 31.879807, 25.794382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.244801, 31.577555, 25.954308>,  <43.120285, 31.396204, 26.050262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.244801, 31.577555, 25.954308>,  <43.452328, 31.879807, 25.794382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.244801, 31.577555, 25.954308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659504, -0.651357, -0.375220,
		0.543949, 0.069008, 0.836276,
		-0.518821, -0.755627, 0.399816,
		43.089153, 31.350866, 26.074253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.967709, 31.406263, 26.116974>,  <43.452328, 31.879807, 25.794382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.967709, 31.406263, 26.116974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.637760, 31.193672, 26.039902>,  <43.439793, 31.066116, 25.993658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.637760, 31.193672, 26.039902>,  <43.967709, 31.406263, 26.116974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.637760, 31.193672, 26.039902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543910, -0.653174, -0.526807,
		0.154134, -0.539346, 0.827858,
		-0.824866, -0.531479, -0.192679,
		43.390301, 31.034229, 25.982098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.116760, 30.716412, 26.386818>,  <43.967709, 31.406263, 26.116974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.116760, 30.716412, 26.386818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.795937, 30.658131, 26.155136>,  <43.603443, 30.623161, 26.016127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.795937, 30.658131, 26.155136>,  <44.116760, 30.716412, 26.386818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.795937, 30.658131, 26.155136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510864, -0.669742, -0.538946,
		-0.309390, -0.728159, 0.611606,
		-0.802057, -0.145703, -0.579202,
		43.555321, 30.614420, 25.981375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.828300, 34.053726, 21.939163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.190617, 33.978928, 22.091253>,  <37.408009, 33.934048, 22.182508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.190617, 33.978928, 22.091253>,  <36.828300, 34.053726, 21.939163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190617, 33.978928, 22.091253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391449, -0.025794, 0.919838,
		-0.162202, -0.982021, -0.096564,
		0.905792, -0.187000, 0.380227,
		37.462353, 33.922829, 22.205322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688862, 33.615761, 22.536343>,  <36.828300, 34.053726, 21.939163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688862, 33.615761, 22.536343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.054024, 33.761234, 22.610460>,  <37.273121, 33.848518, 22.654930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.054024, 33.761234, 22.610460>,  <36.688862, 33.615761, 22.536343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054024, 33.761234, 22.610460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244046, 0.122469, 0.962000,
		0.327168, -0.923438, 0.200557,
		0.912909, 0.363681, 0.185293,
		37.327896, 33.870338, 22.666048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910976, 33.288029, 23.058289>,  <36.688862, 33.615761, 22.536343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910976, 33.288029, 23.058289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.152706, 33.606678, 23.063673>,  <37.297745, 33.797867, 23.066904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.152706, 33.606678, 23.063673>,  <36.910976, 33.288029, 23.058289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152706, 33.606678, 23.063673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175483, 0.116605, 0.977553,
		0.777170, -0.593125, 0.210261,
		0.604328, 0.796622, 0.013462,
		37.334003, 33.845665, 23.067711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081120, 33.282078, 23.731308>,  <36.910976, 33.288029, 23.058289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081120, 33.282078, 23.731308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.187576, 33.648617, 23.611664>,  <37.251450, 33.868542, 23.539877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.187576, 33.648617, 23.611664>,  <37.081120, 33.282078, 23.731308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187576, 33.648617, 23.611664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018912, 0.315206, 0.948835,
		0.963747, -0.246871, 0.101221,
		0.266145, 0.916351, -0.299110,
		37.267422, 33.923523, 23.521931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683655, 33.421085, 24.057350>,  <37.081120, 33.282078, 23.731308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683655, 33.421085, 24.057350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.537544, 33.783180, 23.970520>,  <37.449879, 34.000435, 23.918421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.537544, 33.783180, 23.970520>,  <37.683655, 33.421085, 24.057350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537544, 33.783180, 23.970520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020059, 0.240790, 0.970370,
		0.930682, 0.350102, -0.106113,
		-0.365279, 0.905234, -0.217077,
		37.427959, 34.054752, 23.905397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062122, 33.942120, 24.482653>,  <37.683655, 33.421085, 24.057350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062122, 33.942120, 24.482653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.748562, 34.155308, 24.355253>,  <37.560425, 34.283218, 24.278812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.748562, 34.155308, 24.355253>,  <38.062122, 33.942120, 24.482653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748562, 34.155308, 24.355253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055567, 0.450697, 0.890946,
		0.618392, 0.716113, -0.323688,
		-0.783903, 0.532967, -0.318499,
		37.513390, 34.315197, 24.259703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141857, 34.709110, 24.607857>,  <38.062122, 33.942120, 24.482653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141857, 34.709110, 24.607857> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.751850, 34.620445, 24.602161>,  <37.517845, 34.567245, 24.598743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.751850, 34.620445, 24.602161>,  <38.141857, 34.709110, 24.607857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751850, 34.620445, 24.602161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112405, 0.437110, 0.892357,
		-0.191579, 0.871665, -0.451106,
		-0.975019, -0.221664, -0.014239,
		37.459343, 34.553947, 24.597889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870525, 35.336346, 24.841217>,  <38.141857, 34.709110, 24.607857>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870525, 35.336346, 24.841217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.579792, 35.063263, 24.871195>,  <37.405350, 34.899414, 24.889181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.579792, 35.063263, 24.871195>,  <37.870525, 35.336346, 24.841217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579792, 35.063263, 24.871195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377914, 0.488661, 0.786379,
		-0.573491, 0.543246, -0.613182,
		-0.726835, -0.682711, 0.074943,
		37.361740, 34.858448, 24.893677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344650, 35.776684, 25.057602>,  <37.870525, 35.336346, 24.841217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344650, 35.776684, 25.057602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.207695, 35.410896, 25.143881>,  <37.125523, 35.191425, 25.195648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.207695, 35.410896, 25.143881>,  <37.344650, 35.776684, 25.057602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207695, 35.410896, 25.143881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565847, 0.383965, 0.729650,
		-0.750058, 0.127774, -0.648912,
		-0.342390, -0.914464, 0.215696,
		37.104977, 35.136559, 25.208590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693161, 35.823368, 25.064224>,  <37.344650, 35.776684, 25.057602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693161, 35.823368, 25.064224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.718475, 35.478745, 25.265699>,  <36.733665, 35.271969, 25.386585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.718475, 35.478745, 25.265699>,  <36.693161, 35.823368, 25.064224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718475, 35.478745, 25.265699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642155, 0.351189, 0.681398,
		-0.763958, -0.366573, -0.531030,
		0.063290, -0.861563, 0.503690,
		36.737461, 35.220276, 25.416807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988819, 35.553310, 25.230642>,  <36.693161, 35.823368, 25.064224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988819, 35.553310, 25.230642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.253990, 35.389065, 25.481058>,  <36.413094, 35.290516, 25.631308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.253990, 35.389065, 25.481058>,  <35.988819, 35.553310, 25.230642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253990, 35.389065, 25.481058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534223, 0.326408, 0.779784,
		-0.524535, -0.851384, -0.002976,
		0.662924, -0.410614, 0.626042,
		36.452866, 35.265881, 25.668871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655479, 35.298435, 25.738522>,  <35.988819, 35.553310, 25.230642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655479, 35.298435, 25.738522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.975800, 35.262012, 25.975307>,  <36.167992, 35.240158, 26.117378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.975800, 35.262012, 25.975307>,  <35.655479, 35.298435, 25.738522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975800, 35.262012, 25.975307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586783, 0.078734, 0.805908,
		-0.119992, -0.992728, 0.009619,
		0.800804, -0.091058, 0.591963,
		36.216042, 35.234695, 26.152897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406288, 34.849037, 26.242783>,  <35.655479, 35.298435, 25.738522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406288, 34.849037, 26.242783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.702442, 35.052441, 26.418625>,  <35.880135, 35.174484, 26.524130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.702442, 35.052441, 26.418625>,  <35.406288, 34.849037, 26.242783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702442, 35.052441, 26.418625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584495, 0.164055, 0.794639,
		0.331961, -0.845284, 0.418684,
		0.740383, 0.508508, 0.439605,
		35.924557, 35.204994, 26.550507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561417, 34.523228, 26.964209>,  <35.406288, 34.849037, 26.242783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561417, 34.523228, 26.964209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.708954, 34.894981, 26.958593>,  <35.797474, 35.118034, 26.955225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.708954, 34.894981, 26.958593>,  <35.561417, 34.523228, 26.964209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708954, 34.894981, 26.958593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391614, 0.169078, 0.904462,
		0.842969, -0.328103, 0.426323,
		0.368838, 0.929388, -0.014038,
		35.819607, 35.173798, 26.954382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148357, 34.039722, 27.030092>,  <35.561417, 34.523228, 26.964209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148357, 34.039722, 27.030092> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.199661, 33.674133, 27.184082>,  <36.230446, 33.454781, 27.276476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.199661, 33.674133, 27.184082>,  <36.148357, 34.039722, 27.030092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199661, 33.674133, 27.184082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504882, -0.273934, -0.818568,
		0.853606, 0.299357, 0.426312,
		0.128263, -0.913972, 0.384972,
		36.238140, 33.399940, 27.299574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911953, 33.844566, 26.891808>,  <36.148357, 34.039722, 27.030092>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911953, 33.844566, 26.891808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.736370, 33.495087, 26.975674>,  <36.631020, 33.285397, 27.025993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.736370, 33.495087, 26.975674>,  <36.911953, 33.844566, 26.891808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736370, 33.495087, 26.975674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311854, -0.366991, -0.876393,
		0.842652, -0.319314, 0.433562,
		-0.438958, -0.873702, 0.209667,
		36.604683, 33.232975, 27.038574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344772, 33.369179, 26.702835>,  <36.911953, 33.844566, 26.891808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344772, 33.369179, 26.702835> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.004047, 33.159664, 26.706226>,  <36.799614, 33.033955, 26.708261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.004047, 33.159664, 26.706226>,  <37.344772, 33.369179, 26.702835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004047, 33.159664, 26.706226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235288, -0.396998, -0.887148,
		0.468040, -0.753686, 0.461407,
		-0.851809, -0.523785, 0.008478,
		36.748505, 33.002529, 26.708769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470985, 32.628307, 26.494482>,  <37.344772, 33.369179, 26.702835>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470985, 32.628307, 26.494482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.076191, 32.653694, 26.435383>,  <36.839314, 32.668926, 26.399923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.076191, 32.653694, 26.435383>,  <37.470985, 32.628307, 26.494482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076191, 32.653694, 26.435383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081292, -0.595817, -0.798995,
		-0.138740, -0.800608, 0.582904,
		-0.986987, 0.063467, -0.147747,
		36.780094, 32.672733, 26.391058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304050, 32.009758, 26.445028>,  <37.470985, 32.628307, 26.494482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304050, 32.009758, 26.445028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.980846, 32.179455, 26.281500>,  <36.786922, 32.281273, 26.183382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.980846, 32.179455, 26.281500>,  <37.304050, 32.009758, 26.445028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980846, 32.179455, 26.281500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025073, -0.718027, -0.695563,
		-0.588634, -0.551772, 0.590811,
		-0.808011, 0.424245, -0.408821,
		36.738441, 32.306728, 26.158854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727291, 31.492046, 26.441580>,  <37.304050, 32.009758, 26.445028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727291, 31.492046, 26.441580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.724182, 31.746649, 26.133087>,  <36.722317, 31.899410, 25.947990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.724182, 31.746649, 26.133087>,  <36.727291, 31.492046, 26.441580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724182, 31.746649, 26.133087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036977, -0.770546, -0.636311,
		-0.999286, -0.033462, -0.017550,
		-0.007769, 0.636506, -0.771233,
		36.721851, 31.937601, 25.901718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487000, 31.034403, 25.866930>,  <36.727291, 31.492046, 26.441580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487000, 31.034403, 25.866930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.615749, 31.380995, 25.714294>,  <36.692997, 31.588951, 25.622713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.615749, 31.380995, 25.714294>,  <36.487000, 31.034403, 25.866930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615749, 31.380995, 25.714294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121959, -0.437622, -0.890850,
		-0.938896, 0.240201, -0.246533,
		0.321871, 0.866482, -0.381587,
		36.712311, 31.640940, 25.599819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135136, 31.173683, 25.250957>,  <36.487000, 31.034403, 25.866930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135136, 31.173683, 25.250957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.487198, 31.362587, 25.231789>,  <36.698437, 31.475929, 25.220287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.487198, 31.362587, 25.231789>,  <36.135136, 31.173683, 25.250957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487198, 31.362587, 25.231789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129185, -0.335457, -0.933156,
		-0.456768, 0.815132, -0.356264,
		0.880156, 0.472260, -0.047923,
		36.751244, 31.504265, 25.217411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106472, 31.256294, 24.458378>,  <36.135136, 31.173683, 25.250957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106472, 31.256294, 24.458378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.484234, 31.313396, 24.576855>,  <36.710892, 31.347658, 24.647940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.484234, 31.313396, 24.576855>,  <36.106472, 31.256294, 24.458378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484234, 31.313396, 24.576855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324502, -0.259526, -0.909585,
		-0.052981, 0.955126, -0.291421,
		0.944400, 0.142757, 0.296191,
		36.767555, 31.356224, 24.665712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405739, 31.423796, 23.850065>,  <36.106472, 31.256294, 24.458378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405739, 31.423796, 23.850065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.729847, 31.385389, 24.081320>,  <36.924313, 31.362345, 24.220074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.729847, 31.385389, 24.081320>,  <36.405739, 31.423796, 23.850065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729847, 31.385389, 24.081320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547205, -0.229249, -0.804991,
		0.209830, 0.968620, -0.133213,
		0.810270, -0.096017, 0.578138,
		36.972927, 31.356585, 24.254761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975842, 31.871838, 23.554642>,  <36.405739, 31.423796, 23.850065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975842, 31.871838, 23.554642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.121449, 31.573139, 23.777302>,  <37.208813, 31.393919, 23.910898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.121449, 31.573139, 23.777302>,  <36.975842, 31.871838, 23.554642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121449, 31.573139, 23.777302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594879, -0.273463, -0.755868,
		0.716666, 0.606289, 0.344679,
		0.364018, -0.746748, 0.556650,
		37.230656, 31.349115, 23.944296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712894, 31.927395, 23.518282>,  <36.975842, 31.871838, 23.554642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712894, 31.927395, 23.518282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.651161, 31.547945, 23.628769>,  <37.614120, 31.320276, 23.695061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.651161, 31.547945, 23.628769>,  <37.712894, 31.927395, 23.518282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651161, 31.547945, 23.628769> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682473, -0.304505, -0.664461,
		0.714433, 0.085965, 0.694404,
		-0.154328, -0.948624, 0.276217,
		37.604862, 31.263357, 23.711634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369919, 31.744614, 23.537766>,  <37.712894, 31.927395, 23.518282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369919, 31.744614, 23.537766> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.137104, 31.423010, 23.489105>,  <37.997414, 31.230047, 23.459909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.137104, 31.423010, 23.489105>,  <38.369919, 31.744614, 23.537766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137104, 31.423010, 23.489105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625540, -0.347119, -0.698719,
		0.519551, -0.482777, 0.704977,
		-0.582036, -0.804012, -0.121650,
		37.962494, 31.181807, 23.452610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837624, 31.146357, 23.595394>,  <38.369919, 31.744614, 23.537766>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837624, 31.146357, 23.595394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.521748, 31.024839, 23.382193>,  <38.332222, 30.951929, 23.254271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.521748, 31.024839, 23.382193>,  <38.837624, 31.146357, 23.595394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521748, 31.024839, 23.382193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607175, -0.262557, -0.749935,
		0.087881, -0.915846, 0.391796,
		-0.789693, -0.303794, -0.533005,
		38.284840, 30.933701, 23.222292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899548, 30.599163, 24.161667>,  <38.837624, 31.146357, 23.595394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899548, 30.599163, 24.161667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.101337, 30.299349, 24.333105>,  <39.222412, 30.119459, 24.435968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.101337, 30.299349, 24.333105>,  <38.899548, 30.599163, 24.161667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101337, 30.299349, 24.333105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599981, 0.052649, 0.798280,
		-0.620906, -0.659864, -0.423149,
		0.504478, -0.749538, 0.428596,
		39.252682, 30.074488, 24.461683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487591, 30.125385, 24.372458>,  <38.899548, 30.599163, 24.161667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487591, 30.125385, 24.372458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.826714, 30.136225, 24.584303>,  <39.030186, 30.142729, 24.711411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.826714, 30.136225, 24.584303>,  <38.487591, 30.125385, 24.372458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826714, 30.136225, 24.584303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515551, 0.276055, 0.811172,
		-0.124223, -0.960760, 0.248011,
		0.847807, 0.027096, 0.529613,
		39.081055, 30.144354, 24.743187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263733, 29.849173, 25.117144>,  <38.487591, 30.125385, 24.372458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263733, 29.849173, 25.117144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.629230, 30.003794, 25.167189>,  <38.848530, 30.096567, 25.197216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.629230, 30.003794, 25.167189>,  <38.263733, 29.849173, 25.117144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629230, 30.003794, 25.167189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260411, 0.320831, 0.910634,
		0.311853, -0.864671, 0.393817,
		0.913747, 0.386539, 0.125117,
		38.903355, 30.119761, 25.204721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406654, 29.566385, 25.705271>,  <38.263733, 29.849173, 25.117144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406654, 29.566385, 25.705271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.669811, 29.867624, 25.703674>,  <38.827705, 30.048368, 25.702717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.669811, 29.867624, 25.703674>,  <38.406654, 29.566385, 25.705271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669811, 29.867624, 25.703674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205393, 0.184519, 0.961128,
		0.724560, -0.631503, 0.276075,
		0.657896, 0.753098, -0.003989,
		38.867180, 30.093554, 25.702478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924725, 29.443748, 26.157934>,  <38.406654, 29.566385, 25.705271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924725, 29.443748, 26.157934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.900116, 29.841436, 26.122732>,  <38.885353, 30.080050, 26.101612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.900116, 29.841436, 26.122732>,  <38.924725, 29.443748, 26.157934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900116, 29.841436, 26.122732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169876, 0.076454, 0.982495,
		0.983543, 0.075391, 0.164191,
		-0.061518, 0.994219, -0.088003,
		38.881660, 30.139702, 26.096331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369801, 29.760353, 26.663183>,  <38.924725, 29.443748, 26.157934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369801, 29.760353, 26.663183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.128319, 30.065989, 26.572229>,  <38.983429, 30.249371, 26.517656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.128319, 30.065989, 26.572229>,  <39.369801, 29.760353, 26.663183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128319, 30.065989, 26.572229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033285, 0.260819, 0.964814,
		0.796510, 0.590035, -0.132026,
		-0.603709, 0.764089, -0.227384,
		38.947205, 30.295216, 26.504015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577858, 30.211590, 27.062187>,  <39.369801, 29.760353, 26.663183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577858, 30.211590, 27.062187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.232231, 30.374512, 26.943869>,  <39.024857, 30.472265, 26.872877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.232231, 30.374512, 26.943869>,  <39.577858, 30.211590, 27.062187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232231, 30.374512, 26.943869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279291, 0.100974, 0.954883,
		0.418794, 0.907694, 0.026508,
		-0.864065, 0.407303, -0.295798,
		38.973011, 30.496702, 26.855129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530048, 30.796072, 27.384644>,  <39.577858, 30.211590, 27.062187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530048, 30.796072, 27.384644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.161259, 30.662281, 27.306568>,  <38.939987, 30.582006, 27.259724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.161259, 30.662281, 27.306568>,  <39.530048, 30.796072, 27.384644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161259, 30.662281, 27.306568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265025, 0.177447, 0.947773,
		-0.282371, 0.925548, -0.252245,
		-0.921970, -0.334475, -0.195187,
		38.884666, 30.561939, 27.248013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001320, 31.360933, 27.531345>,  <39.530048, 30.796072, 27.384644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001320, 31.360933, 27.531345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.834019, 30.998573, 27.557913>,  <38.733639, 30.781158, 27.573853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.834019, 30.998573, 27.557913>,  <39.001320, 31.360933, 27.531345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834019, 30.998573, 27.557913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246398, 0.183533, 0.951632,
		-0.874273, 0.381657, -0.299975,
		-0.418253, -0.905899, 0.066419,
		38.708542, 30.726803, 27.577839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350346, 31.535582, 27.730179>,  <39.001320, 31.360933, 27.531345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350346, 31.535582, 27.730179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.435646, 31.158361, 27.832300>,  <38.486828, 30.932030, 27.893572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.435646, 31.158361, 27.832300>,  <38.350346, 31.535582, 27.730179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435646, 31.158361, 27.832300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313684, 0.181388, 0.932041,
		-0.925271, -0.278844, -0.257138,
		0.213252, -0.943050, 0.255302,
		38.499622, 30.875446, 27.908892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709946, 31.258001, 28.005465>,  <38.350346, 31.535582, 27.730179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709946, 31.258001, 28.005465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.016319, 31.051329, 28.158506>,  <38.200142, 30.927326, 28.250332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.016319, 31.051329, 28.158506>,  <37.709946, 31.258001, 28.005465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016319, 31.051329, 28.158506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385372, 0.107388, 0.916491,
		-0.514620, -0.849417, -0.116862,
		0.765934, -0.516680, 0.382605,
		38.246101, 30.896324, 28.273289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473667, 30.940336, 28.629673>,  <37.709946, 31.258001, 28.005465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473667, 30.940336, 28.629673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.869884, 30.963833, 28.679266>,  <38.107616, 30.977930, 28.709021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.869884, 30.963833, 28.679266>,  <37.473667, 30.940336, 28.629673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869884, 30.963833, 28.679266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130910, 0.134350, 0.982249,
		0.041037, -0.989192, 0.140769,
		0.990545, 0.058736, 0.123982,
		38.167049, 30.981455, 28.716461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591434, 30.452303, 29.143124>,  <37.473667, 30.940336, 28.629673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591434, 30.452303, 29.143124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.933258, 30.659311, 29.160559>,  <38.138351, 30.783516, 29.171021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.933258, 30.659311, 29.160559>,  <37.591434, 30.452303, 29.143124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933258, 30.659311, 29.160559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049090, -0.003063, 0.998790,
		0.517027, -0.855666, 0.022787,
		0.854560, 0.517520, 0.043589,
		38.189625, 30.814568, 29.173635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927013, 30.120558, 29.791040>,  <37.591434, 30.452303, 29.143124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927013, 30.120558, 29.791040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.068775, 30.489763, 29.731108>,  <38.153831, 30.711287, 29.695148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.068775, 30.489763, 29.731108>,  <37.927013, 30.120558, 29.791040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068775, 30.489763, 29.731108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150566, 0.214469, 0.965056,
		0.922892, -0.319456, 0.214983,
		0.354401, 0.923012, -0.149833,
		38.175095, 30.766666, 29.686157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.990711, 29.854950, 26.345232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.783272, 30.015194, 26.043089>,  <43.658810, 30.111340, 25.861803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.783272, 30.015194, 26.043089>,  <43.990711, 29.854950, 26.345232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.783272, 30.015194, 26.043089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451876, -0.621567, -0.639892,
		-0.725853, -0.673177, 0.141318,
		-0.518599, 0.400609, -0.755359,
		43.627693, 30.135376, 25.816481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.692043, 29.296022, 25.996649>,  <43.990711, 29.854950, 26.345232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.692043, 29.296022, 25.996649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.725178, 29.597464, 25.735813>,  <43.745056, 29.778328, 25.579311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.725178, 29.597464, 25.735813>,  <43.692043, 29.296022, 25.996649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.725178, 29.597464, 25.735813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483646, -0.602513, -0.634874,
		-0.871335, -0.262792, -0.414385,
		0.082832, 0.753603, -0.652089,
		43.750027, 29.823545, 25.540186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.388191, 29.091080, 25.333441>,  <43.692043, 29.296022, 25.996649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.388191, 29.091080, 25.333441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.637241, 29.390570, 25.242449>,  <43.786671, 29.570263, 25.187853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.637241, 29.390570, 25.242449>,  <43.388191, 29.091080, 25.333441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.637241, 29.390570, 25.242449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424549, -0.567412, -0.705550,
		-0.657339, 0.342717, -0.671156,
		0.622626, 0.748725, -0.227482,
		43.824028, 29.615187, 25.174204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267181, 29.206535, 24.627945>,  <43.388191, 29.091080, 25.333441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.267181, 29.206535, 24.627945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.625851, 29.363844, 24.709251>,  <43.841053, 29.458229, 24.758036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.625851, 29.363844, 24.709251>,  <43.267181, 29.206535, 24.627945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.625851, 29.363844, 24.709251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350902, -0.351461, -0.867953,
		-0.269900, 0.849596, -0.453145,
		0.896673, 0.393270, 0.203265,
		43.894852, 29.481825, 24.770231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.506657, 29.669476, 24.036850>,  <43.267181, 29.206535, 24.627945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.506657, 29.669476, 24.036850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.861317, 29.605143, 24.210279>,  <44.074112, 29.566544, 24.314337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.861317, 29.605143, 24.210279>,  <43.506657, 29.669476, 24.036850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.861317, 29.605143, 24.210279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441557, 0.015865, -0.897093,
		0.137402, 0.986854, 0.085083,
		0.886650, -0.160832, 0.433572,
		44.127312, 29.556892, 24.340351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.856636, 30.166828, 23.734291>,  <43.506657, 29.669476, 24.036850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.856636, 30.166828, 23.734291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.113525, 29.889212, 23.864433>,  <44.267658, 29.722641, 23.942518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.113525, 29.889212, 23.864433>,  <43.856636, 30.166828, 23.734291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.113525, 29.889212, 23.864433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330016, -0.132747, -0.934595,
		0.691838, 0.707591, 0.143792,
		0.642222, -0.694042, 0.325356,
		44.306190, 29.681000, 23.962040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.405293, 30.280621, 23.289820>,  <43.856636, 30.166828, 23.734291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.405293, 30.280621, 23.289820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.486546, 29.926170, 23.456442>,  <44.535297, 29.713501, 23.556416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.486546, 29.926170, 23.456442>,  <44.405293, 30.280621, 23.289820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.486546, 29.926170, 23.456442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048116, -0.415875, -0.908148,
		0.977967, 0.204521, -0.041842,
		0.203137, -0.886126, 0.416553,
		44.547485, 29.660332, 23.581408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.090744, 30.143337, 23.054235>,  <44.405293, 30.280621, 23.289820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.090744, 30.143337, 23.054235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.914417, 29.794649, 23.139826>,  <44.808620, 29.585436, 23.191179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.914417, 29.794649, 23.139826>,  <45.090744, 30.143337, 23.054235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.914417, 29.794649, 23.139826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113155, -0.290453, -0.950175,
		0.890435, -0.394643, 0.226677,
		-0.440819, -0.871719, 0.213974,
		44.782173, 29.533133, 23.204018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.491776, 29.542267, 22.752760>,  <45.090744, 30.143337, 23.054235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.491776, 29.542267, 22.752760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.144054, 29.355631, 22.818010>,  <44.935421, 29.243650, 22.857161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.144054, 29.355631, 22.818010>,  <45.491776, 29.542267, 22.752760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.144054, 29.355631, 22.818010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162099, -0.580889, -0.797679,
		0.466947, -0.666980, 0.580601,
		-0.869301, -0.466588, 0.163128,
		44.883263, 29.215654, 22.866949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.655849, 28.793774, 22.828045>,  <45.491776, 29.542267, 22.752760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.655849, 28.793774, 22.828045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.272995, 28.851566, 22.727629>,  <45.043282, 28.886242, 22.667379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.272995, 28.851566, 22.727629>,  <45.655849, 28.793774, 22.828045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.272995, 28.851566, 22.727629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099620, -0.649626, -0.753698,
		-0.271981, -0.746398, 0.607385,
		-0.957132, 0.144483, -0.251042,
		44.985855, 28.894911, 22.652315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.378685, 28.231403, 22.567114>,  <45.655849, 28.793774, 22.828045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.378685, 28.231403, 22.567114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.077824, 28.459538, 22.435066>,  <44.897305, 28.596418, 22.355839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.077824, 28.459538, 22.435066>,  <45.378685, 28.231403, 22.567114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.077824, 28.459538, 22.435066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030538, -0.530576, -0.847087,
		-0.658277, -0.627061, 0.416493,
		-0.752156, 0.570337, -0.330117,
		44.852177, 28.630638, 22.336031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.754173, 27.789633, 22.297552>,  <45.378685, 28.231403, 22.567114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.754173, 27.789633, 22.297552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.745720, 28.142008, 22.108448>,  <44.740646, 28.353434, 21.994986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.745720, 28.142008, 22.108448>,  <44.754173, 27.789633, 22.297552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.745720, 28.142008, 22.108448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032400, -0.473220, -0.880348,
		-0.999251, -0.003291, 0.038545,
		-0.021138, 0.880938, -0.472759,
		44.739380, 28.406290, 21.966619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.238503, 27.876341, 21.804405>,  <44.754173, 27.789633, 22.297552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.238503, 27.876341, 21.804405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.554920, 28.085024, 21.676615>,  <44.744770, 28.210234, 21.599941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.554920, 28.085024, 21.676615>,  <44.238503, 27.876341, 21.804405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.554920, 28.085024, 21.676615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080482, -0.606438, -0.791047,
		-0.606438, 0.600044, -0.521709,
		0.791047, 0.521709, -0.319474,
		44.792233, 28.241537, 21.580772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.096256, 28.088480, 21.164009>,  <44.238503, 27.876341, 21.804405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.096256, 28.088480, 21.164009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.492466, 28.058947, 21.210337>,  <44.730190, 28.041227, 21.238134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.492466, 28.058947, 21.210337>,  <44.096256, 28.088480, 21.164009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.492466, 28.058947, 21.210337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034326, -0.683418, -0.729219,
		0.132993, 0.726284, -0.674407,
		0.990522, -0.073831, 0.115820,
		44.789623, 28.036797, 21.245083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.680607, 28.558819, 20.786333>,  <44.096256, 28.088480, 21.164009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.680607, 28.558819, 20.786333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.338039, 28.407627, 20.645658>,  <43.132500, 28.316912, 20.561255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.338039, 28.407627, 20.645658>,  <43.680607, 28.558819, 20.786333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.338039, 28.407627, 20.645658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511514, 0.528830, 0.677267,
		-0.070010, 0.759915, -0.646241,
		-0.856418, -0.377977, -0.351684,
		43.081116, 28.294233, 20.540154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.051033, 29.133474, 20.567255>,  <43.680607, 28.558819, 20.786333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.051033, 29.133474, 20.567255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.888039, 28.781816, 20.666094>,  <42.790241, 28.570822, 20.725397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.888039, 28.781816, 20.666094>,  <43.051033, 29.133474, 20.567255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.888039, 28.781816, 20.666094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563102, 0.454911, 0.689907,
		-0.718935, 0.141990, -0.680420,
		-0.407490, -0.879144, 0.247097,
		42.765793, 28.518074, 20.740223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.495743, 29.304798, 20.637194>,  <43.051033, 29.133474, 20.567255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.495743, 29.304798, 20.637194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.469814, 28.967657, 20.850885>,  <42.454258, 28.765373, 20.979099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.469814, 28.967657, 20.850885>,  <42.495743, 29.304798, 20.637194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.469814, 28.967657, 20.850885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565175, 0.472222, 0.676449,
		-0.822420, -0.258085, -0.506969,
		-0.064821, -0.842851, 0.534228,
		42.450367, 28.714802, 21.011154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752892, 29.156473, 20.774553>,  <42.495743, 29.304798, 20.637194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752892, 29.156473, 20.774553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.962875, 28.953949, 21.048214>,  <42.088867, 28.832434, 21.212410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.962875, 28.953949, 21.048214>,  <41.752892, 29.156473, 20.774553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962875, 28.953949, 21.048214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566745, 0.391752, 0.724796,
		-0.634991, -0.768230, -0.081295,
		0.524963, -0.506313, 0.684150,
		42.120365, 28.802055, 21.253458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.277668, 28.789240, 21.055616>,  <41.752892, 29.156473, 20.774553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.277668, 28.789240, 21.055616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.564381, 28.772776, 21.334047>,  <41.736408, 28.762897, 21.501106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.564381, 28.772776, 21.334047>,  <41.277668, 28.789240, 21.055616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.564381, 28.772776, 21.334047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645265, 0.339213, 0.684520,
		-0.264294, -0.939809, 0.216584,
		0.716785, -0.041161, 0.696078,
		41.779415, 28.760427, 21.542871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946144, 28.423584, 21.524063>,  <41.277668, 28.789240, 21.055616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946144, 28.423584, 21.524063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.243114, 28.633224, 21.690975>,  <41.421295, 28.759008, 21.791122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.243114, 28.633224, 21.690975>,  <40.946144, 28.423584, 21.524063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243114, 28.633224, 21.690975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652646, 0.425257, 0.627065,
		0.151195, -0.737884, 0.657774,
		0.742424, 0.524103, 0.417281,
		41.465843, 28.790455, 21.816158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741661, 28.439054, 22.170420>,  <40.946144, 28.423584, 21.524063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.741661, 28.439054, 22.170420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.039890, 28.705521, 22.177832>,  <41.218826, 28.865400, 22.182280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.039890, 28.705521, 22.177832>,  <40.741661, 28.439054, 22.170420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039890, 28.705521, 22.177832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370954, 0.391748, 0.841978,
		0.553639, -0.634629, 0.539194,
		0.745572, 0.666168, 0.018531,
		41.263561, 28.905371, 22.183392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083759, 28.341227, 22.789667>,  <40.741661, 28.439054, 22.170420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083759, 28.341227, 22.789667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.152767, 28.717968, 22.674324>,  <41.194172, 28.944014, 22.605118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.152767, 28.717968, 22.674324>,  <41.083759, 28.341227, 22.789667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.152767, 28.717968, 22.674324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346756, 0.332080, 0.877202,
		0.921953, -0.051347, 0.383884,
		0.172521, 0.941853, -0.288357,
		41.204525, 29.000525, 22.587816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222805, 28.568312, 23.435062>,  <41.083759, 28.341227, 22.789667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222805, 28.568312, 23.435062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.147228, 28.897089, 23.220137>,  <41.101883, 29.094357, 23.091181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.147228, 28.897089, 23.220137>,  <41.222805, 28.568312, 23.435062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.147228, 28.897089, 23.220137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448888, 0.414365, 0.791708,
		0.873385, 0.390779, 0.290672,
		-0.188939, 0.821945, -0.537316,
		41.090546, 29.143673, 23.058941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.413593, 29.045853, 23.748957>,  <41.222805, 28.568312, 23.435062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.413593, 29.045853, 23.748957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.147346, 29.247240, 23.528603>,  <40.987598, 29.368073, 23.396391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.147346, 29.247240, 23.528603>,  <41.413593, 29.045853, 23.748957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.147346, 29.247240, 23.528603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552431, 0.163906, 0.817285,
		0.501772, 0.848323, 0.169034,
		-0.665616, 0.503471, -0.550883,
		40.947662, 29.398281, 23.363338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055859, 29.485790, 24.219633>,  <41.413593, 29.045853, 23.748957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055859, 29.485790, 24.219633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.823723, 29.524937, 23.896246>,  <40.684441, 29.548426, 23.702213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.823723, 29.524937, 23.896246>,  <41.055859, 29.485790, 24.219633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.823723, 29.524937, 23.896246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795885, 0.142169, 0.588519,
		0.172536, 0.984992, -0.004615,
		-0.580343, 0.097867, -0.808470,
		40.649620, 29.554296, 23.653706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731426, 30.209429, 24.207230>,  <41.055859, 29.485790, 24.219633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731426, 30.209429, 24.207230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.505707, 29.949423, 24.003643>,  <40.370274, 29.793419, 23.881491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.505707, 29.949423, 24.003643>,  <40.731426, 30.209429, 24.207230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.505707, 29.949423, 24.003643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770732, 0.193844, 0.606957,
		-0.295871, 0.734782, -0.610373,
		-0.564299, -0.650015, -0.508967,
		40.336418, 29.754417, 23.850952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228313, 30.613071, 24.010248>,  <40.731426, 30.209429, 24.207230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228313, 30.613071, 24.010248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.092136, 30.237686, 23.986980>,  <40.010429, 30.012455, 23.973019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.092136, 30.237686, 23.986980>,  <40.228313, 30.613071, 24.010248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092136, 30.237686, 23.986980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788372, 0.251182, 0.561585,
		-0.512417, 0.237047, -0.825372,
		-0.340440, -0.938465, -0.058171,
		39.990005, 29.956146, 23.969528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522579, 30.753334, 23.794470>,  <40.228313, 30.613071, 24.010248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522579, 30.753334, 23.794470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.566917, 30.389273, 23.954140>,  <39.593521, 30.170835, 24.049942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.566917, 30.389273, 23.954140>,  <39.522579, 30.753334, 23.794470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566917, 30.389273, 23.954140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684367, 0.221348, 0.694728,
		-0.720663, -0.350186, -0.598343,
		0.110842, -0.910151, 0.399173,
		39.600170, 30.116228, 24.073891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973190, 30.446695, 23.331047>,  <39.522579, 30.753334, 23.794470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973190, 30.446695, 23.331047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.681683, 30.568539, 23.085739>,  <38.506779, 30.641645, 22.938555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.681683, 30.568539, 23.085739>,  <38.973190, 30.446695, 23.331047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681683, 30.568539, 23.085739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532401, -0.311165, -0.787227,
		-0.430627, -0.900216, 0.064593,
		-0.728773, 0.304612, -0.613271,
		38.463051, 30.659922, 22.901758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059666, 30.070667, 22.781326>,  <38.973190, 30.446695, 23.331047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059666, 30.070667, 22.781326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.781227, 30.303217, 22.612827>,  <38.614162, 30.442747, 22.511728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.781227, 30.303217, 22.612827>,  <39.059666, 30.070667, 22.781326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781227, 30.303217, 22.612827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322735, -0.270726, -0.906945,
		-0.641316, -0.767277, 0.000823,
		-0.696101, 0.581373, -0.421248,
		38.572395, 30.477629, 22.486452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734177, 29.689150, 22.259237>,  <39.059666, 30.070667, 22.781326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734177, 29.689150, 22.259237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.700073, 30.080296, 22.182802>,  <38.679611, 30.314983, 22.136940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.700073, 30.080296, 22.182802>,  <38.734177, 29.689150, 22.259237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700073, 30.080296, 22.182802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255650, -0.163898, -0.952775,
		-0.963003, -0.130080, -0.236017,
		-0.085255, 0.977863, -0.191089,
		38.674496, 30.373655, 22.125475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381577, 29.763992, 21.633841>,  <38.734177, 29.689150, 22.259237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381577, 29.763992, 21.633841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.587967, 30.105314, 21.663877>,  <38.711800, 30.310108, 21.681900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.587967, 30.105314, 21.663877>,  <38.381577, 29.763992, 21.633841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587967, 30.105314, 21.663877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329620, -0.116871, -0.936852,
		-0.790644, 0.508146, -0.341569,
		0.515977, 0.853305, 0.075092,
		38.742760, 30.361305, 21.686405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384380, 30.073256, 21.008764>,  <38.381577, 29.763992, 21.633841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384380, 30.073256, 21.008764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.684624, 30.284719, 21.167309>,  <38.864769, 30.411598, 21.262436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.684624, 30.284719, 21.167309>,  <38.384380, 30.073256, 21.008764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684624, 30.284719, 21.167309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487250, -0.037698, -0.872448,
		-0.446285, 0.847997, -0.285885,
		0.750611, 0.528658, 0.396363,
		38.909805, 30.443317, 21.286217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518150, 30.721172, 20.516251>,  <38.384380, 30.073256, 21.008764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518150, 30.721172, 20.516251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.838108, 30.653538, 20.746582>,  <39.030083, 30.612957, 20.884781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.838108, 30.653538, 20.746582>,  <38.518150, 30.721172, 20.516251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838108, 30.653538, 20.746582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596163, 0.113590, -0.794788,
		0.068979, 0.979034, 0.191663,
		0.799895, -0.169086, 0.575828,
		39.078075, 30.602812, 20.919331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032959, 31.267246, 20.427267>,  <38.518150, 30.721172, 20.516251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032959, 31.267246, 20.427267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.239098, 30.957525, 20.574167>,  <39.362782, 30.771692, 20.662308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.239098, 30.957525, 20.574167>,  <39.032959, 31.267246, 20.427267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239098, 30.957525, 20.574167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685094, 0.114790, -0.719354,
		0.514840, 0.622320, 0.589625,
		0.515351, -0.774301, 0.367249,
		39.393703, 30.725235, 20.684341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024719, 32.016392, 20.561138>,  <39.032959, 31.267246, 20.427267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024719, 32.016392, 20.561138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.182476, 32.375931, 20.484697>,  <39.277130, 32.591656, 20.438833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.182476, 32.375931, 20.484697>,  <39.024719, 32.016392, 20.561138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182476, 32.375931, 20.484697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466195, 0.374921, 0.801309,
		0.791905, -0.226942, 0.566907,
		0.394396, 0.898850, -0.191103,
		39.300797, 32.645584, 20.427366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226154, 32.392956, 21.194860>,  <39.024719, 32.016392, 20.561138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226154, 32.392956, 21.194860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.180172, 32.690804, 20.931852>,  <39.152584, 32.869511, 20.774048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.180172, 32.690804, 20.931852>,  <39.226154, 32.392956, 21.194860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180172, 32.690804, 20.931852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574498, 0.490151, 0.655518,
		0.810394, 0.453096, 0.371438,
		-0.114953, 0.744618, -0.657518,
		39.145687, 32.914188, 20.734596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336933, 33.041946, 21.562775>,  <39.226154, 32.392956, 21.194860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336933, 33.041946, 21.562775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.132484, 33.162659, 21.240860>,  <39.009815, 33.235085, 21.047710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.132484, 33.162659, 21.240860>,  <39.336933, 33.041946, 21.562775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132484, 33.162659, 21.240860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661557, 0.459641, 0.592514,
		0.548720, 0.835261, -0.035292,
		-0.511125, 0.301777, -0.804787,
		38.979145, 33.253193, 20.999424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321960, 33.767624, 21.644983>,  <39.336933, 33.041946, 21.562775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321960, 33.767624, 21.644983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.020287, 33.716839, 21.387276>,  <38.839283, 33.686367, 21.232651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.020287, 33.716839, 21.387276>,  <39.321960, 33.767624, 21.644983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020287, 33.716839, 21.387276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561026, 0.634458, 0.531707,
		0.341255, 0.762458, -0.549730,
		-0.754185, -0.126965, -0.644271,
		38.794029, 33.678749, 21.193995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040401, 34.470749, 21.418703>,  <39.321960, 33.767624, 21.644983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040401, 34.470749, 21.418703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.761787, 34.188763, 21.365242>,  <38.594620, 34.019569, 21.333164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.761787, 34.188763, 21.365242>,  <39.040401, 34.470749, 21.418703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761787, 34.188763, 21.365242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656263, 0.550598, 0.515907,
		-0.290108, 0.447057, -0.846154,
		-0.696531, -0.704969, -0.133654,
		38.552830, 33.977272, 21.325146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436409, 34.838047, 21.195505>,  <39.040401, 34.470749, 21.418703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436409, 34.838047, 21.195505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.355087, 34.504089, 21.400099>,  <38.306293, 34.303715, 21.522856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.355087, 34.504089, 21.400099>,  <38.436409, 34.838047, 21.195505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355087, 34.504089, 21.400099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552493, 0.529104, 0.644050,
		-0.808343, -0.151652, -0.568844,
		-0.203306, -0.834895, 0.511485,
		38.294094, 34.253620, 21.553545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582066, 35.462982, 20.728428>,  <38.436409, 34.838047, 21.195505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582066, 35.462982, 20.728428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.598392, 35.806496, 20.524143>,  <38.608189, 36.012604, 20.401571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.598392, 35.806496, 20.524143>,  <38.582066, 35.462982, 20.728428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598392, 35.806496, 20.524143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638835, -0.370587, -0.674208,
		-0.768261, 0.353780, 0.533494,
		0.040815, 0.858781, -0.510714,
		38.610638, 36.064129, 20.370930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<44.428551, 31.523567, 19.928532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.528965, 31.242569, 20.194908>,  <44.589214, 31.073969, 20.354734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.528965, 31.242569, 20.194908>,  <44.428551, 31.523567, 19.928532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.528965, 31.242569, 20.194908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344343, 0.578161, 0.739701,
		-0.904660, -0.415004, -0.096762,
		0.251035, -0.702496, 0.665943,
		44.604275, 31.031820, 20.394691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.797874, 31.451324, 20.285591>,  <44.428551, 31.523567, 19.928532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.797874, 31.451324, 20.285591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.115063, 31.328150, 20.495874>,  <44.305378, 31.254246, 20.622044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.115063, 31.328150, 20.495874>,  <43.797874, 31.451324, 20.285591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.115063, 31.328150, 20.495874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337020, 0.497127, 0.799552,
		-0.507554, -0.811197, 0.290428,
		0.792973, -0.307936, 0.525708,
		44.352955, 31.235769, 20.653587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.471352, 31.289999, 20.912199>,  <43.797874, 31.451324, 20.285591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.471352, 31.289999, 20.912199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.864399, 31.302038, 20.985472>,  <44.100227, 31.309261, 21.029434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.864399, 31.302038, 20.985472>,  <43.471352, 31.289999, 20.912199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.864399, 31.302038, 20.985472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178899, 0.416967, 0.891142,
		-0.049559, -0.908423, 0.415103,
		0.982618, 0.030097, 0.183181,
		44.159184, 31.311068, 21.040426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.551311, 30.932919, 21.540573>,  <43.471352, 31.289999, 20.912199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.551311, 30.932919, 21.540573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.871601, 31.169762, 21.504240>,  <44.063774, 31.311869, 21.482441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.871601, 31.169762, 21.504240>,  <43.551311, 30.932919, 21.540573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.871601, 31.169762, 21.504240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218189, 0.429491, 0.876317,
		0.557889, -0.681867, 0.473094,
		0.800721, 0.592111, -0.090833,
		44.111816, 31.347395, 21.476990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.859924, 30.915703, 22.163418>,  <43.551311, 30.932919, 21.540573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.859924, 30.915703, 22.163418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.010151, 31.248644, 22.000376>,  <44.100288, 31.448408, 21.902550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.010151, 31.248644, 22.000376>,  <43.859924, 30.915703, 22.163418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.010151, 31.248644, 22.000376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132300, 0.483446, 0.865319,
		0.917304, -0.271058, 0.291686,
		0.375565, 0.832351, -0.407606,
		44.122822, 31.498348, 21.878094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.402237, 31.121971, 22.598326>,  <43.859924, 30.915703, 22.163418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.402237, 31.121971, 22.598326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.293236, 31.443865, 22.387369>,  <44.227833, 31.637001, 22.260796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.293236, 31.443865, 22.387369>,  <44.402237, 31.121971, 22.598326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.293236, 31.443865, 22.387369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065010, 0.531482, 0.844571,
		0.959955, 0.264437, -0.092517,
		-0.272507, 0.804736, -0.527389,
		44.211483, 31.685286, 22.229153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.809895, 31.765930, 22.949804>,  <44.402237, 31.121971, 22.598326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.809895, 31.765930, 22.949804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.482834, 31.897932, 22.761106>,  <44.286598, 31.977133, 22.647888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.482834, 31.897932, 22.761106>,  <44.809895, 31.765930, 22.949804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.482834, 31.897932, 22.761106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192523, 0.615500, 0.764261,
		0.542569, 0.715721, -0.439730,
		-0.817651, 0.330006, -0.471744,
		44.237537, 31.996935, 22.619583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.815411, 32.415321, 23.296690>,  <44.809895, 31.765930, 22.949804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.815411, 32.415321, 23.296690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.460033, 32.323399, 23.137768>,  <44.246807, 32.268246, 23.042414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.460033, 32.323399, 23.137768>,  <44.815411, 32.415321, 23.296690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.460033, 32.323399, 23.137768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456437, 0.533392, 0.712150,
		0.048263, 0.814053, -0.578782,
		-0.888446, -0.229807, -0.397307,
		44.193501, 32.254456, 23.018576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.507256, 33.138718, 23.099871>,  <44.815411, 32.415321, 23.296690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.507256, 33.138718, 23.099871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.207676, 32.877060, 23.142147>,  <44.027927, 32.720066, 23.167513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.207676, 32.877060, 23.142147>,  <44.507256, 33.138718, 23.099871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.207676, 32.877060, 23.142147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491980, 0.655796, 0.572616,
		-0.443886, 0.376861, -0.812983,
		-0.748947, -0.654147, 0.105691,
		43.982990, 32.680817, 23.173855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.886349, 33.536076, 22.903803>,  <44.507256, 33.138718, 23.099871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.886349, 33.536076, 22.903803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.752888, 33.228951, 23.122578>,  <43.672810, 33.044678, 23.253843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.752888, 33.228951, 23.122578>,  <43.886349, 33.536076, 22.903803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.752888, 33.228951, 23.122578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618308, 0.616199, 0.487846,
		-0.711596, -0.175403, -0.680342,
		-0.333656, -0.767810, 0.546938,
		43.652790, 32.998608, 23.286659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.126949, 33.494202, 22.881458>,  <43.886349, 33.536076, 22.903803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.126949, 33.494202, 22.881458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.246212, 33.328793, 23.225574>,  <43.317768, 33.229546, 23.432045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.246212, 33.328793, 23.225574>,  <43.126949, 33.494202, 22.881458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.246212, 33.328793, 23.225574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593416, 0.625639, 0.506393,
		-0.747638, -0.661494, -0.058854,
		0.298154, -0.413524, 0.860292,
		43.335659, 33.204735, 23.483662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.668560, 33.769333, 23.275066>,  <43.126949, 33.494202, 22.881458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.668560, 33.769333, 23.275066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.914436, 33.607727, 23.546043>,  <43.061962, 33.510761, 23.708630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.914436, 33.607727, 23.546043>,  <42.668560, 33.769333, 23.275066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.914436, 33.607727, 23.546043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326192, 0.651773, 0.684683,
		-0.718163, -0.641843, 0.268850,
		0.614688, -0.404017, 0.677443,
		43.098843, 33.486523, 23.749277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.062138, 33.531597, 23.119089>,  <42.668560, 33.769333, 23.275066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.062138, 33.531597, 23.119089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.988373, 33.905567, 22.997826>,  <41.944115, 34.129948, 22.925068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.988373, 33.905567, 22.997826>,  <42.062138, 33.531597, 23.119089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.988373, 33.905567, 22.997826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299330, -0.240371, -0.923376,
		-0.936159, -0.261027, -0.235525,
		-0.184413, 0.934926, -0.303158,
		41.933048, 34.186047, 22.906878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.847420, 33.421352, 22.517195>,  <42.062138, 33.531597, 23.119089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.847420, 33.421352, 22.517195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.934292, 33.811222, 22.495857>,  <41.986416, 34.045143, 22.483055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.934292, 33.811222, 22.495857>,  <41.847420, 33.421352, 22.517195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.934292, 33.811222, 22.495857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269014, -0.112294, -0.956568,
		-0.938331, 0.193396, -0.286589,
		0.217179, 0.974673, -0.053342,
		41.999447, 34.103622, 22.479855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.635735, 33.603851, 21.814690>,  <41.847420, 33.421352, 22.517195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.635735, 33.603851, 21.814690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.894104, 33.888546, 21.925119>,  <42.049126, 34.059364, 21.991377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.894104, 33.888546, 21.925119>,  <41.635735, 33.603851, 21.814690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894104, 33.888546, 21.925119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333391, 0.062334, -0.940726,
		-0.686758, 0.699676, -0.197024,
		0.645921, 0.711736, 0.276074,
		42.087879, 34.102066, 22.007942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604267, 34.053448, 21.315573>,  <41.635735, 33.603851, 21.814690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604267, 34.053448, 21.315573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.958858, 34.132622, 21.482893>,  <42.171616, 34.180126, 21.583284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.958858, 34.132622, 21.482893>,  <41.604267, 34.053448, 21.315573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.958858, 34.132622, 21.482893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398392, 0.133479, -0.907451,
		-0.235448, 0.971085, 0.039472,
		0.886481, 0.197932, 0.418300,
		42.224804, 34.192001, 21.608383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.788048, 34.558823, 20.897902>,  <41.604267, 34.053448, 21.315573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.788048, 34.558823, 20.897902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.125389, 34.429619, 21.069674>,  <42.327793, 34.352097, 21.172737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.125389, 34.429619, 21.069674>,  <41.788048, 34.558823, 20.897902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.125389, 34.429619, 21.069674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439767, -0.044353, -0.897016,
		0.308796, 0.945354, 0.104645,
		0.843357, -0.323014, 0.429432,
		42.378395, 34.332714, 21.198503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.272560, 34.898468, 20.619709>,  <41.788048, 34.558823, 20.897902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.272560, 34.898468, 20.619709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.460678, 34.574402, 20.759684>,  <42.573547, 34.379963, 20.843668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.460678, 34.574402, 20.759684>,  <42.272560, 34.898468, 20.619709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.460678, 34.574402, 20.759684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565811, -0.027500, -0.824076,
		0.677261, 0.585556, 0.445468,
		0.470292, -0.810165, 0.349939,
		42.601765, 34.331352, 20.864666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.042637, 35.027695, 20.442955>,  <42.272560, 34.898468, 20.619709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.042637, 35.027695, 20.442955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.968460, 34.638908, 20.500769>,  <42.923954, 34.405636, 20.535458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.968460, 34.638908, 20.500769>,  <43.042637, 35.027695, 20.442955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.968460, 34.638908, 20.500769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573747, -0.226506, -0.787089,
		0.797763, -0.063029, 0.599667,
		-0.185438, -0.971968, 0.144535,
		42.912830, 34.347317, 20.544128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.714542, 34.730766, 20.218351>,  <43.042637, 35.027695, 20.442955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.714542, 34.730766, 20.218351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.448345, 34.432972, 20.196938>,  <43.288628, 34.254295, 20.184090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.448345, 34.432972, 20.196938>,  <43.714542, 34.730766, 20.218351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.448345, 34.432972, 20.196938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403473, -0.298468, -0.864943,
		0.627959, -0.597209, 0.499007,
		-0.665489, -0.744485, -0.053532,
		43.248699, 34.209625, 20.180878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.120541, 34.114517, 19.955408>,  <43.714542, 34.730766, 20.218351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.120541, 34.114517, 19.955408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.743465, 33.992676, 19.900911>,  <43.517220, 33.919571, 19.868214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.743465, 33.992676, 19.900911>,  <44.120541, 34.114517, 19.955408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.743465, 33.992676, 19.900911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231365, -0.302455, -0.924657,
		0.240447, -0.903182, 0.355595,
		-0.942685, -0.304603, -0.136240,
		43.460659, 33.901295, 19.860039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.133686, 33.494961, 19.683287>,  <44.120541, 34.114517, 19.955408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.133686, 33.494961, 19.683287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.755272, 33.599731, 19.606960>,  <43.528225, 33.662594, 19.561165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.755272, 33.599731, 19.606960>,  <44.133686, 33.494961, 19.683287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.755272, 33.599731, 19.606960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106031, -0.306225, -0.946036,
		-0.306225, -0.915216, 0.261928,
		0.946036, -0.261928, 0.190815,
		43.471462, 33.678310, 19.549715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.773758, 32.941124, 19.408007>,  <44.133686, 33.494961, 19.683287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.773758, 32.941124, 19.408007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.591923, 33.273540, 19.279808>,  <43.482822, 33.472992, 19.202888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.591923, 33.273540, 19.279808>,  <43.773758, 32.941124, 19.408007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.591923, 33.273540, 19.279808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225518, -0.240713, -0.944033,
		-0.861678, -0.501426, -0.077989,
		-0.454590, 0.831041, -0.320498,
		43.455547, 33.522854, 19.183659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.459496, 32.661541, 18.862627>,  <43.773758, 32.941124, 19.408007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.459496, 32.661541, 18.862627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.441021, 33.050896, 18.772835>,  <43.429935, 33.284508, 18.718960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.441021, 33.050896, 18.772835>,  <43.459496, 32.661541, 18.862627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.441021, 33.050896, 18.772835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231318, -0.208190, -0.950341,
		-0.971781, -0.095818, -0.215546,
		-0.046185, 0.973384, -0.224479,
		43.427166, 33.342911, 18.705490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.070969, 32.650230, 18.313677>,  <43.459496, 32.661541, 18.862627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.070969, 32.650230, 18.313677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.269310, 32.997490, 18.305223>,  <43.388313, 33.205845, 18.300152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.269310, 32.997490, 18.305223>,  <43.070969, 32.650230, 18.313677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.269310, 32.997490, 18.305223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080276, -0.070056, -0.994308,
		-0.864688, 0.491334, -0.104429,
		0.495853, 0.868149, -0.021135,
		43.418064, 33.257935, 18.298883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534595, 32.204041, 18.562057>,  <43.070969, 32.650230, 18.313677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534595, 32.204041, 18.562057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.231659, 32.321411, 18.328703>,  <42.049896, 32.391834, 18.188690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.231659, 32.321411, 18.328703>,  <42.534595, 32.204041, 18.562057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.231659, 32.321411, 18.328703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577417, 0.116366, 0.808114,
		0.305009, 0.948873, 0.081301,
		-0.757337, 0.293427, -0.583388,
		42.004459, 32.409439, 18.153687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212986, 32.907581, 18.723032>,  <42.534595, 32.204041, 18.562057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212986, 32.907581, 18.723032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.907574, 32.719769, 18.545689>,  <41.724327, 32.607082, 18.439283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.907574, 32.719769, 18.545689>,  <42.212986, 32.907581, 18.723032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.907574, 32.719769, 18.545689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582651, 0.204837, 0.786485,
		-0.278462, 0.858827, -0.429970,
		-0.763529, -0.469529, -0.443358,
		41.678516, 32.578911, 18.412682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625122, 33.326729, 18.894079>,  <42.212986, 32.907581, 18.723032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625122, 33.326729, 18.894079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.469391, 32.973804, 18.788288>,  <41.375954, 32.762051, 18.724813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.469391, 32.973804, 18.788288>,  <41.625122, 33.326729, 18.894079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.469391, 32.973804, 18.788288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743054, 0.131159, 0.656253,
		-0.544332, 0.452018, -0.706670,
		-0.389324, -0.882314, -0.264480,
		41.352592, 32.709110, 18.708944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902275, 33.481922, 18.680454>,  <41.625122, 33.326729, 18.894079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902275, 33.481922, 18.680454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.930874, 33.092388, 18.766747>,  <40.948032, 32.858669, 18.818521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.930874, 33.092388, 18.766747>,  <40.902275, 33.481922, 18.680454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.930874, 33.092388, 18.766747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859738, 0.049490, 0.508331,
		-0.505706, -0.221815, -0.833702,
		0.071495, -0.973832, 0.215730,
		40.952324, 32.800240, 18.831465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266148, 33.132580, 18.557299>,  <40.902275, 33.481922, 18.680454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266148, 33.132580, 18.557299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.437122, 32.890022, 18.825502>,  <40.539707, 32.744488, 18.986425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.437122, 32.890022, 18.825502>,  <40.266148, 33.132580, 18.557299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437122, 32.890022, 18.825502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828193, 0.034735, 0.559366,
		-0.362488, -0.794403, -0.487367,
		0.427433, -0.606398, 0.670509,
		40.565353, 32.708103, 19.026655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743279, 32.533367, 18.633451>,  <40.266148, 33.132580, 18.557299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743279, 32.533367, 18.633451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.961006, 32.590706, 18.964067>,  <40.091644, 32.625107, 19.162437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.961006, 32.590706, 18.964067>,  <39.743279, 32.533367, 18.633451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961006, 32.590706, 18.964067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837382, 0.151630, 0.525166,
		-0.050049, -0.977988, 0.202570,
		0.544321, 0.143344, 0.826539,
		40.124302, 32.633709, 19.212029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242298, 32.331921, 19.213516>,  <39.743279, 32.533367, 18.633451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242298, 32.331921, 19.213516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.550068, 32.446442, 19.441906>,  <39.734730, 32.515156, 19.578939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.550068, 32.446442, 19.441906>,  <39.242298, 32.331921, 19.213516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550068, 32.446442, 19.441906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627925, 0.175305, 0.758274,
		0.117002, -0.941965, 0.314662,
		0.769429, 0.286304, 0.570972,
		39.780895, 32.532333, 19.613197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220379, 31.992373, 19.810022>,  <39.242298, 32.331921, 19.213516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220379, 31.992373, 19.810022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.420525, 32.328377, 19.893946>,  <39.540611, 32.529980, 19.944300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.420525, 32.328377, 19.893946>,  <39.220379, 31.992373, 19.810022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420525, 32.328377, 19.893946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543419, 0.116036, 0.831403,
		0.674040, -0.530020, 0.514538,
		0.500364, 0.840009, 0.209810,
		39.570633, 32.580379, 19.956888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770557, 31.376589, 20.100927>,  <39.220379, 31.992373, 19.810022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770557, 31.376589, 20.100927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.792843, 31.010048, 20.259518>,  <39.806213, 30.790123, 20.354671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.792843, 31.010048, 20.259518>,  <39.770557, 31.376589, 20.100927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792843, 31.010048, 20.259518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604280, -0.285161, -0.743995,
		0.794822, 0.281031, 0.537848,
		0.055712, -0.916354, 0.396474,
		39.809555, 30.735142, 20.378460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508953, 31.307489, 20.212830>,  <39.770557, 31.376589, 20.100927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508953, 31.307489, 20.212830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.372925, 30.931362, 20.217762>,  <40.291309, 30.705687, 20.220722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.372925, 30.931362, 20.217762>,  <40.508953, 31.307489, 20.212830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372925, 30.931362, 20.217762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687003, -0.257371, -0.679549,
		0.642166, -0.222623, 0.733526,
		-0.340072, -0.940318, 0.012333,
		40.270905, 30.649267, 20.221462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075558, 30.757723, 20.327065>,  <40.508953, 31.307489, 20.212830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.075558, 30.757723, 20.327065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.758621, 30.578262, 20.161703>,  <40.568459, 30.470587, 20.062487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.758621, 30.578262, 20.161703>,  <41.075558, 30.757723, 20.327065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758621, 30.578262, 20.161703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596438, -0.427192, -0.679535,
		0.128271, -0.784996, 0.606076,
		-0.792343, -0.448652, -0.413405,
		40.520920, 30.443666, 20.037682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386276, 30.164816, 20.092348>,  <41.075558, 30.757723, 20.327065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.386276, 30.164816, 20.092348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.046688, 30.167011, 19.880987>,  <40.842934, 30.168329, 19.754169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.046688, 30.167011, 19.880987>,  <41.386276, 30.164816, 20.092348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046688, 30.167011, 19.880987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472262, -0.440752, -0.763352,
		-0.237086, -0.897612, 0.371595,
		-0.848975, 0.005490, -0.528404,
		40.791996, 30.168659, 19.722466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186485, 29.440605, 19.937819>,  <41.386276, 30.164816, 20.092348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.186485, 29.440605, 19.937819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.011822, 29.645237, 19.641813>,  <40.907024, 29.768017, 19.464211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.011822, 29.645237, 19.641813>,  <41.186485, 29.440605, 19.937819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011822, 29.645237, 19.641813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165838, -0.762704, -0.625125,
		-0.884211, -0.395687, 0.248200,
		-0.436657, 0.511581, -0.740011,
		40.880825, 29.798712, 19.419809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686184, 28.961081, 19.731020>,  <41.186485, 29.440605, 19.937819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686184, 28.961081, 19.731020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.758274, 29.236776, 19.450315>,  <40.801529, 29.402193, 19.281893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.758274, 29.236776, 19.450315>,  <40.686184, 28.961081, 19.731020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758274, 29.236776, 19.450315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204391, -0.724114, -0.658698,
		-0.962156, -0.024722, -0.271376,
		0.180223, 0.689237, -0.701763,
		40.812340, 29.443548, 19.239786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446301, 28.677425, 19.109861>,  <40.686184, 28.961081, 19.731020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446301, 28.677425, 19.109861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.665585, 28.964731, 18.938486>,  <40.797153, 29.137115, 18.835661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.665585, 28.964731, 18.938486>,  <40.446301, 28.677425, 19.109861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665585, 28.964731, 18.938486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273429, -0.638052, -0.719810,
		-0.790380, 0.277460, -0.546182,
		0.548211, 0.718266, -0.428438,
		40.830048, 29.180210, 18.809956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401482, 28.553707, 18.379915>,  <40.446301, 28.677425, 19.109861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401482, 28.553707, 18.379915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.722012, 28.782749, 18.449198>,  <40.914330, 28.920174, 18.490768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.722012, 28.782749, 18.449198>,  <40.401482, 28.553707, 18.379915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722012, 28.782749, 18.449198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527822, -0.540459, -0.655216,
		-0.281568, 0.616464, -0.735317,
		0.801326, 0.572604, 0.173208,
		40.962410, 28.954531, 18.501160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705284, 28.924177, 17.710371>,  <40.401482, 28.553707, 18.379915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705284, 28.924177, 17.710371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.992027, 28.835846, 17.974901>,  <41.164074, 28.782846, 18.133619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.992027, 28.835846, 17.974901>,  <40.705284, 28.924177, 17.710371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992027, 28.835846, 17.974901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445100, -0.585136, -0.677866,
		0.536657, 0.780288, -0.321169,
		0.716858, -0.220829, 0.661324,
		41.207085, 28.769598, 18.173298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.548012, 34.291653, 32.114632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.912811, 34.163879, 32.217567>,  <35.131691, 34.087215, 32.279331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.912811, 34.163879, 32.217567>,  <34.548012, 34.291653, 32.114632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912811, 34.163879, 32.217567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313533, 0.138307, -0.939451,
		0.264496, 0.937463, 0.226287,
		0.911998, -0.319429, 0.257343,
		35.186409, 34.068050, 32.294769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086033, 34.854362, 32.003628>,  <34.548012, 34.291653, 32.114632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086033, 34.854362, 32.003628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.200310, 34.475536, 31.945059>,  <35.268875, 34.248241, 31.909918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.200310, 34.475536, 31.945059>,  <35.086033, 34.854362, 32.003628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200310, 34.475536, 31.945059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205658, 0.209821, -0.955866,
		0.935995, 0.242969, 0.254716,
		0.285690, -0.947070, -0.146422,
		35.286018, 34.191414, 31.901133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600552, 34.953838, 31.479280>,  <35.086033, 34.854362, 32.003628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600552, 34.953838, 31.479280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.548363, 34.557491, 31.465698>,  <35.517052, 34.319683, 31.457548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.548363, 34.557491, 31.465698>,  <35.600552, 34.953838, 31.479280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548363, 34.557491, 31.465698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226329, 0.003578, -0.974044,
		0.965273, -0.134768, 0.223796,
		-0.130469, -0.990871, -0.033955,
		35.509220, 34.260231, 31.455511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230793, 34.725777, 31.041437>,  <35.600552, 34.953838, 31.479280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230793, 34.725777, 31.041437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.973312, 34.419830, 31.031359>,  <35.818825, 34.236263, 31.025312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.973312, 34.419830, 31.031359>,  <36.230793, 34.725777, 31.041437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973312, 34.419830, 31.031359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335642, -0.252578, -0.907496,
		0.687749, -0.592609, 0.419304,
		-0.643698, -0.764865, -0.025194,
		35.780205, 34.190372, 31.023800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582222, 34.191956, 30.825472>,  <36.230793, 34.725777, 31.041437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582222, 34.191956, 30.825472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.214745, 34.057011, 30.743305>,  <35.994259, 33.976044, 30.694006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.214745, 34.057011, 30.743305>,  <36.582222, 34.191956, 30.825472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214745, 34.057011, 30.743305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332949, -0.381650, -0.862258,
		0.212498, -0.860540, 0.462943,
		-0.918689, -0.337365, -0.205416,
		35.939137, 33.955803, 30.681681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593704, 33.489967, 30.594141>,  <36.582222, 34.191956, 30.825472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593704, 33.489967, 30.594141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.256176, 33.637371, 30.438112>,  <36.053658, 33.725815, 30.344494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.256176, 33.637371, 30.438112>,  <36.593704, 33.489967, 30.594141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256176, 33.637371, 30.438112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312484, -0.253506, -0.915472,
		-0.436249, -0.894390, 0.098760,
		-0.843825, 0.368513, -0.390074,
		36.003029, 33.747925, 30.321091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310936, 33.078068, 30.161774>,  <36.593704, 33.489967, 30.594141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310936, 33.078068, 30.161774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.128910, 33.402588, 30.014965>,  <36.019695, 33.597301, 29.926880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.128910, 33.402588, 30.014965>,  <36.310936, 33.078068, 30.161774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128910, 33.402588, 30.014965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230781, -0.290632, -0.928587,
		-0.860032, -0.507269, -0.054977,
		-0.455065, 0.811302, -0.367020,
		35.992390, 33.645977, 29.904860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859352, 32.647263, 29.668591>,  <36.310936, 33.078068, 30.161774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859352, 32.647263, 29.668591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.840481, 33.033478, 29.566216>,  <35.829159, 33.265209, 29.504789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.840481, 33.033478, 29.566216>,  <35.859352, 32.647263, 29.668591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840481, 33.033478, 29.566216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026206, -0.254940, -0.966602,
		-0.998543, -0.052307, -0.013276,
		-0.047175, 0.965541, -0.255939,
		35.826328, 33.323139, 29.489433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289795, 32.749989, 29.238766>,  <35.859352, 32.647263, 29.668591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289795, 32.749989, 29.238766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.549664, 33.045586, 29.167421>,  <35.705585, 33.222946, 29.124615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.549664, 33.045586, 29.167421>,  <35.289795, 32.749989, 29.238766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549664, 33.045586, 29.167421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030960, -0.260141, -0.965074,
		-0.759585, 0.621458, -0.191886,
		0.649670, 0.738997, -0.178359,
		35.744564, 33.267284, 29.113914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117630, 33.029762, 28.519943>,  <35.289795, 32.749989, 29.238766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117630, 33.029762, 28.519943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.486382, 33.171356, 28.582972>,  <35.707634, 33.256313, 28.620789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.486382, 33.171356, 28.582972>,  <35.117630, 33.029762, 28.519943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486382, 33.171356, 28.582972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215894, -0.131578, -0.967511,
		-0.321753, 0.925948, -0.197723,
		0.921881, 0.353986, 0.157571,
		35.762947, 33.277554, 28.630243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124825, 33.594219, 28.030958>,  <35.117630, 33.029762, 28.519943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124825, 33.594219, 28.030958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.496517, 33.469421, 28.110151>,  <35.719532, 33.394543, 28.157667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.496517, 33.469421, 28.110151>,  <35.124825, 33.594219, 28.030958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496517, 33.469421, 28.110151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168845, -0.118072, -0.978545,
		0.328674, 0.942720, -0.057037,
		0.929228, -0.311992, 0.197981,
		35.775284, 33.375824, 28.169546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564274, 33.963093, 27.638613>,  <35.124825, 33.594219, 28.030958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564274, 33.963093, 27.638613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.814758, 33.660152, 27.712660>,  <35.965050, 33.478386, 27.757088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.814758, 33.660152, 27.712660>,  <35.564274, 33.963093, 27.638613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814758, 33.660152, 27.712660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123410, -0.138155, -0.982692,
		0.769821, 0.638222, 0.006950,
		0.626215, -0.757354, 0.185118,
		36.002625, 33.432945, 27.768196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815456, 34.662960, 27.679161>,  <35.564274, 33.963093, 27.638613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815456, 34.662960, 27.679161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.817497, 35.032784, 27.526762>,  <35.818722, 35.254677, 27.435322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.817497, 35.032784, 27.526762>,  <35.815456, 34.662960, 27.679161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817497, 35.032784, 27.526762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197175, 0.374455, 0.906039,
		0.980355, 0.070497, 0.184212,
		0.005106, 0.924561, -0.380999,
		35.819031, 35.310150, 27.412462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221920, 35.106899, 28.179497>,  <35.815456, 34.662960, 27.679161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221920, 35.106899, 28.179497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.970921, 35.326557, 27.958700>,  <35.820320, 35.458351, 27.826223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.970921, 35.326557, 27.958700>,  <36.221920, 35.106899, 28.179497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970921, 35.326557, 27.958700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371809, 0.411550, 0.832096,
		0.684111, 0.727371, -0.054069,
		-0.627495, 0.549143, -0.551989,
		35.782673, 35.491299, 27.793104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228336, 35.899689, 28.505892>,  <36.221920, 35.106899, 28.179497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228336, 35.899689, 28.505892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.897926, 35.818905, 28.295406>,  <35.699680, 35.770435, 28.169115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.897926, 35.818905, 28.295406>,  <36.228336, 35.899689, 28.505892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897926, 35.818905, 28.295406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563276, 0.329299, 0.757814,
		0.020231, 0.922374, -0.385768,
		-0.826021, -0.201962, -0.526213,
		35.650120, 35.758316, 28.137543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847733, 36.537029, 28.506514>,  <36.228336, 35.899689, 28.505892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847733, 36.537029, 28.506514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.593063, 36.245972, 28.404398>,  <35.440262, 36.071335, 28.343128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.593063, 36.245972, 28.404398>,  <35.847733, 36.537029, 28.506514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593063, 36.245972, 28.404398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674601, 0.365188, 0.641522,
		-0.373574, 0.580660, -0.723378,
		-0.636676, -0.727648, -0.255289,
		35.402061, 36.027676, 28.327812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299561, 36.958752, 28.454578>,  <35.847733, 36.537029, 28.506514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299561, 36.958752, 28.454578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.142914, 36.590782, 28.446842>,  <35.048927, 36.369999, 28.442202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.142914, 36.590782, 28.446842>,  <35.299561, 36.958752, 28.454578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142914, 36.590782, 28.446842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778587, 0.320097, 0.539760,
		-0.490349, 0.226434, -0.841597,
		-0.391613, -0.919927, -0.019339,
		35.025429, 36.314804, 28.441040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658108, 37.043015, 28.171867>,  <35.299561, 36.958752, 28.454578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658108, 37.043015, 28.171867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.695652, 36.726723, 28.413839>,  <34.718178, 36.536949, 28.559023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.695652, 36.726723, 28.413839>,  <34.658108, 37.043015, 28.171867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695652, 36.726723, 28.413839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732279, 0.356821, 0.580039,
		-0.674505, -0.497421, -0.545541,
		0.093863, -0.790728, 0.604929,
		34.723812, 36.489506, 28.595318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961952, 36.823757, 28.403887>,  <34.658108, 37.043015, 28.171867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961952, 36.823757, 28.403887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.220367, 36.674599, 28.670296>,  <34.375416, 36.585106, 28.830141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.220367, 36.674599, 28.670296>,  <33.961952, 36.823757, 28.403887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220367, 36.674599, 28.670296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605253, 0.281388, 0.744640,
		-0.465081, -0.884178, -0.043907,
		0.646040, -0.372893, 0.666020,
		34.414181, 36.562733, 28.870102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521046, 36.581619, 28.924978>,  <33.961952, 36.823757, 28.403887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521046, 36.581619, 28.924978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.866116, 36.608391, 29.125502>,  <34.073158, 36.624454, 29.245815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.866116, 36.608391, 29.125502>,  <33.521046, 36.581619, 28.924978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866116, 36.608391, 29.125502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502575, 0.224497, 0.834877,
		-0.056662, -0.972173, 0.227307,
		0.862675, 0.066933, 0.501311,
		34.124916, 36.628471, 29.275894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283337, 36.486420, 29.637835>,  <33.521046, 36.581619, 28.924978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283337, 36.486420, 29.637835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.648136, 36.643719, 29.684507>,  <33.867016, 36.738098, 29.712511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.648136, 36.643719, 29.684507>,  <33.283337, 36.486420, 29.637835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648136, 36.643719, 29.684507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322554, 0.511780, 0.796266,
		0.253416, -0.763829, 0.593587,
		0.911998, 0.393250, 0.116682,
		33.921734, 36.761696, 29.719511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262085, 36.591007, 30.309738>,  <33.283337, 36.486420, 29.637835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262085, 36.591007, 30.309738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.585785, 36.802414, 30.207138>,  <33.780003, 36.929256, 30.145578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.585785, 36.802414, 30.207138>,  <33.262085, 36.591007, 30.309738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585785, 36.802414, 30.207138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102256, 0.556681, 0.824409,
		0.578508, -0.640917, 0.504534,
		0.809242, 0.528518, -0.256506,
		33.828560, 36.960968, 30.130188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569977, 36.623596, 30.881516>,  <33.262085, 36.591007, 30.309738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569977, 36.623596, 30.881516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.713821, 36.917316, 30.651215>,  <33.800129, 37.093548, 30.513035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.713821, 36.917316, 30.651215>,  <33.569977, 36.623596, 30.881516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713821, 36.917316, 30.651215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032897, 0.606668, 0.794275,
		0.932522, -0.304570, 0.194008,
		0.359611, 0.734296, -0.575750,
		33.821705, 37.137604, 30.478489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089191, 36.910011, 31.163948>,  <33.569977, 36.623596, 30.881516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089191, 36.910011, 31.163948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.947903, 37.191589, 30.917469>,  <33.863129, 37.360535, 30.769581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.947903, 37.191589, 30.917469>,  <34.089191, 36.910011, 31.163948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947903, 37.191589, 30.917469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270468, 0.707368, 0.653052,
		0.895588, 0.064013, -0.440254,
		-0.353225, 0.703941, -0.616197,
		33.841934, 37.402771, 30.732611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519379, 37.520378, 31.383036>,  <34.089191, 36.910011, 31.163948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519379, 37.520378, 31.383036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.200405, 37.646770, 31.177416>,  <34.009022, 37.722607, 31.054043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.200405, 37.646770, 31.177416>,  <34.519379, 37.520378, 31.383036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200405, 37.646770, 31.177416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114145, 0.757544, 0.642727,
		0.592507, 0.571211, -0.568027,
		-0.797438, 0.315983, -0.514051,
		33.961174, 37.741566, 31.023201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598053, 38.241314, 31.155867>,  <34.519379, 37.520378, 31.383036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598053, 38.241314, 31.155867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.210045, 38.145206, 31.170488>,  <33.977242, 38.087543, 31.179260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.210045, 38.145206, 31.170488>,  <34.598053, 38.241314, 31.155867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210045, 38.145206, 31.170488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150619, 0.712373, 0.685448,
		-0.190728, 0.659392, -0.727204,
		-0.970019, -0.240265, 0.036552,
		33.919041, 38.073128, 31.181454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289303, 38.306538, 30.834013>,  <34.598053, 38.241314, 31.155867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289303, 38.306538, 30.834013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.568596, 38.371342, 31.112932>,  <35.736172, 38.410225, 31.280283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.568596, 38.371342, 31.112932>,  <35.289303, 38.306538, 30.834013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568596, 38.371342, 31.112932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662390, 0.223204, -0.715136,
		-0.271497, 0.961215, 0.048536,
		0.698233, 0.162008, 0.697298,
		35.778065, 38.419945, 31.322121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763714, 38.891853, 30.598864>,  <35.289303, 38.306538, 30.834013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763714, 38.891853, 30.598864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.972820, 38.691982, 30.875135>,  <36.098282, 38.572060, 31.040899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.972820, 38.691982, 30.875135>,  <35.763714, 38.891853, 30.598864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972820, 38.691982, 30.875135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816667, 0.061180, -0.573857,
		0.244488, 0.864047, 0.440054,
		0.522762, -0.499679, 0.690681,
		36.129650, 38.542080, 31.082340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474251, 39.097763, 30.462357>,  <35.763714, 38.891853, 30.598864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474251, 39.097763, 30.462357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.524624, 38.775795, 30.694305>,  <36.554848, 38.582615, 30.833475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.524624, 38.775795, 30.694305>,  <36.474251, 39.097763, 30.462357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524624, 38.775795, 30.694305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817545, -0.246891, -0.520254,
		0.561926, 0.539586, 0.626965,
		0.125930, -0.804917, 0.579871,
		36.562405, 38.534321, 30.868267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220745, 39.088978, 30.756042>,  <36.474251, 39.097763, 30.462357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220745, 39.088978, 30.756042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.088451, 38.711571, 30.748264>,  <37.009075, 38.485126, 30.743597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.088451, 38.711571, 30.748264>,  <37.220745, 39.088978, 30.756042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088451, 38.711571, 30.748264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811934, -0.273988, -0.515455,
		0.481015, -0.186271, 0.856696,
		-0.330739, -0.943522, -0.019447,
		36.989231, 38.428513, 30.742430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885239, 38.738621, 30.453234>,  <37.220745, 39.088978, 30.756042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885239, 38.738621, 30.453234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.608036, 38.451408, 30.427395>,  <37.441715, 38.279083, 30.411892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.608036, 38.451408, 30.427395>,  <37.885239, 38.738621, 30.453234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608036, 38.451408, 30.427395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489320, -0.402676, -0.773575,
		0.529438, -0.567703, 0.630404,
		-0.693009, -0.718029, -0.064596,
		37.400135, 38.236000, 30.408016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267483, 38.147350, 30.512241>,  <37.885239, 38.738621, 30.453234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267483, 38.147350, 30.512241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.914661, 38.037964, 30.358776>,  <37.702969, 37.972332, 30.266697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.914661, 38.037964, 30.358776>,  <38.267483, 38.147350, 30.512241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914661, 38.037964, 30.358776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457775, -0.304798, -0.835189,
		0.111454, -0.912314, 0.394033,
		-0.882054, -0.273463, -0.383664,
		37.650043, 37.955925, 30.243677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455730, 37.525547, 30.176945>,  <38.267483, 38.147350, 30.512241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455730, 37.525547, 30.176945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.100700, 37.653477, 30.044331>,  <37.887680, 37.730236, 29.964762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.100700, 37.653477, 30.044331>,  <38.455730, 37.525547, 30.176945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100700, 37.653477, 30.044331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212878, -0.353479, -0.910898,
		-0.408521, -0.879070, 0.245656,
		-0.887577, 0.319827, -0.331538,
		37.834427, 37.749424, 29.944870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275673, 37.002254, 29.806160>,  <38.455730, 37.525547, 30.176945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275673, 37.002254, 29.806160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.047585, 37.300323, 29.667849>,  <37.910732, 37.479164, 29.584862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.047585, 37.300323, 29.667849>,  <38.275673, 37.002254, 29.806160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047585, 37.300323, 29.667849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180900, -0.296682, -0.937686,
		-0.801327, -0.597238, 0.034372,
		-0.570220, 0.745175, -0.345779,
		37.876518, 37.523876, 29.564116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769012, 36.704712, 29.344612>,  <38.275673, 37.002254, 29.806160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769012, 36.704712, 29.344612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.822639, 37.087444, 29.241455>,  <37.854816, 37.317081, 29.179562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.822639, 37.087444, 29.241455>,  <37.769012, 36.704712, 29.344612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822639, 37.087444, 29.241455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236445, -0.283613, -0.929332,
		-0.962351, 0.063618, -0.264261,
		0.134070, 0.956826, -0.257893,
		37.862862, 37.374493, 29.164087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397511, 36.649632, 28.719568>,  <37.769012, 36.704712, 29.344612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397511, 36.649632, 28.719568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.639801, 36.966969, 28.743895>,  <37.785175, 37.157372, 28.758490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.639801, 36.966969, 28.743895>,  <37.397511, 36.649632, 28.719568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639801, 36.966969, 28.743895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420604, -0.254379, -0.870852,
		-0.675418, 0.553076, -0.487768,
		0.605726, 0.793346, 0.060814,
		37.821518, 37.204971, 28.762138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289139, 37.027241, 28.111204>,  <37.397511, 36.649632, 28.719568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289139, 37.027241, 28.111204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.644901, 37.130909, 28.261824>,  <37.858360, 37.193108, 28.352196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.644901, 37.130909, 28.261824>,  <37.289139, 37.027241, 28.111204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644901, 37.130909, 28.261824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442928, -0.284940, -0.850073,
		-0.113017, 0.922844, -0.368219,
		0.889405, 0.259167, 0.376551,
		37.911724, 37.208660, 28.374788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664486, 37.209763, 27.551153>,  <37.289139, 37.027241, 28.111204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664486, 37.209763, 27.551153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.958820, 37.158726, 27.817163>,  <38.135422, 37.128101, 27.976770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.958820, 37.158726, 27.817163>,  <37.664486, 37.209763, 27.551153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958820, 37.158726, 27.817163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571842, -0.408910, -0.711188,
		0.362681, 0.903610, -0.227927,
		0.735839, -0.127597, 0.665027,
		38.179573, 37.120445, 28.016672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215748, 37.506729, 27.289316>,  <37.664486, 37.209763, 27.551153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215748, 37.506729, 27.289316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.395443, 37.270203, 27.557207>,  <38.503262, 37.128288, 27.717941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.395443, 37.270203, 27.557207>,  <38.215748, 37.506729, 27.289316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395443, 37.270203, 27.557207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673513, -0.268379, -0.688733,
		0.586997, 0.760475, 0.277690,
		0.449238, -0.591313, 0.669727,
		38.530216, 37.092808, 27.758125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879765, 37.612526, 27.206381>,  <38.215748, 37.506729, 27.289316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879765, 37.612526, 27.206381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.861683, 37.250996, 27.376581>,  <38.850834, 37.034077, 27.478701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.861683, 37.250996, 27.376581>,  <38.879765, 37.612526, 27.206381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861683, 37.250996, 27.376581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581424, -0.370163, -0.724517,
		0.812344, 0.214647, 0.542239,
		-0.045201, -0.903828, 0.425501,
		38.848122, 36.979847, 27.504232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511349, 37.234432, 27.179716>,  <38.879765, 37.612526, 27.206381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511349, 37.234432, 27.179716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.276184, 36.916500, 27.239849>,  <39.135086, 36.725739, 27.275928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.276184, 36.916500, 27.239849>,  <39.511349, 37.234432, 27.179716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276184, 36.916500, 27.239849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507686, -0.507232, -0.696398,
		0.629776, -0.333097, 0.701733,
		-0.587909, -0.794835, 0.150333,
		39.099812, 36.678051, 27.284948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982777, 36.629906, 27.124413>,  <39.511349, 37.234432, 27.179716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982777, 36.629906, 27.124413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.619362, 36.467304, 27.085791>,  <39.401314, 36.369743, 27.062616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.619362, 36.467304, 27.085791>,  <39.982777, 36.629906, 27.124413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619362, 36.467304, 27.085791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356017, -0.632248, -0.688124,
		0.218676, -0.659560, 0.719140,
		-0.908534, -0.406502, -0.096557,
		39.346802, 36.345352, 27.056824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940941, 35.860077, 27.258562>,  <39.982777, 36.629906, 27.124413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940941, 35.860077, 27.258562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.652657, 35.948563, 26.995764>,  <39.479687, 36.001656, 26.838085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.652657, 35.948563, 26.995764>,  <39.940941, 35.860077, 27.258562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652657, 35.948563, 26.995764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405475, -0.634183, -0.658333,
		-0.562288, -0.740861, 0.367365,
		-0.720710, 0.221216, -0.656994,
		39.436443, 36.014927, 26.798666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832401, 35.264938, 26.941902>,  <39.940941, 35.860077, 27.258562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832401, 35.264938, 26.941902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.670895, 35.518219, 26.677773>,  <39.573990, 35.670185, 26.519295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.670895, 35.518219, 26.677773>,  <39.832401, 35.264938, 26.941902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670895, 35.518219, 26.677773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415491, -0.516127, -0.748986,
		-0.815069, -0.576777, -0.054692,
		-0.403769, 0.633199, -0.660325,
		39.549763, 35.708179, 26.479675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514442, 34.872929, 26.441782>,  <39.832401, 35.264938, 26.941902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514442, 34.872929, 26.441782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.573315, 35.219040, 26.250099>,  <39.608639, 35.426704, 26.135090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.573315, 35.219040, 26.250099>,  <39.514442, 34.872929, 26.441782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573315, 35.219040, 26.250099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504938, -0.482326, -0.715822,
		-0.850515, -0.136615, -0.507898,
		0.147180, 0.865274, -0.479207,
		39.617470, 35.478622, 26.106337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355026, 34.824211, 25.636454>,  <39.514442, 34.872929, 26.441782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355026, 34.824211, 25.636454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.596977, 35.142738, 25.635830>,  <39.742146, 35.333855, 25.635456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.596977, 35.142738, 25.635830>,  <39.355026, 34.824211, 25.636454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596977, 35.142738, 25.635830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582245, -0.443601, -0.681329,
		-0.543249, 0.411209, -0.731976,
		0.604874, 0.796320, -0.001561,
		39.778439, 35.381634, 25.635361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427963, 34.970371, 24.927263>,  <39.355026, 34.824211, 25.636454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427963, 34.970371, 24.927263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.738422, 35.163139, 25.089914>,  <39.924698, 35.278801, 25.187506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.738422, 35.163139, 25.089914>,  <39.427963, 34.970371, 24.927263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738422, 35.163139, 25.089914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586254, -0.314094, -0.746761,
		-0.232156, 0.817987, -0.526309,
		0.776151, 0.481916, 0.406629,
		39.971268, 35.307713, 25.211903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614407, 35.314560, 24.360521>,  <39.427963, 34.970371, 24.927263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614407, 35.314560, 24.360521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.923012, 35.298679, 24.614511>,  <40.108173, 35.289150, 24.766905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.923012, 35.298679, 24.614511>,  <39.614407, 35.314560, 24.360521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923012, 35.298679, 24.614511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598998, -0.291019, -0.745996,
		0.214407, 0.955893, -0.200744,
		0.771512, -0.039702, 0.634974,
		40.154465, 35.286770, 24.805004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095764, 35.689571, 24.089722>,  <39.614407, 35.314560, 24.360521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095764, 35.689571, 24.089722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.311012, 35.467781, 24.343643>,  <40.440163, 35.334705, 24.495996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.311012, 35.467781, 24.343643>,  <40.095764, 35.689571, 24.089722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311012, 35.467781, 24.343643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648255, -0.209086, -0.732153,
		0.538692, 0.805504, 0.246930,
		0.538123, -0.554479, 0.634805,
		40.472450, 35.301437, 24.534084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789513, 35.749641, 23.957369>,  <40.095764, 35.689571, 24.089722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789513, 35.749641, 23.957369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.803661, 35.410702, 24.169312>,  <40.812149, 35.207336, 24.296476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.803661, 35.410702, 24.169312>,  <40.789513, 35.749641, 23.957369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.803661, 35.410702, 24.169312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738784, -0.334878, -0.584854,
		0.673013, 0.412135, 0.614164,
		0.035368, -0.847349, 0.529856,
		40.814270, 35.156498, 24.328268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493343, 35.669930, 24.188433>,  <40.789513, 35.749641, 23.957369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493343, 35.669930, 24.188433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.308613, 35.315281, 24.178453>,  <41.197773, 35.102493, 24.172466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.308613, 35.315281, 24.178453>,  <41.493343, 35.669930, 24.188433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308613, 35.315281, 24.178453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747412, -0.373864, -0.549182,
		0.477588, -0.272274, 0.835330,
		-0.461828, -0.886619, -0.024948,
		41.170063, 35.049294, 24.170969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.989044, 35.094963, 24.321520>,  <41.493343, 35.669930, 24.188433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.989044, 35.094963, 24.321520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.683346, 34.934071, 24.119873>,  <41.499928, 34.837536, 23.998884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.683346, 34.934071, 24.119873>,  <41.989044, 35.094963, 24.321520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683346, 34.934071, 24.119873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620717, -0.246633, -0.744234,
		0.175021, -0.881694, 0.438160,
		-0.764251, -0.402229, -0.504116,
		41.454071, 34.813400, 23.968637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314445, 34.672775, 23.921911>,  <41.989044, 35.094963, 24.321520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.314445, 34.672775, 23.921911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.950848, 34.645939, 23.757362>,  <41.732689, 34.629837, 23.658632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.950848, 34.645939, 23.757362>,  <42.314445, 34.672775, 23.921911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.950848, 34.645939, 23.757362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398209, -0.431321, -0.809563,
		-0.123119, -0.899701, 0.418785,
		-0.908995, -0.067091, -0.411372,
		41.678150, 34.625813, 23.633951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.113182, 33.947262, 23.739849>,  <42.314445, 34.672775, 23.921911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.113182, 33.947262, 23.739849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.932190, 34.204659, 23.492889>,  <41.823597, 34.359097, 23.344713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.932190, 34.204659, 23.492889>,  <42.113182, 33.947262, 23.739849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.932190, 34.204659, 23.492889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399449, -0.472740, -0.785466,
		-0.797310, -0.602026, -0.043137,
		-0.452479, 0.643491, -0.617400,
		41.796448, 34.397705, 23.307669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.193848, 33.610790, 24.345005>,  <42.113182, 33.947262, 23.739849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.193848, 33.610790, 24.345005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.592094, 33.587296, 24.374092>,  <42.831043, 33.573196, 24.391544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.592094, 33.587296, 24.374092>,  <42.193848, 33.610790, 24.345005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.592094, 33.587296, 24.374092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028563, 0.549531, 0.834985,
		-0.089008, -0.833406, 0.545447,
		0.995621, -0.058741, 0.072717,
		42.890781, 33.569672, 24.395906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.295315, 33.338413, 24.948042>,  <42.193848, 33.610790, 24.345005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.295315, 33.338413, 24.948042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.644173, 33.517597, 24.869350>,  <42.853485, 33.625107, 24.822136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.644173, 33.517597, 24.869350>,  <42.295315, 33.338413, 24.948042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.644173, 33.517597, 24.869350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063767, 0.502752, 0.862076,
		0.485067, -0.739314, 0.467039,
		0.872149, 0.447946, -0.196724,
		42.905815, 33.651985, 24.810331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.703278, 33.131893, 25.416929>,  <42.295315, 33.338413, 24.948042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.703278, 33.131893, 25.416929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.855278, 33.479752, 25.290873>,  <42.946480, 33.688465, 25.215239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.855278, 33.479752, 25.290873>,  <42.703278, 33.131893, 25.416929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.855278, 33.479752, 25.290873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061499, 0.363697, 0.929485,
		0.922937, -0.333829, 0.191690,
		0.380005, 0.869645, -0.315139,
		42.969280, 33.740646, 25.196331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.319656, 33.277565, 25.882122>,  <42.703278, 33.131893, 25.416929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.319656, 33.277565, 25.882122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.213165, 33.627495, 25.720232>,  <43.149269, 33.837452, 25.623098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.213165, 33.627495, 25.720232>,  <43.319656, 33.277565, 25.882122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.213165, 33.627495, 25.720232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117797, 0.387204, 0.914438,
		0.956685, 0.291125, -0.000033,
		-0.266228, 0.874825, -0.404726,
		43.133297, 33.889942, 25.598814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.530014, 33.727966, 26.326170>,  <43.319656, 33.277565, 25.882122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.530014, 33.727966, 26.326170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.328449, 33.999542, 26.112587>,  <43.207512, 34.162487, 25.984438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.328449, 33.999542, 26.112587>,  <43.530014, 33.727966, 26.326170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.328449, 33.999542, 26.112587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036577, 0.600853, 0.798522,
		0.862981, 0.421914, -0.277943,
		-0.503910, 0.678943, -0.533957,
		43.177277, 34.203224, 25.952400>
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
