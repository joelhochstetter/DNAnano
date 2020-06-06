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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
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
	<4.594437, 14.880398, 15.105546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.355932, 14.823342, 14.789539>,  <4.212829, 14.789109, 14.599936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.355932, 14.823342, 14.789539>,  <4.594437, 14.880398, 15.105546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.355932, 14.823342, 14.789539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489266, -0.844772, -0.216748,
		-0.636467, -0.515766, 0.573493,
		-0.596262, -0.142638, -0.790016,
		4.177053, 14.780551, 14.552534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.236762, 14.239327, 15.097673>,  <4.594437, 14.880398, 15.105546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.236762, 14.239327, 15.097673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.349669, 14.399279, 14.748864>,  <4.417413, 14.495250, 14.539578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.349669, 14.399279, 14.748864>,  <4.236762, 14.239327, 15.097673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.349669, 14.399279, 14.748864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448788, -0.858428, -0.248375,
		-0.847888, -0.321245, -0.421767,
		0.282268, 0.399878, -0.872022,
		4.434349, 14.519242, 14.487257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.991149, 13.908783, 14.500705>,  <4.236762, 14.239327, 15.097673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.991149, 13.908783, 14.500705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.334271, 14.091854, 14.407150>,  <4.540144, 14.201696, 14.351018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.334271, 14.091854, 14.407150>,  <3.991149, 13.908783, 14.500705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.334271, 14.091854, 14.407150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319769, -0.831484, -0.454293,
		-0.402392, 0.314905, -0.859602,
		0.857804, 0.457678, -0.233886,
		4.591612, 14.229157, 14.336985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.436347, 13.653807, 13.882189>,  <3.991149, 13.908783, 14.500705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.436347, 13.653807, 13.882189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.742744, 13.758306, 14.117138>,  <4.926582, 13.821005, 14.258107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.742744, 13.758306, 14.117138>,  <4.436347, 13.653807, 13.882189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.742744, 13.758306, 14.117138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551134, -0.737225, -0.390834,
		0.330921, 0.623097, -0.708690,
		0.765991, 0.261248, 0.587373,
		4.972541, 13.836679, 14.293349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.024697, 13.770728, 13.488783>,  <4.436347, 13.653807, 13.882189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.024697, 13.770728, 13.488783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.147916, 13.673368, 13.856666>,  <5.221848, 13.614951, 14.077395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.147916, 13.673368, 13.856666>,  <5.024697, 13.770728, 13.488783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.147916, 13.673368, 13.856666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464977, -0.804873, -0.368749,
		0.830002, 0.541235, -0.134764,
		0.308048, -0.243400, 0.919708,
		5.240330, 13.600348, 14.132578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.592788, 13.559899, 13.304897>,  <5.024697, 13.770728, 13.488783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.592788, 13.559899, 13.304897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.518426, 13.427251, 13.674863>,  <5.473810, 13.347662, 13.896842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.518426, 13.427251, 13.674863>,  <5.592788, 13.559899, 13.304897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.518426, 13.427251, 13.674863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318226, -0.910908, -0.262638,
		0.929609, 0.245507, 0.274872,
		-0.185904, -0.331622, 0.924915,
		5.462656, 13.327765, 13.952337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.163179, 13.227365, 13.503462>,  <5.592788, 13.559899, 13.304897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.163179, 13.227365, 13.503462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.874259, 13.053726, 13.718809>,  <5.700906, 12.949543, 13.848018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.874259, 13.053726, 13.718809>,  <6.163179, 13.227365, 13.503462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.874259, 13.053726, 13.718809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259697, -0.891743, -0.370611,
		0.640967, -0.127880, 0.756841,
		-0.722301, -0.434098, 0.538368,
		5.657568, 12.923496, 13.880320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.374746, 12.580411, 13.704029>,  <6.163179, 13.227365, 13.503462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.374746, 12.580411, 13.704029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.976203, 12.548174, 13.715159>,  <5.737077, 12.528831, 13.721838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.976203, 12.548174, 13.715159>,  <6.374746, 12.580411, 13.704029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.976203, 12.548174, 13.715159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058053, -0.880281, -0.470887,
		0.062446, -0.467557, 0.881755,
		-0.996359, -0.080594, 0.027827,
		5.677295, 12.523995, 13.723508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.290083, 11.827969, 13.822614>,  <6.374746, 12.580411, 13.704029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.290083, 11.827969, 13.822614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.912341, 11.937891, 13.750310>,  <5.685695, 12.003844, 13.706928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.912341, 11.937891, 13.750310>,  <6.290083, 11.827969, 13.822614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.912341, 11.937891, 13.750310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113277, -0.787637, -0.605637,
		-0.308806, -0.551461, 0.774938,
		-0.944355, 0.274807, -0.180759,
		5.629034, 12.020333, 13.696082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.858754, 11.275742, 13.982385>,  <6.290083, 11.827969, 13.822614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.858754, 11.275742, 13.982385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.674292, 11.497873, 13.705561>,  <5.563615, 11.631152, 13.539467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.674292, 11.497873, 13.705561>,  <5.858754, 11.275742, 13.982385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.674292, 11.497873, 13.705561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061673, -0.798118, -0.599337,
		-0.885174, -0.233706, 0.402304,
		-0.461154, 0.555329, -0.692060,
		5.535946, 11.664472, 13.497943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.286769, 10.930824, 13.781758>,  <5.858754, 11.275742, 13.982385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.286769, 10.930824, 13.781758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.354083, 11.175885, 13.472867>,  <5.394472, 11.322922, 13.287532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.354083, 11.175885, 13.472867>,  <5.286769, 10.930824, 13.781758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.354083, 11.175885, 13.472867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102116, -0.768351, -0.631830,
		-0.980435, 0.185184, -0.066740,
		0.168285, 0.612653, -0.772229,
		5.404569, 11.359681, 13.241199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.843050, 10.640140, 13.315416>,  <5.286769, 10.930824, 13.781758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.843050, 10.640140, 13.315416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.103077, 10.862309, 13.107986>,  <5.259093, 10.995609, 12.983528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.103077, 10.862309, 13.107986>,  <4.843050, 10.640140, 13.315416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.103077, 10.862309, 13.107986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059481, -0.717546, -0.693967,
		-0.757545, 0.420280, -0.499490,
		0.650068, 0.555421, -0.518574,
		5.298097, 11.028934, 12.952415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.644938, 10.580201, 12.627208>,  <4.843050, 10.640140, 13.315416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.644938, 10.580201, 12.627208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.022386, 10.708664, 12.595100>,  <5.248854, 10.785742, 12.575836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.022386, 10.708664, 12.595100>,  <4.644938, 10.580201, 12.627208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.022386, 10.708664, 12.595100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154335, -0.641314, -0.751596,
		-0.292857, 0.696832, -0.654721,
		0.943618, 0.321157, -0.080268,
		5.305471, 10.805011, 12.571020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.713937, 10.696538, 11.936275>,  <4.644938, 10.580201, 12.627208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.713937, 10.696538, 11.936275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.082981, 10.658788, 12.085880>,  <5.304408, 10.636138, 12.175643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.082981, 10.658788, 12.085880>,  <4.713937, 10.696538, 11.936275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.082981, 10.658788, 12.085880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255893, -0.575782, -0.776527,
		0.288634, 0.812138, -0.507072,
		0.922610, -0.094376, 0.374011,
		5.359764, 10.630475, 12.198084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.129495, 10.649910, 11.368619>,  <4.713937, 10.696538, 11.936275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.129495, 10.649910, 11.368619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.357454, 10.506841, 11.664535>,  <5.494230, 10.420999, 11.842084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.357454, 10.506841, 11.664535>,  <5.129495, 10.649910, 11.368619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.357454, 10.506841, 11.664535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268080, -0.770109, -0.578849,
		0.776756, 0.528207, -0.342998,
		0.569898, -0.357674, 0.739788,
		5.528424, 10.399539, 11.886471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.676586, 10.397323, 11.060300>,  <5.129495, 10.649910, 11.368619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.676586, 10.397323, 11.060300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.695275, 10.214592, 11.415631>,  <5.706489, 10.104954, 11.628830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.695275, 10.214592, 11.415631>,  <5.676586, 10.397323, 11.060300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.695275, 10.214592, 11.415631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336821, -0.830014, -0.444553,
		0.940409, 0.319979, 0.115088,
		0.046723, -0.456826, 0.888328,
		5.709292, 10.077544, 11.682130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.241936, 9.910375, 10.998032>,  <5.676586, 10.397323, 11.060300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.241936, 9.910375, 10.998032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.015921, 9.795845, 11.307548>,  <5.880311, 9.727127, 11.493258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.015921, 9.795845, 11.307548>,  <6.241936, 9.910375, 10.998032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.015921, 9.795845, 11.307548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231755, -0.955174, -0.184209,
		0.791848, 0.075245, 0.606066,
		-0.565037, -0.286324, 0.773790,
		5.846409, 9.709948, 11.539684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.663805, 9.528528, 11.407994>,  <6.241936, 9.910375, 10.998032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.663805, 9.528528, 11.407994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.290309, 9.415460, 11.495838>,  <6.066212, 9.347619, 11.548545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.290309, 9.415460, 11.495838>,  <6.663805, 9.528528, 11.407994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.290309, 9.415460, 11.495838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196735, -0.917803, -0.344867,
		0.299043, -0.278810, 0.912599,
		-0.933739, -0.282670, 0.219611,
		6.010188, 9.330659, 11.561722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.655433, 8.866502, 11.748411>,  <6.663805, 9.528528, 11.407994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.655433, 8.866502, 11.748411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.279159, 8.873470, 11.612880>,  <6.053394, 8.877651, 11.531561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.279159, 8.873470, 11.612880>,  <6.655433, 8.866502, 11.748411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.279159, 8.873470, 11.612880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145289, -0.881792, -0.448704,
		-0.306593, -0.471318, 0.826959,
		-0.940687, 0.017422, -0.338828,
		5.996953, 8.878696, 11.511231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.243388, 8.219319, 12.005298>,  <6.655433, 8.866502, 11.748411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.243388, 8.219319, 12.005298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.070651, 8.367430, 11.676322>,  <5.967008, 8.456296, 11.478936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.070651, 8.367430, 11.676322>,  <6.243388, 8.219319, 12.005298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.070651, 8.367430, 11.676322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180636, -0.857868, -0.481075,
		-0.883675, -0.356312, 0.303580,
		-0.431844, 0.370276, -0.822439,
		5.941098, 8.478513, 11.429590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.854053, 7.649084, 11.693875>,  <6.243388, 8.219319, 12.005298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.854053, 7.649084, 11.693875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.830459, 7.862836, 11.356602>,  <5.816302, 7.991087, 11.154238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.830459, 7.862836, 11.356602>,  <5.854053, 7.649084, 11.693875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.830459, 7.862836, 11.356602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001061, -0.844620, -0.535366,
		-0.998258, -0.032474, 0.049253,
		-0.058986, 0.534381, -0.843183,
		5.812763, 8.023150, 11.103647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.364506, 7.265578, 11.229716>,  <5.854053, 7.649084, 11.693875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.364506, 7.265578, 11.229716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.603631, 7.490088, 11.000774>,  <5.747106, 7.624794, 10.863409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.603631, 7.490088, 11.000774>,  <5.364506, 7.265578, 11.229716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.603631, 7.490088, 11.000774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007381, -0.710099, -0.704063,
		-0.801601, 0.425123, -0.420364,
		0.597813, 0.561276, -0.572354,
		5.782975, 7.658471, 10.829068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.097418, 7.263547, 10.505104>,  <5.364506, 7.265578, 11.229716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.097418, 7.263547, 10.505104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.483866, 7.365505, 10.488911>,  <5.715735, 7.426680, 10.479195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.483866, 7.365505, 10.488911>,  <5.097418, 7.263547, 10.505104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.483866, 7.365505, 10.488911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095769, -0.499715, -0.860879,
		-0.239664, 0.827836, -0.507196,
		0.966121, 0.254896, -0.040483,
		5.773703, 7.441974, 10.476766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.187052, 7.397405, 9.848139>,  <5.097418, 7.263547, 10.505104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.187052, 7.397405, 9.848139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.567505, 7.377345, 9.970010>,  <5.795778, 7.365309, 10.043133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.567505, 7.377345, 9.970010>,  <5.187052, 7.397405, 9.848139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.567505, 7.377345, 9.970010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268887, -0.350566, -0.897108,
		0.151800, 0.935194, -0.319950,
		0.951135, -0.050150, 0.304677,
		5.852846, 7.362299, 10.061413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.552525, 7.508132, 9.236371>,  <5.187052, 7.397405, 9.848139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.552525, 7.508132, 9.236371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.821706, 7.358789, 9.491788>,  <5.983215, 7.269183, 9.645039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.821706, 7.358789, 9.491788>,  <5.552525, 7.508132, 9.236371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.821706, 7.358789, 9.491788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452278, -0.475393, -0.754616,
		0.585302, 0.796621, -0.151056,
		0.672954, -0.373359, 0.638543,
		6.023592, 7.246781, 9.683351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.338362, 7.713456, 9.147644>,  <5.552525, 7.508132, 9.236371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.338362, 7.713456, 9.147644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.304893, 7.348719, 9.308414>,  <6.284811, 7.129877, 9.404877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.304893, 7.348719, 9.308414>,  <6.338362, 7.713456, 9.147644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.304893, 7.348719, 9.308414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339559, -0.405291, -0.848787,
		0.936856, 0.065457, 0.343536,
		-0.083673, -0.911841, 0.401926,
		6.279790, 7.075167, 9.428992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.013238, 7.256361, 8.996877>,  <6.338362, 7.713456, 9.147644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.013238, 7.256361, 8.996877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.733924, 6.991323, 9.105222>,  <6.566336, 6.832300, 9.170229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.733924, 6.991323, 9.105222>,  <7.013238, 7.256361, 8.996877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.733924, 6.991323, 9.105222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255178, -0.583953, -0.770638,
		0.668792, -0.469006, 0.576845,
		-0.698285, -0.662595, 0.270863,
		6.524438, 6.792544, 9.186481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.473439, 6.732140, 9.335968>,  <7.013238, 7.256361, 8.996877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.473439, 6.732140, 9.335968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.455476, 6.887129, 8.967653>,  <7.444698, 6.980122, 8.746664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.455476, 6.887129, 8.967653>,  <7.473439, 6.732140, 9.335968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.455476, 6.887129, 8.967653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614292, 0.716151, 0.331321,
		0.787800, 0.580511, 0.205860,
		-0.044909, 0.387473, -0.920787,
		7.442003, 7.003371, 8.691418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.263951, 6.592247, 9.044456>,  <7.473439, 6.732140, 9.335968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.263951, 6.592247, 9.044456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.074027, 6.927313, 9.152434>,  <7.960073, 7.128353, 9.217222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.074027, 6.927313, 9.152434>,  <8.263951, 6.592247, 9.044456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.074027, 6.927313, 9.152434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742073, 0.545960, -0.388917,
		-0.473163, 0.015659, -0.880836,
		-0.474811, 0.837665, 0.269948,
		7.931584, 7.178612, 9.233418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.278799, 7.097253, 8.482914>,  <8.263951, 6.592247, 9.044456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.278799, 7.097253, 8.482914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.252532, 7.281659, 8.836898>,  <8.236772, 7.392302, 9.049288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.252532, 7.281659, 8.836898>,  <8.278799, 7.097253, 8.482914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.252532, 7.281659, 8.836898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795269, 0.559846, -0.232637,
		-0.602690, 0.688505, -0.403394,
		-0.065667, 0.461014, 0.884960,
		8.232832, 7.419963, 9.102386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.509049, 7.484709, 7.758916>,  <8.278799, 7.097253, 8.482914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.509049, 7.484709, 7.758916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.870510, 7.320353, 7.710610>,  <9.087386, 7.221739, 7.681626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.870510, 7.320353, 7.710610>,  <8.509049, 7.484709, 7.758916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.870510, 7.320353, 7.710610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422847, -0.811266, -0.403793,
		0.067942, 0.415953, -0.906845,
		0.903651, -0.410891, -0.120766,
		9.141605, 7.197086, 7.674380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.045765, 7.225362, 8.173722>,  <8.509049, 7.484709, 7.758916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.045765, 7.225362, 8.173722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.305095, 7.416276, 7.936446>,  <9.460692, 7.530824, 7.794080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.305095, 7.416276, 7.936446>,  <9.045765, 7.225362, 8.173722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.305095, 7.416276, 7.936446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300548, 0.555408, 0.775366,
		0.699533, -0.680971, 0.216637,
		0.648324, 0.477284, -0.593191,
		9.499592, 7.559461, 7.758488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.640919, 7.252229, 8.481922>,  <9.045765, 7.225362, 8.173722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.640919, 7.252229, 8.481922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.566255, 7.568901, 8.249234>,  <9.521456, 7.758904, 8.109621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.566255, 7.568901, 8.249234>,  <9.640919, 7.252229, 8.481922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.566255, 7.568901, 8.249234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160556, 0.608749, 0.776947,
		0.969216, 0.051626, -0.240738,
		-0.186660, 0.791681, -0.581720,
		9.510257, 7.806406, 8.074718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.013718, 7.777677, 8.587962>,  <9.640919, 7.252229, 8.481922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.013718, 7.777677, 8.587962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.719480, 7.982917, 8.411043>,  <9.542936, 8.106061, 8.304892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.719480, 7.982917, 8.411043>,  <10.013718, 7.777677, 8.587962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.719480, 7.982917, 8.411043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116280, 0.738861, 0.663750,
		0.667367, 0.436821, -0.603166,
		-0.735595, 0.513100, -0.442298,
		9.498801, 8.136847, 8.278354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.033071, 8.360282, 9.011055>,  <10.013718, 7.777677, 8.587962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.033071, 8.360282, 9.011055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.733678, 8.480956, 8.774831>,  <9.554042, 8.553360, 8.633097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.733678, 8.480956, 8.774831>,  <10.033071, 8.360282, 9.011055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.733678, 8.480956, 8.774831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009759, 0.885423, 0.464683,
		0.663083, 0.353570, -0.659779,
		-0.748482, 0.301685, -0.590560,
		9.509133, 8.571462, 8.597663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.173749, 9.038047, 9.007377>,  <10.033071, 8.360282, 9.011055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.173749, 9.038047, 9.007377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.789382, 8.997169, 8.904465>,  <9.558762, 8.972642, 8.842717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.789382, 8.997169, 8.904465>,  <10.173749, 9.038047, 9.007377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.789382, 8.997169, 8.904465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197337, 0.904660, 0.377689,
		0.194153, 0.413699, -0.889470,
		-0.960918, -0.102196, -0.257281,
		9.501106, 8.966510, 8.827280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.903613, 9.547004, 8.520443>,  <10.173749, 9.038047, 9.007377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.903613, 9.547004, 8.520443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.637040, 9.416299, 8.788501>,  <9.477097, 9.337875, 8.949336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.637040, 9.416299, 8.788501>,  <9.903613, 9.547004, 8.520443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.637040, 9.416299, 8.788501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026677, 0.908716, 0.416561,
		-0.745088, 0.259732, -0.614315,
		-0.666432, -0.326763, 0.670145,
		9.437111, 9.318270, 8.989544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.541568, 10.136102, 8.711326>,  <9.903613, 9.547004, 8.520443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.541568, 10.136102, 8.711326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.347960, 9.888429, 8.958658>,  <9.231794, 9.739824, 9.107058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.347960, 9.888429, 8.958658>,  <9.541568, 10.136102, 8.711326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.347960, 9.888429, 8.958658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402730, 0.784962, 0.470790,
		-0.776873, -0.021148, -0.629302,
		-0.484022, -0.619183, 0.618332,
		9.202753, 9.702674, 9.144158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.848409, 10.474951, 8.853372>,  <9.541568, 10.136102, 8.711326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.848409, 10.474951, 8.853372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.895981, 10.208834, 9.148191>,  <8.924524, 10.049164, 9.325084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.895981, 10.208834, 9.148191>,  <8.848409, 10.474951, 8.853372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.895981, 10.208834, 9.148191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373553, 0.657799, 0.654033,
		-0.919953, -0.353111, -0.170291,
		0.118929, -0.665292, 0.737049,
		8.931660, 10.009246, 9.369307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.226723, 10.587669, 9.204478>,  <8.848409, 10.474951, 8.853372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.226723, 10.587669, 9.204478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.483661, 10.395176, 9.443076>,  <8.637824, 10.279679, 9.586235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.483661, 10.395176, 9.443076>,  <8.226723, 10.587669, 9.204478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.483661, 10.395176, 9.443076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235639, 0.616586, 0.751197,
		-0.729292, -0.623085, 0.282663,
		0.642346, -0.481235, 0.596494,
		8.676365, 10.250806, 9.622025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.846861, 10.565533, 9.875004>,  <8.226723, 10.587669, 9.204478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.846861, 10.565533, 9.875004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.233517, 10.489786, 9.943996>,  <8.465510, 10.444339, 9.985393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.233517, 10.489786, 9.943996>,  <7.846861, 10.565533, 9.875004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.233517, 10.489786, 9.943996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031665, 0.579870, 0.814093,
		-0.254179, -0.792396, 0.554528,
		0.966639, -0.189366, 0.172482,
		8.523508, 10.432977, 9.995741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.872885, 10.163047, 10.421885>,  <7.846861, 10.565533, 9.875004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.872885, 10.163047, 10.421885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.219134, 10.362500, 10.403717>,  <8.426884, 10.482172, 10.392817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.219134, 10.362500, 10.403717>,  <7.872885, 10.163047, 10.421885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.219134, 10.362500, 10.403717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243277, 0.498138, 0.832271,
		0.437623, -0.709383, 0.552505,
		0.865623, 0.498633, -0.045420,
		8.478821, 10.512090, 10.390091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.124647, 10.084491, 11.067406>,  <7.872885, 10.163047, 10.421885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.124647, 10.084491, 11.067406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.372041, 10.378521, 10.956308>,  <8.520476, 10.554939, 10.889650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.372041, 10.378521, 10.956308>,  <8.124647, 10.084491, 11.067406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.372041, 10.378521, 10.956308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042140, 0.321919, 0.945829,
		0.784667, -0.596683, 0.168126,
		0.618483, 0.735076, -0.277743,
		8.557586, 10.599044, 10.872985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.558350, 10.153623, 11.624827>,  <8.124647, 10.084491, 11.067406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.558350, 10.153623, 11.624827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.604136, 10.505895, 11.440958>,  <8.631608, 10.717258, 11.330637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.604136, 10.505895, 11.440958>,  <8.558350, 10.153623, 11.624827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.604136, 10.505895, 11.440958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008532, 0.463568, 0.886020,
		0.993391, -0.097498, 0.060576,
		0.114466, 0.880681, -0.459672,
		8.638476, 10.770099, 11.303057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.112748, 10.545435, 12.058784>,  <8.558350, 10.153623, 11.624827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.112748, 10.545435, 12.058784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.922315, 10.807340, 11.823962>,  <8.808055, 10.964482, 11.683069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.922315, 10.807340, 11.823962>,  <9.112748, 10.545435, 12.058784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.922315, 10.807340, 11.823962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045512, 0.685013, 0.727108,
		0.878222, 0.319446, -0.355923,
		-0.476084, 0.654761, -0.587054,
		8.779490, 11.003768, 11.647846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.503535, 11.183318, 11.896067>,  <9.112748, 10.545435, 12.058784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.503535, 11.183318, 11.896067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.112157, 11.265441, 11.887189>,  <8.877330, 11.314714, 11.881862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.112157, 11.265441, 11.887189>,  <9.503535, 11.183318, 11.896067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.112157, 11.265441, 11.887189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154581, 0.799455, 0.580497,
		0.136924, 0.564554, -0.813960,
		-0.978446, 0.205307, -0.022195,
		8.818623, 11.327033, 11.880530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.397988, 11.971830, 12.199954>,  <9.503535, 11.183318, 11.896067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.397988, 11.971830, 12.199954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.037830, 11.797832, 12.196638>,  <8.821735, 11.693433, 12.194649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.037830, 11.797832, 12.196638>,  <9.397988, 11.971830, 12.199954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.037830, 11.797832, 12.196638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275335, 0.554953, 0.784996,
		-0.336870, 0.709088, -0.619446,
		-0.900394, -0.434996, -0.008290,
		8.767712, 11.667333, 12.194151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.999437, 12.537985, 12.417431>,  <9.397988, 11.971830, 12.199954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.999437, 12.537985, 12.417431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.765978, 12.213637, 12.434615>,  <8.625902, 12.019029, 12.444926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.765978, 12.213637, 12.434615>,  <8.999437, 12.537985, 12.417431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.765978, 12.213637, 12.434615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545976, 0.431046, 0.718407,
		-0.601053, 0.395841, -0.694295,
		-0.583648, -0.810869, 0.042961,
		8.590883, 11.970377, 12.447503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.334299, 12.762076, 12.401003>,  <8.999437, 12.537985, 12.417431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.334299, 12.762076, 12.401003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.318527, 12.396752, 12.563144>,  <8.309064, 12.177558, 12.660428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.318527, 12.396752, 12.563144>,  <8.334299, 12.762076, 12.401003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.318527, 12.396752, 12.563144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531776, 0.362627, 0.765321,
		-0.845967, -0.185380, -0.499974,
		-0.039430, -0.913310, 0.405351,
		8.306699, 12.122759, 12.684749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.647214, 12.627473, 12.506479>,  <8.334299, 12.762076, 12.401003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.647214, 12.627473, 12.506479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.853884, 12.388215, 12.751516>,  <7.977886, 12.244660, 12.898539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.853884, 12.388215, 12.751516>,  <7.647214, 12.627473, 12.506479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.853884, 12.388215, 12.751516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502786, 0.367157, 0.782561,
		-0.693003, -0.712333, -0.111038,
		0.516676, -0.598145, 0.612591,
		8.008887, 12.208772, 12.935294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.177619, 12.496995, 12.983977>,  <7.647214, 12.627473, 12.506479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.177619, 12.496995, 12.983977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.506566, 12.363650, 13.168405>,  <7.703934, 12.283644, 13.279061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.506566, 12.363650, 13.168405>,  <7.177619, 12.496995, 12.983977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.506566, 12.363650, 13.168405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390737, 0.258142, 0.883565,
		-0.413568, -0.906771, 0.082030,
		0.822366, -0.333362, 0.461068,
		7.753276, 12.263641, 13.306726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.999812, 12.059800, 13.560361>,  <7.177619, 12.496995, 12.983977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.999812, 12.059800, 13.560361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.359900, 12.198422, 13.665813>,  <7.575953, 12.281595, 13.729085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.359900, 12.198422, 13.665813>,  <6.999812, 12.059800, 13.560361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.359900, 12.198422, 13.665813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351861, 0.222305, 0.909271,
		0.256507, -0.911306, 0.322064,
		0.900221, 0.346556, 0.263630,
		7.629966, 12.302389, 13.744903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.305953, 11.696466, 14.242934>,  <6.999812, 12.059800, 13.560361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.305953, 11.696466, 14.242934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.449726, 12.065792, 14.188826>,  <7.535990, 12.287388, 14.156361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.449726, 12.065792, 14.188826>,  <7.305953, 11.696466, 14.242934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.449726, 12.065792, 14.188826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213887, 0.222613, 0.951155,
		0.908328, -0.312943, 0.277499,
		0.359432, 0.923314, -0.135271,
		7.557556, 12.342787, 14.148244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.543655, 11.846269, 14.886766>,  <7.305953, 11.696466, 14.242934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.543655, 11.846269, 14.886766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.568879, 12.206373, 14.714462>,  <7.584013, 12.422436, 14.611080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.568879, 12.206373, 14.714462>,  <7.543655, 11.846269, 14.886766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.568879, 12.206373, 14.714462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189742, 0.434560, 0.880429,
		0.979807, 0.026214, 0.198220,
		0.063059, 0.900261, -0.430759,
		7.587796, 12.476452, 14.585235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.987593, 12.200626, 15.339100>,  <7.543655, 11.846269, 14.886766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.987593, 12.200626, 15.339100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.782362, 12.466249, 15.121557>,  <7.659224, 12.625623, 14.991032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.782362, 12.466249, 15.121557>,  <7.987593, 12.200626, 15.339100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.782362, 12.466249, 15.121557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294388, 0.459041, 0.838223,
		0.806280, 0.590178, -0.040033,
		-0.513077, 0.664057, -0.543857,
		7.628439, 12.665466, 14.958400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.201179, 12.843575, 15.607648>,  <7.987593, 12.200626, 15.339100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.201179, 12.843575, 15.607648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.848332, 12.887209, 15.424356>,  <7.636625, 12.913389, 15.314382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.848332, 12.887209, 15.424356>,  <8.201179, 12.843575, 15.607648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.848332, 12.887209, 15.424356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358594, 0.475265, 0.803451,
		0.305425, 0.873054, -0.380121,
		-0.882115, 0.109085, -0.458230,
		7.583698, 12.919934, 15.286887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.745846, 13.128679, 16.030663>,  <8.201179, 12.843575, 15.607648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.745846, 13.128679, 16.030663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.128201, 13.012074, 16.016235>,  <9.357614, 12.942111, 16.007580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.128201, 13.012074, 16.016235>,  <8.745846, 13.128679, 16.030663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.128201, 13.012074, 16.016235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275696, 0.848021, 0.452607,
		-0.101354, -0.442585, 0.890980,
		0.955887, -0.291513, -0.036068,
		9.414967, 12.924621, 16.005415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.062090, 13.238375, 16.654661>,  <8.745846, 13.128679, 16.030663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.062090, 13.238375, 16.654661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.386633, 13.206577, 16.423014>,  <9.581359, 13.187499, 16.284025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.386633, 13.206577, 16.423014>,  <9.062090, 13.238375, 16.654661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.386633, 13.206577, 16.423014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381051, 0.823212, 0.420859,
		0.443283, -0.562141, 0.698210,
		0.811357, -0.079494, -0.579121,
		9.630040, 13.182729, 16.249277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.716427, 13.194613, 17.155642>,  <9.062090, 13.238375, 16.654661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.716427, 13.194613, 17.155642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.771779, 13.338052, 16.786371>,  <9.804990, 13.424115, 16.564808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.771779, 13.338052, 16.786371>,  <9.716427, 13.194613, 17.155642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.771779, 13.338052, 16.786371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466574, 0.798619, 0.380153,
		0.873590, -0.483336, -0.056800,
		0.138380, 0.358599, -0.923178,
		9.813293, 13.445632, 16.509418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.466321, 13.173934, 17.860332>,  <9.716427, 13.194613, 17.155642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.466321, 13.173934, 17.860332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.441131, 13.569132, 17.916763>,  <9.426017, 13.806251, 17.950623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.441131, 13.569132, 17.916763>,  <9.466321, 13.173934, 17.860332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.441131, 13.569132, 17.916763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412482, -0.154485, 0.897771,
		0.908787, -0.001654, 0.417258,
		-0.062975, 0.987994, 0.141076,
		9.422238, 13.865530, 17.959085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.858967, 13.425121, 18.462656>,  <9.466321, 13.173934, 17.860332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.858967, 13.425121, 18.462656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.535602, 13.633985, 18.353977>,  <9.341582, 13.759303, 18.288771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.535602, 13.633985, 18.353977>,  <9.858967, 13.425121, 18.462656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.535602, 13.633985, 18.353977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294862, 0.040248, 0.954692,
		0.509436, 0.851898, 0.121427,
		-0.808413, 0.522159, -0.271696,
		9.293077, 13.790632, 18.272469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.885919, 14.124108, 18.758787>,  <9.858967, 13.425121, 18.462656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.885919, 14.124108, 18.758787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.524736, 13.956923, 18.718834>,  <9.308027, 13.856611, 18.694862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.524736, 13.956923, 18.718834>,  <9.885919, 14.124108, 18.758787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.524736, 13.956923, 18.718834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196258, 0.194311, 0.961107,
		-0.382301, 0.887439, -0.257483,
		-0.902956, -0.417965, -0.099882,
		9.253850, 13.831533, 18.688869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.185764, 14.781343, 18.712791>,  <9.885919, 14.124108, 18.758787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.185764, 14.781343, 18.712791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.510960, 14.554912, 18.767353>,  <10.706077, 14.419053, 18.800091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.510960, 14.554912, 18.767353>,  <10.185764, 14.781343, 18.712791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.510960, 14.554912, 18.767353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269068, 0.572975, 0.774146,
		-0.516383, -0.592670, 0.618135,
		0.812989, -0.566076, 0.136405,
		10.754856, 14.385089, 18.808275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.302568, 14.591800, 19.471592>,  <10.185764, 14.781343, 18.712791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.302568, 14.591800, 19.471592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.654469, 14.559332, 19.284210>,  <10.865608, 14.539851, 19.171782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.654469, 14.559332, 19.284210>,  <10.302568, 14.591800, 19.471592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.654469, 14.559332, 19.284210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400981, 0.656080, 0.639354,
		0.255448, -0.750314, 0.609734,
		0.879750, -0.081170, -0.468456,
		10.918393, 14.534981, 19.143673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.844739, 14.413572, 20.022430>,  <10.302568, 14.591800, 19.471592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.844739, 14.413572, 20.022430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.042071, 14.568626, 19.710953>,  <11.160471, 14.661659, 19.524067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.042071, 14.568626, 19.710953>,  <10.844739, 14.413572, 20.022430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.042071, 14.568626, 19.710953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487736, 0.617969, 0.616626,
		0.720235, -0.683997, 0.115798,
		0.493330, 0.387637, -0.778693,
		11.190070, 14.684917, 19.477345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.547933, 14.503408, 20.225199>,  <10.844739, 14.413572, 20.022430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.547933, 14.503408, 20.225199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.533842, 14.757791, 19.916830>,  <11.525388, 14.910419, 19.731810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.533842, 14.757791, 19.916830>,  <11.547933, 14.503408, 20.225199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.533842, 14.757791, 19.916830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507722, 0.675822, 0.534306,
		0.860800, -0.372593, -0.346695,
		-0.035226, 0.635955, -0.770922,
		11.523274, 14.948577, 19.685553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.177929, 14.879313, 20.254059>,  <11.547933, 14.503408, 20.225199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.177929, 14.879313, 20.254059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.952688, 15.116199, 20.023512>,  <11.817544, 15.258329, 19.885183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.952688, 15.116199, 20.023512>,  <12.177929, 14.879313, 20.254059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.952688, 15.116199, 20.023512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451485, 0.804631, 0.385656,
		0.692153, -0.043057, -0.720465,
		-0.563103, 0.592212, -0.576368,
		11.783757, 15.293862, 19.850601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.680709, 15.391541, 20.000231>,  <12.177929, 14.879313, 20.254059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.680709, 15.391541, 20.000231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.327363, 15.572060, 19.949633>,  <12.115355, 15.680370, 19.919273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.327363, 15.572060, 19.949633>,  <12.680709, 15.391541, 20.000231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.327363, 15.572060, 19.949633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382689, 0.850329, 0.361234,
		0.270586, 0.270692, -0.923855,
		-0.883364, 0.451295, -0.126496,
		12.062354, 15.707448, 19.911684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.828684, 16.103745, 19.913559>,  <12.680709, 15.391541, 20.000231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.828684, 16.103745, 19.913559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.438964, 16.125574, 20.000978>,  <12.205132, 16.138672, 20.053431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.438964, 16.125574, 20.000978>,  <12.828684, 16.103745, 19.913559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.438964, 16.125574, 20.000978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165872, 0.830244, 0.532148,
		-0.152406, 0.554722, -0.817958,
		-0.974299, 0.054574, 0.218547,
		12.146674, 16.141947, 20.066544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.756441, 16.694818, 19.813179>,  <12.828684, 16.103745, 19.913559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.756441, 16.694818, 19.813179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.448543, 16.575958, 20.039167>,  <12.263803, 16.504642, 20.174761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.448543, 16.575958, 20.039167>,  <12.756441, 16.694818, 19.813179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.448543, 16.575958, 20.039167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178247, 0.749791, 0.637214,
		-0.612959, 0.591198, -0.524182,
		-0.769746, -0.297152, 0.564970,
		12.217619, 16.486813, 20.208658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.304954, 17.235607, 19.919733>,  <12.756441, 16.694818, 19.813179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.304954, 17.235607, 19.919733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.203602, 16.997435, 20.224695>,  <12.142791, 16.854530, 20.407673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.203602, 16.997435, 20.224695>,  <12.304954, 17.235607, 19.919733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.203602, 16.997435, 20.224695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069897, 0.774794, 0.628338,
		-0.964838, 0.212498, -0.154699,
		-0.253380, -0.595431, 0.762404,
		12.127587, 16.818806, 20.453417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.121966, 17.752184, 20.429079>,  <12.304954, 17.235607, 19.919733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.121966, 17.752184, 20.429079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.139526, 17.403631, 20.624535>,  <12.150063, 17.194500, 20.741808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.139526, 17.403631, 20.624535>,  <12.121966, 17.752184, 20.429079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.139526, 17.403631, 20.624535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461289, 0.451530, 0.763762,
		-0.886163, 0.191876, 0.421780,
		0.043899, -0.871380, 0.488640,
		12.152696, 17.142218, 20.771126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.019183, 18.002293, 21.096151>,  <12.121966, 17.752184, 20.429079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.019183, 18.002293, 21.096151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.142528, 17.627537, 21.162067>,  <12.216535, 17.402683, 21.201616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.142528, 17.627537, 21.162067>,  <12.019183, 18.002293, 21.096151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.142528, 17.627537, 21.162067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380012, 0.280129, 0.881543,
		-0.872069, -0.209212, 0.442410,
		0.308361, -0.936888, 0.164788,
		12.235036, 17.346470, 21.211504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.789123, 17.729736, 21.711937>,  <12.019183, 18.002293, 21.096151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.789123, 17.729736, 21.711937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.139604, 17.552555, 21.635979>,  <12.349893, 17.446247, 21.590403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.139604, 17.552555, 21.635979>,  <11.789123, 17.729736, 21.711937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.139604, 17.552555, 21.635979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348140, 0.309265, 0.884960,
		-0.333266, -0.841516, 0.425188,
		0.876204, -0.442952, -0.189897,
		12.402465, 17.419670, 21.579010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.995822, 17.727972, 22.315119>,  <11.789123, 17.729736, 21.711937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.995822, 17.727972, 22.315119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.334355, 17.625437, 22.128353>,  <12.537476, 17.563915, 22.016293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.334355, 17.625437, 22.128353>,  <11.995822, 17.727972, 22.315119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.334355, 17.625437, 22.128353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531842, 0.358280, 0.767319,
		-0.029409, -0.897733, 0.439556,
		0.846332, -0.256341, -0.466916,
		12.588255, 17.548534, 21.988277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.525242, 17.252914, 22.775610>,  <11.995822, 17.727972, 22.315119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.525242, 17.252914, 22.775610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.779093, 17.416489, 22.513308>,  <12.931403, 17.514633, 22.355927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.779093, 17.416489, 22.513308>,  <12.525242, 17.252914, 22.775610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.779093, 17.416489, 22.513308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627738, 0.222156, 0.746051,
		0.450769, -0.885108, -0.115720,
		0.634628, 0.408938, -0.655757,
		12.969481, 17.539169, 22.316580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.265781, 17.006701, 22.911879>,  <12.525242, 17.252914, 22.775610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.265781, 17.006701, 22.911879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.308014, 17.332790, 22.684103>,  <13.333354, 17.528444, 22.547438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.308014, 17.332790, 22.684103>,  <13.265781, 17.006701, 22.911879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.308014, 17.332790, 22.684103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790141, 0.278905, 0.545792,
		0.603762, -0.507564, -0.614695,
		0.105582, 0.815224, -0.569440,
		13.339688, 17.577358, 22.513271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.002911, 16.937088, 22.775858>,  <13.265781, 17.006701, 22.911879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.002911, 16.937088, 22.775858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.918043, 17.323475, 22.716677>,  <13.867123, 17.555307, 22.681168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.918043, 17.323475, 22.716677>,  <14.002911, 16.937088, 22.775858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.918043, 17.323475, 22.716677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571324, 0.245441, 0.783165,
		0.792826, 0.081636, -0.603956,
		-0.212170, 0.965968, -0.147951,
		13.854392, 17.613266, 22.672291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.681920, 17.376242, 22.573242>,  <14.002911, 16.937088, 22.775858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.681920, 17.376242, 22.573242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.410225, 17.624191, 22.730413>,  <14.247208, 17.772961, 22.824717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.410225, 17.624191, 22.730413>,  <14.681920, 17.376242, 22.573242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.410225, 17.624191, 22.730413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696474, 0.375593, 0.611436,
		0.231432, 0.688974, -0.686843,
		-0.679237, 0.619874, 0.392928,
		14.206453, 17.810154, 22.848291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.878268, 17.981867, 22.536327>,  <14.681920, 17.376242, 22.573242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.878268, 17.981867, 22.536327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.611774, 18.054750, 22.825583>,  <14.451878, 18.098480, 22.999136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.611774, 18.054750, 22.825583>,  <14.878268, 17.981867, 22.536327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.611774, 18.054750, 22.825583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741201, 0.268641, 0.615185,
		-0.082171, 0.945849, -0.314033,
		-0.666235, 0.182211, 0.723139,
		14.411904, 18.109413, 23.042524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.148995, 18.495770, 22.851385>,  <14.878268, 17.981867, 22.536327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.148995, 18.495770, 22.851385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.859220, 18.445955, 23.122583>,  <14.685354, 18.416067, 23.285303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.859220, 18.445955, 23.122583>,  <15.148995, 18.495770, 22.851385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.859220, 18.445955, 23.122583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633545, 0.267341, 0.726050,
		-0.271675, 0.955521, -0.114774,
		-0.724440, -0.124535, 0.677995,
		14.641888, 18.408594, 23.325981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.975428, 19.112309, 23.289064>,  <15.148995, 18.495770, 22.851385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.975428, 19.112309, 23.289064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.838886, 18.801985, 23.501329>,  <14.756962, 18.615791, 23.628689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.838886, 18.801985, 23.501329>,  <14.975428, 19.112309, 23.289064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.838886, 18.801985, 23.501329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415289, 0.381994, 0.825600,
		-0.843216, 0.502199, 0.191790,
		-0.341353, -0.775807, 0.530661,
		14.736481, 18.569242, 23.660528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.699716, 19.353373, 23.941545>,  <14.975428, 19.112309, 23.289064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.699716, 19.353373, 23.941545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.791471, 18.971601, 24.017914>,  <14.846525, 18.742538, 24.063736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.791471, 18.971601, 24.017914>,  <14.699716, 19.353373, 23.941545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.791471, 18.971601, 24.017914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383386, 0.268894, 0.883579,
		-0.894648, -0.129486, 0.427595,
		0.229389, -0.954426, 0.190922,
		14.860289, 18.685274, 24.075190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.424733, 19.265476, 24.548922>,  <14.699716, 19.353373, 23.941545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.424733, 19.265476, 24.548922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.666449, 18.947826, 24.522997>,  <14.811478, 18.757236, 24.507442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.666449, 18.947826, 24.522997>,  <14.424733, 19.265476, 24.548922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.666449, 18.947826, 24.522997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298961, 0.150587, 0.942309,
		-0.738552, -0.588802, 0.328411,
		0.604288, -0.794126, -0.064813,
		14.847734, 18.709589, 24.503553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.272568, 18.846306, 25.095491>,  <14.424733, 19.265476, 24.548922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.272568, 18.846306, 25.095491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.640292, 18.741318, 24.978203>,  <14.860927, 18.678326, 24.907829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.640292, 18.741318, 24.978203>,  <14.272568, 18.846306, 25.095491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.640292, 18.741318, 24.978203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266863, -0.131826, 0.954676,
		-0.289227, -0.955893, -0.051146,
		0.919310, -0.262469, -0.293220,
		14.916085, 18.662577, 24.890236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.368148, 18.420351, 25.555746>,  <14.272568, 18.846306, 25.095491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.368148, 18.420351, 25.555746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.728742, 18.522224, 25.415768>,  <14.945098, 18.583349, 25.331781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.728742, 18.522224, 25.415768>,  <14.368148, 18.420351, 25.555746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.728742, 18.522224, 25.415768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380567, -0.081340, 0.921169,
		0.206142, -0.963597, -0.170251,
		0.901484, 0.254684, -0.349946,
		14.999187, 18.598629, 25.310783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.756203, 17.947744, 25.878759>,  <14.368148, 18.420351, 25.555746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.756203, 17.947744, 25.878759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.009267, 18.238510, 25.771923>,  <15.161105, 18.412970, 25.707821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.009267, 18.238510, 25.771923>,  <14.756203, 17.947744, 25.878759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.009267, 18.238510, 25.771923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414685, -0.026711, 0.909573,
		0.654046, -0.686210, -0.318339,
		0.632661, 0.726913, -0.267091,
		15.199065, 18.456585, 25.691795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.324959, 17.769573, 26.281668>,  <14.756203, 17.947744, 25.878759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.324959, 17.769573, 26.281668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.380466, 18.156471, 26.196650>,  <15.413772, 18.388611, 26.145639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.380466, 18.156471, 26.196650>,  <15.324959, 17.769573, 26.281668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.380466, 18.156471, 26.196650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278946, 0.167756, 0.945541,
		0.950227, -0.190501, -0.246530,
		0.138770, 0.967247, -0.212546,
		15.422097, 18.446646, 26.132885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.779414, 17.953600, 26.753099>,  <15.324959, 17.769573, 26.281668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.779414, 17.953600, 26.753099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.658085, 18.311941, 26.623215>,  <15.585287, 18.526947, 26.545284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.658085, 18.311941, 26.623215>,  <15.779414, 17.953600, 26.753099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.658085, 18.311941, 26.623215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239649, 0.401533, 0.883934,
		0.922260, 0.190302, -0.336486,
		-0.303324, 0.895855, -0.324712,
		15.567087, 18.580698, 26.525801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.323538, 18.454308, 26.958900>,  <15.779414, 17.953600, 26.753099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.323538, 18.454308, 26.958900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.988632, 18.662933, 26.893217>,  <15.787689, 18.788109, 26.853807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.988632, 18.662933, 26.893217>,  <16.323538, 18.454308, 26.958900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.988632, 18.662933, 26.893217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141252, 0.496414, 0.856517,
		0.528243, 0.693934, -0.489300,
		-0.837262, 0.521563, -0.164208,
		15.737453, 18.819403, 26.843954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.536736, 19.196556, 27.037930>,  <16.323538, 18.454308, 26.958900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.536736, 19.196556, 27.037930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.148520, 19.144865, 27.119272>,  <15.915590, 19.113850, 27.168077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.148520, 19.144865, 27.119272>,  <16.536736, 19.196556, 27.037930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.148520, 19.144865, 27.119272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149024, 0.341239, 0.928088,
		-0.189328, 0.931051, -0.311928,
		-0.970539, -0.129228, 0.203355,
		15.857358, 19.106096, 27.180279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.334572, 19.677832, 27.473585>,  <16.536736, 19.196556, 27.037930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.334572, 19.677832, 27.473585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.049818, 19.401928, 27.526428>,  <15.878965, 19.236385, 27.558134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.049818, 19.401928, 27.526428>,  <16.334572, 19.677832, 27.473585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.049818, 19.401928, 27.526428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082940, 0.104222, 0.991090,
		-0.697382, 0.716498, -0.016986,
		-0.711884, -0.689759, 0.132109,
		15.836253, 19.195000, 27.566061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.786612, 20.018661, 27.885723>,  <16.334572, 19.677832, 27.473585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.786612, 20.018661, 27.885723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.766500, 19.622202, 27.934872>,  <15.754433, 19.384327, 27.964361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.766500, 19.622202, 27.934872>,  <15.786612, 20.018661, 27.885723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.766500, 19.622202, 27.934872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118028, 0.128059, 0.984718,
		-0.991736, 0.035010, -0.123422,
		-0.050280, -0.991148, 0.122869,
		15.751415, 19.324858, 27.971733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.101672, 19.896219, 28.366013>,  <15.786612, 20.018661, 27.885723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.101672, 19.896219, 28.366013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.342733, 19.577053, 28.361288>,  <15.487370, 19.385553, 28.358454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.342733, 19.577053, 28.361288>,  <15.101672, 19.896219, 28.366013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.342733, 19.577053, 28.361288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128191, -0.111407, 0.985472,
		-0.787641, -0.592383, -0.169425,
		0.602652, -0.797917, -0.011811,
		15.523529, 19.337679, 28.357744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.733912, 19.345612, 28.754345>,  <15.101672, 19.896219, 28.366013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.733912, 19.345612, 28.754345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.128066, 19.278193, 28.764183>,  <15.364559, 19.237741, 28.770086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.128066, 19.278193, 28.764183>,  <14.733912, 19.345612, 28.754345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.128066, 19.278193, 28.764183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029320, -0.025604, 0.999242,
		-0.167790, -0.985361, -0.030171,
		0.985387, -0.168547, 0.024594,
		15.423682, 19.227629, 28.771561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.826054, 19.179888, 29.420509>,  <14.733912, 19.345612, 28.754345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.826054, 19.179888, 29.420509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.205557, 19.224110, 29.302097>,  <15.433259, 19.250643, 29.231050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.205557, 19.224110, 29.302097>,  <14.826054, 19.179888, 29.420509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.205557, 19.224110, 29.302097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309257, -0.132328, 0.941727,
		0.064938, -0.985021, -0.159737,
		0.948759, 0.110554, -0.296032,
		15.490185, 19.257275, 29.213287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.188697, 18.669771, 29.730846>,  <14.826054, 19.179888, 29.420509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.188697, 18.669771, 29.730846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.440808, 18.969454, 29.649418>,  <15.592075, 19.149263, 29.600561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.440808, 18.969454, 29.649418>,  <15.188697, 18.669771, 29.730846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.440808, 18.969454, 29.649418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329715, -0.020920, 0.943849,
		0.702878, -0.662008, -0.260209,
		0.630279, 0.749205, -0.203570,
		15.629892, 19.194216, 29.588346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.813529, 18.521093, 30.179317>,  <15.188697, 18.669771, 29.730846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.813529, 18.521093, 30.179317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.851768, 18.899572, 30.055658>,  <15.874712, 19.126659, 29.981462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.851768, 18.899572, 30.055658>,  <15.813529, 18.521093, 30.179317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.851768, 18.899572, 30.055658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477033, 0.229036, 0.848517,
		0.873671, -0.228590, -0.429472,
		0.095598, 0.946197, -0.309147,
		15.880447, 19.183432, 29.962914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.496853, 18.602896, 30.315477>,  <15.813529, 18.521093, 30.179317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.496853, 18.602896, 30.315477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.331245, 18.965609, 30.283642>,  <16.231882, 19.183237, 30.264542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.331245, 18.965609, 30.283642>,  <16.496853, 18.602896, 30.315477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.331245, 18.965609, 30.283642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515082, 0.305466, 0.800863,
		0.750520, 0.290578, -0.593536,
		-0.414018, 0.906783, -0.079587,
		16.207041, 19.237644, 30.259766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.895903, 19.156820, 30.347305>,  <16.496853, 18.602896, 30.315477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.895903, 19.156820, 30.347305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.555346, 19.304823, 30.496021>,  <16.351011, 19.393625, 30.585251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.555346, 19.304823, 30.496021>,  <16.895903, 19.156820, 30.347305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.555346, 19.304823, 30.496021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494085, 0.327739, 0.805274,
		0.176106, 0.869300, -0.461849,
		-0.851391, 0.370006, 0.371791,
		16.299929, 19.415825, 30.607559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.131685, 19.721380, 30.660227>,  <16.895903, 19.156820, 30.347305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.131685, 19.721380, 30.660227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.765202, 19.694706, 30.818274>,  <16.545311, 19.678701, 30.913101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.765202, 19.694706, 30.818274>,  <17.131685, 19.721380, 30.660227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.765202, 19.694706, 30.818274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310731, 0.504355, 0.805650,
		-0.253003, 0.860918, -0.441373,
		-0.916207, -0.066684, 0.395118,
		16.490339, 19.674702, 30.936810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.998285, 20.303858, 30.864475>,  <17.131685, 19.721380, 30.660227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.998285, 20.303858, 30.864475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.729790, 20.101658, 31.081329>,  <16.568693, 19.980339, 31.211443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.729790, 20.101658, 31.081329>,  <16.998285, 20.303858, 30.864475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.729790, 20.101658, 31.081329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281785, 0.502461, 0.817392,
		-0.685593, 0.701430, -0.194828,
		-0.671237, -0.505499, 0.542137,
		16.528419, 19.950008, 31.243971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.605139, 20.806067, 31.204119>,  <16.998285, 20.303858, 30.864475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.605139, 20.806067, 31.204119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.575119, 20.461542, 31.405119>,  <16.557108, 20.254827, 31.525719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.575119, 20.461542, 31.405119>,  <16.605139, 20.806067, 31.204119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.575119, 20.461542, 31.405119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472212, 0.413142, 0.778672,
		-0.878285, 0.295726, 0.375716,
		-0.075049, -0.861313, 0.502501,
		16.552605, 20.203148, 31.555870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.174582, 20.804832, 31.806015>,  <16.605139, 20.806067, 31.204119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.174582, 20.804832, 31.806015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.478228, 20.549284, 31.855957>,  <16.660416, 20.395954, 31.885923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.478228, 20.549284, 31.855957>,  <16.174582, 20.804832, 31.806015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.478228, 20.549284, 31.855957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440729, 0.645570, 0.623696,
		-0.479066, -0.418428, 0.771630,
		0.759113, -0.638872, 0.124857,
		16.705961, 20.357622, 31.893414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.301706, 20.606611, 32.517597>,  <16.174582, 20.804832, 31.806015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.301706, 20.606611, 32.517597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.644438, 20.620800, 32.311844>,  <16.850077, 20.629313, 32.188393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.644438, 20.620800, 32.311844>,  <16.301706, 20.606611, 32.517597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.644438, 20.620800, 32.311844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412957, 0.550144, 0.725815,
		0.308730, -0.834316, 0.456730,
		0.856827, 0.035471, -0.514383,
		16.901485, 20.631441, 32.157528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.546213, 20.628399, 33.220345>,  <16.301706, 20.606611, 32.517597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.546213, 20.628399, 33.220345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.575893, 20.251368, 33.350597>,  <16.593702, 20.025148, 33.428749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.575893, 20.251368, 33.350597>,  <16.546213, 20.628399, 33.220345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.575893, 20.251368, 33.350597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424074, -0.325361, -0.845164,
		0.902582, -0.075379, -0.423867,
		0.074203, -0.942581, 0.325631,
		16.598154, 19.968594, 33.448288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.032534, 20.256449, 32.832424>,  <16.546213, 20.628399, 33.220345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.032534, 20.256449, 32.832424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.087748, 20.576880, 33.065395>,  <17.120876, 20.769138, 33.205177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.087748, 20.576880, 33.065395>,  <17.032534, 20.256449, 32.832424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.087748, 20.576880, 33.065395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220539, 0.598156, -0.770436,
		-0.965561, -0.022100, 0.259236,
		0.138037, 0.801075, 0.582430,
		17.129158, 20.817202, 33.240124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.698254, 20.406874, 33.303131>,  <17.032534, 20.256449, 32.832424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.698254, 20.406874, 33.303131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.784626, 20.727425, 33.526260>,  <17.836451, 20.919754, 33.660137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.784626, 20.727425, 33.526260>,  <17.698254, 20.406874, 33.303131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.784626, 20.727425, 33.526260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834382, 0.145280, -0.531696,
		-0.507129, 0.580251, -0.637282,
		0.215932, 0.801375, 0.557827,
		17.849405, 20.967836, 33.693607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.697157, 20.974360, 32.859993>,  <17.698254, 20.406874, 33.303131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.697157, 20.974360, 32.859993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.966906, 20.980698, 33.155281>,  <18.128756, 20.984501, 33.332455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.966906, 20.980698, 33.155281>,  <17.697157, 20.974360, 32.859993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.966906, 20.980698, 33.155281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722351, 0.193106, -0.664018,
		-0.153076, 0.981050, 0.118779,
		0.674371, 0.015845, 0.738222,
		18.169216, 20.985451, 33.376747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.159573, 21.525881, 32.780590>,  <17.697157, 20.974360, 32.859993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.159573, 21.525881, 32.780590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.334518, 21.235382, 32.992733>,  <18.439486, 21.061083, 33.120018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.334518, 21.235382, 32.992733>,  <18.159573, 21.525881, 32.780590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.334518, 21.235382, 32.992733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742926, -0.040518, -0.668147,
		0.506728, 0.686239, 0.521827,
		0.437365, -0.726247, 0.530355,
		18.465729, 21.017508, 33.151840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.368626, 21.136808, 32.232178>,  <18.159573, 21.525881, 32.780590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.368626, 21.136808, 32.232178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.228594, 20.768318, 32.164303>,  <18.144575, 20.547224, 32.123577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.228594, 20.768318, 32.164303>,  <18.368626, 21.136808, 32.232178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.228594, 20.768318, 32.164303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606061, -0.084632, -0.790903,
		0.714238, -0.379716, 0.587946,
		-0.350078, -0.921224, -0.169684,
		18.123571, 20.491951, 32.113396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.909830, 20.486240, 32.217308>,  <18.368626, 21.136808, 32.232178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.909830, 20.486240, 32.217308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.616068, 20.433708, 31.950954>,  <18.439810, 20.402189, 31.791143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.616068, 20.433708, 31.950954>,  <18.909830, 20.486240, 32.217308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.616068, 20.433708, 31.950954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675218, -0.041985, -0.736423,
		0.068758, -0.990449, 0.119511,
		-0.734407, -0.131330, -0.665882,
		18.395746, 20.394310, 31.751190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.894392, 19.818096, 31.842735>,  <18.909830, 20.486240, 32.217308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.894392, 19.818096, 31.842735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.763805, 20.130718, 31.630096>,  <18.685453, 20.318291, 31.502514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.763805, 20.130718, 31.630096>,  <18.894392, 19.818096, 31.842735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.763805, 20.130718, 31.630096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874633, 0.036546, -0.483406,
		-0.358380, -0.622767, -0.695503,
		-0.326467, 0.781553, -0.531596,
		18.665865, 20.365185, 31.470617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.080284, 19.972174, 31.120802>,  <18.894392, 19.818096, 31.842735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.080284, 19.972174, 31.120802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.332207, 19.792297, 31.374138>,  <19.483360, 19.684372, 31.526138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.332207, 19.792297, 31.374138>,  <19.080284, 19.972174, 31.120802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.332207, 19.792297, 31.374138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545616, -0.836461, -0.051341,
		0.552851, -0.313224, -0.772170,
		0.629809, -0.449693, 0.633338,
		19.521149, 19.657389, 31.564140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.523180, 19.377975, 31.002352>,  <19.080284, 19.972174, 31.120802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.523180, 19.377975, 31.002352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.457626, 19.266783, 31.380953>,  <19.418293, 19.200068, 31.608114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.457626, 19.266783, 31.380953>,  <19.523180, 19.377975, 31.002352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.457626, 19.266783, 31.380953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404061, -0.856381, -0.321475,
		0.899931, -0.435130, 0.028027,
		-0.163885, -0.277981, 0.946503,
		19.408461, 19.183388, 31.664904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.855434, 18.694468, 31.350538>,  <19.523180, 19.377975, 31.002352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.855434, 18.694468, 31.350538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.485876, 18.810137, 31.450775>,  <19.264141, 18.879538, 31.510918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.485876, 18.810137, 31.450775>,  <19.855434, 18.694468, 31.350538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.485876, 18.810137, 31.450775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374044, -0.820577, -0.432139,
		0.080666, -0.492983, 0.866291,
		-0.923896, 0.289172, 0.250590,
		19.208708, 18.896889, 31.525951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.607002, 18.179506, 31.760357>,  <19.855434, 18.694468, 31.350538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.607002, 18.179506, 31.760357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.296883, 18.379044, 31.605404>,  <19.110811, 18.498766, 31.512432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.296883, 18.379044, 31.605404>,  <19.607002, 18.179506, 31.760357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.296883, 18.379044, 31.605404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285266, -0.823790, -0.489891,
		-0.563501, -0.269305, 0.780987,
		-0.775300, 0.498843, -0.387383,
		19.064293, 18.528696, 31.489189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.007143, 17.751669, 31.791634>,  <19.607002, 18.179506, 31.760357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.007143, 17.751669, 31.791634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.910425, 18.000080, 31.493408>,  <18.852394, 18.149126, 31.314474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.910425, 18.000080, 31.493408>,  <19.007143, 17.751669, 31.791634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.910425, 18.000080, 31.493408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302775, -0.778284, -0.550091,
		-0.921880, 0.092729, 0.376215,
		-0.241792, 0.621027, -0.745561,
		18.837887, 18.186388, 31.269739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.484118, 17.359543, 31.422159>,  <19.007143, 17.751669, 31.791634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.484118, 17.359543, 31.422159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.562077, 17.661982, 31.172253>,  <18.608852, 17.843445, 31.022308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.562077, 17.661982, 31.172253>,  <18.484118, 17.359543, 31.422159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.562077, 17.661982, 31.172253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348399, -0.542073, -0.764706,
		-0.916860, 0.366707, 0.157776,
		0.194897, 0.756097, -0.624766,
		18.620546, 17.888811, 30.984823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.843262, 17.578321, 31.082321>,  <18.484118, 17.359543, 31.422159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.843262, 17.578321, 31.082321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.159946, 17.683578, 30.861795>,  <18.349957, 17.746733, 30.729479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.159946, 17.683578, 30.861795>,  <17.843262, 17.578321, 31.082321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.159946, 17.683578, 30.861795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367011, -0.516570, -0.773601,
		-0.488363, 0.814806, -0.312397,
		0.791710, 0.263145, -0.551316,
		18.397459, 17.762522, 30.696400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.420889, 17.773502, 30.502586>,  <17.843262, 17.578321, 31.082321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.420889, 17.773502, 30.502586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.808029, 17.705978, 30.428003>,  <18.040314, 17.665464, 30.383253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.808029, 17.705978, 30.428003>,  <17.420889, 17.773502, 30.502586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.808029, 17.705978, 30.428003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240228, -0.400742, -0.884136,
		0.074529, 0.900505, -0.428411,
		0.967851, -0.168810, -0.186459,
		18.098385, 17.655336, 30.372065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.497349, 18.153227, 29.885372>,  <17.420889, 17.773502, 30.502586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.497349, 18.153227, 29.885372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.797926, 17.891130, 29.916332>,  <17.978271, 17.733871, 29.934908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.797926, 17.891130, 29.916332>,  <17.497349, 18.153227, 29.885372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.797926, 17.891130, 29.916332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281753, -0.424748, -0.860351,
		0.596614, 0.624698, -0.503790,
		0.751444, -0.655242, 0.077400,
		18.023359, 17.694557, 29.939552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.684393, 18.063747, 29.154978>,  <17.497349, 18.153227, 29.885372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.684393, 18.063747, 29.154978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.849405, 17.742708, 29.327330>,  <17.948412, 17.550085, 29.430740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.849405, 17.742708, 29.327330>,  <17.684393, 18.063747, 29.154978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.849405, 17.742708, 29.327330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109875, -0.513387, -0.851094,
		0.904293, 0.303759, -0.299973,
		0.412530, -0.802598, 0.430877,
		17.973164, 17.501928, 29.456593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.150524, 17.692999, 28.639826>,  <17.684393, 18.063747, 29.154978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.150524, 17.692999, 28.639826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.036724, 17.429285, 28.918222>,  <17.968445, 17.271057, 29.085260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.036724, 17.429285, 28.918222>,  <18.150524, 17.692999, 28.639826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.036724, 17.429285, 28.918222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179459, -0.676535, -0.714209,
		0.941730, -0.328093, 0.074159,
		-0.284498, -0.659284, 0.695993,
		17.951374, 17.231501, 29.127020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.217066, 17.099495, 28.286846>,  <18.150524, 17.692999, 28.639826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.217066, 17.099495, 28.286846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.999022, 16.977999, 28.599409>,  <17.868195, 16.905102, 28.786947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.999022, 16.977999, 28.599409>,  <18.217066, 17.099495, 28.286846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.999022, 16.977999, 28.599409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512146, -0.617283, -0.597217,
		0.663747, -0.725744, 0.180928,
		-0.545111, -0.303740, 0.781407,
		17.835489, 16.886877, 28.833832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.219698, 16.334200, 28.249043>,  <18.217066, 17.099495, 28.286846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.219698, 16.334200, 28.249043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.896187, 16.446920, 28.455526>,  <17.702080, 16.514553, 28.579416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.896187, 16.446920, 28.455526>,  <18.219698, 16.334200, 28.249043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.896187, 16.446920, 28.455526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576593, -0.552842, -0.601587,
		0.115855, -0.784191, 0.609608,
		-0.808776, 0.281799, 0.516209,
		17.653555, 16.531460, 28.610390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.829220, 15.747563, 28.297007>,  <18.219698, 16.334200, 28.249043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.829220, 15.747563, 28.297007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.592180, 16.064308, 28.356037>,  <17.449957, 16.254354, 28.391457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.592180, 16.064308, 28.356037>,  <17.829220, 15.747563, 28.297007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.592180, 16.064308, 28.356037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709046, -0.425877, -0.562035,
		-0.382205, -0.437700, 0.813842,
		-0.592599, 0.791863, 0.147577,
		17.414400, 16.301867, 28.400311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.269110, 15.463264, 28.486521>,  <17.829220, 15.747563, 28.297007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.269110, 15.463264, 28.486521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.167034, 15.831841, 28.369339>,  <17.105789, 16.052986, 28.299030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.167034, 15.831841, 28.369339>,  <17.269110, 15.463264, 28.486521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.167034, 15.831841, 28.369339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725248, -0.382792, -0.572264,
		-0.639449, 0.066430, 0.765958,
		-0.255187, 0.921443, -0.292955,
		17.090477, 16.108273, 28.281452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.679430, 15.440826, 28.417444>,  <17.269110, 15.463264, 28.486521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.679430, 15.440826, 28.417444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.760475, 15.776985, 28.216373>,  <16.809101, 15.978681, 28.095732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.760475, 15.776985, 28.216373>,  <16.679430, 15.440826, 28.417444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.760475, 15.776985, 28.216373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578323, -0.311554, -0.753973,
		-0.790247, 0.443473, 0.422896,
		0.202612, 0.840396, -0.502675,
		16.821259, 16.029104, 28.065571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.095909, 15.585498, 28.086504>,  <16.679430, 15.440826, 28.417444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.095909, 15.585498, 28.086504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.371866, 15.787653, 27.879187>,  <16.537441, 15.908946, 27.754795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.371866, 15.787653, 27.879187>,  <16.095909, 15.585498, 28.086504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.371866, 15.787653, 27.879187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503356, -0.179662, -0.845195,
		-0.520269, 0.843982, 0.130442,
		0.689894, 0.505387, -0.518295,
		16.578835, 15.939269, 27.723698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.736495, 16.010672, 27.599550>,  <16.095909, 15.585498, 28.086504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.736495, 16.010672, 27.599550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.103186, 15.966940, 27.445845>,  <16.323200, 15.940701, 27.353621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.103186, 15.966940, 27.445845>,  <15.736495, 16.010672, 27.599550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.103186, 15.966940, 27.445845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396421, -0.129451, -0.908897,
		0.049625, 0.985540, -0.162011,
		0.916727, -0.109329, -0.384265,
		16.378204, 15.934141, 27.330564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.630980, 16.290291, 26.882713>,  <15.736495, 16.010672, 27.599550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.630980, 16.290291, 26.882713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.994488, 16.126577, 26.850164>,  <16.212593, 16.028349, 26.830635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.994488, 16.126577, 26.850164>,  <15.630980, 16.290291, 26.882713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.994488, 16.126577, 26.850164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193457, -0.240440, -0.951190,
		0.369744, 0.880156, -0.297684,
		0.908771, -0.409286, -0.081372,
		16.267118, 16.003792, 26.825752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.952268, 16.571585, 26.290289>,  <15.630980, 16.290291, 26.882713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.952268, 16.571585, 26.290289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.111557, 16.212999, 26.368025>,  <16.207130, 15.997848, 26.414667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.111557, 16.212999, 26.368025>,  <15.952268, 16.571585, 26.290289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.111557, 16.212999, 26.368025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189740, -0.287785, -0.938711,
		0.897450, 0.336942, -0.284698,
		0.398223, -0.896465, 0.194342,
		16.231024, 15.944059, 26.426327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.319658, 16.492548, 25.757212>,  <15.952268, 16.571585, 26.290289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.319658, 16.492548, 25.757212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.269382, 16.121250, 25.897249>,  <16.239218, 15.898472, 25.981272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.269382, 16.121250, 25.897249>,  <16.319658, 16.492548, 25.757212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.269382, 16.121250, 25.897249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038738, -0.348030, -0.936683,
		0.991313, -0.131292, 0.007785,
		-0.125689, -0.928244, 0.350093,
		16.231676, 15.842777, 26.002277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.740028, 16.171398, 25.351170>,  <16.319658, 16.492548, 25.757212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.740028, 16.171398, 25.351170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.491238, 15.904991, 25.515884>,  <16.341963, 15.745147, 25.614714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.491238, 15.904991, 25.515884>,  <16.740028, 16.171398, 25.351170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.491238, 15.904991, 25.515884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077142, -0.471209, -0.878642,
		0.779228, -0.578259, 0.241702,
		-0.621975, -0.666017, 0.411787,
		16.304646, 15.705186, 25.639421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.917551, 15.413257, 25.196136>,  <16.740028, 16.171398, 25.351170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.917551, 15.413257, 25.196136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.528570, 15.425163, 25.288616>,  <16.295181, 15.432307, 25.344105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.528570, 15.425163, 25.288616>,  <16.917551, 15.413257, 25.196136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.528570, 15.425163, 25.288616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214176, -0.505625, -0.835747,
		0.092023, -0.862240, 0.498070,
		-0.972451, 0.029767, 0.231200,
		16.236835, 15.434093, 25.357977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.605934, 14.776718, 24.879044>,  <16.917551, 15.413257, 25.196136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.605934, 14.776718, 24.879044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.276049, 14.992970, 24.945456>,  <16.078117, 15.122721, 24.985302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.276049, 14.992970, 24.945456>,  <16.605934, 14.776718, 24.879044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.276049, 14.992970, 24.945456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463956, -0.478880, -0.745265,
		-0.323404, -0.691661, 0.645767,
		-0.824715, 0.540629, 0.166029,
		16.028635, 15.155158, 24.995264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.005499, 14.343386, 24.873268>,  <16.605934, 14.776718, 24.879044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.005499, 14.343386, 24.873268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.869840, 14.713591, 24.805853>,  <15.788444, 14.935714, 24.765404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.869840, 14.713591, 24.805853>,  <16.005499, 14.343386, 24.873268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.869840, 14.713591, 24.805853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352305, -0.291076, -0.889469,
		-0.872272, -0.242285, 0.424781,
		-0.339149, 0.925512, -0.168540,
		15.768095, 14.991244, 24.755291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.421456, 14.189629, 24.581638>,  <16.005499, 14.343386, 24.873268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.421456, 14.189629, 24.581638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.460846, 14.575896, 24.485483>,  <15.484480, 14.807657, 24.427790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.460846, 14.575896, 24.485483>,  <15.421456, 14.189629, 24.581638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.460846, 14.575896, 24.485483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218050, -0.214754, -0.952016,
		-0.970957, 0.146165, 0.189417,
		0.098473, 0.965669, -0.240388,
		15.490388, 14.865597, 24.413366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.731904, 14.411456, 24.465895>,  <15.421456, 14.189629, 24.581638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.731904, 14.411456, 24.465895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.984558, 14.661355, 24.282274>,  <15.136150, 14.811295, 24.172102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.984558, 14.661355, 24.282274>,  <14.731904, 14.411456, 24.465895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.984558, 14.661355, 24.282274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492632, -0.133772, -0.859895,
		-0.598625, 0.769283, 0.223275,
		0.631635, 0.624747, -0.459053,
		15.174048, 14.848779, 24.144558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.287033, 14.882889, 24.181381>,  <14.731904, 14.411456, 24.465895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.287033, 14.882889, 24.181381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.621519, 14.907281, 23.963381>,  <14.822211, 14.921916, 23.832581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.621519, 14.907281, 23.963381>,  <14.287033, 14.882889, 24.181381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.621519, 14.907281, 23.963381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496703, -0.337005, -0.799821,
		-0.232441, 0.939526, -0.251520,
		0.836216, 0.060980, -0.544999,
		14.872384, 14.925575, 23.799881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.138832, 15.322705, 23.608587>,  <14.287033, 14.882889, 24.181381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.138832, 15.322705, 23.608587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.459108, 15.119493, 23.481592>,  <14.651275, 14.997565, 23.405396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.459108, 15.119493, 23.481592>,  <14.138832, 15.322705, 23.608587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.459108, 15.119493, 23.481592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507630, -0.293934, -0.809885,
		0.318127, 0.809634, -0.493242,
		0.800692, -0.508031, -0.317486,
		14.699316, 14.967083, 23.386347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.213555, 15.567127, 23.000448>,  <14.138832, 15.322705, 23.608587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.213555, 15.567127, 23.000448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.460258, 15.255979, 22.952236>,  <14.608279, 15.069289, 22.923309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.460258, 15.255979, 22.952236>,  <14.213555, 15.567127, 23.000448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.460258, 15.255979, 22.952236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321925, -0.109530, -0.940408,
		0.718315, 0.618804, -0.317970,
		0.616756, -0.777872, -0.120531,
		14.645285, 15.022617, 22.916077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.654257, 15.677475, 22.420635>,  <14.213555, 15.567127, 23.000448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.654257, 15.677475, 22.420635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.654706, 15.280968, 22.473375>,  <14.654975, 15.043063, 22.505018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.654706, 15.280968, 22.473375>,  <14.654257, 15.677475, 22.420635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.654706, 15.280968, 22.473375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292719, -0.126400, -0.947807,
		0.956198, -0.037531, -0.290305,
		0.001122, -0.991269, 0.131849,
		14.655043, 14.983587, 22.512930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.010277, 15.381131, 21.860102>,  <14.654257, 15.677475, 22.420635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.010277, 15.381131, 21.860102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.794797, 15.079406, 22.010202>,  <14.665509, 14.898371, 22.100264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.794797, 15.079406, 22.010202>,  <15.010277, 15.381131, 21.860102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.794797, 15.079406, 22.010202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197564, -0.319885, -0.926629,
		0.819006, -0.573312, 0.023297,
		-0.538700, -0.754313, 0.375253,
		14.633187, 14.853112, 22.122778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.274000, 14.950916, 21.499239>,  <15.010277, 15.381131, 21.860102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.274000, 14.950916, 21.499239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.916680, 14.810299, 21.611263>,  <14.702289, 14.725928, 21.678478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.916680, 14.810299, 21.611263>,  <15.274000, 14.950916, 21.499239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.916680, 14.810299, 21.611263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125587, -0.403062, -0.906515,
		0.431562, -0.844960, 0.315906,
		-0.893299, -0.351544, 0.280062,
		14.648691, 14.704836, 21.695282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.165623, 14.422536, 21.058979>,  <15.274000, 14.950916, 21.499239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.165623, 14.422536, 21.058979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.788051, 14.455705, 21.186804>,  <14.561507, 14.475606, 21.263498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.788051, 14.455705, 21.186804>,  <15.165623, 14.422536, 21.058979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.788051, 14.455705, 21.186804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328515, -0.331965, -0.884238,
		0.032760, -0.939640, 0.340593,
		-0.943931, 0.082922, 0.319561,
		14.504871, 14.480581, 21.282673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.816474, 13.748222, 21.008171>,  <15.165623, 14.422536, 21.058979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.816474, 13.748222, 21.008171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.508468, 14.002790, 21.026251>,  <14.323664, 14.155532, 21.037098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.508468, 14.002790, 21.026251>,  <14.816474, 13.748222, 21.008171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.508468, 14.002790, 21.026251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402947, -0.430160, -0.807835,
		-0.494681, -0.640258, 0.587674,
		-0.770016, 0.636422, 0.045198,
		14.277463, 14.193717, 21.039810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.280610, 13.328635, 21.025145>,  <14.816474, 13.748222, 21.008171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.280610, 13.328635, 21.025145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.147836, 13.682247, 20.893503>,  <14.068172, 13.894414, 20.814518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.147836, 13.682247, 20.893503>,  <14.280610, 13.328635, 21.025145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.147836, 13.682247, 20.893503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321691, -0.434058, -0.841492,
		-0.886755, -0.173451, 0.428464,
		-0.331936, 0.884030, -0.329106,
		14.048255, 13.947456, 20.794771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.629059, 13.214265, 20.729578>,  <14.280610, 13.328635, 21.025145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.629059, 13.214265, 20.729578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.725229, 13.571217, 20.576815>,  <13.782931, 13.785387, 20.485157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.725229, 13.571217, 20.576815>,  <13.629059, 13.214265, 20.729578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.725229, 13.571217, 20.576815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367164, -0.280610, -0.886820,
		-0.898547, 0.353438, 0.260183,
		0.240426, 0.892379, -0.381911,
		13.797357, 13.838930, 20.462242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.029677, 13.560029, 20.275427>,  <13.629059, 13.214265, 20.729578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.029677, 13.560029, 20.275427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.363775, 13.736410, 20.144018>,  <13.564234, 13.842238, 20.065172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.363775, 13.736410, 20.144018>,  <13.029677, 13.560029, 20.275427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.363775, 13.736410, 20.144018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358209, -0.016965, -0.933487,
		-0.417196, 0.897370, 0.143783,
		0.835245, 0.440952, -0.328524,
		13.614348, 13.868695, 20.045462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.853091, 13.920999, 19.664791>,  <13.029677, 13.560029, 20.275427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.853091, 13.920999, 19.664791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.250812, 13.959155, 19.645742>,  <13.489444, 13.982049, 19.634314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.250812, 13.959155, 19.645742>,  <12.853091, 13.920999, 19.664791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.250812, 13.959155, 19.645742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065473, 0.193779, -0.978858,
		-0.084147, 0.976396, 0.198920,
		0.994300, 0.095392, -0.047622,
		13.549102, 13.987773, 19.631456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.961317, 14.557069, 19.523176>,  <12.853091, 13.920999, 19.664791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.961317, 14.557069, 19.523176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.256438, 14.318575, 19.396589>,  <13.433511, 14.175478, 19.320637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.256438, 14.318575, 19.396589>,  <12.961317, 14.557069, 19.523176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.256438, 14.318575, 19.396589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216226, 0.235368, -0.947549,
		0.639448, 0.767532, 0.044733,
		0.737803, -0.596236, -0.316466,
		13.477779, 14.139704, 19.301649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.171250, 14.825526, 18.987413>,  <12.961317, 14.557069, 19.523176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.171250, 14.825526, 18.987413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.329392, 14.464559, 18.918905>,  <13.424278, 14.247978, 18.877800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.329392, 14.464559, 18.918905>,  <13.171250, 14.825526, 18.987413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.329392, 14.464559, 18.918905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019312, 0.194589, -0.980695,
		0.918325, 0.384416, 0.094359,
		0.395356, -0.902419, -0.171273,
		13.447999, 14.193833, 18.867523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.808376, 14.929239, 18.651876>,  <13.171250, 14.825526, 18.987413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.808376, 14.929239, 18.651876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.667754, 14.564464, 18.567234>,  <13.583381, 14.345598, 18.516449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.667754, 14.564464, 18.567234>,  <13.808376, 14.929239, 18.651876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.667754, 14.564464, 18.567234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026476, 0.235629, -0.971482,
		0.935792, -0.335928, -0.106981,
		-0.351556, -0.911938, -0.211606,
		13.562287, 14.290882, 18.503752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.161991, 15.213100, 18.137104>,  <13.808376, 14.929239, 18.651876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.161991, 15.213100, 18.137104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.402637, 15.382286, 17.866058>,  <14.547024, 15.483798, 17.703430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.402637, 15.382286, 17.866058>,  <14.161991, 15.213100, 18.137104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.402637, 15.382286, 17.866058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606159, 0.310732, 0.732132,
		0.520222, -0.851203, -0.069443,
		0.601614, 0.422965, -0.677614,
		14.583121, 15.509175, 17.662775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.876767, 15.081621, 18.312998>,  <14.161991, 15.213100, 18.137104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.876767, 15.081621, 18.312998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.903901, 15.403938, 18.077679>,  <14.920181, 15.597329, 17.936487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.903901, 15.403938, 18.077679>,  <14.876767, 15.081621, 18.312998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.903901, 15.403938, 18.077679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664048, 0.403610, 0.629396,
		0.744606, -0.433353, -0.507707,
		0.067835, 0.805794, -0.588298,
		14.924252, 15.645677, 17.901190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.492203, 15.273382, 18.335289>,  <14.876767, 15.081621, 18.312998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.492203, 15.273382, 18.335289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.332500, 15.619340, 18.213600>,  <15.236679, 15.826915, 18.140587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.332500, 15.619340, 18.213600>,  <15.492203, 15.273382, 18.335289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.332500, 15.619340, 18.213600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684580, 0.501945, 0.528585,
		0.609873, 0.002775, -0.792494,
		-0.399255, 0.864895, -0.304223,
		15.212724, 15.878809, 18.122334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.161295, 15.649411, 18.123085>,  <15.492203, 15.273382, 18.335289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.161295, 15.649411, 18.123085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.871452, 15.918122, 18.184612>,  <15.697547, 16.079350, 18.221529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.871452, 15.918122, 18.184612>,  <16.161295, 15.649411, 18.123085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.871452, 15.918122, 18.184612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647432, 0.587070, 0.485985,
		0.236172, 0.451734, -0.860325,
		-0.724607, 0.671777, 0.153818,
		15.654070, 16.119656, 18.230757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.423088, 16.256769, 17.920557>,  <16.161295, 15.649411, 18.123085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.423088, 16.256769, 17.920557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.120285, 16.349625, 18.164869>,  <15.938603, 16.405338, 18.311457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.120285, 16.349625, 18.164869>,  <16.423088, 16.256769, 17.920557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.120285, 16.349625, 18.164869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611925, 0.579622, 0.538132,
		-0.229101, 0.781121, -0.580828,
		-0.757007, 0.232137, 0.610780,
		15.893183, 16.419266, 18.348103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.588827, 16.882481, 18.150127>,  <16.423088, 16.256769, 17.920557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.588827, 16.882481, 18.150127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.307180, 16.809614, 18.424656>,  <16.138191, 16.765894, 18.589373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.307180, 16.809614, 18.424656>,  <16.588827, 16.882481, 18.150127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.307180, 16.809614, 18.424656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588447, 0.391269, 0.707559,
		-0.397427, 0.902067, -0.168305,
		-0.704118, -0.182164, 0.686319,
		16.095945, 16.754965, 18.630552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.406704, 17.480459, 18.466011>,  <16.588827, 16.882481, 18.150127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.406704, 17.480459, 18.466011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.282179, 17.220240, 18.743103>,  <16.207464, 17.064108, 18.909359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.282179, 17.220240, 18.743103>,  <16.406704, 17.480459, 18.466011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.282179, 17.220240, 18.743103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472888, 0.526243, 0.706714,
		-0.824295, 0.547592, 0.143810,
		-0.311312, -0.650547, 0.692729,
		16.188786, 17.025076, 18.950922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.256294, 17.842533, 19.066225>,  <16.406704, 17.480459, 18.466011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.256294, 17.842533, 19.066225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.314804, 17.470888, 19.202082>,  <16.349911, 17.247902, 19.283596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.314804, 17.470888, 19.202082>,  <16.256294, 17.842533, 19.066225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.314804, 17.470888, 19.202082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479328, 0.366905, 0.797261,
		-0.865360, 0.046180, 0.499018,
		0.146274, -0.929111, 0.339640,
		16.358686, 17.192154, 19.303974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.980964, 17.985722, 19.733202>,  <16.256294, 17.842533, 19.066225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.980964, 17.985722, 19.733202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.177486, 17.639446, 19.771574>,  <16.295401, 17.431681, 19.794598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.177486, 17.639446, 19.771574>,  <15.980964, 17.985722, 19.733202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.177486, 17.639446, 19.771574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362590, 0.303426, 0.881170,
		-0.791925, -0.398143, 0.462965,
		0.491307, -0.865688, 0.095928,
		16.324879, 17.379740, 19.800352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.723844, 17.619352, 20.430965>,  <15.980964, 17.985722, 19.733202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.723844, 17.619352, 20.430965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.086575, 17.496555, 20.315434>,  <16.304213, 17.422876, 20.246115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.086575, 17.496555, 20.315434>,  <15.723844, 17.619352, 20.430965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.086575, 17.496555, 20.315434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345911, 0.150460, 0.926125,
		-0.240856, -0.939743, 0.242633,
		0.906827, -0.306992, -0.288828,
		16.358622, 17.404457, 20.228785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.981484, 17.135777, 20.919945>,  <15.723844, 17.619352, 20.430965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.981484, 17.135777, 20.919945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.341288, 17.219677, 20.766640>,  <16.557169, 17.270018, 20.674658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.341288, 17.219677, 20.766640>,  <15.981484, 17.135777, 20.919945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.341288, 17.219677, 20.766640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368968, 0.105098, 0.923481,
		0.233981, -0.972090, 0.017145,
		0.899508, 0.209751, -0.383261,
		16.611141, 17.282602, 20.651661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.561789, 16.730616, 21.302935>,  <15.981484, 17.135777, 20.919945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.561789, 16.730616, 21.302935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.749901, 17.040838, 21.134481>,  <16.862768, 17.226971, 21.033409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.749901, 17.040838, 21.134481>,  <16.561789, 16.730616, 21.302935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.749901, 17.040838, 21.134481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522738, 0.139676, 0.840973,
		0.711043, -0.615634, -0.339725,
		0.470280, 0.775555, -0.421131,
		16.890985, 17.273504, 21.008142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.205889, 16.602821, 21.255266>,  <16.561789, 16.730616, 21.302935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.205889, 16.602821, 21.255266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.213190, 17.002623, 21.265558>,  <17.217571, 17.242504, 21.271732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.213190, 17.002623, 21.265558>,  <17.205889, 16.602821, 21.255266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.213190, 17.002623, 21.265558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490034, -0.031372, 0.871139,
		0.871512, -0.003291, -0.490362,
		0.018251, 0.999502, 0.025729,
		17.218666, 17.302473, 21.273277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.810204, 16.693373, 21.479847>,  <17.205889, 16.602821, 21.255266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.810204, 16.693373, 21.479847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.599377, 17.027615, 21.541767>,  <17.472879, 17.228159, 21.578918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.599377, 17.027615, 21.541767>,  <17.810204, 16.693373, 21.479847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.599377, 17.027615, 21.541767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308668, 0.018521, 0.950990,
		0.791785, 0.549019, -0.267686,
		-0.527069, 0.835605, 0.154800,
		17.441256, 17.278296, 21.588207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.241299, 17.117157, 21.882475>,  <17.810204, 16.693373, 21.479847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.241299, 17.117157, 21.882475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.875959, 17.260519, 21.959770>,  <17.656755, 17.346537, 22.006147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.875959, 17.260519, 21.959770>,  <18.241299, 17.117157, 21.882475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.875959, 17.260519, 21.959770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264071, 0.160139, 0.951116,
		0.309941, 0.919728, -0.240907,
		-0.913347, 0.358407, 0.193240,
		17.601955, 17.368040, 22.017742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.283899, 17.873644, 22.173386>,  <18.241299, 17.117157, 21.882475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.283899, 17.873644, 22.173386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.925474, 17.739841, 22.290129>,  <17.710419, 17.659559, 22.360174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.925474, 17.739841, 22.290129>,  <18.283899, 17.873644, 22.173386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.925474, 17.739841, 22.290129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279382, 0.085999, 0.956321,
		-0.344994, 0.938462, 0.016395,
		-0.896061, -0.334505, 0.291858,
		17.656656, 17.639490, 22.377686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.137968, 18.133659, 22.930811>,  <18.283899, 17.873644, 22.173386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.137968, 18.133659, 22.930811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.839132, 17.869967, 22.896709>,  <17.659830, 17.711750, 22.876249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.839132, 17.869967, 22.896709>,  <18.137968, 18.133659, 22.930811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.839132, 17.869967, 22.896709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020296, -0.105571, 0.994205,
		-0.664413, 0.744491, 0.065491,
		-0.747090, -0.659233, -0.085253,
		17.615005, 17.672197, 22.871134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.587282, 18.339724, 23.309929>,  <18.137968, 18.133659, 22.930811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.587282, 18.339724, 23.309929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.517525, 17.946215, 23.293051>,  <17.475670, 17.710110, 23.282925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.517525, 17.946215, 23.293051>,  <17.587282, 18.339724, 23.309929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.517525, 17.946215, 23.293051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035761, -0.049149, 0.998151,
		-0.984026, 0.172562, 0.043752,
		-0.174394, -0.983772, -0.042193,
		17.465206, 17.651083, 23.280394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.120531, 18.219269, 23.718517>,  <17.587282, 18.339724, 23.309929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.120531, 18.219269, 23.718517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.275656, 17.850937, 23.702169>,  <17.368731, 17.629938, 23.692360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.275656, 17.850937, 23.702169>,  <17.120531, 18.219269, 23.718517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.275656, 17.850937, 23.702169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005394, -0.046606, 0.998899,
		-0.921722, -0.387166, -0.023042,
		0.387814, -0.920832, -0.040869,
		17.392000, 17.574688, 23.689909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.682096, 17.690144, 24.157118>,  <17.120531, 18.219269, 23.718517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.682096, 17.690144, 24.157118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.060698, 17.565714, 24.122789>,  <17.287859, 17.491056, 24.102192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.060698, 17.565714, 24.122789>,  <16.682096, 17.690144, 24.157118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.060698, 17.565714, 24.122789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021615, -0.204236, 0.978683,
		-0.321969, -0.928182, -0.186586,
		0.946503, -0.311073, -0.085820,
		17.344648, 17.472391, 24.097044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.716755, 17.230942, 24.632050>,  <16.682096, 17.690144, 24.157118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.716755, 17.230942, 24.632050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.110294, 17.261520, 24.567307>,  <17.346418, 17.279867, 24.528461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.110294, 17.261520, 24.567307>,  <16.716755, 17.230942, 24.632050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.110294, 17.261520, 24.567307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156153, 0.075509, 0.984842,
		0.087521, -0.994209, 0.062351,
		0.983848, 0.076459, -0.161858,
		17.405449, 17.284454, 24.518749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.028431, 16.769440, 25.085167>,  <16.716755, 17.230942, 24.632050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.028431, 16.769440, 25.085167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.334915, 17.003290, 24.978483>,  <17.518805, 17.143600, 24.914473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.334915, 17.003290, 24.978483>,  <17.028431, 16.769440, 25.085167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.334915, 17.003290, 24.978483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153141, 0.236967, 0.959372,
		0.624078, -0.775923, 0.092035,
		0.766208, 0.584628, -0.266711,
		17.564777, 17.178679, 24.898470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.627367, 16.580727, 25.502012>,  <17.028431, 16.769440, 25.085167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.627367, 16.580727, 25.502012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.691404, 16.953300, 25.371294>,  <17.729826, 17.176846, 25.292862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.691404, 16.953300, 25.371294>,  <17.627367, 16.580727, 25.502012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.691404, 16.953300, 25.371294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174284, 0.299193, 0.938141,
		0.971594, -0.207145, -0.114436,
		0.160093, 0.931437, -0.326797,
		17.739431, 17.232731, 25.273254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.326809, 16.774727, 25.753229>,  <17.627367, 16.580727, 25.502012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.326809, 16.774727, 25.753229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.123919, 17.113976, 25.692026>,  <18.002184, 17.317524, 25.655304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.123919, 17.113976, 25.692026>,  <18.326809, 16.774727, 25.753229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.123919, 17.113976, 25.692026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233510, 0.306151, 0.922900,
		0.829575, 0.432391, -0.353333,
		-0.507227, 0.848121, -0.153008,
		17.971750, 17.368412, 25.646124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.837711, 17.268423, 25.985962>,  <18.326809, 16.774727, 25.753229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.837711, 17.268423, 25.985962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.485474, 17.457235, 25.969261>,  <18.274132, 17.570522, 25.959240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.485474, 17.457235, 25.969261>,  <18.837711, 17.268423, 25.985962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.485474, 17.457235, 25.969261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254349, 0.545157, 0.798818,
		0.399830, 0.692813, -0.600121,
		-0.880592, 0.472032, -0.041754,
		18.221296, 17.598845, 25.956736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.008320, 17.896999, 26.293049>,  <18.837711, 17.268423, 25.985962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.008320, 17.896999, 26.293049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.610598, 17.937510, 26.279814>,  <18.371964, 17.961817, 26.271873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.610598, 17.937510, 26.279814>,  <19.008320, 17.896999, 26.293049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.610598, 17.937510, 26.279814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049637, 0.715112, 0.697245,
		0.094275, 0.691634, -0.716069,
		-0.994308, 0.101276, -0.033086,
		18.312305, 17.967892, 26.269888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.806671, 18.572287, 26.112671>,  <19.008320, 17.896999, 26.293049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.806671, 18.572287, 26.112671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.496101, 18.413923, 26.308802>,  <18.309759, 18.318905, 26.426481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.496101, 18.413923, 26.308802>,  <18.806671, 18.572287, 26.112671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.496101, 18.413923, 26.308802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074256, 0.715150, 0.695016,
		-0.625820, 0.576037, -0.525861,
		-0.776425, -0.395907, 0.490329,
		18.263174, 18.295151, 26.455900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.301664, 19.130568, 26.261841>,  <18.806671, 18.572287, 26.112671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.301664, 19.130568, 26.261841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.227711, 18.850410, 26.537600>,  <18.183338, 18.682316, 26.703054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.227711, 18.850410, 26.537600>,  <18.301664, 19.130568, 26.261841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.227711, 18.850410, 26.537600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109394, 0.711796, 0.693815,
		-0.976653, 0.052861, -0.208220,
		-0.184885, -0.700394, 0.689395,
		18.172245, 18.640293, 26.744417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.687046, 19.474461, 26.658266>,  <18.301664, 19.130568, 26.261841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.687046, 19.474461, 26.658266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.819485, 19.183317, 26.898466>,  <17.898949, 19.008631, 27.042585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.819485, 19.183317, 26.898466>,  <17.687046, 19.474461, 26.658266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.819485, 19.183317, 26.898466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075691, 0.613855, 0.785782,
		-0.940556, -0.305621, 0.148153,
		0.331096, -0.727858, 0.600498,
		17.918814, 18.964960, 27.078615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.235291, 19.510309, 27.312695>,  <17.687046, 19.474461, 26.658266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.235291, 19.510309, 27.312695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.574680, 19.318239, 27.401712>,  <17.778315, 19.202997, 27.455124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.574680, 19.318239, 27.401712>,  <17.235291, 19.510309, 27.312695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.574680, 19.318239, 27.401712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094038, 0.550594, 0.829459,
		-0.520816, -0.682847, 0.512320,
		0.848474, -0.480173, 0.222544,
		17.829222, 19.174187, 27.468475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.140120, 19.319208, 28.070492>,  <17.235291, 19.510309, 27.312695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.140120, 19.319208, 28.070492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.533850, 19.315279, 28.000059>,  <17.770088, 19.312922, 27.957800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.533850, 19.315279, 28.000059>,  <17.140120, 19.319208, 28.070492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.533850, 19.315279, 28.000059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152723, 0.546733, 0.823261,
		0.088182, -0.837249, 0.539664,
		0.984327, -0.009822, -0.176079,
		17.829147, 19.312332, 27.947235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.460794, 19.013868, 28.597836>,  <17.140120, 19.319208, 28.070492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.460794, 19.013868, 28.597836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.717978, 19.258997, 28.414072>,  <17.872288, 19.406075, 28.303814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.717978, 19.258997, 28.414072>,  <17.460794, 19.013868, 28.597836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.717978, 19.258997, 28.414072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065628, 0.553537, 0.830235,
		0.763086, -0.563954, 0.315681,
		0.642956, 0.612823, -0.459408,
		17.910864, 19.442844, 28.276249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.168785, 19.198977, 28.998375>,  <17.460794, 19.013868, 28.597836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.168785, 19.198977, 28.998375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.001398, 19.490162, 28.781136>,  <17.900965, 19.664873, 28.650791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.001398, 19.490162, 28.781136>,  <18.168785, 19.198977, 28.998375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.001398, 19.490162, 28.781136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079902, 0.625162, 0.776394,
		0.904710, 0.281503, -0.319776,
		-0.418469, 0.727962, -0.543098,
		17.875858, 19.708551, 28.618206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.585766, 19.819633, 28.945395>,  <18.168785, 19.198977, 28.998375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.585766, 19.819633, 28.945395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.207998, 19.950979, 28.939096>,  <17.981337, 20.029787, 28.935318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.207998, 19.950979, 28.939096>,  <18.585766, 19.819633, 28.945395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.207998, 19.950979, 28.939096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234883, 0.707514, 0.666524,
		0.230001, 0.625781, -0.745317,
		-0.944420, 0.328363, -0.015744,
		17.924673, 20.049488, 28.934374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.669371, 20.522871, 28.794296>,  <18.585766, 19.819633, 28.945395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.669371, 20.522871, 28.794296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.377192, 20.367399, 29.018929>,  <18.201883, 20.274117, 29.153708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.377192, 20.367399, 29.018929>,  <18.669371, 20.522871, 28.794296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.377192, 20.367399, 29.018929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213217, 0.651389, 0.728169,
		-0.648831, 0.651629, -0.392934,
		-0.730450, -0.388678, 0.561580,
		18.158056, 20.250795, 29.187403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.452312, 20.981213, 29.249474>,  <18.669371, 20.522871, 28.794296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.452312, 20.981213, 29.249474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.239128, 20.703602, 29.443081>,  <18.111217, 20.537035, 29.559246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.239128, 20.703602, 29.443081>,  <18.452312, 20.981213, 29.249474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.239128, 20.703602, 29.443081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140746, 0.491348, 0.859516,
		-0.834350, 0.526214, -0.164188,
		-0.532963, -0.694029, 0.484019,
		18.079239, 20.495394, 29.588287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.925316, 21.250193, 29.717072>,  <18.452312, 20.981213, 29.249474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.925316, 21.250193, 29.717072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.067926, 20.901115, 29.850515>,  <18.153492, 20.691669, 29.930582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.067926, 20.901115, 29.850515>,  <17.925316, 21.250193, 29.717072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.067926, 20.901115, 29.850515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161480, 0.409259, 0.898015,
		-0.920224, -0.266295, 0.286834,
		0.356527, -0.872693, 0.333609,
		18.174885, 20.639307, 29.950598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.195013, 21.866476, 30.159208>,  <17.925316, 21.250193, 29.717072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.195013, 21.866476, 30.159208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.944275, 22.166607, 30.243183>,  <17.793831, 22.346685, 30.293568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.944275, 22.166607, 30.243183>,  <18.195013, 21.866476, 30.159208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.944275, 22.166607, 30.243183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240232, 0.442446, -0.864020,
		-0.741183, -0.491174, -0.457599,
		-0.626847, 0.750327, 0.209937,
		17.756222, 22.391705, 30.306164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.561697, 21.984486, 29.741598>,  <18.195013, 21.866476, 30.159208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.561697, 21.984486, 29.741598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.678127, 22.337250, 29.889927>,  <17.747986, 22.548908, 29.978924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.678127, 22.337250, 29.889927>,  <17.561697, 21.984486, 29.741598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.678127, 22.337250, 29.889927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049265, 0.373272, -0.926413,
		-0.955430, 0.287925, 0.065204,
		0.291077, 0.881911, 0.370820,
		17.765450, 22.601824, 30.001173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.179354, 22.455933, 29.520004>,  <17.561697, 21.984486, 29.741598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.179354, 22.455933, 29.520004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.494520, 22.680046, 29.622192>,  <17.683620, 22.814514, 29.683506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.494520, 22.680046, 29.622192>,  <17.179354, 22.455933, 29.520004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.494520, 22.680046, 29.622192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149422, 0.228516, -0.962005,
		-0.597377, 0.796154, 0.096333,
		0.787917, 0.560286, 0.255473,
		17.730896, 22.848131, 29.698833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.037931, 23.158388, 29.263752>,  <17.179354, 22.455933, 29.520004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.037931, 23.158388, 29.263752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.433765, 23.116823, 29.303606>,  <17.671265, 23.091885, 29.327518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.433765, 23.116823, 29.303606>,  <17.037931, 23.158388, 29.263752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.433765, 23.116823, 29.303606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119750, 0.210025, -0.970335,
		0.079905, 0.972158, 0.220281,
		0.989583, -0.103914, 0.099634,
		17.730640, 23.085649, 29.333496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.304504, 23.679464, 28.926495>,  <17.037931, 23.158388, 29.263752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.304504, 23.679464, 28.926495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.619938, 23.433552, 28.931835>,  <17.809198, 23.286003, 28.935040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.619938, 23.433552, 28.931835>,  <17.304504, 23.679464, 28.926495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.619938, 23.433552, 28.931835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191734, 0.225193, -0.955262,
		0.584273, 0.755864, 0.295458,
		0.788583, -0.614783, 0.013351,
		17.856512, 23.249117, 28.935841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.703825, 24.158548, 28.474123>,  <17.304504, 23.679464, 28.926495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.703825, 24.158548, 28.474123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.883442, 23.803356, 28.513821>,  <17.991213, 23.590240, 28.537640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.883442, 23.803356, 28.513821>,  <17.703825, 24.158548, 28.474123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.883442, 23.803356, 28.513821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200101, -0.008312, -0.979740,
		0.870816, 0.459805, 0.173954,
		0.449043, -0.887981, 0.099246,
		18.018154, 23.536963, 28.543594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.314558, 24.180449, 28.008041>,  <17.703825, 24.158548, 28.474123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.314558, 24.180449, 28.008041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.212952, 23.797890, 28.065706>,  <18.151989, 23.568356, 28.100306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.212952, 23.797890, 28.065706>,  <18.314558, 24.180449, 28.008041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.212952, 23.797890, 28.065706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183748, -0.194055, -0.963628,
		0.949586, -0.218286, 0.225029,
		-0.254015, -0.956396, 0.144162,
		18.136747, 23.510971, 28.108955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.813787, 23.847603, 27.743452>,  <18.314558, 24.180449, 28.008041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.813787, 23.847603, 27.743452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.511644, 23.585508, 27.747471>,  <18.330359, 23.428251, 27.749882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.511644, 23.585508, 27.747471>,  <18.813787, 23.847603, 27.743452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.511644, 23.585508, 27.747471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129654, -0.164457, -0.977826,
		0.642359, -0.737306, 0.209178,
		-0.755357, -0.655236, 0.010046,
		18.285038, 23.388937, 27.750484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.047195, 23.381248, 27.202984>,  <18.813787, 23.847603, 27.743452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.047195, 23.381248, 27.202984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.669174, 23.262926, 27.258663>,  <18.442362, 23.191933, 27.292070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.669174, 23.262926, 27.258663>,  <19.047195, 23.381248, 27.202984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.669174, 23.262926, 27.258663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014022, -0.462073, -0.886731,
		0.326622, -0.836054, 0.440830,
		-0.945051, -0.295807, 0.139200,
		18.385658, 23.174185, 27.300423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.093294, 22.817892, 26.868090>,  <19.047195, 23.381248, 27.202984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.093294, 22.817892, 26.868090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.694057, 22.842020, 26.873331>,  <18.454515, 22.856497, 26.876476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.694057, 22.842020, 26.873331>,  <19.093294, 22.817892, 26.868090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.694057, 22.842020, 26.873331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049250, -0.650227, -0.758142,
		-0.037212, -0.757341, 0.651958,
		-0.998093, 0.060321, 0.013103,
		18.394630, 22.860117, 26.877262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.846188, 22.120815, 26.804096>,  <19.093294, 22.817892, 26.868090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.846188, 22.120815, 26.804096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.559912, 22.374674, 26.687471>,  <18.388145, 22.526989, 26.617496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.559912, 22.374674, 26.687471>,  <18.846188, 22.120815, 26.804096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.559912, 22.374674, 26.687471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260311, -0.629777, -0.731860,
		-0.648092, -0.447889, 0.615932,
		-0.715692, 0.634646, -0.291563,
		18.345205, 22.565067, 26.600002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.222048, 21.734379, 26.874771>,  <18.846188, 22.120815, 26.804096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.222048, 21.734379, 26.874771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.196692, 22.013765, 26.589638>,  <18.181479, 22.181396, 26.418558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.196692, 22.013765, 26.589638>,  <18.222048, 21.734379, 26.874771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.196692, 22.013765, 26.589638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316176, -0.691530, -0.649475,
		-0.946580, 0.184211, 0.264673,
		-0.063389, 0.698464, -0.712832,
		18.177675, 22.223305, 26.375788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.619503, 21.521675, 26.459913>,  <18.222048, 21.734379, 26.874771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.619503, 21.521675, 26.459913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.815416, 21.787033, 26.233631>,  <17.932964, 21.946247, 26.097862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.815416, 21.787033, 26.233631>,  <17.619503, 21.521675, 26.459913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.815416, 21.787033, 26.233631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239444, -0.521554, -0.818931,
		-0.838319, 0.536553, -0.096602,
		0.489783, 0.663394, -0.565704,
		17.962351, 21.986052, 26.063919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.094801, 21.786022, 26.001713>,  <17.619503, 21.521675, 26.459913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.094801, 21.786022, 26.001713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.457655, 21.848946, 25.845581>,  <17.675367, 21.886700, 25.751902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.457655, 21.848946, 25.845581>,  <17.094801, 21.786022, 26.001713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.457655, 21.848946, 25.845581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245541, -0.555426, -0.794488,
		-0.341779, 0.816551, -0.465222,
		0.907137, 0.157308, -0.390330,
		17.729795, 21.896137, 25.728481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.917915, 21.853209, 25.314877>,  <17.094801, 21.786022, 26.001713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.917915, 21.853209, 25.314877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.312841, 21.792025, 25.297846>,  <17.549797, 21.755314, 25.287626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.312841, 21.792025, 25.297846>,  <16.917915, 21.853209, 25.314877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.312841, 21.792025, 25.297846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102880, -0.412049, -0.905335,
		0.120935, 0.898231, -0.422558,
		0.987315, -0.152960, -0.042579,
		17.609035, 21.746136, 25.285072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.130110, 22.180183, 24.644230>,  <16.917915, 21.853209, 25.314877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.130110, 22.180183, 24.644230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.379082, 21.890333, 24.762552>,  <17.528465, 21.716423, 24.833546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.379082, 21.890333, 24.762552>,  <17.130110, 22.180183, 24.644230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.379082, 21.890333, 24.762552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089627, -0.441447, -0.892800,
		0.777528, 0.529191, -0.339715,
		0.622428, -0.724625, 0.295808,
		17.565809, 21.672945, 24.851295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.621298, 22.153122, 24.150358>,  <17.130110, 22.180183, 24.644230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.621298, 22.153122, 24.150358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.656672, 21.808676, 24.350622>,  <17.677896, 21.602009, 24.470781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.656672, 21.808676, 24.350622>,  <17.621298, 22.153122, 24.150358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.656672, 21.808676, 24.350622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080621, -0.507167, -0.858069,
		0.992814, 0.035519, -0.114275,
		0.088434, -0.861115, 0.500659,
		17.683201, 21.550341, 24.500820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.966850, 21.706219, 23.752007>,  <17.621298, 22.153122, 24.150358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.966850, 21.706219, 23.752007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.822592, 21.429436, 24.002169>,  <17.736036, 21.263367, 24.152266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.822592, 21.429436, 24.002169>,  <17.966850, 21.706219, 23.752007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.822592, 21.429436, 24.002169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131276, -0.626196, -0.768535,
		0.923418, -0.359270, 0.134998,
		-0.360646, -0.691957, 0.625404,
		17.714397, 21.221849, 24.189791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.293688, 21.125298, 23.718145>,  <17.966850, 21.706219, 23.752007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.293688, 21.125298, 23.718145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.951975, 20.984787, 23.871408>,  <17.746946, 20.900480, 23.963366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.951975, 20.984787, 23.871408>,  <18.293688, 21.125298, 23.718145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.951975, 20.984787, 23.871408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132850, -0.565084, -0.814267,
		0.502547, -0.746516, 0.436074,
		-0.854282, -0.351274, 0.383156,
		17.695690, 20.879404, 23.986355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.293564, 20.369612, 23.577351>,  <18.293688, 21.125298, 23.718145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.293564, 20.369612, 23.577351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.905870, 20.458014, 23.620697>,  <17.673254, 20.511055, 23.646706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.905870, 20.458014, 23.620697>,  <18.293564, 20.369612, 23.577351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.905870, 20.458014, 23.620697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200046, -0.450747, -0.869948,
		-0.143416, -0.864861, 0.481090,
		-0.969234, 0.221004, 0.108367,
		17.615101, 20.524315, 23.653208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.990488, 19.722763, 23.400379>,  <18.293564, 20.369612, 23.577351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.990488, 19.722763, 23.400379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.698446, 19.994747, 23.373240>,  <17.523220, 20.157938, 23.356956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.698446, 19.994747, 23.373240>,  <17.990488, 19.722763, 23.400379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.698446, 19.994747, 23.373240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339789, -0.447396, -0.827273,
		-0.592866, -0.580942, 0.557689,
		-0.730105, 0.679959, -0.067848,
		17.479414, 20.198734, 23.352884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.396236, 19.267227, 23.255821>,  <17.990488, 19.722763, 23.400379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.396236, 19.267227, 23.255821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.290899, 19.639816, 23.155415>,  <17.227697, 19.863369, 23.095171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.290899, 19.639816, 23.155415>,  <17.396236, 19.267227, 23.255821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.290899, 19.639816, 23.155415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238811, -0.315049, -0.918539,
		-0.934676, -0.181945, 0.305412,
		-0.263343, 0.931472, -0.251019,
		17.211897, 19.919258, 23.080109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.786528, 19.292490, 22.854286>,  <17.396236, 19.267227, 23.255821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.786528, 19.292490, 22.854286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.968235, 19.632416, 22.747362>,  <17.077259, 19.836370, 22.683208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.968235, 19.632416, 22.747362>,  <16.786528, 19.292490, 22.854286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.968235, 19.632416, 22.747362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215621, -0.186251, -0.958550,
		-0.864376, 0.493078, 0.098629,
		0.454270, 0.849814, -0.267309,
		17.104517, 19.887360, 22.667170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.374130, 19.600832, 22.393192>,  <16.786528, 19.292490, 22.854286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.374130, 19.600832, 22.393192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.704037, 19.808760, 22.304152>,  <16.901979, 19.933516, 22.250727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.704037, 19.808760, 22.304152>,  <16.374130, 19.600832, 22.393192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.704037, 19.808760, 22.304152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077877, -0.285485, -0.955214,
		-0.560087, 0.805162, -0.194977,
		0.824765, 0.519819, -0.222600,
		16.951466, 19.964705, 22.237371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.157478, 19.869896, 21.782253>,  <16.374130, 19.600832, 22.393192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.157478, 19.869896, 21.782253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.557211, 19.884340, 21.780060>,  <16.797050, 19.893007, 21.778744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.557211, 19.884340, 21.780060>,  <16.157478, 19.869896, 21.782253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.557211, 19.884340, 21.780060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000220, -0.144160, -0.989554,
		-0.036525, 0.988896, -0.144056,
		0.999333, 0.036111, -0.005483,
		16.857010, 19.895174, 21.778416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.338659, 20.409006, 21.327211>,  <16.157478, 19.869896, 21.782253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.338659, 20.409006, 21.327211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.658195, 20.170671, 21.360277>,  <16.849916, 20.027670, 21.380116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.658195, 20.170671, 21.360277>,  <16.338659, 20.409006, 21.327211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.658195, 20.170671, 21.360277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171944, 0.094487, -0.980565,
		0.576447, 0.797527, 0.177931,
		0.798839, -0.595837, 0.082664,
		16.897848, 19.991920, 21.385077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.807190, 20.782938, 20.961391>,  <16.338659, 20.409006, 21.327211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.807190, 20.782938, 20.961391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.978773, 20.422190, 20.981894>,  <17.081724, 20.205742, 20.994196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.978773, 20.422190, 20.981894>,  <16.807190, 20.782938, 20.961391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.978773, 20.422190, 20.981894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238053, 0.058125, -0.969511,
		0.871392, 0.428082, 0.239626,
		0.428959, -0.901869, 0.051256,
		17.107460, 20.151628, 20.997271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.443373, 20.835657, 20.537895>,  <16.807190, 20.782938, 20.961391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.443373, 20.835657, 20.537895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.338827, 20.451435, 20.575893>,  <17.276100, 20.220901, 20.598692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.338827, 20.451435, 20.575893>,  <17.443373, 20.835657, 20.537895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.338827, 20.451435, 20.575893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250563, -0.162558, -0.954355,
		0.932152, -0.225632, 0.283166,
		-0.261364, -0.960555, 0.094994,
		17.260418, 20.163269, 20.604391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.037848, 20.468885, 20.196011>,  <17.443373, 20.835657, 20.537895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.037848, 20.468885, 20.196011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.733831, 20.208973, 20.200438>,  <17.551422, 20.053026, 20.203094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.733831, 20.208973, 20.200438>,  <18.037848, 20.468885, 20.196011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.733831, 20.208973, 20.200438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144047, -0.185050, -0.972115,
		0.633710, -0.737252, 0.234244,
		-0.760041, -0.649781, 0.011069,
		17.505819, 20.014038, 20.203758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.342640, 19.797359, 19.920553>,  <18.037848, 20.468885, 20.196011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.342640, 19.797359, 19.920553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.945007, 19.802208, 19.877371>,  <17.706429, 19.805117, 19.851461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.945007, 19.802208, 19.877371>,  <18.342640, 19.797359, 19.920553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.945007, 19.802208, 19.877371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099889, -0.288620, -0.952219,
		-0.042702, -0.957367, 0.285701,
		-0.994082, 0.012123, -0.107955,
		17.646782, 19.805845, 19.844984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.343397, 19.166388, 19.622593>,  <18.342640, 19.797359, 19.920553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.343397, 19.166388, 19.622593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.005997, 19.369635, 19.552935>,  <17.803556, 19.491583, 19.511139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.005997, 19.369635, 19.552935>,  <18.343397, 19.166388, 19.622593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.005997, 19.369635, 19.552935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003496, -0.319014, -0.947744,
		-0.537120, -0.800030, 0.267312,
		-0.843499, 0.508117, -0.174146,
		17.752947, 19.522070, 19.500690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.002747, 18.717445, 19.173569>,  <18.343397, 19.166388, 19.622593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.002747, 18.717445, 19.173569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.827765, 19.074575, 19.130672>,  <17.722775, 19.288853, 19.104935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.827765, 19.074575, 19.130672>,  <18.002747, 18.717445, 19.173569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.827765, 19.074575, 19.130672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113355, -0.063553, -0.991520,
		-0.892067, -0.445901, -0.073405,
		-0.437455, 0.892823, -0.107238,
		17.696527, 19.342422, 19.098501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.528091, 18.582775, 18.556786>,  <18.002747, 18.717445, 19.173569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.528091, 18.582775, 18.556786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.562965, 18.980400, 18.582836>,  <17.583891, 19.218975, 18.598467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.562965, 18.980400, 18.582836>,  <17.528091, 18.582775, 18.556786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.562965, 18.980400, 18.582836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037287, 0.068588, -0.996948,
		-0.995494, 0.084492, 0.043046,
		0.087187, 0.994061, 0.065129,
		17.589121, 19.278618, 18.602375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.268738, 18.770586, 17.944666>,  <17.528091, 18.582775, 18.556786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.268738, 18.770586, 17.944666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.413212, 19.119480, 18.076576>,  <17.499897, 19.328815, 18.155724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.413212, 19.119480, 18.076576>,  <17.268738, 18.770586, 17.944666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.413212, 19.119480, 18.076576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066504, 0.328656, -0.942105,
		-0.930119, 0.362208, 0.060699,
		0.361187, 0.872233, 0.329777,
		17.521568, 19.381149, 18.175508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.891096, 19.341661, 17.521404>,  <17.268738, 18.770586, 17.944666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.891096, 19.341661, 17.521404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.252239, 19.453394, 17.652142>,  <17.468925, 19.520433, 17.730583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.252239, 19.453394, 17.652142>,  <16.891096, 19.341661, 17.521404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.252239, 19.453394, 17.652142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295487, 0.149074, -0.943644,
		-0.312311, 0.948553, 0.052054,
		0.902856, 0.279329, 0.326842,
		17.523096, 19.537193, 17.750195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.960066, 19.912565, 17.162893>,  <16.891096, 19.341661, 17.521404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.960066, 19.912565, 17.162893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.320034, 19.781179, 17.277613>,  <17.536015, 19.702349, 17.346445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.320034, 19.781179, 17.277613>,  <16.960066, 19.912565, 17.162893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.320034, 19.781179, 17.277613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385520, 0.291987, -0.875282,
		0.203758, 0.898251, 0.389395,
		0.899921, -0.328465, 0.286799,
		17.590010, 19.682640, 17.363653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.409821, 20.395065, 16.870975>,  <16.960066, 19.912565, 17.162893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.409821, 20.395065, 16.870975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.620722, 20.063562, 16.945980>,  <17.747263, 19.864660, 16.990982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.620722, 20.063562, 16.945980>,  <17.409821, 20.395065, 16.870975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.620722, 20.063562, 16.945980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295655, -0.027953, -0.954886,
		0.796612, 0.558906, 0.230288,
		0.527255, -0.828760, 0.187511,
		17.778898, 19.814934, 17.002234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.133923, 20.511974, 16.780840>,  <17.409821, 20.395065, 16.870975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.133923, 20.511974, 16.780840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.121614, 20.115597, 16.728552>,  <18.114229, 19.877771, 16.697180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.121614, 20.115597, 16.728552>,  <18.133923, 20.511974, 16.780840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.121614, 20.115597, 16.728552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546966, 0.092771, -0.831998,
		0.836589, -0.097099, 0.539158,
		-0.030768, -0.990942, -0.130721,
		18.112385, 19.818314, 16.689335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.686884, 20.434517, 16.331635>,  <18.133923, 20.511974, 16.780840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.686884, 20.434517, 16.331635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.521025, 20.071705, 16.302334>,  <18.421509, 19.854017, 16.284754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.521025, 20.071705, 16.302334>,  <18.686884, 20.434517, 16.331635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.521025, 20.071705, 16.302334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393420, -0.106100, -0.913216,
		0.820542, -0.407482, 0.400837,
		-0.414648, -0.907029, -0.073252,
		18.396631, 19.799597, 16.280357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.220257, 19.966665, 16.145054>,  <18.686884, 20.434517, 16.331635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.220257, 19.966665, 16.145054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.857349, 19.837868, 16.036848>,  <18.639605, 19.760590, 15.971924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.857349, 19.837868, 16.036848>,  <19.220257, 19.966665, 16.145054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.857349, 19.837868, 16.036848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295857, -0.031545, -0.954711,
		0.298880, -0.946215, 0.123885,
		-0.907270, -0.321996, -0.270516,
		18.585169, 19.741268, 15.955693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.378605, 19.505913, 15.666276>,  <19.220257, 19.966665, 16.145054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.378605, 19.505913, 15.666276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.005423, 19.623802, 15.583589>,  <18.781513, 19.694536, 15.533977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.005423, 19.623802, 15.583589>,  <19.378605, 19.505913, 15.666276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.005423, 19.623802, 15.583589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224262, 0.026632, -0.974165,
		-0.281605, -0.955211, -0.090942,
		-0.932955, 0.294725, -0.206718,
		18.725536, 19.712219, 15.521573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.139786, 19.183039, 15.088299>,  <19.378605, 19.505913, 15.666276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.139786, 19.183039, 15.088299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.916054, 19.514566, 15.082560>,  <18.781815, 19.713484, 15.079116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.916054, 19.514566, 15.082560>,  <19.139786, 19.183039, 15.088299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.916054, 19.514566, 15.082560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064433, 0.026212, -0.997578,
		-0.826437, -0.558899, -0.068065,
		-0.559330, 0.828821, -0.014349,
		18.748255, 19.763212, 15.078255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.610615, 19.235636, 14.513240>,  <19.139786, 19.183039, 15.088299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.610615, 19.235636, 14.513240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.673676, 19.620256, 14.603189>,  <18.711512, 19.851028, 14.657158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.673676, 19.620256, 14.603189>,  <18.610615, 19.235636, 14.513240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.673676, 19.620256, 14.603189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063252, 0.237083, -0.969428,
		-0.985467, 0.138607, 0.098196,
		0.157650, 0.961551, 0.224871,
		18.720970, 19.908722, 14.670650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.584858, 18.727531, 15.089024>,  <18.610615, 19.235636, 14.513240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.584858, 18.727531, 15.089024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.491947, 18.338472, 15.090084>,  <18.436201, 18.105038, 15.090720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.491947, 18.338472, 15.090084>,  <18.584858, 18.727531, 15.089024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.491947, 18.338472, 15.090084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957051, -0.229037, -0.177754,
		0.173498, -0.038752, 0.984072,
		-0.232277, -0.972646, 0.002650,
		18.422264, 18.046679, 15.090879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.876871, 18.272930, 15.673122>,  <18.584858, 18.727531, 15.089024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.876871, 18.272930, 15.673122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.858685, 18.106081, 15.310038>,  <18.847773, 18.005972, 15.092187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.858685, 18.106081, 15.310038>,  <18.876871, 18.272930, 15.673122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.858685, 18.106081, 15.310038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983728, -0.176798, 0.031968,
		-0.173816, -0.891488, 0.418375,
		-0.045469, -0.417124, -0.907712,
		18.845043, 17.980944, 15.037724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.320257, 17.568153, 15.756255>,  <18.876871, 18.272930, 15.673122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.320257, 17.568153, 15.756255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.272022, 17.744358, 15.400411>,  <19.243082, 17.850080, 15.186904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.272022, 17.744358, 15.400411>,  <19.320257, 17.568153, 15.756255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.272022, 17.744358, 15.400411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986084, -0.050159, -0.158501,
		-0.114444, -0.896344, -0.428334,
		-0.120587, 0.440513, -0.889611,
		19.235846, 17.876513, 15.133528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.607851, 17.098614, 15.327355>,  <19.320257, 17.568153, 15.756255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.607851, 17.098614, 15.327355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.592907, 17.457581, 15.151517>,  <19.583941, 17.672960, 15.046014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.592907, 17.457581, 15.151517>,  <19.607851, 17.098614, 15.327355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.592907, 17.457581, 15.151517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859691, -0.195400, -0.471964,
		-0.509446, -0.395550, -0.764202,
		-0.037361, 0.897418, -0.439596,
		19.581699, 17.726807, 15.019638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.576920, 17.006313, 14.561504>,  <19.607851, 17.098614, 15.327355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.576920, 17.006313, 14.561504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.748436, 17.351988, 14.666819>,  <19.851345, 17.559393, 14.730007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.748436, 17.351988, 14.666819>,  <19.576920, 17.006313, 14.561504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.748436, 17.351988, 14.666819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786226, -0.213431, -0.579910,
		-0.444958, 0.455661, -0.770964,
		0.428790, 0.864188, 0.263285,
		19.877073, 17.611244, 14.745804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.749386, 17.453796, 13.962777>,  <19.576920, 17.006313, 14.561504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.749386, 17.453796, 13.962777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.989435, 17.522800, 14.275211>,  <20.133465, 17.564203, 14.462671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.989435, 17.522800, 14.275211>,  <19.749386, 17.453796, 13.962777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.989435, 17.522800, 14.275211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799882, -0.121504, -0.587729,
		-0.006485, 0.977485, -0.210906,
		0.600122, 0.172512, 0.781085,
		20.169472, 17.574554, 14.509537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.397787, 16.863449, 13.626041>,  <19.749386, 17.453796, 13.962777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.397787, 16.863449, 13.626041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.493761, 16.477428, 13.583895>,  <19.551346, 16.245815, 13.558607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.493761, 16.477428, 13.583895>,  <19.397787, 16.863449, 13.626041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.493761, 16.477428, 13.583895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402723, -0.000189, -0.915322,
		0.883315, 0.262051, -0.388695,
		0.239935, -0.965054, -0.105367,
		19.565741, 16.187912, 13.552284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.753784, 16.829920, 12.943668>,  <19.397787, 16.863449, 13.626041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.753784, 16.829920, 12.943668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.563305, 16.500847, 13.067883>,  <19.449017, 16.303404, 13.142411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.563305, 16.500847, 13.067883>,  <19.753784, 16.829920, 12.943668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.563305, 16.500847, 13.067883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540485, -0.004726, -0.841341,
		0.693623, -0.568484, -0.442396,
		-0.476197, -0.822681, 0.310535,
		19.420446, 16.254042, 13.161043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.884199, 16.401667, 12.413245>,  <19.753784, 16.829920, 12.943668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.884199, 16.401667, 12.413245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.562483, 16.267075, 12.609163>,  <19.369453, 16.186319, 12.726714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.562483, 16.267075, 12.609163>,  <19.884199, 16.401667, 12.413245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.562483, 16.267075, 12.609163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456281, -0.178349, -0.871779,
		0.380692, -0.924647, -0.010086,
		-0.804289, -0.336481, 0.489795,
		19.321196, 16.166130, 12.756102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.616323, 15.735063, 12.041997>,  <19.884199, 16.401667, 12.413245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.616323, 15.735063, 12.041997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.294846, 15.847232, 12.251925>,  <19.101959, 15.914534, 12.377881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.294846, 15.847232, 12.251925>,  <19.616323, 15.735063, 12.041997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.294846, 15.847232, 12.251925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569187, -0.105142, -0.815458,
		-0.173497, -0.954099, 0.244118,
		-0.803695, 0.280428, 0.524819,
		19.053738, 15.931359, 12.409370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.077305, 15.426966, 11.658330>,  <19.616323, 15.735063, 12.041997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.077305, 15.426966, 11.658330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.872389, 15.676580, 11.894342>,  <18.749439, 15.826349, 12.035950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.872389, 15.676580, 11.894342>,  <19.077305, 15.426966, 11.658330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.872389, 15.676580, 11.894342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689072, 0.111380, -0.716082,
		-0.512579, -0.773416, 0.372948,
		-0.512291, 0.624037, 0.590031,
		18.718702, 15.863791, 12.071352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.336189, 15.224634, 11.687123>,  <19.077305, 15.426966, 11.658330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.336189, 15.224634, 11.687123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.335421, 15.612713, 11.784047>,  <18.334959, 15.845560, 11.842201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.335421, 15.612713, 11.784047>,  <18.336189, 15.224634, 11.687123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.335421, 15.612713, 11.784047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808217, 0.141184, -0.571711,
		-0.588882, -0.196937, 0.783858,
		-0.001923, 0.970197, 0.242309,
		18.334845, 15.903772, 11.856740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.635206, 15.346879, 11.797666>,  <18.336189, 15.224634, 11.687123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.635206, 15.346879, 11.797666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.805384, 15.705151, 11.745888>,  <17.907490, 15.920114, 11.714821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.805384, 15.705151, 11.745888>,  <17.635206, 15.346879, 11.797666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.805384, 15.705151, 11.745888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700805, 0.235568, -0.673335,
		-0.572600, 0.377181, 0.727918,
		0.425443, 0.895680, -0.129444,
		17.933016, 15.973855, 11.707055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.075876, 15.817148, 11.892538>,  <17.635206, 15.346879, 11.797666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.075876, 15.817148, 11.892538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.377100, 15.982580, 11.687851>,  <17.557835, 16.081839, 11.565039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.377100, 15.982580, 11.687851>,  <17.075876, 15.817148, 11.892538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.377100, 15.982580, 11.687851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600687, 0.114804, -0.791198,
		-0.268476, 0.903201, 0.334887,
		0.753057, 0.413580, -0.511719,
		17.603018, 16.106655, 11.534335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.700283, 16.271303, 11.541720>,  <17.075876, 15.817148, 11.892538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.700283, 16.271303, 11.541720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.051401, 16.239428, 11.352777>,  <17.262072, 16.220303, 11.239410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.051401, 16.239428, 11.352777>,  <16.700283, 16.271303, 11.541720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.051401, 16.239428, 11.352777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434843, 0.281111, -0.855505,
		0.200960, 0.956361, 0.212106,
		0.877796, -0.079689, -0.472359,
		17.314739, 16.215521, 11.211069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.694307, 16.902496, 11.133454>,  <16.700283, 16.271303, 11.541720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.694307, 16.902496, 11.133454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.939127, 16.624817, 10.981937>,  <17.086018, 16.458208, 10.891027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.939127, 16.624817, 10.981937>,  <16.694307, 16.902496, 11.133454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.939127, 16.624817, 10.981937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455502, 0.082091, -0.886442,
		0.646463, 0.715086, -0.265966,
		0.612048, -0.694200, -0.378792,
		17.122742, 16.416557, 10.868299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.817362, 17.069954, 10.395798>,  <16.694307, 16.902496, 11.133454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.817362, 17.069954, 10.395798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.949766, 16.692535, 10.400743>,  <17.029209, 16.466084, 10.403711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.949766, 16.692535, 10.400743>,  <16.817362, 17.069954, 10.395798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.949766, 16.692535, 10.400743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197124, -0.081957, -0.976947,
		0.922808, 0.320942, -0.213124,
		0.331010, -0.943546, 0.012365,
		17.049068, 16.409472, 10.404453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.391026, 17.011284, 9.912384>,  <16.817362, 17.069954, 10.395798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.391026, 17.011284, 9.912384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.234287, 16.647648, 9.968974>,  <17.140245, 16.429466, 10.002928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.234287, 16.647648, 9.968974>,  <17.391026, 17.011284, 9.912384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.234287, 16.647648, 9.968974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126864, -0.098914, -0.986976,
		0.911243, -0.404689, -0.076572,
		-0.391844, -0.909089, 0.141475,
		17.116734, 16.374922, 10.011416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.695642, 16.617538, 9.385767>,  <17.391026, 17.011284, 9.912384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.695642, 16.617538, 9.385767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.370916, 16.411581, 9.495922>,  <17.176081, 16.288006, 9.562016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.370916, 16.411581, 9.495922>,  <17.695642, 16.617538, 9.385767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.370916, 16.411581, 9.495922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162494, -0.253784, -0.953514,
		0.560849, -0.818827, 0.122358,
		-0.811816, -0.514894, 0.275389,
		17.127371, 16.257113, 9.578539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.759459, 16.013273, 8.938707>,  <17.695642, 16.617538, 9.385767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.759459, 16.013273, 8.938707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.380039, 16.007275, 9.065220>,  <17.152388, 16.003675, 9.141128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.380039, 16.007275, 9.065220>,  <17.759459, 16.013273, 8.938707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.380039, 16.007275, 9.065220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297821, -0.296957, -0.907259,
		0.107527, -0.954773, 0.277211,
		-0.948547, -0.014996, 0.316282,
		17.095474, 16.002775, 9.160105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.418743, 15.365863, 8.772639>,  <17.759459, 16.013273, 8.938707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.418743, 15.365863, 8.772639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.122442, 15.632556, 8.805518>,  <16.944662, 15.792572, 8.825245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.122442, 15.632556, 8.805518>,  <17.418743, 15.365863, 8.772639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.122442, 15.632556, 8.805518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392335, -0.330044, -0.858571,
		-0.545309, -0.668235, 0.506063,
		-0.740750, 0.666733, 0.082196,
		16.900217, 15.832576, 8.830177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.884331, 14.955130, 8.510033>,  <17.418743, 15.365863, 8.772639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.884331, 14.955130, 8.510033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.739357, 15.327826, 8.519004>,  <16.652372, 15.551443, 8.524386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.739357, 15.327826, 8.519004>,  <16.884331, 14.955130, 8.510033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.739357, 15.327826, 8.519004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657005, -0.238350, -0.715216,
		-0.661049, -0.273954, 0.698544,
		-0.362434, 0.931739, 0.022428,
		16.630627, 15.607347, 8.525732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.196207, 14.841056, 8.387364>,  <16.884331, 14.955130, 8.510033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.196207, 14.841056, 8.387364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.236042, 15.218499, 8.261073>,  <16.259943, 15.444965, 8.185299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.236042, 15.218499, 8.261073>,  <16.196207, 14.841056, 8.387364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.236042, 15.218499, 8.261073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510727, -0.223844, -0.830091,
		-0.853956, 0.243917, 0.459635,
		0.099587, 0.943609, -0.315728,
		16.265919, 15.501582, 8.166355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.561821, 15.074885, 8.215503>,  <16.196207, 14.841056, 8.387364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.561821, 15.074885, 8.215503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.769626, 15.335804, 7.994735>,  <15.894308, 15.492355, 7.862274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.769626, 15.335804, 7.994735>,  <15.561821, 15.074885, 8.215503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.769626, 15.335804, 7.994735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597760, -0.184107, -0.780249,
		-0.610567, 0.735264, 0.294271,
		0.519511, 0.652297, -0.551921,
		15.925479, 15.531493, 7.829158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.036842, 15.508426, 7.822842>,  <15.561821, 15.074885, 8.215503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.036842, 15.508426, 7.822842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.386228, 15.542488, 7.631087>,  <15.595859, 15.562925, 7.516035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.386228, 15.542488, 7.631087>,  <15.036842, 15.508426, 7.822842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.386228, 15.542488, 7.631087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475888, -0.058828, -0.877536,
		-0.102930, 0.994629, -0.010859,
		0.873462, 0.085157, -0.479387,
		15.648266, 15.568035, 7.487271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.880147, 15.957067, 7.265640>,  <15.036842, 15.508426, 7.822842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.880147, 15.957067, 7.265640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.214136, 15.778955, 7.136307>,  <15.414530, 15.672088, 7.058707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.214136, 15.778955, 7.136307>,  <14.880147, 15.957067, 7.265640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.214136, 15.778955, 7.136307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377806, -0.036661, -0.925158,
		0.400102, 0.894640, -0.198841,
		0.834974, -0.445281, -0.323332,
		15.464628, 15.645371, 7.039308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.054511, 16.309032, 6.631847>,  <14.880147, 15.957067, 7.265640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.054511, 16.309032, 6.631847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.223215, 15.947414, 6.604074>,  <15.324437, 15.730444, 6.587410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.223215, 15.947414, 6.604074>,  <15.054511, 16.309032, 6.631847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.223215, 15.947414, 6.604074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429722, -0.131869, -0.893280,
		0.798409, 0.406587, -0.444105,
		0.421760, -0.904045, -0.069434,
		15.349743, 15.676201, 6.583244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.238770, 16.036036, 5.909709>,  <15.054511, 16.309032, 6.631847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.238770, 16.036036, 5.909709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.117053, 16.316235, 5.651498>,  <15.044023, 16.484354, 5.496571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.117053, 16.316235, 5.651498>,  <15.238770, 16.036036, 5.909709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.117053, 16.316235, 5.651498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352455, 0.712366, 0.606886,
		0.884976, -0.042849, -0.463661,
		-0.304292, 0.700499, -0.645529,
		15.025765, 16.526384, 5.457839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.790397, 16.458498, 5.672961>,  <15.238770, 16.036036, 5.909709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.790397, 16.458498, 5.672961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.419912, 16.606127, 5.703733>,  <15.197621, 16.694704, 5.722196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.419912, 16.606127, 5.703733>,  <15.790397, 16.458498, 5.672961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.419912, 16.606127, 5.703733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347273, 0.755792, 0.555140,
		0.146744, 0.540892, -0.828192,
		-0.926211, 0.369073, 0.076929,
		15.142049, 16.716848, 5.726812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.517427, 16.515205, 5.746259>,  <15.790397, 16.458498, 5.672961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.517427, 16.515205, 5.746259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.512535, 16.893768, 5.875357>,  <16.509600, 17.120905, 5.952816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.512535, 16.893768, 5.875357>,  <16.517427, 16.515205, 5.746259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.512535, 16.893768, 5.875357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509937, -0.271740, 0.816163,
		0.860125, 0.174564, -0.479284,
		-0.012232, 0.946406, 0.322747,
		16.508865, 17.177691, 5.972181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.206556, 16.738567, 6.043798>,  <16.517427, 16.515205, 5.746259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.206556, 16.738567, 6.043798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.914095, 16.958982, 6.204682>,  <16.738619, 17.091230, 6.301213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.914095, 16.958982, 6.204682>,  <17.206556, 16.738567, 6.043798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.914095, 16.958982, 6.204682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335672, -0.222684, 0.915279,
		0.593917, 0.804221, -0.022151,
		-0.731154, 0.551035, 0.402211,
		16.694748, 17.124292, 6.325346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.474983, 17.126947, 6.662240>,  <17.206556, 16.738567, 6.043798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.474983, 17.126947, 6.662240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.078659, 17.102068, 6.710277>,  <16.840864, 17.087139, 6.739099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.078659, 17.102068, 6.710277>,  <17.474983, 17.126947, 6.662240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.078659, 17.102068, 6.710277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115515, 0.072594, 0.990650,
		-0.070336, 0.995420, -0.064742,
		-0.990812, -0.062200, 0.120092,
		16.781416, 17.083408, 6.746305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.288286, 17.630001, 7.190512>,  <17.474983, 17.126947, 6.662240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.288286, 17.630001, 7.190512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.060389, 17.302164, 7.166317>,  <16.923649, 17.105461, 7.151801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.060389, 17.302164, 7.166317>,  <17.288286, 17.630001, 7.190512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.060389, 17.302164, 7.166317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058354, -0.033068, 0.997748,
		-0.819747, 0.571992, -0.028986,
		-0.569746, -0.819592, -0.060486,
		16.889465, 17.056286, 7.148172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.790844, 17.768980, 7.795909>,  <17.288286, 17.630001, 7.190512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.790844, 17.768980, 7.795909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.687420, 17.483166, 8.055936>,  <17.625364, 17.311678, 8.211952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.687420, 17.483166, 8.055936>,  <17.790844, 17.768980, 7.795909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.687420, 17.483166, 8.055936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951698, -0.073071, 0.298215,
		-0.165583, 0.695775, 0.698913,
		-0.258561, -0.714533, 0.650068,
		17.609852, 17.268806, 8.250957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.102720, 17.877775, 8.424853>,  <17.790844, 17.768980, 7.795909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.102720, 17.877775, 8.424853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.060072, 17.480259, 8.412136>,  <18.034483, 17.241749, 8.404506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.060072, 17.480259, 8.412136>,  <18.102720, 17.877775, 8.424853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.060072, 17.480259, 8.412136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872188, -0.108832, 0.476910,
		-0.477409, 0.023119, 0.878377,
		-0.106621, -0.993791, -0.031794,
		18.028086, 17.182121, 8.402597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.092386, 17.648312, 9.199880>,  <18.102720, 17.877775, 8.424853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.092386, 17.648312, 9.199880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.217588, 17.397371, 8.914655>,  <18.292709, 17.246807, 8.743520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.217588, 17.397371, 8.914655>,  <18.092386, 17.648312, 9.199880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.217588, 17.397371, 8.914655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803028, -0.226075, 0.551395,
		-0.507124, -0.745199, 0.433017,
		0.313005, -0.627350, -0.713063,
		18.311489, 17.209166, 8.700736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.398655, 16.977900, 9.461740>,  <18.092386, 17.648312, 9.199880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.398655, 16.977900, 9.461740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.547726, 17.014078, 9.092323>,  <18.637169, 17.035786, 8.870673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.547726, 17.014078, 9.092323>,  <18.398655, 16.977900, 9.461740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.547726, 17.014078, 9.092323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922338, -0.145504, 0.357941,
		-0.102005, -0.985215, -0.137649,
		0.372677, 0.090447, -0.923542,
		18.659529, 17.041212, 8.815261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.685413, 16.215498, 9.276894>,  <18.398655, 16.977900, 9.461740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.685413, 16.215498, 9.276894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.851122, 16.506378, 9.057966>,  <18.950548, 16.680906, 8.926610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.851122, 16.506378, 9.057966>,  <18.685413, 16.215498, 9.276894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.851122, 16.506378, 9.057966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902188, -0.248723, 0.352410,
		0.120142, -0.639779, -0.759110,
		0.414272, 0.727200, -0.547320,
		18.975403, 16.724539, 8.893770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.307007, 15.912045, 8.976857>,  <18.685413, 16.215498, 9.276894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.307007, 15.912045, 8.976857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.359612, 16.308540, 8.981759>,  <19.391174, 16.546438, 8.984700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.359612, 16.308540, 8.981759>,  <19.307007, 15.912045, 8.976857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.359612, 16.308540, 8.981759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892569, -0.123780, 0.433589,
		0.431307, -0.046082, -0.901027,
		0.131510, 0.991239, 0.012256,
		19.399065, 16.605911, 8.985435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.984482, 16.085501, 8.792106>,  <19.307007, 15.912045, 8.976857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.984482, 16.085501, 8.792106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.873081, 16.417664, 8.985127>,  <19.806240, 16.616961, 9.100941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.873081, 16.417664, 8.985127>,  <19.984482, 16.085501, 8.792106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.873081, 16.417664, 8.985127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845036, -0.026919, 0.534031,
		0.456453, 0.556506, -0.694228,
		-0.278503, 0.830408, 0.482555,
		19.789530, 16.666786, 9.129894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.666197, 16.543625, 8.788975>,  <19.984482, 16.085501, 8.792106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.666197, 16.543625, 8.788975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.424963, 16.653383, 9.088574>,  <20.280224, 16.719238, 9.268334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.424963, 16.653383, 9.088574>,  <20.666197, 16.543625, 8.788975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.424963, 16.653383, 9.088574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797672, 0.211214, 0.564897,
		-0.003195, 0.938135, -0.346256,
		-0.603083, 0.274394, 0.748998,
		20.244038, 16.735701, 9.313273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.081129, 17.044682, 9.058225>,  <20.666197, 16.543625, 8.788975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.081129, 17.044682, 9.058225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.803343, 16.963259, 9.334278>,  <20.636671, 16.914406, 9.499910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.803343, 16.963259, 9.334278>,  <21.081129, 17.044682, 9.058225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.803343, 16.963259, 9.334278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653344, 0.223421, 0.723343,
		-0.301432, 0.953230, -0.022166,
		-0.694464, -0.203557, 0.690133,
		20.595003, 16.902191, 9.541318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.152164, 17.629042, 9.583873>,  <21.081129, 17.044682, 9.058225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.152164, 17.629042, 9.583873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.976164, 17.308802, 9.746568>,  <20.870564, 17.116657, 9.844185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.976164, 17.308802, 9.746568>,  <21.152164, 17.629042, 9.583873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.976164, 17.308802, 9.746568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549154, 0.118482, 0.827280,
		-0.710512, 0.587367, 0.387521,
		-0.440003, -0.800601, 0.406738,
		20.844164, 17.068621, 9.868589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.231478, 17.745312, 10.277895>,  <21.152164, 17.629042, 9.583873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.231478, 17.745312, 10.277895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.186470, 17.348373, 10.257543>,  <21.159466, 17.110210, 10.245331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.186470, 17.348373, 10.257543>,  <21.231478, 17.745312, 10.277895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.186470, 17.348373, 10.257543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856878, -0.122831, 0.500673,
		-0.503090, 0.012736, 0.864140,
		-0.112519, -0.992346, -0.050882,
		21.152714, 17.050669, 10.242278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.182560, 17.516285, 10.984454>,  <21.231478, 17.745312, 10.277895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.182560, 17.516285, 10.984454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.267036, 17.173031, 10.797262>,  <21.317722, 16.967079, 10.684947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.267036, 17.173031, 10.797262>,  <21.182560, 17.516285, 10.984454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.267036, 17.173031, 10.797262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719484, -0.187602, 0.668691,
		-0.661621, -0.477925, 0.577794,
		0.211189, -0.858133, -0.467981,
		21.330393, 16.915590, 10.656868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.065945, 16.931190, 11.527662>,  <21.182560, 17.516285, 10.984454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.065945, 16.931190, 11.527662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.305120, 16.795879, 11.236998>,  <21.448626, 16.714693, 11.062599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.305120, 16.795879, 11.236998>,  <21.065945, 16.931190, 11.527662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.305120, 16.795879, 11.236998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729982, -0.144613, 0.667992,
		-0.331053, -0.929868, 0.160468,
		0.597938, -0.338279, -0.726661,
		21.484503, 16.694395, 11.018999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.344812, 16.362209, 11.777685>,  <21.065945, 16.931190, 11.527662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.344812, 16.362209, 11.777685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.602970, 16.483789, 11.497377>,  <21.757866, 16.556738, 11.329192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.602970, 16.483789, 11.497377>,  <21.344812, 16.362209, 11.777685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.602970, 16.483789, 11.497377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763491, -0.284738, 0.579660,
		-0.023349, -0.909142, -0.415832,
		0.645396, 0.303950, -0.700770,
		21.796589, 16.574974, 11.287147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.791191, 15.742673, 11.671726>,  <21.344812, 16.362209, 11.777685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.791191, 15.742673, 11.671726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.976486, 16.085152, 11.580215>,  <22.087664, 16.290638, 11.525309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.976486, 16.085152, 11.580215>,  <21.791191, 15.742673, 11.671726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.976486, 16.085152, 11.580215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782005, -0.273441, 0.560088,
		0.416989, -0.438358, -0.796218,
		0.463237, 0.856196, -0.228777,
		22.115458, 16.342010, 11.511582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.527140, 15.519602, 11.546751>,  <21.791191, 15.742673, 11.671726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.527140, 15.519602, 11.546751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.578661, 15.914948, 11.579106>,  <22.609573, 16.152157, 11.598519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.578661, 15.914948, 11.579106>,  <22.527140, 15.519602, 11.546751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.578661, 15.914948, 11.579106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882320, -0.151452, 0.445616,
		0.452682, 0.013974, -0.891562,
		0.128802, 0.988366, 0.080889,
		22.617302, 16.211458, 11.603373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.246237, 15.670286, 11.346117>,  <22.527140, 15.519602, 11.546751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.246237, 15.670286, 11.346117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.143274, 15.991204, 11.561547>,  <23.081497, 16.183756, 11.690805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.143274, 15.991204, 11.561547>,  <23.246237, 15.670286, 11.346117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.143274, 15.991204, 11.561547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761821, -0.174382, 0.623874,
		0.594450, 0.570887, -0.566319,
		-0.257406, 0.802296, 0.538575,
		23.066053, 16.231894, 11.723120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.760738, 16.058611, 11.664751>,  <23.246237, 15.670286, 11.346117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.760738, 16.058611, 11.664751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.451458, 16.143726, 11.903708>,  <23.265890, 16.194796, 12.047083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.451458, 16.143726, 11.903708>,  <23.760738, 16.058611, 11.664751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.451458, 16.143726, 11.903708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567804, -0.187221, 0.801590,
		0.282414, 0.958994, 0.023937,
		-0.773202, 0.212789, 0.597394,
		23.219498, 16.207563, 12.082927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.033035, 16.387493, 12.259881>,  <23.760738, 16.058611, 11.664751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.033035, 16.387493, 12.259881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.685740, 16.235739, 12.387774>,  <23.477362, 16.144686, 12.464510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.685740, 16.235739, 12.387774>,  <24.033035, 16.387493, 12.259881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.685740, 16.235739, 12.387774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452611, -0.341670, 0.823653,
		-0.203240, 0.859841, 0.468366,
		-0.868238, -0.379387, 0.319733,
		23.425268, 16.121923, 12.483694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.090860, 16.530766, 12.947589>,  <24.033035, 16.387493, 12.259881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.090860, 16.530766, 12.947589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.791767, 16.273357, 12.882133>,  <23.612310, 16.118912, 12.842860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.791767, 16.273357, 12.882133>,  <24.090860, 16.530766, 12.947589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.791767, 16.273357, 12.882133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331504, -0.575327, 0.747733,
		-0.575327, 0.504857, 0.643520,
		-0.747733, -0.643520, -0.163638,
		23.567448, 16.080301, 12.833042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.848303, 16.406862, 13.553679>,  <24.090860, 16.530766, 12.947589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.848303, 16.406862, 13.553679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.761887, 16.100601, 13.311321>,  <23.710037, 15.916845, 13.165907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.761887, 16.100601, 13.311321>,  <23.848303, 16.406862, 13.553679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.761887, 16.100601, 13.311321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205516, -0.642304, 0.738383,
		-0.954511, 0.034998, 0.296116,
		-0.216038, -0.765651, -0.605893,
		23.697075, 15.870906, 13.129553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.198790, 16.614796, 14.123782>,  <23.848303, 16.406862, 13.553679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.198790, 16.614796, 14.123782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.178911, 16.547676, 14.517610>,  <24.166985, 16.507404, 14.753906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.178911, 16.547676, 14.517610>,  <24.198790, 16.614796, 14.123782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.178911, 16.547676, 14.517610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926892, -0.374939, -0.017115,
		0.372025, 0.911738, 0.174162,
		-0.049696, -0.167796, 0.984568,
		24.164001, 16.497337, 14.812980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.900028, 16.429277, 14.041253>,  <24.198790, 16.614796, 14.123782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.900028, 16.429277, 14.041253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.872282, 16.363628, 14.434853>,  <24.855635, 16.324238, 14.671012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.872282, 16.363628, 14.434853>,  <24.900028, 16.429277, 14.041253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.872282, 16.363628, 14.434853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900592, -0.434572, -0.008999,
		0.429095, 0.885557, 0.177953,
		-0.069364, -0.164124, 0.983998,
		24.851473, 16.314390, 14.730052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.326359, 16.676546, 14.427430>,  <24.900028, 16.429277, 14.041253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.326359, 16.676546, 14.427430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.264437, 16.321148, 14.600224>,  <25.227283, 16.107908, 14.703901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.264437, 16.321148, 14.600224>,  <25.326359, 16.676546, 14.427430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.264437, 16.321148, 14.600224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976140, -0.204950, -0.071732,
		0.152269, 0.410575, 0.899023,
		-0.154804, -0.888495, 0.431986,
		25.217995, 16.054600, 14.729820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.993082, 16.411921, 14.576774>,  <25.326359, 16.676546, 14.427430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.993082, 16.411921, 14.576774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.804527, 16.062897, 14.628054>,  <25.691395, 15.853482, 14.658822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.804527, 16.062897, 14.628054>,  <25.993082, 16.411921, 14.576774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.804527, 16.062897, 14.628054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854878, -0.487801, -0.176733,
		0.216746, 0.026287, 0.975874,
		-0.471386, -0.872559, 0.128201,
		25.663111, 15.801129, 14.666513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.192488, 15.985347, 15.113126>,  <25.993082, 16.411921, 14.576774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.192488, 15.985347, 15.113126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.054140, 15.735031, 14.833480>,  <25.971130, 15.584842, 14.665692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.054140, 15.735031, 14.833480>,  <26.192488, 15.985347, 15.113126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.054140, 15.735031, 14.833480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862310, -0.505709, 0.026061,
		-0.369857, -0.593840, 0.714535,
		-0.345871, -0.625790, -0.699114,
		25.950378, 15.547295, 14.623746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.203552, 15.222954, 15.292398>,  <26.192488, 15.985347, 15.113126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.203552, 15.222954, 15.292398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280441, 15.278440, 14.903799>,  <26.326574, 15.311731, 14.670639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280441, 15.278440, 14.903799>,  <26.203552, 15.222954, 15.292398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.280441, 15.278440, 14.903799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846573, -0.524145, 0.092664,
		-0.496352, -0.840256, -0.218184,
		0.192221, 0.138715, -0.971498,
		26.338108, 15.320054, 14.612350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.315546, 14.571934, 14.990942>,  <26.203552, 15.222954, 15.292398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.315546, 14.571934, 14.990942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.527267, 14.893003, 14.880996>,  <26.654301, 15.085646, 14.815028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.527267, 14.893003, 14.880996>,  <26.315546, 14.571934, 14.990942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.527267, 14.893003, 14.880996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838213, -0.444593, 0.315812,
		0.131290, -0.397556, -0.908136,
		0.529304, 0.802674, -0.274866,
		26.686058, 15.133806, 14.798536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<13.836572, 21.844482, 24.791225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.706888, 21.502802, 24.953819>,  <13.629078, 21.297794, 25.051376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.706888, 21.502802, 24.953819>,  <13.836572, 21.844482, 24.791225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.706888, 21.502802, 24.953819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222336, -0.348851, -0.910423,
		0.919486, -0.385544, -0.076819,
		-0.324209, -0.854201, 0.406484,
		13.609625, 21.246542, 25.075764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.260195, 21.239294, 24.479204>,  <13.836572, 21.844482, 24.791225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.260195, 21.239294, 24.479204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.910917, 21.091841, 24.606730>,  <13.701351, 21.003368, 24.683245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.910917, 21.091841, 24.606730>,  <14.260195, 21.239294, 24.479204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.910917, 21.091841, 24.606730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150782, -0.417728, -0.895973,
		0.463464, -0.830429, 0.309174,
		-0.873193, -0.368633, 0.318816,
		13.648959, 20.981251, 24.702374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.243640, 20.613089, 24.296129>,  <14.260195, 21.239294, 24.479204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.243640, 20.613089, 24.296129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.848082, 20.652008, 24.341059>,  <13.610746, 20.675360, 24.368017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.848082, 20.652008, 24.341059>,  <14.243640, 20.613089, 24.296129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.848082, 20.652008, 24.341059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139768, -0.352183, -0.925436,
		-0.050484, -0.930860, 0.361871,
		-0.988896, 0.097298, 0.112325,
		13.551413, 20.681198, 24.374756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.983647, 20.139133, 23.935419>,  <14.243640, 20.613089, 24.296129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.983647, 20.139133, 23.935419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.640704, 20.341234, 23.974726>,  <13.434938, 20.462494, 23.998310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.640704, 20.341234, 23.974726>,  <13.983647, 20.139133, 23.935419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.640704, 20.341234, 23.974726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259075, -0.258630, -0.930586,
		-0.444766, -0.823305, 0.352637,
		-0.857359, 0.505252, 0.098268,
		13.383496, 20.492809, 24.004206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.349006, 19.723076, 23.712553>,  <13.983647, 20.139133, 23.935419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.349006, 19.723076, 23.712553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.218122, 20.093555, 23.637629>,  <13.139592, 20.315844, 23.592674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.218122, 20.093555, 23.637629>,  <13.349006, 19.723076, 23.712553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.218122, 20.093555, 23.637629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007503, -0.195672, -0.980640,
		-0.944922, -0.322280, 0.057076,
		-0.327209, 0.926201, -0.187313,
		13.119960, 20.371416, 23.581434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.817661, 19.675888, 23.254377>,  <13.349006, 19.723076, 23.712553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.817661, 19.675888, 23.254377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.930082, 20.059221, 23.233961>,  <12.997535, 20.289221, 23.221712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.930082, 20.059221, 23.233961>,  <12.817661, 19.675888, 23.254377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.930082, 20.059221, 23.233961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008937, -0.055795, -0.998402,
		-0.959651, 0.280148, -0.024246,
		0.281053, 0.958334, -0.051040,
		13.014399, 20.346722, 23.218649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.413204, 19.931078, 22.646471>,  <12.817661, 19.675888, 23.254377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.413204, 19.931078, 22.646471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.715209, 20.186441, 22.706326>,  <12.896412, 20.339659, 22.742239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.715209, 20.186441, 22.706326>,  <12.413204, 19.931078, 22.646471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.715209, 20.186441, 22.706326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165499, 0.035282, -0.985579,
		-0.634481, 0.768889, -0.079018,
		0.755013, 0.638408, 0.149636,
		12.941713, 20.377964, 22.751217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.326515, 20.508991, 22.120277>,  <12.413204, 19.931078, 22.646471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.326515, 20.508991, 22.120277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.715441, 20.511574, 22.213713>,  <12.948796, 20.513124, 22.269773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.715441, 20.511574, 22.213713>,  <12.326515, 20.508991, 22.120277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.715441, 20.511574, 22.213713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233334, 0.027252, -0.972015,
		-0.012643, 0.999608, 0.024990,
		0.972315, 0.006458, 0.233587,
		13.007135, 20.513512, 22.283789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.638040, 20.898952, 21.496239>,  <12.326515, 20.508991, 22.120277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.638040, 20.898952, 21.496239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.940216, 20.711390, 21.679295>,  <13.121522, 20.598852, 21.789127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.940216, 20.711390, 21.679295>,  <12.638040, 20.898952, 21.496239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.940216, 20.711390, 21.679295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335568, -0.323014, -0.884904,
		0.562763, 0.822062, -0.086667,
		0.755441, -0.468909, 0.457638,
		13.166848, 20.570717, 21.816586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.330042, 21.089071, 21.160915>,  <12.638040, 20.898952, 21.496239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.330042, 21.089071, 21.160915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.430456, 20.765335, 21.373312>,  <13.490705, 20.571095, 21.500750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.430456, 20.765335, 21.373312>,  <13.330042, 21.089071, 21.160915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.430456, 20.765335, 21.373312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649382, -0.265988, -0.712428,
		0.717832, 0.523662, 0.458797,
		0.251037, -0.809339, 0.530991,
		13.505767, 20.522533, 21.532610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.039875, 21.074957, 21.193388>,  <13.330042, 21.089071, 21.160915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.039875, 21.074957, 21.193388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.898613, 20.703510, 21.238914>,  <13.813855, 20.480642, 21.266232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.898613, 20.703510, 21.238914>,  <14.039875, 21.074957, 21.193388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.898613, 20.703510, 21.238914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607929, -0.320248, -0.726542,
		0.711128, -0.187389, 0.677630,
		-0.353156, -0.928615, 0.113818,
		13.792666, 20.424925, 21.273060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.599850, 20.618029, 21.141819>,  <14.039875, 21.074957, 21.193388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.599850, 20.618029, 21.141819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.277863, 20.407202, 21.032839>,  <14.084670, 20.280706, 20.967451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.277863, 20.407202, 21.032839>,  <14.599850, 20.618029, 21.141819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.277863, 20.407202, 21.032839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502462, -0.361377, -0.785455,
		0.315530, -0.769161, 0.555727,
		-0.804968, -0.527066, -0.272449,
		14.036372, 20.249083, 20.951105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.853151, 20.041006, 20.847784>,  <14.599850, 20.618029, 21.141819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.853151, 20.041006, 20.847784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.467814, 20.009689, 20.745144>,  <14.236612, 19.990898, 20.683559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.467814, 20.009689, 20.745144>,  <14.853151, 20.041006, 20.847784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.467814, 20.009689, 20.745144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263891, -0.448800, -0.853780,
		-0.048315, -0.890196, 0.453009,
		-0.963342, -0.078295, -0.256598,
		14.178812, 19.986200, 20.668165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.696426, 19.242571, 20.656172>,  <14.853151, 20.041006, 20.847784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.696426, 19.242571, 20.656172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.437942, 19.493822, 20.482798>,  <14.282850, 19.644573, 20.378773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.437942, 19.493822, 20.482798>,  <14.696426, 19.242571, 20.656172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.437942, 19.493822, 20.482798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078361, -0.510333, -0.856399,
		-0.759124, -0.587380, 0.280562,
		-0.646212, 0.628128, -0.433434,
		14.244078, 19.682261, 20.352768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.228129, 18.744473, 20.329611>,  <14.696426, 19.242571, 20.656172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.228129, 18.744473, 20.329611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.233583, 19.111031, 20.169594>,  <14.236856, 19.330965, 20.073584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.233583, 19.111031, 20.169594>,  <14.228129, 18.744473, 20.329611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.233583, 19.111031, 20.169594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085637, -0.399678, -0.912647,
		-0.996233, -0.021814, -0.083927,
		0.013635, 0.916396, -0.400040,
		14.237674, 19.385950, 20.049582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.028272, 18.579557, 19.607920>,  <14.228129, 18.744473, 20.329611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.028272, 18.579557, 19.607920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.132458, 18.960424, 19.544004>,  <14.194969, 19.188946, 19.505655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.132458, 18.960424, 19.544004>,  <14.028272, 18.579557, 19.607920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.132458, 18.960424, 19.544004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136475, -0.200148, -0.970214,
		-0.955789, 0.230900, -0.182079,
		0.260465, 0.952169, -0.159787,
		14.210597, 19.246075, 19.496069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.660740, 18.779781, 19.030565>,  <14.028272, 18.579557, 19.607920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.660740, 18.779781, 19.030565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.977200, 19.024261, 19.039658>,  <14.167075, 19.170950, 19.045113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.977200, 19.024261, 19.039658>,  <13.660740, 18.779781, 19.030565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.977200, 19.024261, 19.039658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093735, -0.084436, -0.992010,
		-0.604398, 0.786959, -0.124092,
		0.791149, 0.611201, 0.022733,
		14.214544, 19.207623, 19.046478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.541579, 19.313379, 18.546091>,  <13.660740, 18.779781, 19.030565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.541579, 19.313379, 18.546091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.935676, 19.344110, 18.607275>,  <14.172133, 19.362549, 18.643986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.935676, 19.344110, 18.607275>,  <13.541579, 19.313379, 18.546091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.935676, 19.344110, 18.607275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149170, 0.052903, -0.987395,
		-0.083950, 0.995640, 0.040662,
		0.985241, 0.076827, 0.152961,
		14.231248, 19.367159, 18.653164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.685090, 19.844482, 18.184896>,  <13.541579, 19.313379, 18.546091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.685090, 19.844482, 18.184896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.044430, 19.670740, 18.211142>,  <14.260034, 19.566496, 18.226889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.044430, 19.670740, 18.211142>,  <13.685090, 19.844482, 18.184896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.044430, 19.670740, 18.211142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135438, 0.131783, -0.981983,
		0.417882, 0.891049, 0.177215,
		0.898349, -0.434355, 0.065612,
		14.313934, 19.540434, 18.230825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.131827, 20.198244, 17.746483>,  <13.685090, 19.844482, 18.184896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.131827, 20.198244, 17.746483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.335494, 19.859068, 17.805470>,  <14.457694, 19.655561, 17.840862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.335494, 19.859068, 17.805470>,  <14.131827, 20.198244, 17.746483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.335494, 19.859068, 17.805470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371122, 0.061716, -0.926531,
		0.776541, 0.526488, 0.346113,
		0.509168, -0.847940, 0.147466,
		14.488244, 19.604687, 17.849709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.817250, 20.393761, 17.483257>,  <14.131827, 20.198244, 17.746483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.817250, 20.393761, 17.483257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.770547, 19.997614, 17.453480>,  <14.742525, 19.759926, 17.435614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.770547, 19.997614, 17.453480>,  <14.817250, 20.393761, 17.483257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.770547, 19.997614, 17.453480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319258, 0.033553, -0.947074,
		0.940448, -0.134346, 0.312265,
		-0.116758, -0.990366, -0.074445,
		14.735519, 19.700504, 17.431147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.318614, 20.193098, 17.071131>,  <14.817250, 20.393761, 17.483257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.318614, 20.193098, 17.071131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.075390, 19.875635, 17.063391>,  <14.929456, 19.685158, 17.058746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.075390, 19.875635, 17.063391>,  <15.318614, 20.193098, 17.071131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.075390, 19.875635, 17.063391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284915, -0.195409, -0.938424,
		0.741004, -0.576130, 0.344944,
		-0.608060, -0.793656, -0.019349,
		14.892972, 19.637539, 17.057587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.334496, 19.889067, 17.680624>,  <15.318614, 20.193098, 17.071131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.334496, 19.889067, 17.680624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.616629, 20.068077, 17.460722>,  <15.785908, 20.175484, 17.328781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.616629, 20.068077, 17.460722>,  <15.334496, 19.889067, 17.680624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.616629, 20.068077, 17.460722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164325, 0.651178, 0.740922,
		0.689574, -0.612930, 0.385752,
		0.705326, 0.447531, -0.549755,
		15.828228, 20.202335, 17.295795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.999645, 19.860329, 18.020498>,  <15.334496, 19.889067, 17.680624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.999645, 19.860329, 18.020498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.042467, 20.177359, 17.780376>,  <16.068161, 20.367577, 17.636303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.042467, 20.177359, 17.780376>,  <15.999645, 19.860329, 18.020498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.042467, 20.177359, 17.780376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290991, 0.552359, 0.781168,
		0.950718, -0.258310, -0.171500,
		0.107054, 0.792575, -0.600303,
		16.074583, 20.415131, 17.600285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.680380, 20.201874, 18.311520>,  <15.999645, 19.860329, 18.020498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.680380, 20.201874, 18.311520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.505663, 20.475187, 18.077484>,  <16.400833, 20.639175, 17.937063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.505663, 20.475187, 18.077484>,  <16.680380, 20.201874, 18.311520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.505663, 20.475187, 18.077484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237446, 0.714926, 0.657647,
		0.867658, 0.148329, -0.474519,
		-0.436795, 0.683285, -0.585091,
		16.374624, 20.680172, 17.901957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.147057, 20.751867, 18.216934>,  <16.680380, 20.201874, 18.311520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.147057, 20.751867, 18.216934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.776409, 20.886599, 18.150089>,  <16.554022, 20.967438, 18.109982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.776409, 20.886599, 18.150089>,  <17.147057, 20.751867, 18.216934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.776409, 20.886599, 18.150089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062394, 0.576018, 0.815052,
		0.370794, 0.744814, -0.554765,
		-0.926617, 0.336830, -0.167112,
		16.498425, 20.987648, 18.099957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.208170, 21.371733, 18.321432>,  <17.147057, 20.751867, 18.216934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.208170, 21.371733, 18.321432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.810099, 21.335484, 18.336430>,  <16.571255, 21.313734, 18.345428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.810099, 21.335484, 18.336430>,  <17.208170, 21.371733, 18.321432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.810099, 21.335484, 18.336430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028149, 0.630163, 0.775952,
		-0.093945, 0.771156, -0.629676,
		-0.995179, -0.090622, 0.037494,
		16.511545, 21.308296, 18.347677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.820892, 22.068981, 18.098766>,  <17.208170, 21.371733, 18.321432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.820892, 22.068981, 18.098766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.583366, 21.847013, 18.331816>,  <16.440851, 21.713833, 18.471645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.583366, 21.847013, 18.331816>,  <16.820892, 22.068981, 18.098766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.583366, 21.847013, 18.331816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019236, 0.714115, 0.699764,
		-0.804373, 0.426737, -0.413377,
		-0.593814, -0.554919, 0.582624,
		16.405222, 21.680538, 18.506603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.555880, 22.553484, 18.456184>,  <16.820892, 22.068981, 18.098766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.555880, 22.553484, 18.456184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.399979, 22.242887, 18.654238>,  <16.306438, 22.056530, 18.773069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.399979, 22.242887, 18.654238>,  <16.555880, 22.553484, 18.456184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.399979, 22.242887, 18.654238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030006, 0.548072, 0.835893,
		-0.920430, 0.310935, -0.236912,
		-0.389753, -0.776490, 0.495132,
		16.283052, 22.009941, 18.802778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.968428, 22.785097, 18.809034>,  <16.555880, 22.553484, 18.456184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.968428, 22.785097, 18.809034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.029787, 22.448067, 19.015543>,  <16.066603, 22.245850, 19.139448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.029787, 22.448067, 19.015543>,  <15.968428, 22.785097, 18.809034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.029787, 22.448067, 19.015543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147620, 0.497054, 0.855070,
		-0.977076, -0.207378, -0.048134,
		0.153398, -0.842574, 0.516273,
		16.075806, 22.195295, 19.170425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.284532, 22.548367, 19.173058>,  <15.968428, 22.785097, 18.809034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.284532, 22.548367, 19.173058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.587713, 22.362982, 19.356670>,  <15.769622, 22.251751, 19.466837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.587713, 22.362982, 19.356670>,  <15.284532, 22.548367, 19.173058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.587713, 22.362982, 19.356670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355937, 0.295860, 0.886440,
		-0.546639, -0.835267, 0.059285,
		0.757954, -0.463460, 0.459031,
		15.815100, 22.223944, 19.494379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.959441, 22.169495, 19.810316>,  <15.284532, 22.548367, 19.173058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.959441, 22.169495, 19.810316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.350268, 22.233778, 19.866190>,  <15.584764, 22.272348, 19.899715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.350268, 22.233778, 19.866190>,  <14.959441, 22.169495, 19.810316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.350268, 22.233778, 19.866190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186387, 0.328327, 0.925992,
		0.102951, -0.930793, 0.350751,
		0.977068, 0.160708, 0.139686,
		15.643389, 22.281990, 19.908096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.141988, 21.786339, 20.514887>,  <14.959441, 22.169495, 19.810316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.141988, 21.786339, 20.514887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.442655, 22.043020, 20.453945>,  <15.623055, 22.197029, 20.417379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.442655, 22.043020, 20.453945>,  <15.141988, 21.786339, 20.514887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.442655, 22.043020, 20.453945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047387, 0.282949, 0.957964,
		0.657839, -0.712849, 0.243092,
		0.751666, 0.641705, -0.152356,
		15.668155, 22.235531, 20.408239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.447913, 21.724970, 21.063356>,  <15.141988, 21.786339, 20.514887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.447913, 21.724970, 21.063356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.561835, 22.090790, 20.948479>,  <15.630188, 22.310282, 20.879551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.561835, 22.090790, 20.948479>,  <15.447913, 21.724970, 21.063356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.561835, 22.090790, 20.948479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210749, 0.352012, 0.911960,
		0.935132, -0.199204, 0.292996,
		0.284804, 0.914552, -0.287196,
		15.647277, 22.365156, 20.862320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.965106, 21.941792, 21.580849>,  <15.447913, 21.724970, 21.063356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.965106, 21.941792, 21.580849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.851684, 22.265337, 21.374805>,  <15.783630, 22.459465, 21.251181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.851684, 22.265337, 21.374805>,  <15.965106, 21.941792, 21.580849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.851684, 22.265337, 21.374805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080506, 0.515178, 0.853293,
		0.955570, 0.283426, -0.080964,
		-0.283556, 0.808864, -0.515107,
		15.766617, 22.507996, 21.220274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.342356, 22.491264, 21.971743>,  <15.965106, 21.941792, 21.580849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.342356, 22.491264, 21.971743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.047409, 22.670631, 21.769670>,  <15.870440, 22.778252, 21.648428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.047409, 22.670631, 21.769670>,  <16.342356, 22.491264, 21.971743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.047409, 22.670631, 21.769670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156930, 0.613690, 0.773794,
		0.657008, 0.649850, -0.382146,
		-0.737369, 0.448419, -0.505181,
		15.826199, 22.805157, 21.618116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.377947, 23.173662, 22.037125>,  <16.342356, 22.491264, 21.971743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.377947, 23.173662, 22.037125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.994185, 23.118248, 21.938854>,  <15.763929, 23.084999, 21.879892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.994185, 23.118248, 21.938854>,  <16.377947, 23.173662, 22.037125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.994185, 23.118248, 21.938854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273675, 0.667863, 0.692142,
		0.068193, 0.731278, -0.678662,
		-0.959402, -0.138534, -0.245676,
		15.706365, 23.076689, 21.865152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.055325, 23.846348, 21.846334>,  <16.377947, 23.173662, 22.037125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.055325, 23.846348, 21.846334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.764227, 23.602789, 21.972595>,  <15.589569, 23.456654, 22.048351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.764227, 23.602789, 21.972595>,  <16.055325, 23.846348, 21.846334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.764227, 23.602789, 21.972595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323934, 0.710820, 0.624341,
		-0.604531, 0.352109, -0.714536,
		-0.727742, -0.608896, 0.315653,
		15.545904, 23.420120, 22.067291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.468613, 24.259567, 21.913725>,  <16.055325, 23.846348, 21.846334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.468613, 24.259567, 21.913725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.428415, 23.932816, 22.140919>,  <15.404297, 23.736765, 22.277235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.428415, 23.932816, 22.140919>,  <15.468613, 24.259567, 21.913725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.428415, 23.932816, 22.140919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355108, 0.562724, 0.746485,
		-0.929408, -0.126680, -0.346630,
		-0.100493, -0.816880, 0.567986,
		15.398268, 23.687752, 22.311314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.970465, 24.527544, 22.460104>,  <15.468613, 24.259567, 21.913725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.970465, 24.527544, 22.460104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.025330, 24.159473, 22.606779>,  <15.058249, 23.938631, 22.694784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.025330, 24.159473, 22.606779>,  <14.970465, 24.527544, 22.460104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.025330, 24.159473, 22.606779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280321, 0.318994, 0.905352,
		-0.950056, -0.226970, -0.214192,
		0.137162, -0.920178, 0.366687,
		15.066478, 23.883421, 22.716785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<14.110524, 23.818840, 23.054482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.476519, 23.674383, 23.126453>,  <14.696115, 23.587709, 23.169636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.476519, 23.674383, 23.126453>,  <14.110524, 23.818840, 23.054482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.476519, 23.674383, 23.126453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133323, 0.150274, 0.979613,
		-0.380821, -0.920321, 0.089350,
		0.914987, -0.361145, 0.179928,
		14.751015, 23.566040, 23.180431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.011631, 23.457529, 23.615091>,  <14.110524, 23.818840, 23.054482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.011631, 23.457529, 23.615091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.410736, 23.461296, 23.641563>,  <14.650199, 23.463556, 23.657446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.410736, 23.461296, 23.641563>,  <14.011631, 23.457529, 23.615091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.410736, 23.461296, 23.641563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063659, -0.168138, 0.983706,
		0.020395, -0.985718, -0.167163,
		0.997763, 0.009421, 0.066179,
		14.710065, 23.464123, 23.661417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.279262, 22.801165, 24.049469>,  <14.011631, 23.457529, 23.615091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.279262, 22.801165, 24.049469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.592129, 23.049835, 24.066135>,  <14.779849, 23.199038, 24.076136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.592129, 23.049835, 24.066135>,  <14.279262, 22.801165, 24.049469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.592129, 23.049835, 24.066135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191559, -0.303565, 0.933356,
		0.592892, -0.722059, -0.356526,
		0.782167, 0.621675, 0.041664,
		14.826778, 23.236338, 24.078634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.854816, 22.416525, 24.400068>,  <14.279262, 22.801165, 24.049469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.854816, 22.416525, 24.400068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.870725, 22.815186, 24.428646>,  <14.880270, 23.054382, 24.445793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.870725, 22.815186, 24.428646>,  <14.854816, 22.416525, 24.400068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.870725, 22.815186, 24.428646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172518, -0.077277, 0.981970,
		0.984203, -0.026729, -0.175014,
		0.039771, 0.996651, 0.071445,
		14.882656, 23.114182, 24.450079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.429849, 22.594381, 24.789387>,  <14.854816, 22.416525, 24.400068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.429849, 22.594381, 24.789387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.236451, 22.944147, 24.805538>,  <15.120413, 23.154007, 24.815229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.236451, 22.944147, 24.805538>,  <15.429849, 22.594381, 24.789387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.236451, 22.944147, 24.805538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284989, 0.113630, 0.951772,
		0.827656, 0.471684, -0.304138,
		-0.483495, 0.874416, 0.040378,
		15.091403, 23.206472, 24.817652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.867998, 23.018965, 25.047516>,  <15.429849, 22.594381, 24.789387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.867998, 23.018965, 25.047516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.521015, 23.205877, 25.115831>,  <15.312825, 23.318024, 25.156820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.521015, 23.205877, 25.115831>,  <15.867998, 23.018965, 25.047516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.521015, 23.205877, 25.115831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307443, 0.233587, 0.922451,
		0.391149, 0.852694, -0.346288,
		-0.867457, 0.467279, 0.170787,
		15.260778, 23.346062, 25.167067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.002726, 23.645664, 25.480623>,  <15.867998, 23.018965, 25.047516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.002726, 23.645664, 25.480623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.619591, 23.546036, 25.537909>,  <15.389709, 23.486259, 25.572281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.619591, 23.546036, 25.537909>,  <16.002726, 23.645664, 25.480623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.619591, 23.546036, 25.537909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058768, 0.318084, 0.946239,
		-0.281233, 0.914761, -0.290036,
		-0.957838, -0.249069, 0.143214,
		15.332239, 23.471315, 25.580873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.777756, 24.191460, 25.903450>,  <16.002726, 23.645664, 25.480623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.777756, 24.191460, 25.903450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.482327, 23.925972, 25.950750>,  <15.305069, 23.766680, 25.979132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.482327, 23.925972, 25.950750>,  <15.777756, 24.191460, 25.903450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.482327, 23.925972, 25.950750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041696, 0.220039, 0.974600,
		-0.672882, 0.714883, -0.190190,
		-0.738574, -0.663721, 0.118252,
		15.260755, 23.726856, 25.986225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.307297, 24.540709, 26.304716>,  <15.777756, 24.191460, 25.903450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.307297, 24.540709, 26.304716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.296664, 24.143349, 26.349346>,  <15.290285, 23.904932, 26.376123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.296664, 24.143349, 26.349346>,  <15.307297, 24.540709, 26.304716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.296664, 24.143349, 26.349346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139561, 0.114208, 0.983605,
		-0.989857, 0.010574, -0.141676,
		-0.026581, -0.993400, 0.111574,
		15.288690, 23.845329, 26.382818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.627056, 24.413906, 26.606260>,  <15.307297, 24.540709, 26.304716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.627056, 24.413906, 26.606260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.930931, 24.169491, 26.695259>,  <15.113256, 24.022840, 26.748659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.930931, 24.169491, 26.695259>,  <14.627056, 24.413906, 26.606260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.930931, 24.169491, 26.695259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141066, 0.179156, 0.973655,
		-0.634803, -0.771060, 0.049906,
		0.759688, -0.611040, 0.222499,
		15.158837, 23.986179, 26.762009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.555850, 24.453671, 27.254452>,  <14.627056, 24.413906, 26.606260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.555850, 24.453671, 27.254452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.873935, 24.217936, 27.197428>,  <15.064785, 24.076494, 27.163214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.873935, 24.217936, 27.197428>,  <14.555850, 24.453671, 27.254452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.873935, 24.217936, 27.197428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119230, -0.078541, 0.989755,
		-0.594495, -0.804062, 0.007810,
		0.795211, -0.589336, -0.142561,
		15.112498, 24.041136, 27.154659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.458090, 24.021612, 27.647537>,  <14.555850, 24.453671, 27.254452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.458090, 24.021612, 27.647537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.853914, 24.007685, 27.591597>,  <15.091409, 23.999329, 27.558031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.853914, 24.007685, 27.591597>,  <14.458090, 24.021612, 27.647537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.853914, 24.007685, 27.591597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137328, -0.066635, 0.988282,
		-0.043723, -0.997170, -0.061159,
		0.989560, -0.034812, -0.139853,
		15.150783, 23.997240, 27.549641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.688107, 23.588743, 28.166594>,  <14.458090, 24.021612, 27.647537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.688107, 23.588743, 28.166594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.025286, 23.774286, 28.057579>,  <15.227593, 23.885612, 27.992170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.025286, 23.774286, 28.057579>,  <14.688107, 23.588743, 28.166594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.025286, 23.774286, 28.057579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155809, 0.274382, 0.948914,
		0.514940, -0.842348, 0.159017,
		0.842948, 0.463857, -0.272536,
		15.278171, 23.913443, 27.975819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.239385, 23.337976, 28.650759>,  <14.688107, 23.588743, 28.166594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.239385, 23.337976, 28.650759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.371670, 23.685448, 28.503229>,  <15.451040, 23.893930, 28.414711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.371670, 23.685448, 28.503229>,  <15.239385, 23.337976, 28.650759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.371670, 23.685448, 28.503229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357082, 0.246577, 0.900939,
		0.873568, -0.429652, -0.228642,
		0.330712, 0.868676, -0.368823,
		15.470883, 23.946051, 28.392582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.853359, 23.450937, 28.957359>,  <15.239385, 23.337976, 28.650759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.853359, 23.450937, 28.957359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.740449, 23.815981, 28.839064>,  <15.672703, 24.035007, 28.768087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.740449, 23.815981, 28.839064>,  <15.853359, 23.450937, 28.957359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.740449, 23.815981, 28.839064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298329, 0.376495, 0.877069,
		0.911767, 0.159348, -0.378534,
		-0.282276, 0.912611, -0.295738,
		15.655766, 24.089764, 28.750341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.369364, 23.816364, 29.011965>,  <15.853359, 23.450937, 28.957359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.369364, 23.816364, 29.011965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.063244, 24.072599, 29.037149>,  <15.879572, 24.226341, 29.052259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.063244, 24.072599, 29.037149>,  <16.369364, 23.816364, 29.011965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.063244, 24.072599, 29.037149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329619, 0.306006, 0.893147,
		0.552873, 0.704278, -0.445336,
		-0.765299, 0.640588, 0.062961,
		15.833654, 24.264776, 29.056038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.731297, 24.323097, 29.371061>,  <16.369364, 23.816364, 29.011965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.731297, 24.323097, 29.371061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.354521, 24.456047, 29.390139>,  <16.128454, 24.535816, 29.401585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.354521, 24.456047, 29.390139>,  <16.731297, 24.323097, 29.371061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.354521, 24.456047, 29.390139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185120, 0.395544, 0.899597,
		0.280139, 0.856196, -0.434108,
		-0.941941, 0.332374, 0.047692,
		16.071938, 24.555759, 29.404446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.810331, 25.045933, 29.621010>,  <16.731297, 24.323097, 29.371061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.810331, 25.045933, 29.621010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.441444, 24.906006, 29.686909>,  <16.220112, 24.822050, 29.726448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.441444, 24.906006, 29.686909>,  <16.810331, 25.045933, 29.621010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.441444, 24.906006, 29.686909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017536, 0.463469, 0.885940,
		-0.386271, 0.814141, -0.433554,
		-0.922219, -0.349815, 0.164748,
		16.164780, 24.801062, 29.736334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.361429, 25.629303, 29.823284>,  <16.810331, 25.045933, 29.621010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.361429, 25.629303, 29.823284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.183336, 25.301088, 29.966665>,  <16.076481, 25.104160, 30.052694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.183336, 25.301088, 29.966665>,  <16.361429, 25.629303, 29.823284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.183336, 25.301088, 29.966665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031492, 0.385724, 0.922077,
		-0.894861, 0.421828, -0.145897,
		-0.445234, -0.820535, 0.358453,
		16.049767, 25.054928, 30.074202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.724595, 25.786041, 30.220285>,  <16.361429, 25.629303, 29.823284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.724595, 25.786041, 30.220285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.865602, 25.446468, 30.377790>,  <15.950205, 25.242725, 30.472294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.865602, 25.446468, 30.377790>,  <15.724595, 25.786041, 30.220285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.865602, 25.446468, 30.377790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007309, 0.418264, 0.908296,
		-0.935777, -0.323066, 0.141240,
		0.352515, -0.848931, 0.393763,
		15.971356, 25.191790, 30.495920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.419950, 25.848669, 30.878531>,  <15.724595, 25.786041, 30.220285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.419950, 25.848669, 30.878531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.694152, 25.557444, 30.877583>,  <15.858673, 25.382708, 30.877014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.694152, 25.557444, 30.877583>,  <15.419950, 25.848669, 30.878531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.694152, 25.557444, 30.877583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258949, 0.240769, 0.935402,
		-0.680462, -0.641836, 0.353580,
		0.685505, -0.728064, -0.002369,
		15.899803, 25.339024, 30.876871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.185156, 25.369469, 31.369286>,  <15.419950, 25.848669, 30.878531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.185156, 25.369469, 31.369286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.581052, 25.396791, 31.319088>,  <15.818589, 25.413185, 31.288969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.581052, 25.396791, 31.319088>,  <15.185156, 25.369469, 31.369286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.581052, 25.396791, 31.319088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107135, 0.226334, 0.968140,
		0.094530, -0.971652, 0.216694,
		0.989740, 0.068303, -0.125494,
		15.877974, 25.417282, 31.281439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.616136, 24.819498, 31.636589>,  <15.185156, 25.369469, 31.369286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.616136, 24.819498, 31.636589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.847004, 25.142237, 31.686981>,  <15.985525, 25.335880, 31.717216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.847004, 25.142237, 31.686981>,  <15.616136, 24.819498, 31.636589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.847004, 25.142237, 31.686981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220837, 0.005694, 0.975294,
		0.786196, -0.590732, 0.181468,
		0.577171, 0.806848, 0.125979,
		16.020155, 25.384291, 31.724775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.113252, 24.304251, 32.150944>,  <15.616136, 24.819498, 31.636589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.113252, 24.304251, 32.150944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.296218, 24.102299, 32.443756>,  <15.405997, 23.981129, 32.619442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.296218, 24.102299, 32.443756>,  <15.113252, 24.304251, 32.150944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.296218, 24.102299, 32.443756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117097, -0.781832, -0.612394,
		0.881510, 0.365837, -0.298502,
		0.457415, -0.504878, 0.732031,
		15.433442, 23.950836, 32.663364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.765583, 24.123083, 32.004578>,  <15.113252, 24.304251, 32.150944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.765583, 24.123083, 32.004578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.606160, 23.867693, 32.267941>,  <15.510507, 23.714458, 32.425957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.606160, 23.867693, 32.267941>,  <15.765583, 24.123083, 32.004578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.606160, 23.867693, 32.267941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135440, -0.750991, -0.646273,
		0.907088, -0.168402, 0.385789,
		-0.398558, -0.638478, 0.658406,
		15.486593, 23.676149, 32.465462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.215057, 23.615210, 32.056236>,  <15.765583, 24.123083, 32.004578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.215057, 23.615210, 32.056236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.845898, 23.471424, 32.111435>,  <15.624402, 23.385153, 32.144554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.845898, 23.471424, 32.111435>,  <16.215057, 23.615210, 32.056236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.845898, 23.471424, 32.111435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066614, -0.502052, -0.862268,
		0.379236, -0.786594, 0.487289,
		-0.922899, -0.359463, 0.137999,
		15.569028, 23.363585, 32.152836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.299801, 22.874327, 31.989260>,  <16.215057, 23.615210, 32.056236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.299801, 22.874327, 31.989260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.901806, 22.906599, 31.965620>,  <15.663009, 22.925962, 31.951437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.901806, 22.906599, 31.965620>,  <16.299801, 22.874327, 31.989260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.901806, 22.906599, 31.965620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009942, -0.667800, -0.744274,
		-0.099514, -0.739955, 0.665254,
		-0.994986, 0.080680, -0.059099,
		15.603310, 22.930803, 31.947889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.967624, 22.144501, 32.059353>,  <16.299801, 22.874327, 31.989260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.967624, 22.144501, 32.059353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.703673, 22.380436, 31.873167>,  <15.545303, 22.521997, 31.761456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.703673, 22.380436, 31.873167>,  <15.967624, 22.144501, 32.059353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.703673, 22.380436, 31.873167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012973, -0.628331, -0.777838,
		-0.751264, -0.507236, 0.422271,
		-0.659874, 0.589840, -0.465463,
		15.505711, 22.557388, 31.733528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.454167, 21.711807, 31.954369>,  <15.967624, 22.144501, 32.059353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.454167, 21.711807, 31.954369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.401910, 22.000038, 31.681986>,  <15.370555, 22.172977, 31.518557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.401910, 22.000038, 31.681986>,  <15.454167, 21.711807, 31.954369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.401910, 22.000038, 31.681986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094588, -0.692768, -0.714931,
		-0.986907, -0.028991, 0.158664,
		-0.130644, 0.720577, -0.680956,
		15.362717, 22.216211, 31.477699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.050385, 21.527859, 31.463757>,  <15.454167, 21.711807, 31.954369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.050385, 21.527859, 31.463757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.188897, 21.826025, 31.235916>,  <15.272004, 22.004925, 31.099213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.188897, 21.826025, 31.235916>,  <15.050385, 21.527859, 31.463757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.188897, 21.826025, 31.235916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032216, -0.597358, -0.801328,
		-0.937578, 0.295833, -0.182838,
		0.346279, 0.745417, -0.569600,
		15.292781, 22.049650, 31.065037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.603631, 21.653713, 30.994684>,  <15.050385, 21.527859, 31.463757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.603631, 21.653713, 30.994684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.923926, 21.820866, 30.823013>,  <15.116104, 21.921156, 30.720011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.923926, 21.820866, 30.823013>,  <14.603631, 21.653713, 30.994684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.923926, 21.820866, 30.823013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204262, -0.483050, -0.851434,
		-0.563111, 0.769441, -0.301440,
		0.800739, 0.417879, -0.429179,
		15.164148, 21.946230, 30.694260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.415564, 22.081844, 30.437777>,  <14.603631, 21.653713, 30.994684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.415564, 22.081844, 30.437777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.796153, 21.991360, 30.354324>,  <15.024507, 21.937069, 30.304253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.796153, 21.991360, 30.354324>,  <14.415564, 22.081844, 30.437777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.796153, 21.991360, 30.354324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253860, -0.193783, -0.947631,
		0.173934, 0.954609, -0.241805,
		0.951474, -0.226210, -0.208631,
		15.081595, 21.923496, 30.291735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.561434, 22.462231, 29.781763>,  <14.415564, 22.081844, 30.437777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.561434, 22.462231, 29.781763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.834753, 22.170944, 29.802946>,  <14.998744, 21.996172, 29.815657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.834753, 22.170944, 29.802946>,  <14.561434, 22.462231, 29.781763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.834753, 22.170944, 29.802946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238062, -0.290770, -0.926703,
		0.690240, 0.620607, -0.372044,
		0.683298, -0.728217, 0.052958,
		15.039742, 21.952478, 29.818834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.054582, 22.622406, 29.327255>,  <14.561434, 22.462231, 29.781763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.054582, 22.622406, 29.327255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.066707, 22.225861, 29.378290>,  <15.073982, 21.987934, 29.408911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.066707, 22.225861, 29.378290>,  <15.054582, 22.622406, 29.327255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.066707, 22.225861, 29.378290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241444, -0.131130, -0.961514,
		0.969941, -0.001659, -0.243333,
		0.030313, -0.991363, 0.127589,
		15.075801, 21.928452, 29.416567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.438092, 22.395582, 28.821327>,  <15.054582, 22.622406, 29.327255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.438092, 22.395582, 28.821327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.247412, 22.061901, 28.932222>,  <15.133003, 21.861692, 28.998760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.247412, 22.061901, 28.932222>,  <15.438092, 22.395582, 28.821327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.247412, 22.061901, 28.932222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240906, -0.179332, -0.953837,
		0.845411, -0.521484, -0.115477,
		-0.476702, -0.834203, 0.277238,
		15.104402, 21.811640, 29.015394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.647964, 21.843733, 28.312204>,  <15.438092, 22.395582, 28.821327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.647964, 21.843733, 28.312204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.290783, 21.732578, 28.453861>,  <15.076474, 21.665886, 28.538855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.290783, 21.732578, 28.453861>,  <15.647964, 21.843733, 28.312204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.290783, 21.732578, 28.453861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305784, -0.202894, -0.930231,
		0.330351, -0.938943, 0.096202,
		-0.892953, -0.277886, 0.354140,
		15.022897, 21.649212, 28.560102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.458484, 21.275696, 27.891926>,  <15.647964, 21.843733, 28.312204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.458484, 21.275696, 27.891926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.118451, 21.389475, 28.069216>,  <14.914432, 21.457743, 28.175591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.118451, 21.389475, 28.069216>,  <15.458484, 21.275696, 27.891926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.118451, 21.389475, 28.069216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491180, -0.124579, -0.862103,
		-0.190008, -0.950562, 0.245618,
		-0.850082, 0.284449, 0.443227,
		14.863426, 21.474810, 28.202185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.032444, 20.731329, 27.748713>,  <15.458484, 21.275696, 27.891926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.032444, 20.731329, 27.748713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.781960, 21.033554, 27.825640>,  <14.631669, 21.214890, 27.871796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.781960, 21.033554, 27.825640>,  <15.032444, 20.731329, 27.748713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.781960, 21.033554, 27.825640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368188, -0.069156, -0.927176,
		-0.687239, -0.651417, 0.321495,
		-0.626212, 0.755562, 0.192317,
		14.594096, 21.260223, 27.883335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.350141, 20.517946, 27.472332>,  <15.032444, 20.731329, 27.748713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.350141, 20.517946, 27.472332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.338196, 20.917334, 27.490978>,  <14.331029, 21.156965, 27.502167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.338196, 20.917334, 27.490978>,  <14.350141, 20.517946, 27.472332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.338196, 20.917334, 27.490978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535894, 0.023376, -0.843962,
		-0.843757, -0.050184, 0.534374,
		-0.029862, 0.998466, 0.046617,
		14.329237, 21.216873, 27.504963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.625321, 20.706352, 27.387945>,  <14.350141, 20.517946, 27.472332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.625321, 20.706352, 27.387945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.803829, 21.049078, 27.284628>,  <13.910933, 21.254713, 27.222637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.803829, 21.049078, 27.284628>,  <13.625321, 20.706352, 27.387945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.803829, 21.049078, 27.284628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537847, 0.026116, -0.842638,
		-0.715238, 0.514965, 0.472489,
		0.446268, 0.856813, -0.258293,
		13.937710, 21.306122, 27.207140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.109964, 21.029490, 27.218836>,  <13.625321, 20.706352, 27.387945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.109964, 21.029490, 27.218836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.434666, 21.169596, 27.031916>,  <13.629487, 21.253660, 26.919764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.434666, 21.169596, 27.031916>,  <13.109964, 21.029490, 27.218836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.434666, 21.169596, 27.031916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510488, 0.036941, -0.859091,
		-0.283648, 0.935921, 0.208794,
		0.811754, 0.350266, -0.467299,
		13.678192, 21.274675, 26.891726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.785445, 21.316153, 26.638693>,  <13.109964, 21.029490, 27.218836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.785445, 21.316153, 26.638693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.166321, 21.376831, 26.532618>,  <13.394846, 21.413239, 26.468971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.166321, 21.376831, 26.532618>,  <12.785445, 21.316153, 26.638693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.166321, 21.376831, 26.532618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272247, 0.027433, -0.961836,
		-0.138632, 0.988046, 0.067420,
		0.952189, 0.151696, -0.265189,
		13.451978, 21.422340, 26.453060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.837743, 21.863710, 26.176588>,  <12.785445, 21.316153, 26.638693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.837743, 21.863710, 26.176588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.167427, 21.646412, 26.112637>,  <13.365237, 21.516033, 26.074266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.167427, 21.646412, 26.112637>,  <12.837743, 21.863710, 26.176588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.167427, 21.646412, 26.112637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201217, -0.017046, -0.979398,
		0.529329, 0.839401, -0.123360,
		0.824210, -0.543246, -0.159879,
		13.414690, 21.483438, 26.064672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.220530, 22.113726, 25.530048>,  <12.837743, 21.863710, 26.176588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.220530, 22.113726, 25.530048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.333664, 21.731348, 25.561468>,  <13.401545, 21.501921, 25.580320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.333664, 21.731348, 25.561468>,  <13.220530, 22.113726, 25.530048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.333664, 21.731348, 25.561468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051114, -0.096796, -0.993991,
		0.957805, 0.277123, -0.076240,
		0.282837, -0.955946, 0.078547,
		13.418515, 21.444565, 25.585032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<12.692554, 11.490284, 5.895386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.308655, 11.555082, 5.803613>,  <12.078315, 11.593962, 5.748549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.308655, 11.555082, 5.803613>,  <12.692554, 11.490284, 5.895386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.308655, 11.555082, 5.803613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265613, 0.258027, -0.928909,
		-0.091280, -0.952459, -0.290669,
		-0.959748, 0.161997, -0.229433,
		12.020730, 11.603682, 5.734783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.396539, 11.980547, 6.402640>,  <12.692554, 11.490284, 5.895386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.396539, 11.980547, 6.402640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.047199, 12.088197, 6.240240>,  <11.837596, 12.152786, 6.142799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.047199, 12.088197, 6.240240>,  <12.396539, 11.980547, 6.402640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.047199, 12.088197, 6.240240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099604, 0.717227, 0.689684,
		0.476804, 0.642773, -0.599583,
		-0.873348, 0.269123, -0.406000,
		11.785195, 12.168934, 6.118440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.351823, 12.658195, 6.302224>,  <12.396539, 11.980547, 6.402640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.351823, 12.658195, 6.302224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<11.962277, 12.573277, 6.269924>,  <11.728550, 12.522326, 6.250545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<11.962277, 12.573277, 6.269924>,  <12.351823, 12.658195, 6.302224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.962277, 12.573277, 6.269924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224263, 0.842378, 0.490006,
		-0.036006, 0.495308, -0.867971,
		-0.973863, -0.212297, -0.080749,
		11.670118, 12.509587, 6.245699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.561561, 13.468199, 6.214534>,  <12.351823, 12.658195, 6.302224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.561561, 13.468199, 6.214534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.260151, 13.361994, 6.455102>,  <12.079306, 13.298271, 6.599442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.260151, 13.361994, 6.455102>,  <12.561561, 13.468199, 6.214534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.260151, 13.361994, 6.455102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380523, -0.922145, 0.069657,
		0.536101, 0.281342, 0.795891,
		-0.753524, -0.265511, 0.601420,
		12.034094, 13.282340, 6.635528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.092949, 13.898851, 6.327178>,  <12.561561, 13.468199, 6.214534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.092949, 13.898851, 6.327178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.417572, 13.947665, 6.098624>,  <13.612346, 13.976954, 5.961491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.417572, 13.947665, 6.098624>,  <13.092949, 13.898851, 6.327178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.417572, 13.947665, 6.098624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088511, 0.992336, 0.086226,
		0.577530, -0.019404, 0.816139,
		0.811557, 0.122035, -0.571386,
		13.661039, 13.984276, 5.927208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.601264, 14.521393, 6.528757>,  <13.092949, 13.898851, 6.327178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.601264, 14.521393, 6.528757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.555796, 14.409626, 6.147389>,  <13.528515, 14.342566, 5.918569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.555796, 14.409626, 6.147389>,  <13.601264, 14.521393, 6.528757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.555796, 14.409626, 6.147389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268325, 0.915343, -0.300249,
		0.956598, -0.289956, -0.029074,
		-0.113672, -0.279416, -0.953418,
		13.521694, 14.325801, 5.861364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.004396, 14.961404, 6.249563>,  <13.601264, 14.521393, 6.528757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.004396, 14.961404, 6.249563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.785705, 14.871179, 5.927021>,  <13.654490, 14.817043, 5.733495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.785705, 14.871179, 5.927021>,  <14.004396, 14.961404, 6.249563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.785705, 14.871179, 5.927021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170310, 0.912941, -0.370854,
		0.819806, -0.340087, -0.460716,
		-0.546730, -0.225563, -0.806355,
		13.621686, 14.803510, 5.685114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.661255, 14.816059, 6.009129>,  <14.004396, 14.961404, 6.249563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.661255, 14.816059, 6.009129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.979117, 15.025357, 5.886012>,  <15.169835, 15.150936, 5.812142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.979117, 15.025357, 5.886012>,  <14.661255, 14.816059, 6.009129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.979117, 15.025357, 5.886012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395028, -0.060721, 0.916660,
		0.460949, -0.850016, -0.254949,
		0.794657, 0.523245, -0.307791,
		15.217514, 15.182331, 5.793675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.188301, 14.471913, 6.396180>,  <14.661255, 14.816059, 6.009129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.188301, 14.471913, 6.396180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.306183, 14.839451, 6.291203>,  <15.376912, 15.059974, 6.228216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.306183, 14.839451, 6.291203>,  <15.188301, 14.471913, 6.396180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.306183, 14.839451, 6.291203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550899, 0.061043, 0.832336,
		0.780807, -0.389872, -0.488201,
		0.294704, 0.918843, -0.262443,
		15.394594, 15.115104, 6.212470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.913359, 14.525271, 6.436438>,  <15.188301, 14.471913, 6.396180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.913359, 14.525271, 6.436438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.755919, 14.890468, 6.479382>,  <15.661454, 15.109586, 6.505148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.755919, 14.890468, 6.479382>,  <15.913359, 14.525271, 6.436438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.755919, 14.890468, 6.479382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639233, 0.187893, 0.745706,
		0.660650, 0.362139, -0.657569,
		-0.393601, 0.912991, 0.107360,
		15.637838, 15.164365, 6.511590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.385653, 14.954608, 6.538690>,  <15.913359, 14.525271, 6.436438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.385653, 14.954608, 6.538690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.109713, 15.186387, 6.712285>,  <15.944148, 15.325455, 6.816442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.109713, 15.186387, 6.712285>,  <16.385653, 14.954608, 6.538690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.109713, 15.186387, 6.712285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598539, 0.119274, 0.792164,
		0.407255, 0.806234, -0.429104,
		-0.689851, 0.579448, 0.433988,
		15.902758, 15.360222, 6.842482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.768360, 15.595647, 6.831001>,  <16.385653, 14.954608, 6.538690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.768360, 15.595647, 6.831001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.414001, 15.597848, 7.016539>,  <16.201385, 15.599169, 7.127862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.414001, 15.597848, 7.016539>,  <16.768360, 15.595647, 6.831001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.414001, 15.597848, 7.016539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438231, 0.337810, 0.832969,
		-0.152109, 0.941198, -0.301677,
		-0.885899, 0.005501, 0.463846,
		16.148232, 15.599499, 7.155693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.712650, 16.246214, 7.152357>,  <16.768360, 15.595647, 6.831001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.712650, 16.246214, 7.152357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.480448, 15.993066, 7.357290>,  <16.341125, 15.841177, 7.480250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.480448, 15.993066, 7.357290>,  <16.712650, 16.246214, 7.152357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.480448, 15.993066, 7.357290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363052, 0.362027, 0.858563,
		-0.728838, 0.684406, 0.019606,
		-0.580508, -0.632871, 0.512334,
		16.306295, 15.803205, 7.510990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.491175, 16.655609, 7.703129>,  <16.712650, 16.246214, 7.152357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.491175, 16.655609, 7.703129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.401646, 16.300377, 7.863733>,  <16.347927, 16.087236, 7.960096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.401646, 16.300377, 7.863733>,  <16.491175, 16.655609, 7.703129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.401646, 16.300377, 7.863733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235420, 0.350501, 0.906491,
		-0.945769, 0.297419, 0.130622,
		-0.223825, -0.888083, 0.401512,
		16.334497, 16.033953, 7.984187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.032162, 16.791698, 8.359886>,  <16.491175, 16.655609, 7.703129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.032162, 16.791698, 8.359886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.221617, 16.442526, 8.406630>,  <16.335291, 16.233023, 8.434675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.221617, 16.442526, 8.406630>,  <16.032162, 16.791698, 8.359886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.221617, 16.442526, 8.406630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050237, 0.159247, 0.985960,
		-0.879285, -0.461118, 0.119279,
		0.473639, -0.872932, 0.116858,
		16.363708, 16.180647, 8.441687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.851492, 16.551823, 9.022654>,  <16.032162, 16.791698, 8.359886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.851492, 16.551823, 9.022654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.191460, 16.350168, 8.961351>,  <16.395441, 16.229176, 8.924570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.191460, 16.350168, 8.961351>,  <15.851492, 16.551823, 9.022654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.191460, 16.350168, 8.961351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182186, 0.008250, 0.983230,
		-0.494415, -0.863586, 0.098858,
		0.849919, -0.504134, -0.153255,
		16.446436, 16.198929, 8.915375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.911020, 16.155716, 9.574043>,  <15.851492, 16.551823, 9.022654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.911020, 16.155716, 9.574043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.277767, 16.073412, 9.437211>,  <16.497814, 16.024029, 9.355112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.277767, 16.073412, 9.437211>,  <15.911020, 16.155716, 9.574043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.277767, 16.073412, 9.437211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307538, -0.182265, 0.933916,
		-0.254514, -0.961479, -0.103833,
		0.916866, -0.205762, -0.342081,
		16.552828, 16.011684, 9.334587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.158945, 15.594128, 9.972257>,  <15.911020, 16.155716, 9.574043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.158945, 15.594128, 9.972257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.487505, 15.768481, 9.825120>,  <16.684641, 15.873094, 9.736837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.487505, 15.768481, 9.825120>,  <16.158945, 15.594128, 9.972257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.487505, 15.768481, 9.825120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456563, -0.115960, 0.882102,
		0.341840, -0.892501, -0.294258,
		0.821399, 0.435885, -0.367843,
		16.733925, 15.899246, 9.714767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.674427, 15.150376, 10.191230>,  <16.158945, 15.594128, 9.972257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.674427, 15.150376, 10.191230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.819178, 15.518320, 10.130695>,  <16.906029, 15.739086, 10.094375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.819178, 15.518320, 10.130695>,  <16.674427, 15.150376, 10.191230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.819178, 15.518320, 10.130695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358255, 0.012647, 0.933538,
		0.860639, -0.392043, -0.324967,
		0.361877, 0.919860, -0.151336,
		16.927740, 15.794278, 10.085295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.364666, 15.186061, 10.532404>,  <16.674427, 15.150376, 10.191230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.364666, 15.186061, 10.532404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.281738, 15.572296, 10.469590>,  <17.231981, 15.804037, 10.431902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.281738, 15.572296, 10.469590>,  <17.364666, 15.186061, 10.532404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.281738, 15.572296, 10.469590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526498, 0.245423, 0.813982,
		0.824510, 0.086078, -0.559261,
		-0.207321, 0.965587, -0.157034,
		17.219542, 15.861972, 10.422480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.020266, 15.555916, 10.314174>,  <17.364666, 15.186061, 10.532404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.020266, 15.555916, 10.314174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.767389, 15.824834, 10.468239>,  <17.615664, 15.986185, 10.560678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.767389, 15.824834, 10.468239>,  <18.020266, 15.555916, 10.314174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.767389, 15.824834, 10.468239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667111, 0.219466, 0.711897,
		0.394076, 0.707003, -0.587241,
		-0.632193, 0.672296, 0.385163,
		17.577732, 16.026524, 10.583788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.436398, 16.083612, 10.472602>,  <18.020266, 15.555916, 10.314174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.436398, 16.083612, 10.472602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.102701, 16.116697, 10.690667>,  <17.902483, 16.136549, 10.821507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.102701, 16.116697, 10.690667>,  <18.436398, 16.083612, 10.472602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.102701, 16.116697, 10.690667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550232, 0.189259, 0.813281,
		-0.035908, 0.978438, -0.203398,
		-0.834239, 0.082713, 0.545164,
		17.852428, 16.141512, 10.854217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.633675, 16.604225, 10.868054>,  <18.436398, 16.083612, 10.472602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.633675, 16.604225, 10.868054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.319923, 16.462126, 11.071444>,  <18.131672, 16.376865, 11.193477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.319923, 16.462126, 11.071444>,  <18.633675, 16.604225, 10.868054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.319923, 16.462126, 11.071444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542599, 0.004232, 0.839981,
		-0.300556, 0.934762, 0.189439,
		-0.784380, -0.355250, 0.508473,
		18.084610, 16.355551, 11.223986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.597757, 17.021271, 11.525894>,  <18.633675, 16.604225, 10.868054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.597757, 17.021271, 11.525894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.389698, 16.684956, 11.585926>,  <18.264862, 16.483166, 11.621945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.389698, 16.684956, 11.585926>,  <18.597757, 17.021271, 11.525894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.389698, 16.684956, 11.585926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483315, -0.144888, 0.863374,
		-0.704170, 0.521616, 0.481728,
		-0.520146, -0.840788, 0.150079,
		18.233654, 16.432720, 11.630950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.460745, 17.098816, 12.216206>,  <18.597757, 17.021271, 11.525894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.460745, 17.098816, 12.216206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.388557, 16.718567, 12.115213>,  <18.345245, 16.490417, 12.054618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.388557, 16.718567, 12.115213>,  <18.460745, 17.098816, 12.216206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.388557, 16.718567, 12.115213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430671, -0.307153, 0.848634,
		-0.884281, 0.044416, 0.464837,
		-0.180469, -0.950623, -0.252481,
		18.334417, 16.433380, 12.039469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.002104, 16.703997, 12.825713>,  <18.460745, 17.098816, 12.216206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.002104, 16.703997, 12.825713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.223980, 16.463024, 12.596141>,  <18.357105, 16.318441, 12.458398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.223980, 16.463024, 12.596141>,  <18.002104, 16.703997, 12.825713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.223980, 16.463024, 12.596141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427355, -0.385568, 0.817744,
		-0.713923, -0.698866, 0.043581,
		0.554690, -0.602431, -0.573930,
		18.390387, 16.282295, 12.423962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.080002, 16.107601, 13.222794>,  <18.002104, 16.703997, 12.825713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.080002, 16.107601, 13.222794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.381424, 16.070986, 12.962401>,  <18.562277, 16.049017, 12.806167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.381424, 16.070986, 12.962401>,  <18.080002, 16.107601, 13.222794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.381424, 16.070986, 12.962401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629973, -0.182412, 0.754891,
		-0.187841, -0.978952, -0.079797,
		0.753558, -0.091530, -0.650978,
		18.607491, 16.043524, 12.767108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.384117, 15.423876, 13.361532>,  <18.080002, 16.107601, 13.222794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.384117, 15.423876, 13.361532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.661057, 15.655549, 13.189392>,  <18.827221, 15.794553, 13.086108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.661057, 15.655549, 13.189392>,  <18.384117, 15.423876, 13.361532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.661057, 15.655549, 13.189392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597959, -0.126724, 0.791446,
		0.403856, -0.805288, -0.434065,
		0.692348, 0.579183, -0.430351,
		18.868761, 15.829304, 13.060287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.919771, 15.047426, 13.564363>,  <18.384117, 15.423876, 13.361532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.919771, 15.047426, 13.564363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.067938, 15.394772, 13.432463>,  <19.156837, 15.603179, 13.353322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.067938, 15.394772, 13.432463>,  <18.919771, 15.047426, 13.564363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.067938, 15.394772, 13.432463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730424, -0.052999, 0.680934,
		0.573822, -0.493088, -0.653906,
		0.370417, 0.868364, -0.329751,
		19.179064, 15.655281, 13.333537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.747715, 14.916719, 13.332502>,  <18.919771, 15.047426, 13.564363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.747715, 14.916719, 13.332502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.680420, 15.296984, 13.436764>,  <19.640043, 15.525143, 13.499321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.680420, 15.296984, 13.436764>,  <19.747715, 14.916719, 13.332502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.680420, 15.296984, 13.436764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715487, -0.064123, 0.695677,
		0.678067, 0.303533, -0.669398,
		-0.168238, 0.950661, 0.260653,
		19.629950, 15.582182, 13.514959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.372149, 15.403667, 13.298270>,  <19.747715, 14.916719, 13.332502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.372149, 15.403667, 13.298270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.116198, 15.526706, 13.579963>,  <19.962627, 15.600529, 13.748978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.116198, 15.526706, 13.579963>,  <20.372149, 15.403667, 13.298270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.116198, 15.526706, 13.579963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761880, 0.134109, 0.633683,
		0.100473, 0.942019, -0.320164,
		-0.639879, 0.307595, 0.704231,
		19.924234, 15.618984, 13.791232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.547554, 16.031094, 13.588012>,  <20.372149, 15.403667, 13.298270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.547554, 16.031094, 13.588012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.372419, 15.819822, 13.879031>,  <20.267340, 15.693059, 14.053643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.372419, 15.819822, 13.879031>,  <20.547554, 16.031094, 13.588012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.372419, 15.819822, 13.879031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690573, 0.320597, 0.648326,
		-0.575682, 0.786285, 0.224378,
		-0.437835, -0.528179, 0.727549,
		20.241070, 15.661368, 14.097296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.330885, 16.537987, 14.106914>,  <20.547554, 16.031094, 13.588012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.330885, 16.537987, 14.106914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.393160, 16.643766, 13.726213>,  <20.430525, 16.707233, 13.497793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.393160, 16.643766, 13.726213>,  <20.330885, 16.537987, 14.106914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.393160, 16.643766, 13.726213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237160, -0.925311, -0.295896,
		-0.958914, 0.271785, -0.081344,
		0.155688, 0.264447, -0.951750,
		20.439867, 16.723101, 13.440688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.024899, 16.505960, 13.970088>,  <20.330885, 16.537987, 14.106914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.024899, 16.505960, 13.970088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.239103, 16.201620, 13.823483>,  <21.367626, 16.019016, 13.735519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.239103, 16.201620, 13.823483>,  <21.024899, 16.505960, 13.970088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.239103, 16.201620, 13.823483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249696, 0.271939, -0.929355,
		0.806769, 0.589199, -0.044354,
		0.535514, -0.760850, -0.366513,
		21.399757, 15.973365, 13.713529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.675951, 16.654829, 13.535863>,  <21.024899, 16.505960, 13.970088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.675951, 16.654829, 13.535863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.539999, 16.312738, 13.379368>,  <21.458427, 16.107483, 13.285471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.539999, 16.312738, 13.379368>,  <21.675951, 16.654829, 13.535863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.539999, 16.312738, 13.379368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007031, 0.413681, -0.910395,
		0.940443, -0.312175, -0.134588,
		-0.339879, -0.855228, -0.391238,
		21.438036, 16.056170, 13.261996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.225153, 16.337990, 13.025188>,  <21.675951, 16.654829, 13.535863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.225153, 16.337990, 13.025188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.843287, 16.333410, 12.906203>,  <21.614166, 16.330662, 12.834812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.843287, 16.333410, 12.906203>,  <22.225153, 16.337990, 13.025188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.843287, 16.333410, 12.906203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179982, 0.773731, -0.607410,
		0.237109, -0.633411, -0.736594,
		-0.954665, -0.011449, -0.297462,
		21.556887, 16.329975, 12.816965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.246906, 16.625948, 12.369924>,  <22.225153, 16.337990, 13.025188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.246906, 16.625948, 12.369924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.855366, 16.642559, 12.450050>,  <21.620441, 16.652525, 12.498127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.855366, 16.642559, 12.450050>,  <22.246906, 16.625948, 12.369924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.855366, 16.642559, 12.450050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100142, 0.756579, -0.646189,
		-0.178391, -0.652582, -0.736419,
		-0.978850, 0.041527, 0.200318,
		21.561710, 16.655018, 12.510145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.975870, 16.968233, 11.702189>,  <22.246906, 16.625948, 12.369924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.975870, 16.968233, 11.702189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.655073, 16.859936, 11.915170>,  <21.462595, 16.794958, 12.042958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.655073, 16.859936, 11.915170>,  <21.975870, 16.968233, 11.702189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.655073, 16.859936, 11.915170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358010, -0.495676, -0.791287,
		0.478159, -0.825229, 0.300600,
		-0.801993, -0.270743, 0.532452,
		21.414474, 16.778713, 12.074905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.489895, 17.318552, 12.162108>,  <21.975870, 16.968233, 11.702189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.489895, 17.318552, 12.162108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.706669, 17.001604, 12.050066>,  <22.836733, 16.811436, 11.982841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.706669, 17.001604, 12.050066>,  <22.489895, 17.318552, 12.162108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.706669, 17.001604, 12.050066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593905, -0.125259, -0.794724,
		0.594629, 0.597045, -0.538473,
		0.541935, -0.792368, -0.280106,
		22.869249, 16.763893, 11.966034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.793976, 17.524895, 11.594445>,  <22.489895, 17.318552, 12.162108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.793976, 17.524895, 11.594445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.717625, 17.133236, 11.622267>,  <22.671814, 16.898241, 11.638960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.717625, 17.133236, 11.622267>,  <22.793976, 17.524895, 11.594445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.717625, 17.133236, 11.622267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613032, 0.063567, -0.787497,
		0.766653, -0.192956, -0.612381,
		-0.190880, -0.979146, 0.069554,
		22.660360, 16.839493, 11.643133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.837524, 17.262922, 10.959284>,  <22.793976, 17.524895, 11.594445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.837524, 17.262922, 10.959284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.634920, 16.963705, 11.130807>,  <22.513357, 16.784174, 11.233721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.634920, 16.963705, 11.130807>,  <22.837524, 17.262922, 10.959284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.634920, 16.963705, 11.130807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545241, -0.107386, -0.831373,
		0.667952, -0.654903, -0.353472,
		-0.506510, -0.748045, 0.428808,
		22.482967, 16.739292, 11.259449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.644459, 16.755186, 10.342511>,  <22.837524, 17.262922, 10.959284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.644459, 16.755186, 10.342511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.376438, 16.723497, 10.637741>,  <22.215626, 16.704483, 10.814879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.376438, 16.723497, 10.637741>,  <22.644459, 16.755186, 10.342511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.376438, 16.723497, 10.637741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734235, -0.075570, -0.674677,
		0.109225, -0.993989, -0.007531,
		-0.670052, -0.079221, 0.738075,
		22.175423, 16.699730, 10.859163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.247047, 16.188606, 10.071777>,  <22.644459, 16.755186, 10.342511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.247047, 16.188606, 10.071777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.014471, 16.339954, 10.359878>,  <21.874926, 16.430763, 10.532738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.014471, 16.339954, 10.359878>,  <22.247047, 16.188606, 10.071777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.014471, 16.339954, 10.359878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771580, 0.024340, -0.635666,
		-0.258050, -0.925333, 0.277793,
		-0.581441, 0.378374, 0.720250,
		21.840038, 16.453466, 10.575953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.525211, 15.885608, 9.969325>,  <22.247047, 16.188606, 10.071777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.525211, 15.885608, 9.969325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.481632, 16.222086, 10.181182>,  <21.455484, 16.423973, 10.308296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.481632, 16.222086, 10.181182>,  <21.525211, 15.885608, 9.969325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.481632, 16.222086, 10.181182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861356, 0.186067, -0.472699,
		-0.496181, -0.507711, 0.704297,
		-0.108948, 0.841195, 0.529642,
		21.448948, 16.474445, 10.340075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.944485, 15.714132, 10.340016>,  <21.525211, 15.885608, 9.969325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.944485, 15.714132, 10.340016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.003723, 16.108164, 10.304950>,  <21.039267, 16.344584, 10.283910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.003723, 16.108164, 10.304950>,  <20.944485, 15.714132, 10.340016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.003723, 16.108164, 10.304950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889033, 0.093777, -0.448135,
		-0.433228, 0.144307, 0.889657,
		0.148098, 0.985079, -0.087667,
		21.048153, 16.403688, 10.278649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.314163, 16.061745, 10.559343>,  <20.944485, 15.714132, 10.340016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.314163, 16.061745, 10.559343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.493441, 16.335909, 10.329792>,  <20.601007, 16.500406, 10.192061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.493441, 16.335909, 10.329792>,  <20.314163, 16.061745, 10.559343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.493441, 16.335909, 10.329792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883704, 0.242855, -0.400111,
		-0.134870, 0.686466, 0.714545,
		0.448193, 0.685409, -0.573879,
		20.627899, 16.541533, 10.157628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.786066, 16.684952, 10.484670>,  <20.314163, 16.061745, 10.559343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.786066, 16.684952, 10.484670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.040554, 16.750120, 10.183026>,  <20.193247, 16.789221, 10.002041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.040554, 16.750120, 10.183026>,  <19.786066, 16.684952, 10.484670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.040554, 16.750120, 10.183026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769418, 0.205846, -0.604668,
		0.056718, 0.964927, 0.256317,
		0.636222, 0.162919, -0.754108,
		20.231421, 16.798996, 9.956794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.511080, 17.241407, 10.209770>,  <19.786066, 16.684952, 10.484670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.511080, 17.241407, 10.209770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.747791, 17.102194, 9.918931>,  <19.889818, 17.018665, 9.744428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.747791, 17.102194, 9.918931>,  <19.511080, 17.241407, 10.209770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.747791, 17.102194, 9.918931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711930, 0.197420, -0.673929,
		0.378094, 0.916459, -0.130947,
		0.591777, -0.348034, -0.727099,
		19.925323, 16.997784, 9.700802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.543230, 17.785685, 9.668100>,  <19.511080, 17.241407, 10.209770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.543230, 17.785685, 9.668100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.610107, 17.421339, 9.517172>,  <19.650234, 17.202732, 9.426615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.610107, 17.421339, 9.517172>,  <19.543230, 17.785685, 9.668100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.610107, 17.421339, 9.517172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608689, 0.205701, -0.766279,
		0.775593, 0.357788, -0.520042,
		0.167192, -0.910865, -0.377322,
		19.660265, 17.148079, 9.403975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.492073, 17.946012, 8.998093>,  <19.543230, 17.785685, 9.668100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.492073, 17.946012, 8.998093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.445814, 17.549042, 9.014649>,  <19.418058, 17.310860, 9.024584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.445814, 17.549042, 9.014649>,  <19.492073, 17.946012, 8.998093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.445814, 17.549042, 9.014649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696878, 0.051372, -0.715348,
		0.707804, -0.111574, -0.697542,
		-0.115648, -0.992428, 0.041392,
		19.411119, 17.251314, 9.027067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.502319, 17.780664, 8.306402>,  <19.492073, 17.946012, 8.998093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.502319, 17.780664, 8.306402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.351637, 17.454651, 8.482499>,  <19.261229, 17.259043, 8.588157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.351637, 17.454651, 8.482499>,  <19.502319, 17.780664, 8.306402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.351637, 17.454651, 8.482499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668002, -0.090245, -0.738668,
		0.641769, -0.572342, -0.510449,
		-0.376705, -0.815034, 0.440241,
		19.238625, 17.210140, 8.614572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.352468, 17.346863, 7.817079>,  <19.502319, 17.780664, 8.306402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.352468, 17.346863, 7.817079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.114582, 17.263756, 8.127728>,  <18.971849, 17.213892, 8.314118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.114582, 17.263756, 8.127728>,  <19.352468, 17.346863, 7.817079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.114582, 17.263756, 8.127728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803281, 0.114591, -0.584472,
		0.032437, -0.971444, -0.235041,
		-0.594716, -0.207763, 0.776626,
		18.936167, 17.201426, 8.360716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.115883, 23.463825, 20.484730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.947200, 23.116089, 20.587809>,  <15.845989, 22.907448, 20.649656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.947200, 23.116089, 20.587809>,  <16.115883, 23.463825, 20.484730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.947200, 23.116089, 20.587809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368213, -0.423905, -0.827480,
		0.828602, -0.254068, 0.498867,
		-0.421709, -0.869341, 0.257697,
		15.820687, 22.855286, 20.665117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.585331, 23.104837, 20.187542>,  <16.115883, 23.463825, 20.484730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.585331, 23.104837, 20.187542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.285984, 22.846207, 20.246710>,  <16.106375, 22.691029, 20.282211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.285984, 22.846207, 20.246710>,  <16.585331, 23.104837, 20.187542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.285984, 22.846207, 20.246710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267382, -0.498174, -0.824821,
		0.607001, -0.577719, 0.545702,
		-0.748369, -0.646578, 0.147920,
		16.061474, 22.652233, 20.291086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.876459, 22.364540, 20.260508>,  <16.585331, 23.104837, 20.187542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.876459, 22.364540, 20.260508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.498999, 22.346916, 20.129309>,  <16.272522, 22.336342, 20.050589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.498999, 22.346916, 20.129309>,  <16.876459, 22.364540, 20.260508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.498999, 22.346916, 20.129309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296613, -0.552170, -0.779185,
		-0.146780, -0.832567, 0.534124,
		-0.943651, -0.044059, -0.327998,
		16.215904, 22.333698, 20.030909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.804840, 21.646187, 20.120214>,  <16.876459, 22.364540, 20.260508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.804840, 21.646187, 20.120214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.509670, 21.838177, 19.930441>,  <16.332567, 21.953371, 19.816576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.509670, 21.838177, 19.930441>,  <16.804840, 21.646187, 20.120214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.509670, 21.838177, 19.930441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006381, -0.697998, -0.716071,
		-0.674848, -0.531437, 0.512010,
		-0.737929, 0.479972, -0.474434,
		16.288292, 21.982170, 19.788111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.430384, 21.099892, 19.777546>,  <16.804840, 21.646187, 20.120214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.430384, 21.099892, 19.777546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.320219, 21.430475, 19.581131>,  <16.254120, 21.628824, 19.463282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.320219, 21.430475, 19.581131>,  <16.430384, 21.099892, 19.777546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.320219, 21.430475, 19.581131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114500, -0.535357, -0.836829,
		-0.954484, -0.174247, 0.242072,
		-0.275410, 0.826457, -0.491039,
		16.237597, 21.678411, 19.433819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.835417, 21.013006, 19.512281>,  <16.430384, 21.099892, 19.777546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.835417, 21.013006, 19.512281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.983162, 21.315151, 19.295763>,  <16.071810, 21.496437, 19.165852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.983162, 21.315151, 19.295763>,  <15.835417, 21.013006, 19.512281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.983162, 21.315151, 19.295763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161455, -0.521465, -0.837858,
		-0.915152, 0.396869, -0.070654,
		0.369363, 0.755360, -0.541296,
		16.093971, 21.541759, 19.133373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.354377, 21.028540, 19.014919>,  <15.835417, 21.013006, 19.512281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.354377, 21.028540, 19.014919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.666101, 21.231567, 18.867922>,  <15.853134, 21.353384, 18.779724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.666101, 21.231567, 18.867922>,  <15.354377, 21.028540, 19.014919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.666101, 21.231567, 18.867922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195796, -0.359857, -0.912232,
		-0.595266, 0.782864, -0.181059,
		0.779309, 0.507570, -0.367492,
		15.899893, 21.383839, 18.757673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.278041, 20.932568, 18.317057>,  <15.354377, 21.028540, 19.014919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.278041, 20.932568, 18.317057> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.645880, 21.088720, 18.334698>,  <15.866583, 21.182411, 18.345282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.645880, 21.088720, 18.334698>,  <15.278041, 20.932568, 18.317057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.645880, 21.088720, 18.334698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146925, -0.237628, -0.960180,
		-0.364356, 0.889458, -0.275878,
		0.919596, 0.390381, 0.044102,
		15.921759, 21.205835, 18.347929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.360430, 21.430368, 17.698275>,  <15.278041, 20.932568, 18.317057>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.360430, 21.430368, 17.698275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.704065, 21.272034, 17.828062>,  <15.910247, 21.177032, 17.905933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.704065, 21.272034, 17.828062>,  <15.360430, 21.430368, 17.698275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.704065, 21.272034, 17.828062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158549, -0.396945, -0.904045,
		0.486648, 0.828100, -0.278252,
		0.859090, -0.395835, 0.324467,
		15.961792, 21.153284, 17.925402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.649277, 21.500443, 17.130625>,  <15.360430, 21.430368, 17.698275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.649277, 21.500443, 17.130625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.874340, 21.263830, 17.361626>,  <16.009378, 21.121862, 17.500227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.874340, 21.263830, 17.361626>,  <15.649277, 21.500443, 17.130625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.874340, 21.263830, 17.361626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180296, -0.593951, -0.784038,
		0.806790, 0.545266, -0.227540,
		0.562657, -0.591529, 0.577504,
		16.043137, 21.086372, 17.534876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.362547, 21.411963, 16.807608>,  <15.649277, 21.500443, 17.130625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.362547, 21.411963, 16.807608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.255753, 21.108332, 17.045101>,  <16.191675, 20.926153, 17.187597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.255753, 21.108332, 17.045101>,  <16.362547, 21.411963, 16.807608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.255753, 21.108332, 17.045101> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105812, -0.635462, -0.764848,
		0.957874, -0.141379, 0.249979,
		-0.266986, -0.759078, 0.593733,
		16.175657, 20.880608, 17.223221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.792303, 20.828800, 16.612453>,  <16.362547, 21.411963, 16.807608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.792303, 20.828800, 16.612453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.481371, 20.663427, 16.802118>,  <16.294811, 20.564203, 16.915916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.481371, 20.663427, 16.802118>,  <16.792303, 20.828800, 16.612453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.481371, 20.663427, 16.802118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028942, -0.729423, -0.683450,
		0.628425, -0.544991, 0.555038,
		-0.777332, -0.413433, 0.474161,
		16.248171, 20.539398, 16.944366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.854622, 20.107201, 16.434797>,  <16.792303, 20.828800, 16.612453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.854622, 20.107201, 16.434797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.469906, 20.133310, 16.541151>,  <16.239077, 20.148977, 16.604963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.469906, 20.133310, 16.541151>,  <16.854622, 20.107201, 16.434797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.469906, 20.133310, 16.541151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238733, -0.675367, -0.697773,
		0.134023, -0.734588, 0.665146,
		-0.961793, 0.065275, 0.265885,
		16.181368, 20.152893, 16.620916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.803782, 19.582617, 15.882910>,  <16.854622, 20.107201, 16.434797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.803782, 19.582617, 15.882910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.067934, 19.875946, 15.818245>,  <17.226425, 20.051943, 15.779446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.067934, 19.875946, 15.818245>,  <16.803782, 19.582617, 15.882910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.067934, 19.875946, 15.818245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663921, -0.670763, -0.330584,
		-0.350862, 0.110981, -0.929827,
		0.660383, 0.733321, -0.161663,
		17.266048, 20.095942, 15.769746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.406347, 19.705549, 15.382676>,  <16.803782, 19.582617, 15.882910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.406347, 19.705549, 15.382676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.803104, 19.671289, 15.420225>,  <18.041159, 19.650734, 15.442755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.803104, 19.671289, 15.420225>,  <17.406347, 19.705549, 15.382676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.803104, 19.671289, 15.420225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119612, -0.379877, 0.917271,
		-0.042903, -0.921063, -0.387042,
		0.991893, -0.085649, 0.093872,
		18.100672, 19.645594, 15.448386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.463457, 19.068251, 15.673559>,  <17.406347, 19.705549, 15.382676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.463457, 19.068251, 15.673559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.805513, 19.263758, 15.742654>,  <18.010748, 19.381062, 15.784110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.805513, 19.263758, 15.742654>,  <17.463457, 19.068251, 15.673559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.805513, 19.263758, 15.742654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110349, -0.153947, 0.981898,
		0.506515, -0.858722, -0.077711,
		0.855141, 0.488770, 0.172736,
		18.062056, 19.410389, 15.794475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.785044, 18.692081, 16.233156>,  <17.463457, 19.068251, 15.673559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.785044, 18.692081, 16.233156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.993134, 19.032858, 16.257034>,  <18.117987, 19.237324, 16.271362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.993134, 19.032858, 16.257034>,  <17.785044, 18.692081, 16.233156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.993134, 19.032858, 16.257034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140340, 0.016327, 0.989969,
		0.842420, -0.523383, 0.128055,
		0.520224, 0.851941, 0.059697,
		18.149200, 19.288441, 16.274944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.221684, 18.556448, 16.709610>,  <17.785044, 18.692081, 16.233156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.221684, 18.556448, 16.709610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.186226, 18.954735, 16.699121>,  <18.164951, 19.193707, 16.692827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.186226, 18.954735, 16.699121>,  <18.221684, 18.556448, 16.709610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.186226, 18.954735, 16.699121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196921, 0.008289, 0.980384,
		0.976404, 0.092067, 0.195343,
		-0.088642, 0.995718, -0.026223,
		18.159634, 19.253450, 16.691254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.528059, 18.846685, 17.346935>,  <18.221684, 18.556448, 16.709610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.528059, 18.846685, 17.346935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.311111, 19.161196, 17.228540>,  <18.180943, 19.349901, 17.157503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.311111, 19.161196, 17.228540>,  <18.528059, 18.846685, 17.346935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.311111, 19.161196, 17.228540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040824, 0.327223, 0.944065,
		0.839148, 0.524114, -0.145377,
		-0.542369, 0.786275, -0.295985,
		18.148401, 19.397078, 17.139746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.805405, 19.203945, 17.841772>,  <18.528059, 18.846685, 17.346935>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.805405, 19.203945, 17.841772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.492466, 19.394230, 17.680956>,  <18.304703, 19.508400, 17.584467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.492466, 19.394230, 17.680956>,  <18.805405, 19.203945, 17.841772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.492466, 19.394230, 17.680956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303100, 0.273119, 0.912982,
		0.544120, 0.836125, -0.069485,
		-0.782345, 0.475711, -0.402039,
		18.257763, 19.536943, 17.560345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.738834, 19.847618, 18.141190>,  <18.805405, 19.203945, 17.841772>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.738834, 19.847618, 18.141190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.365772, 19.781811, 18.012762>,  <18.141935, 19.742327, 17.935705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.365772, 19.781811, 18.012762>,  <18.738834, 19.847618, 18.141190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.365772, 19.781811, 18.012762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358407, 0.320956, 0.876659,
		-0.041176, 0.932696, -0.358306,
		-0.932657, -0.164516, -0.321069,
		18.085976, 19.732456, 17.916441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.279297, 20.473082, 18.144579>,  <18.738834, 19.847618, 18.141190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.279297, 20.473082, 18.144579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.029581, 20.164715, 18.195091>,  <17.879751, 19.979694, 18.225399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.029581, 20.164715, 18.195091>,  <18.279297, 20.473082, 18.144579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.029581, 20.164715, 18.195091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187580, 0.304854, 0.933744,
		-0.758337, 0.559240, -0.334927,
		-0.624291, -0.770918, 0.126280,
		17.842293, 19.933439, 18.232975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.735409, 20.587225, 18.649790>,  <18.279297, 20.473082, 18.144579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.735409, 20.587225, 18.649790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.666115, 20.193316, 18.655529>,  <17.624538, 19.956970, 18.658972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.666115, 20.193316, 18.655529>,  <17.735409, 20.587225, 18.649790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.666115, 20.193316, 18.655529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342440, 0.073887, 0.936630,
		-0.923430, 0.157346, -0.350027,
		-0.173237, -0.984776, 0.014348,
		17.614143, 19.897882, 18.659834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.113871, 20.461668, 18.972870>,  <17.735409, 20.587225, 18.649790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.113871, 20.461668, 18.972870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.314352, 20.118315, 19.016638>,  <17.434641, 19.912302, 19.042898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.314352, 20.118315, 19.016638>,  <17.113871, 20.461668, 18.972870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.314352, 20.118315, 19.016638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277620, -0.039744, 0.959868,
		-0.819588, -0.511465, -0.258225,
		0.501202, -0.858385, 0.109420,
		17.464712, 19.860800, 19.049463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.565058, 20.023397, 19.267218>,  <17.113871, 20.461668, 18.972870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.565058, 20.023397, 19.267218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.929039, 19.883291, 19.356033>,  <17.147427, 19.799227, 19.409323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.929039, 19.883291, 19.356033>,  <16.565058, 20.023397, 19.267218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.929039, 19.883291, 19.356033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218103, 0.051196, 0.974582,
		-0.352730, -0.935251, -0.029808,
		0.909952, -0.350265, 0.222040,
		17.202024, 19.778212, 19.422646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.354061, 19.666557, 19.782688>,  <16.565058, 20.023397, 19.267218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.354061, 19.666557, 19.782688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.752970, 19.696077, 19.782694>,  <16.992315, 19.713789, 19.782698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.752970, 19.696077, 19.782694>,  <16.354061, 19.666557, 19.782688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.752970, 19.696077, 19.782694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003705, 0.049897, 0.998747,
		0.073710, -0.996024, 0.050035,
		0.997273, 0.073803, 0.000012,
		17.052151, 19.718218, 19.782698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.543379, 19.140623, 20.206192>,  <16.354061, 19.666557, 19.782688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.543379, 19.140623, 20.206192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.844435, 19.403967, 20.210194>,  <17.025068, 19.561974, 20.212595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.844435, 19.403967, 20.210194>,  <16.543379, 19.140623, 20.206192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.844435, 19.403967, 20.210194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081119, 0.077637, 0.993676,
		0.653418, -0.748690, 0.111838,
		0.752638, 0.658358, 0.010004,
		17.070227, 19.601475, 20.213194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.043793, 18.881826, 20.663290>,  <16.543379, 19.140623, 20.206192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.043793, 18.881826, 20.663290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.093483, 19.278681, 20.669399>,  <17.123297, 19.516794, 20.673065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.093483, 19.278681, 20.669399>,  <17.043793, 18.881826, 20.663290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.093483, 19.278681, 20.669399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131318, -0.031693, 0.990834,
		0.983526, -0.121080, -0.134223,
		0.124224, 0.992137, 0.015271,
		17.130751, 19.576323, 20.673981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.380888, 18.271185, 20.393179>,  <17.043793, 18.881826, 20.663290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.380888, 18.271185, 20.393179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.267250, 17.946835, 20.597834>,  <17.199068, 17.752224, 20.720627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.267250, 17.946835, 20.597834>,  <17.380888, 18.271185, 20.393179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.267250, 17.946835, 20.597834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436738, -0.365606, -0.821944,
		0.853552, -0.456960, -0.250273,
		-0.284095, -0.810876, 0.511635,
		17.182022, 17.703571, 20.751324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.674986, 17.667219, 20.071262>,  <17.380888, 18.271185, 20.393179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.674986, 17.667219, 20.071262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.345144, 17.551937, 20.265980>,  <17.147240, 17.482769, 20.382811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.345144, 17.551937, 20.265980>,  <17.674986, 17.667219, 20.071262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.345144, 17.551937, 20.265980> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370939, -0.374232, -0.849914,
		0.427123, -0.881413, 0.201687,
		-0.824603, -0.288204, 0.486794,
		17.097763, 17.465475, 20.412018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.537416, 16.907951, 20.074476>,  <17.674986, 17.667219, 20.071262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.537416, 16.907951, 20.074476> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.174088, 17.066557, 20.127731>,  <16.956091, 17.161720, 20.159685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.174088, 17.066557, 20.127731>,  <17.537416, 16.907951, 20.074476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.174088, 17.066557, 20.127731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345301, -0.531229, -0.773668,
		-0.236044, -0.748713, 0.619445,
		-0.908323, 0.396515, 0.133138,
		16.901590, 17.185511, 20.167673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.085752, 16.339012, 19.895342>,  <17.537416, 16.907951, 20.074476>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.085752, 16.339012, 19.895342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.849560, 16.660437, 19.865353>,  <16.707844, 16.853291, 19.847359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.849560, 16.660437, 19.865353>,  <17.085752, 16.339012, 19.895342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.849560, 16.660437, 19.865353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425403, -0.388846, -0.817209,
		-0.685832, -0.450652, 0.571444,
		-0.590480, 0.803562, -0.074975,
		16.672415, 16.901505, 19.842861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.432926, 16.037785, 19.804426>,  <17.085752, 16.339012, 19.895342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.432926, 16.037785, 19.804426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.422354, 16.406971, 19.650837>,  <16.416010, 16.628483, 19.558683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.422354, 16.406971, 19.650837>,  <16.432926, 16.037785, 19.804426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.422354, 16.406971, 19.650837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568500, -0.329822, -0.753674,
		-0.822259, 0.198369, 0.533423,
		-0.026429, 0.922966, -0.383972,
		16.414425, 16.683861, 19.535645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.769304, 16.121382, 19.726982>,  <16.432926, 16.037785, 19.804426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.769304, 16.121382, 19.726982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.928036, 16.401403, 19.489511>,  <16.023275, 16.569416, 19.347029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.928036, 16.401403, 19.489511>,  <15.769304, 16.121382, 19.726982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.928036, 16.401403, 19.489511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699409, -0.188251, -0.689484,
		-0.594436, 0.688830, 0.414921,
		0.396828, 0.700054, -0.593677,
		16.047085, 16.611420, 19.311409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.170477, 16.453892, 19.483246>,  <15.769304, 16.121382, 19.726982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.170477, 16.453892, 19.483246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.452482, 16.572823, 19.225702>,  <15.621686, 16.644180, 19.071177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.452482, 16.572823, 19.225702>,  <15.170477, 16.453892, 19.483246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.452482, 16.572823, 19.225702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595338, -0.245240, -0.765134,
		-0.385393, 0.922743, 0.004111,
		0.705014, 0.297325, -0.643858,
		15.663986, 16.662020, 19.032545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.892010, 16.903095, 19.026089>,  <15.170477, 16.453892, 19.483246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.892010, 16.903095, 19.026089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.195630, 16.731314, 18.830370>,  <15.377802, 16.628244, 18.712938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.195630, 16.731314, 18.830370>,  <14.892010, 16.903095, 19.026089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.195630, 16.731314, 18.830370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639486, -0.350918, -0.684042,
		0.122061, 0.832121, -0.540994,
		0.759051, -0.429453, -0.489297,
		15.423346, 16.602478, 18.683580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.834660, 17.142775, 18.302616>,  <14.892010, 16.903095, 19.026089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.834660, 17.142775, 18.302616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.025469, 16.791641, 18.319851>,  <15.139955, 16.580961, 18.330193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.025469, 16.791641, 18.319851>,  <14.834660, 17.142775, 18.302616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.025469, 16.791641, 18.319851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451357, -0.286748, -0.845016,
		0.754139, 0.383644, -0.533002,
		0.477022, -0.877834, 0.043088,
		15.168575, 16.528292, 18.332777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.878640, 16.989189, 17.570559>,  <14.834660, 17.142775, 18.302616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.878640, 16.989189, 17.570559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.985989, 16.653885, 17.760420>,  <15.050398, 16.452702, 17.874336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.985989, 16.653885, 17.760420>,  <14.878640, 16.989189, 17.570559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.985989, 16.653885, 17.760420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429395, -0.545167, -0.720008,
		0.862320, -0.010585, -0.506252,
		0.268371, -0.838260, 0.474654,
		15.066500, 16.402407, 17.902817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.264643, 16.583277, 17.112331>,  <14.878640, 16.989189, 17.570559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.264643, 16.583277, 17.112331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.101386, 16.320807, 17.366215>,  <15.003432, 16.163324, 17.518545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.101386, 16.320807, 17.366215>,  <15.264643, 16.583277, 17.112331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.101386, 16.320807, 17.366215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333911, -0.539776, -0.772751,
		0.849661, -0.527327, 0.001201,
		-0.408141, -0.656176, 0.634707,
		14.978944, 16.123953, 17.556627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.565216, 15.882754, 16.943768>,  <15.264643, 16.583277, 17.112331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.565216, 15.882754, 16.943768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.217685, 15.797556, 17.122549>,  <15.009166, 15.746437, 17.229818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.217685, 15.797556, 17.122549>,  <15.565216, 15.882754, 16.943768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.217685, 15.797556, 17.122549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096824, -0.812211, -0.575272,
		0.485552, -0.543089, 0.685050,
		-0.868829, -0.212995, 0.446955,
		14.957036, 15.733657, 17.256636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<17.024553, 17.873859, 26.403372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.412167, 17.953085, 26.344389>,  <17.644735, 18.000620, 26.308998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.412167, 17.953085, 26.344389>,  <17.024553, 17.873859, 26.403372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.412167, 17.953085, 26.344389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097919, -0.239988, -0.965825,
		-0.226684, 0.950356, -0.213163,
		0.969034, 0.198064, -0.147459,
		17.702877, 18.012505, 26.300152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.098421, 18.337770, 25.781712>,  <17.024553, 17.873859, 26.403372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.098421, 18.337770, 25.781712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.423443, 18.113480, 25.845392>,  <17.618456, 17.978905, 25.883600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.423443, 18.113480, 25.845392>,  <17.098421, 18.337770, 25.781712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.423443, 18.113480, 25.845392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081595, -0.379854, -0.921441,
		0.577148, 0.735730, -0.354404,
		0.812553, -0.560725, 0.159200,
		17.667210, 17.945263, 25.893152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.359264, 18.400024, 25.118277>,  <17.098421, 18.337770, 25.781712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.359264, 18.400024, 25.118277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.564152, 18.112482, 25.306267>,  <17.687084, 17.939957, 25.419060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.564152, 18.112482, 25.306267>,  <17.359264, 18.400024, 25.118277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.564152, 18.112482, 25.306267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219388, -0.419542, -0.880825,
		0.830361, 0.554284, -0.057190,
		0.512221, -0.718856, 0.469974,
		17.717817, 17.896826, 25.447260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.062555, 18.403896, 24.789484>,  <17.359264, 18.400024, 25.118277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.062555, 18.403896, 24.789484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.967440, 18.045212, 24.938810>,  <17.910370, 17.830002, 25.028406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.967440, 18.045212, 24.938810>,  <18.062555, 18.403896, 24.789484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.967440, 18.045212, 24.938810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007378, -0.385995, -0.922472,
		0.971288, -0.216601, 0.098402,
		-0.237790, -0.896712, 0.373314,
		17.896103, 17.776197, 25.050804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.551764, 17.953688, 24.562021>,  <18.062555, 18.403896, 24.789484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.551764, 17.953688, 24.562021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.237061, 17.727453, 24.660917>,  <18.048239, 17.591713, 24.720255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.237061, 17.727453, 24.660917>,  <18.551764, 17.953688, 24.562021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.237061, 17.727453, 24.660917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077999, -0.306240, -0.948754,
		0.612317, -0.765721, 0.196821,
		-0.786755, -0.565586, 0.247241,
		18.001034, 17.557777, 24.735090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.673985, 17.438749, 24.146526>,  <18.551764, 17.953688, 24.562021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.673985, 17.438749, 24.146526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.293406, 17.395220, 24.261700>,  <18.065058, 17.369102, 24.330803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.293406, 17.395220, 24.261700>,  <18.673985, 17.438749, 24.146526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.293406, 17.395220, 24.261700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217327, -0.424943, -0.878745,
		0.217984, -0.898655, 0.380660,
		-0.951447, -0.108825, 0.287932,
		18.007971, 17.362572, 24.348080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.414509, 16.756338, 23.928326>,  <18.673985, 17.438749, 24.146526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.414509, 16.756338, 23.928326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.092726, 16.989538, 23.973864>,  <17.899656, 17.129457, 24.001186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.092726, 16.989538, 23.973864>,  <18.414509, 16.756338, 23.928326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.092726, 16.989538, 23.973864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340388, -0.295367, -0.892689,
		-0.486813, -0.756880, 0.436057,
		-0.804456, 0.583002, 0.113844,
		17.851389, 17.164438, 24.008017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.075695, 16.453365, 23.509218>,  <18.414509, 16.756338, 23.928326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.075695, 16.453365, 23.509218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.886694, 16.801094, 23.567209>,  <17.773293, 17.009731, 23.602005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.886694, 16.801094, 23.567209>,  <18.075695, 16.453365, 23.509218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.886694, 16.801094, 23.567209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287997, 0.003170, -0.957626,
		-0.832945, -0.494235, 0.248865,
		-0.472504, 0.869323, 0.144979,
		17.744944, 17.061892, 23.610703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.380722, 16.393429, 23.224051>,  <18.075695, 16.453365, 23.509218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.380722, 16.393429, 23.224051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.447914, 16.787519, 23.237370>,  <17.488230, 17.023973, 23.245361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.447914, 16.787519, 23.237370>,  <17.380722, 16.393429, 23.224051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.447914, 16.787519, 23.237370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329931, 0.088017, -0.939893,
		-0.928939, 0.146899, 0.339842,
		0.167981, 0.985228, 0.033296,
		17.498308, 17.083088, 23.247358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.998304, 16.585220, 22.675148>,  <17.380722, 16.393429, 23.224051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.998304, 16.585220, 22.675148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.149099, 16.948631, 22.747210>,  <17.239576, 17.166677, 22.790445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.149099, 16.948631, 22.747210>,  <16.998304, 16.585220, 22.675148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.149099, 16.948631, 22.747210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434867, 0.345352, -0.831638,
		-0.817783, 0.235177, 0.525284,
		0.376990, 0.908528, 0.180152,
		17.262196, 17.221189, 22.801256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.481672, 17.118725, 22.583399>,  <16.998304, 16.585220, 22.675148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.481672, 17.118725, 22.583399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.839348, 17.286871, 22.521788>,  <17.053953, 17.387758, 22.484821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.839348, 17.286871, 22.521788>,  <16.481672, 17.118725, 22.583399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.839348, 17.286871, 22.521788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223754, 0.121635, -0.967026,
		-0.387768, 0.899166, 0.202823,
		0.894187, 0.420364, -0.154026,
		17.107603, 17.412981, 22.475580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.409950, 17.804413, 22.322523>,  <16.481672, 17.118725, 22.583399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.409950, 17.804413, 22.322523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.783998, 17.692923, 22.235012>,  <17.008427, 17.626028, 22.182505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.783998, 17.692923, 22.235012>,  <16.409950, 17.804413, 22.322523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.783998, 17.692923, 22.235012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142255, 0.270171, -0.952245,
		0.324521, 0.921586, 0.212992,
		0.935120, -0.278725, -0.218777,
		17.064535, 17.609304, 22.169378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.753492, 18.309753, 21.986027>,  <16.409950, 17.804413, 22.322523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.753492, 18.309753, 21.986027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.937391, 17.977720, 21.859793>,  <17.047731, 17.778500, 21.784052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.937391, 17.977720, 21.859793>,  <16.753492, 18.309753, 21.986027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.937391, 17.977720, 21.859793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094410, 0.307670, -0.946798,
		0.883018, 0.465081, 0.063082,
		0.459747, -0.830083, -0.315586,
		17.075315, 17.728695, 21.765118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.210653, 18.523005, 21.480890>,  <16.753492, 18.309753, 21.986027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.210653, 18.523005, 21.480890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.141922, 18.132092, 21.431261>,  <17.100683, 17.897543, 21.401484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.141922, 18.132092, 21.431261>,  <17.210653, 18.523005, 21.480890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.141922, 18.132092, 21.431261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248279, 0.164840, -0.954560,
		0.953327, -0.133217, -0.270963,
		-0.171829, -0.977282, -0.124072,
		17.090374, 17.838907, 21.394039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.637575, 18.989138, 21.097837>,  <17.210653, 18.523005, 21.480890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.637575, 18.989138, 21.097837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.474197, 19.350142, 21.043213>,  <17.376171, 19.566744, 21.010439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.474197, 19.350142, 21.043213>,  <17.637575, 18.989138, 21.097837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.474197, 19.350142, 21.043213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014586, 0.143137, 0.989595,
		0.912667, 0.406186, -0.045299,
		-0.408444, 0.902510, -0.136561,
		17.351664, 19.620895, 21.002245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.066866, 19.415409, 21.428284>,  <17.637575, 18.989138, 21.097837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.066866, 19.415409, 21.428284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.713058, 19.600943, 21.408333>,  <17.500774, 19.712263, 21.396362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.713058, 19.600943, 21.408333>,  <18.066866, 19.415409, 21.428284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.713058, 19.600943, 21.408333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061284, 0.221520, 0.973228,
		0.462466, 0.857780, -0.224363,
		-0.884517, 0.463834, -0.049877,
		17.447704, 19.740093, 21.393370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.111214, 20.055017, 21.768719>,  <18.066866, 19.415409, 21.428284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.111214, 20.055017, 21.768719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.714630, 20.004894, 21.783178>,  <17.476681, 19.974819, 21.791853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.714630, 20.004894, 21.783178>,  <18.111214, 20.055017, 21.768719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.714630, 20.004894, 21.783178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027235, 0.469984, 0.882255,
		-0.127543, 0.873735, -0.469382,
		-0.991459, -0.125309, 0.036147,
		17.417192, 19.967302, 21.794022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.917149, 20.737934, 21.918503>,  <18.111214, 20.055017, 21.768719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.917149, 20.737934, 21.918503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.623907, 20.483681, 22.015270>,  <17.447962, 20.331129, 22.073330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.623907, 20.483681, 22.015270>,  <17.917149, 20.737934, 21.918503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.623907, 20.483681, 22.015270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086069, 0.266133, 0.960086,
		-0.674647, 0.724666, -0.140395,
		-0.733106, -0.635635, 0.241918,
		17.403975, 20.292990, 22.087845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.546185, 21.048752, 22.302515>,  <17.917149, 20.737934, 21.918503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.546185, 21.048752, 22.302515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.397434, 20.691710, 22.404465>,  <17.308184, 20.477484, 22.465635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.397434, 20.691710, 22.404465>,  <17.546185, 21.048752, 22.302515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.397434, 20.691710, 22.404465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039135, 0.259247, 0.965018,
		-0.927457, 0.368842, -0.061476,
		-0.371877, -0.892607, 0.254875,
		17.285872, 20.423927, 22.480927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.892260, 21.106184, 22.683043>,  <17.546185, 21.048752, 22.302515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.892260, 21.106184, 22.683043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.002007, 20.745697, 22.817225>,  <17.067854, 20.529406, 22.897734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.002007, 20.745697, 22.817225>,  <16.892260, 21.106184, 22.683043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.002007, 20.745697, 22.817225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030888, 0.340402, 0.939772,
		-0.961129, -0.268202, 0.065558,
		0.274365, -0.901218, 0.335455,
		17.084316, 20.475332, 22.917860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.507847, 21.070885, 23.275169>,  <16.892260, 21.106184, 22.683043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.507847, 21.070885, 23.275169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.794893, 20.794378, 23.309052>,  <16.967121, 20.628475, 23.329382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.794893, 20.794378, 23.309052>,  <16.507847, 21.070885, 23.275169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.794893, 20.794378, 23.309052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119627, 0.242172, 0.962830,
		-0.686085, -0.680811, 0.256481,
		0.717618, -0.691266, 0.084707,
		17.010180, 20.586998, 23.334463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.327269, 20.668245, 23.829903>,  <16.507847, 21.070885, 23.275169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.327269, 20.668245, 23.829903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.723927, 20.642353, 23.785271>,  <16.961922, 20.626818, 23.758492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.723927, 20.642353, 23.785271>,  <16.327269, 20.668245, 23.829903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.723927, 20.642353, 23.785271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120073, 0.147086, 0.981809,
		-0.047143, -0.987003, 0.153630,
		0.991645, -0.064732, -0.111578,
		17.021420, 20.622934, 23.751797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.601854, 20.490530, 24.471443>,  <16.327269, 20.668245, 23.829903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.601854, 20.490530, 24.471443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.956167, 20.594162, 24.317423>,  <17.168755, 20.656342, 24.225010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.956167, 20.594162, 24.317423>,  <16.601854, 20.490530, 24.471443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.956167, 20.594162, 24.317423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239337, 0.455836, 0.857281,
		0.397620, -0.851524, 0.341767,
		0.885785, 0.259075, -0.385051,
		17.221903, 20.671885, 24.201906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.069946, 20.462933, 25.041838>,  <16.601854, 20.490530, 24.471443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.069946, 20.462933, 25.041838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.276405, 20.689228, 24.784611>,  <17.400280, 20.825005, 24.630276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.276405, 20.689228, 24.784611>,  <17.069946, 20.462933, 25.041838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.276405, 20.689228, 24.784611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467473, 0.443040, 0.764973,
		0.717678, -0.695454, -0.035793,
		0.516146, 0.565737, -0.643066,
		17.431250, 20.858950, 24.591690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.791441, 20.475746, 25.217020>,  <17.069946, 20.462933, 25.041838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.791441, 20.475746, 25.217020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.754246, 20.816362, 25.010630>,  <17.731928, 21.020733, 24.886795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.754246, 20.816362, 25.010630>,  <17.791441, 20.475746, 25.217020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.754246, 20.816362, 25.010630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498842, 0.488333, 0.716022,
		0.861690, -0.190809, -0.470194,
		-0.092988, 0.851542, -0.515975,
		17.726349, 21.071825, 24.855837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.465313, 20.768394, 25.350441>,  <17.791441, 20.475746, 25.217020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.465313, 20.768394, 25.350441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.202759, 21.026001, 25.193266>,  <18.045225, 21.180565, 25.098961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.202759, 21.026001, 25.193266>,  <18.465313, 20.768394, 25.350441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.202759, 21.026001, 25.193266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331846, 0.714218, 0.616255,
		0.677521, 0.274108, -0.682518,
		-0.656387, 0.644017, -0.392936,
		18.005842, 21.219206, 25.075384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.819763, 21.426474, 25.381466>,  <18.465313, 20.768394, 25.350441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.819763, 21.426474, 25.381466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.436680, 21.538406, 25.354677>,  <18.206829, 21.605566, 25.338604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.436680, 21.538406, 25.354677>,  <18.819763, 21.426474, 25.381466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.436680, 21.538406, 25.354677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114341, 0.583726, 0.803860,
		0.264038, 0.762207, -0.591036,
		-0.957711, 0.279830, -0.066974,
		18.149366, 21.622355, 25.334585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.848547, 22.119387, 25.149843>,  <18.819763, 21.426474, 25.381466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.848547, 22.119387, 25.149843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.499691, 22.069149, 25.338989>,  <18.290379, 22.039005, 25.452477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.499691, 22.069149, 25.338989>,  <18.848547, 22.119387, 25.149843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.499691, 22.069149, 25.338989> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282467, 0.659889, 0.696246,
		-0.399483, 0.740791, -0.540039,
		-0.872139, -0.125595, 0.472863,
		18.238049, 22.031471, 25.480848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<14.541773, 19.083815, 27.349977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.938895, 19.100962, 27.305256>,  <15.177169, 19.111250, 27.278423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.938895, 19.100962, 27.305256>,  <14.541773, 19.083815, 27.349977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.938895, 19.100962, 27.305256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102605, -0.176760, -0.978891,
		-0.061727, 0.983320, -0.171089,
		0.992805, 0.042869, -0.111804,
		15.236736, 19.113823, 27.271715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.638205, 19.481297, 26.769688>,  <14.541773, 19.083815, 27.349977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.638205, 19.481297, 26.769688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.979172, 19.272625, 26.783743>,  <15.183752, 19.147423, 26.792175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.979172, 19.272625, 26.783743>,  <14.638205, 19.481297, 26.769688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.979172, 19.272625, 26.783743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066138, -0.174245, -0.982479,
		0.518660, 0.835159, -0.183032,
		0.852418, -0.521678, 0.035138,
		15.234898, 19.116121, 26.794285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.951744, 19.704588, 26.135952>,  <14.638205, 19.481297, 26.769688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.951744, 19.704588, 26.135952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.176337, 19.393404, 26.248747>,  <15.311093, 19.206694, 26.316423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.176337, 19.393404, 26.248747>,  <14.951744, 19.704588, 26.135952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.176337, 19.393404, 26.248747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006888, -0.336371, -0.941705,
		0.827460, 0.530693, -0.183508,
		0.561483, -0.777959, 0.281989,
		15.344782, 19.160017, 26.333344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.601297, 19.678333, 25.748713>,  <14.951744, 19.704588, 26.135952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.601297, 19.678333, 25.748713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.561259, 19.298288, 25.866877>,  <15.537236, 19.070261, 25.937775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.561259, 19.298288, 25.866877>,  <15.601297, 19.678333, 25.748713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.561259, 19.298288, 25.866877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158361, -0.277904, -0.947465,
		0.982294, -0.141618, -0.122644,
		-0.100095, -0.950112, 0.295411,
		15.531231, 19.013254, 25.955500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.146873, 19.347980, 25.450319>,  <15.601297, 19.678333, 25.748713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.146873, 19.347980, 25.450319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.828619, 19.112583, 25.507782>,  <15.637666, 18.971344, 25.542259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.828619, 19.112583, 25.507782>,  <16.146873, 19.347980, 25.450319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.828619, 19.112583, 25.507782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028758, -0.200185, -0.979336,
		0.605090, -0.783328, 0.142351,
		-0.795638, -0.588493, 0.143657,
		15.589928, 18.936035, 25.550879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.097094, 18.985975, 24.755871>,  <16.146873, 19.347980, 25.450319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.097094, 18.985975, 24.755871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.777698, 18.858309, 24.960045>,  <15.586060, 18.781710, 25.082550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.777698, 18.858309, 24.960045>,  <16.097094, 18.985975, 24.755871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.777698, 18.858309, 24.960045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414216, -0.323995, -0.850560,
		0.436849, -0.890595, 0.126504,
		-0.798491, -0.319166, 0.510436,
		15.538150, 18.762560, 25.113176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.106869, 18.244530, 24.720316>,  <16.097094, 18.985975, 24.755871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.106869, 18.244530, 24.720316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.731578, 18.370943, 24.776676>,  <15.506404, 18.446791, 24.810493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.731578, 18.370943, 24.776676>,  <16.106869, 18.244530, 24.720316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.731578, 18.370943, 24.776676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263568, -0.388886, -0.882779,
		-0.224193, -0.865384, 0.448160,
		-0.938227, 0.316033, 0.140902,
		15.450109, 18.465754, 24.818947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.694725, 17.727314, 24.351139>,  <16.106869, 18.244530, 24.720316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.694725, 17.727314, 24.351139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.418494, 18.012354, 24.400625>,  <15.252756, 18.183378, 24.430317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.418494, 18.012354, 24.400625>,  <15.694725, 17.727314, 24.351139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.418494, 18.012354, 24.400625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430192, -0.267192, -0.862290,
		-0.581412, -0.648698, 0.491071,
		-0.690576, 0.712600, 0.123716,
		15.211321, 18.226133, 24.437740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.061518, 17.439707, 24.244883>,  <15.694725, 17.727314, 24.351139>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.061518, 17.439707, 24.244883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.003776, 17.833145, 24.201607>,  <14.969131, 18.069208, 24.175642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.003776, 17.833145, 24.201607>,  <15.061518, 17.439707, 24.244883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.003776, 17.833145, 24.201607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668722, -0.177559, -0.722000,
		-0.729365, -0.031875, 0.683382,
		-0.144355, 0.983594, -0.108189,
		14.960469, 18.128223, 24.169149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.315963, 17.521074, 24.249531>,  <15.061518, 17.439707, 24.244883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.315963, 17.521074, 24.249531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.475030, 17.837578, 24.063726>,  <14.570471, 18.027479, 23.952244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.475030, 17.837578, 24.063726>,  <14.315963, 17.521074, 24.249531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.475030, 17.837578, 24.063726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650694, -0.113723, -0.750777,
		-0.646883, 0.600815, 0.469642,
		0.397669, 0.791258, -0.464512,
		14.594331, 18.074955, 23.924374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.779425, 17.953922, 24.233698>,  <14.315963, 17.521074, 24.249531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.779425, 17.953922, 24.233698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.036938, 18.081360, 23.955406>,  <14.191445, 18.157824, 23.788431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.036938, 18.081360, 23.955406>,  <13.779425, 17.953922, 24.233698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.036938, 18.081360, 23.955406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700550, -0.120392, -0.703375,
		-0.307852, 0.940214, 0.145686,
		0.643783, 0.318596, -0.695730,
		14.230073, 18.176939, 23.746687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.405274, 18.405525, 23.794792>,  <13.779425, 17.953922, 24.233698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.405274, 18.405525, 23.794792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.724889, 18.288465, 23.584688>,  <13.916657, 18.218229, 23.458626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.724889, 18.288465, 23.584688>,  <13.405274, 18.405525, 23.794792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.724889, 18.288465, 23.584688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553983, -0.018683, -0.832319,
		0.233764, 0.956037, -0.177051,
		0.799035, -0.292650, -0.525261,
		13.964600, 18.200670, 23.427111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.285492, 18.702322, 23.177893>,  <13.405274, 18.405525, 23.794792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.285492, 18.702322, 23.177893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.560193, 18.422251, 23.099796>,  <13.725014, 18.254208, 23.052938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.560193, 18.422251, 23.099796>,  <13.285492, 18.702322, 23.177893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.560193, 18.422251, 23.099796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388378, -0.126402, -0.912790,
		0.614437, 0.702689, -0.358741,
		0.686753, -0.700179, -0.195243,
		13.766219, 18.212196, 23.041224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.512882, 18.853848, 22.505325>,  <13.285492, 18.702322, 23.177893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.512882, 18.853848, 22.505325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.618879, 18.472902, 22.565699>,  <13.682478, 18.244335, 22.601923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.618879, 18.472902, 22.565699>,  <13.512882, 18.853848, 22.505325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.618879, 18.472902, 22.565699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446711, -0.259968, -0.856076,
		0.854533, 0.159432, -0.494321,
		0.264994, -0.952364, 0.150931,
		13.698378, 18.187193, 22.610977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.793454, 19.495770, 22.224264>,  <13.512882, 18.853848, 22.505325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.793454, 19.495770, 22.224264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.709212, 19.812611, 21.995102>,  <13.658668, 20.002714, 21.857605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.709212, 19.812611, 21.995102>,  <13.793454, 19.495770, 22.224264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.709212, 19.812611, 21.995102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346337, 0.487582, 0.801446,
		0.914164, 0.367207, 0.171647,
		-0.210605, 0.792101, -0.572907,
		13.646031, 20.050241, 21.823231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.185869, 20.104639, 22.450750>,  <13.793454, 19.495770, 22.224264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.185869, 20.104639, 22.450750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.866377, 20.250082, 22.258993>,  <13.674682, 20.337347, 22.143938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.866377, 20.250082, 22.258993>,  <14.185869, 20.104639, 22.450750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.866377, 20.250082, 22.258993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325833, 0.408423, 0.852656,
		0.505826, 0.837246, -0.207746,
		-0.798732, 0.363605, -0.479394,
		13.626758, 20.359163, 22.115175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.167357, 20.748926, 22.671776>,  <14.185869, 20.104639, 22.450750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.167357, 20.748926, 22.671776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.798605, 20.668325, 22.539392>,  <13.577353, 20.619965, 22.459963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.798605, 20.668325, 22.539392>,  <14.167357, 20.748926, 22.671776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.798605, 20.668325, 22.539392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383931, 0.359771, 0.850389,
		-0.052284, 0.911023, -0.409028,
		-0.921880, -0.201501, -0.330960,
		13.522041, 20.607876, 22.440105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.841067, 21.360470, 22.832462>,  <14.167357, 20.748926, 22.671776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.841067, 21.360470, 22.832462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.595391, 21.045424, 22.812740>,  <13.447986, 20.856396, 22.800907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.595391, 21.045424, 22.812740>,  <13.841067, 21.360470, 22.832462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.595391, 21.045424, 22.812740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324423, 0.195048, 0.925584,
		-0.719388, 0.584481, -0.375317,
		-0.614191, -0.787616, -0.049304,
		13.411134, 20.809139, 22.797949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.198370, 21.627346, 23.026497>,  <13.841067, 21.360470, 22.832462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.198370, 21.627346, 23.026497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.176094, 21.232801, 23.088455>,  <13.162728, 20.996075, 23.125631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.176094, 21.232801, 23.088455>,  <13.198370, 21.627346, 23.026497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.176094, 21.232801, 23.088455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387432, 0.164330, 0.907134,
		-0.920215, -0.009495, -0.391298,
		-0.055689, -0.986359, 0.154898,
		13.159388, 20.936893, 23.134924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.765943, 21.620537, 23.573595>,  <13.198370, 21.627346, 23.026497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.765943, 21.620537, 23.573595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.896132, 21.242476, 23.562603>,  <12.974246, 21.015638, 23.556007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.896132, 21.242476, 23.562603>,  <12.765943, 21.620537, 23.573595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.896132, 21.242476, 23.562603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193138, -0.094902, 0.976571,
		-0.925616, -0.312542, -0.213432,
		0.325474, -0.945152, -0.027479,
		12.993774, 20.958931, 23.554359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.400898, 21.310127, 24.152948>,  <12.765943, 21.620537, 23.573595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.400898, 21.310127, 24.152948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.696902, 21.044615, 24.109533>,  <12.874505, 20.885307, 24.083485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.696902, 21.044615, 24.109533>,  <12.400898, 21.310127, 24.152948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.696902, 21.044615, 24.109533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099141, -0.051961, 0.993716,
		-0.665249, -0.746120, 0.027357,
		0.740010, -0.663781, -0.108538,
		12.918905, 20.845480, 24.076971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.248939, 20.788626, 24.639721>,  <12.400898, 21.310127, 24.152948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.248939, 20.788626, 24.639721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.639272, 20.761480, 24.556637>,  <12.873471, 20.745193, 24.506786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.639272, 20.761480, 24.556637>,  <12.248939, 20.788626, 24.639721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.639272, 20.761480, 24.556637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212922, 0.081577, 0.973658,
		-0.049131, -0.994354, 0.094055,
		0.975833, -0.067864, -0.207712,
		12.932022, 20.741121, 24.494324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.561089, 20.371681, 25.092699>,  <12.248939, 20.788626, 24.639721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.561089, 20.371681, 25.092699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.875868, 20.585634, 24.969662>,  <13.064735, 20.714006, 24.895840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.875868, 20.585634, 24.969662>,  <12.561089, 20.371681, 25.092699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.875868, 20.585634, 24.969662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239833, 0.194148, 0.951203,
		0.568500, -0.822318, 0.024502,
		0.786948, 0.534883, -0.307592,
		13.111953, 20.746099, 24.877384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.193461, 20.136316, 25.390617>,  <12.561089, 20.371681, 25.092699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.193461, 20.136316, 25.390617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.292130, 20.517090, 25.317984>,  <13.351332, 20.745554, 25.274403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.292130, 20.517090, 25.317984>,  <13.193461, 20.136316, 25.390617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.292130, 20.517090, 25.317984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330047, 0.093651, 0.939307,
		0.911165, -0.291632, -0.291083,
		0.246672, 0.951935, -0.181584,
		13.366132, 20.802670, 25.263508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.892077, 20.230839, 25.707481>,  <13.193461, 20.136316, 25.390617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.892077, 20.230839, 25.707481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.762816, 20.605921, 25.656439>,  <13.685260, 20.830969, 25.625813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.762816, 20.605921, 25.656439>,  <13.892077, 20.230839, 25.707481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.762816, 20.605921, 25.656439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370290, 0.249380, 0.894815,
		0.870894, 0.241911, -0.427811,
		-0.323153, 0.937704, -0.127607,
		13.665871, 20.887232, 25.618156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.421407, 20.681356, 25.964325>,  <13.892077, 20.230839, 25.707481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.421407, 20.681356, 25.964325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.102578, 20.918213, 26.011730>,  <13.911282, 21.060328, 26.040174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.102578, 20.918213, 26.011730>,  <14.421407, 20.681356, 25.964325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.102578, 20.918213, 26.011730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403630, 0.376415, 0.833903,
		0.449179, 0.712516, -0.539036,
		-0.797071, 0.592143, 0.118515,
		13.863457, 21.095856, 26.047285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.692427, 21.393171, 25.977858>,  <14.421407, 20.681356, 25.964325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.692427, 21.393171, 25.977858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.326450, 21.396746, 26.139254>,  <14.106865, 21.398891, 26.236092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.326450, 21.396746, 26.139254>,  <14.692427, 21.393171, 25.977858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.326450, 21.396746, 26.139254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385887, 0.312227, 0.868105,
		-0.118222, 0.949966, -0.289118,
		-0.914940, 0.008938, 0.403492,
		14.051969, 21.399427, 26.260302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.627024, 22.056473, 26.318863>,  <14.692427, 21.393171, 25.977858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.627024, 22.056473, 26.318863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.372154, 21.798758, 26.488050>,  <14.219233, 21.644129, 26.589563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.372154, 21.798758, 26.488050>,  <14.627024, 22.056473, 26.318863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.372154, 21.798758, 26.488050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394017, 0.199349, 0.897224,
		-0.662390, 0.738344, 0.126841,
		-0.637174, -0.644289, 0.422967,
		14.181002, 21.605471, 26.614941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.338375, 22.821917, 26.098337>,  <14.627024, 22.056473, 26.318863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.338375, 22.821917, 26.098337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.637352, 23.086535, 26.074043>,  <14.816738, 23.245304, 26.059467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.637352, 23.086535, 26.074043>,  <14.338375, 22.821917, 26.098337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.637352, 23.086535, 26.074043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111984, 0.035352, -0.993081,
		-0.654819, 0.749073, 0.100506,
		0.747443, 0.661544, -0.060735,
		14.861585, 23.284998, 26.055822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.054398, 23.416113, 25.785938>,  <14.338375, 22.821917, 26.098337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.054398, 23.416113, 25.785938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.447439, 23.446821, 25.718296>,  <14.683264, 23.465246, 25.677711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.447439, 23.446821, 25.718296>,  <14.054398, 23.416113, 25.785938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.447439, 23.446821, 25.718296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178218, 0.133689, -0.974867,
		-0.052234, 0.988045, 0.145045,
		0.982604, 0.076771, -0.169104,
		14.742220, 23.469852, 25.667564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.172785, 24.033340, 25.400700>,  <14.054398, 23.416113, 25.785938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.172785, 24.033340, 25.400700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.510909, 23.830046, 25.334793>,  <14.713783, 23.708069, 25.295250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.510909, 23.830046, 25.334793>,  <14.172785, 24.033340, 25.400700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.510909, 23.830046, 25.334793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109736, 0.136659, -0.984521,
		0.522886, 0.850306, 0.059747,
		0.845309, -0.508236, -0.164766,
		14.764502, 23.677574, 25.285364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.464653, 24.333813, 24.861998>,  <14.172785, 24.033340, 25.400700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.464653, 24.333813, 24.861998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.679700, 23.996668, 24.852612>,  <14.808728, 23.794380, 24.846979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.679700, 23.996668, 24.852612>,  <14.464653, 24.333813, 24.861998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.679700, 23.996668, 24.852612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074052, -0.019475, -0.997064,
		0.839930, 0.537777, -0.072886,
		0.537618, -0.842862, -0.023466,
		14.840985, 23.743809, 24.845572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.167348, 24.402014, 24.560253>,  <14.464653, 24.333813, 24.861998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.167348, 24.402014, 24.560253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.033677, 24.027374, 24.518103>,  <14.953475, 23.802589, 24.492811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.033677, 24.027374, 24.518103>,  <15.167348, 24.402014, 24.560253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.033677, 24.027374, 24.518103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339043, -0.015137, -0.940649,
		0.879418, -0.350070, 0.322607,
		-0.334176, -0.936601, -0.105378,
		14.933424, 23.746393, 24.486490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.746767, 24.121374, 24.217525>,  <15.167348, 24.402014, 24.560253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.746767, 24.121374, 24.217525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.465819, 23.838795, 24.182636>,  <15.297251, 23.669247, 24.161703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.465819, 23.838795, 24.182636>,  <15.746767, 24.121374, 24.217525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.465819, 23.838795, 24.182636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292452, -0.174682, -0.940190,
		0.648961, -0.685869, 0.329293,
		-0.702369, -0.706449, -0.087222,
		15.255109, 23.626860, 24.156469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.003141, 23.613203, 23.809381>,  <15.746767, 24.121374, 24.217525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.003141, 23.613203, 23.809381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.609439, 23.561449, 23.761211>,  <15.373218, 23.530397, 23.732309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.609439, 23.561449, 23.761211>,  <16.003141, 23.613203, 23.809381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.609439, 23.561449, 23.761211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126587, -0.040495, -0.991129,
		0.123360, -0.990767, 0.056236,
		-0.984255, -0.129384, -0.120423,
		15.314162, 23.522635, 23.725084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.955560, 23.143377, 23.371943>,  <16.003141, 23.613203, 23.809381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.955560, 23.143377, 23.371943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.585903, 23.290285, 23.329845>,  <15.364109, 23.378429, 23.304586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.585903, 23.290285, 23.329845>,  <15.955560, 23.143377, 23.371943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.585903, 23.290285, 23.329845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020669, -0.227009, -0.973673,
		-0.381493, -0.901986, 0.202197,
		-0.924141, 0.367270, -0.105245,
		15.308661, 23.400465, 23.298271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.556679, 22.678125, 23.106466>,  <15.955560, 23.143377, 23.371943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.556679, 22.678125, 23.106466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.374909, 23.021158, 23.010090>,  <15.265848, 23.226978, 22.952265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.374909, 23.021158, 23.010090>,  <15.556679, 22.678125, 23.106466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.374909, 23.021158, 23.010090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041401, -0.249855, -0.967398,
		-0.889823, -0.449583, 0.078035,
		-0.454424, 0.857583, -0.240939,
		15.238583, 23.278433, 22.937809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.865934, 22.567846, 22.830950>,  <15.556679, 22.678125, 23.106466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.865934, 22.567846, 22.830950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.006483, 22.911943, 22.683155>,  <15.090812, 23.118402, 22.594479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.006483, 22.911943, 22.683155>,  <14.865934, 22.567846, 22.830950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.006483, 22.911943, 22.683155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025656, -0.385658, -0.922285,
		-0.935885, 0.333544, -0.113438,
		0.351371, 0.860242, -0.369489,
		15.111895, 23.170015, 22.572308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.500507, 22.665329, 22.270233>,  <14.865934, 22.567846, 22.830950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.500507, 22.665329, 22.270233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.799689, 22.919548, 22.193666>,  <14.979198, 23.072081, 22.147726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.799689, 22.919548, 22.193666>,  <14.500507, 22.665329, 22.270233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.799689, 22.919548, 22.193666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114068, -0.407176, -0.906199,
		-0.653874, 0.655962, -0.377045,
		0.747955, 0.635549, -0.191418,
		15.024076, 23.110212, 22.136242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.493299, 22.829197, 21.535433>,  <14.500507, 22.665329, 22.270233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.493299, 22.829197, 21.535433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.870176, 22.915142, 21.638279>,  <15.096303, 22.966709, 21.699986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.870176, 22.915142, 21.638279>,  <14.493299, 22.829197, 21.535433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.870176, 22.915142, 21.638279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320082, -0.350212, -0.880283,
		-0.099094, 0.911694, -0.398740,
		0.942193, 0.214861, 0.257113,
		15.152834, 22.979601, 21.715412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.816216, 23.324762, 21.018250>,  <14.493299, 22.829197, 21.535433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.816216, 23.324762, 21.018250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.125284, 23.158756, 21.210392>,  <15.310725, 23.059153, 21.325678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.125284, 23.158756, 21.210392>,  <14.816216, 23.324762, 21.018250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.125284, 23.158756, 21.210392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321406, -0.396782, -0.859803,
		0.547427, 0.818735, -0.173194,
		0.772672, -0.415014, 0.480356,
		15.357086, 23.034252, 21.354498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.465364, 23.639572, 20.717190>,  <14.816216, 23.324762, 21.018250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.465364, 23.639572, 20.717190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.543298, 23.280153, 20.874491>,  <15.590058, 23.064501, 20.968872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.543298, 23.280153, 20.874491>,  <15.465364, 23.639572, 20.717190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.543298, 23.280153, 20.874491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154595, -0.367793, -0.916967,
		0.968576, 0.239452, 0.067252,
		0.194835, -0.898549, 0.393253,
		15.601748, 23.010588, 20.992466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<3.962864, 5.686532, 7.432724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.188925, 5.366975, 7.515062>,  <4.324562, 5.175241, 7.564466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.188925, 5.366975, 7.515062>,  <3.962864, 5.686532, 7.432724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.188925, 5.366975, 7.515062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658900, 0.587246, 0.470098,
		-0.496440, -0.130045, 0.858275,
		0.565152, -0.798893, 0.205846,
		4.358471, 5.127307, 7.576816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.101765, 5.518923, 8.153502>,  <3.962864, 5.686532, 7.432724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.101765, 5.518923, 8.153502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.427976, 5.372749, 7.974004>,  <4.623703, 5.285045, 7.866306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.427976, 5.372749, 7.974004>,  <4.101765, 5.518923, 8.153502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.427976, 5.372749, 7.974004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569015, 0.647729, 0.506625,
		0.105525, -0.668509, 0.736180,
		0.815529, -0.365436, -0.448743,
		4.672635, 5.263119, 7.839381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.593796, 5.129571, 8.596942>,  <4.101765, 5.518923, 8.153502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.593796, 5.129571, 8.596942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.793118, 5.273893, 8.281597>,  <4.912710, 5.360487, 8.092390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.793118, 5.273893, 8.281597>,  <4.593796, 5.129571, 8.596942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.793118, 5.273893, 8.281597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648944, 0.447780, 0.615114,
		0.574949, -0.818115, -0.011012,
		0.498303, 0.360805, -0.788362,
		4.942608, 5.382135, 8.045089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.358632, 4.929325, 8.564938>,  <4.593796, 5.129571, 8.596942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.358632, 4.929325, 8.564938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.320988, 5.270786, 8.360029>,  <5.298402, 5.475663, 8.237084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.320988, 5.270786, 8.360029>,  <5.358632, 4.929325, 8.564938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.320988, 5.270786, 8.360029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762075, 0.392869, 0.514680,
		0.640613, -0.341953, -0.687520,
		-0.094109, 0.853653, -0.512270,
		5.292756, 5.526882, 8.206348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.984437, 4.997797, 8.208130>,  <5.358632, 4.929325, 8.564938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.984437, 4.997797, 8.208130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.771719, 5.315194, 8.326494>,  <5.644089, 5.505632, 8.397512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.771719, 5.315194, 8.326494>,  <5.984437, 4.997797, 8.208130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.771719, 5.315194, 8.326494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781770, 0.325621, 0.531795,
		0.325621, 0.514140, -0.793493,
		-0.531795, 0.793493, 0.295910,
		5.612181, 5.553242, 8.415267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.304550, 5.635434, 8.077222>,  <5.984437, 4.997797, 8.208130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.304550, 5.635434, 8.077222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.083958, 5.684524, 8.407266>,  <5.951602, 5.713978, 8.605292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.083958, 5.684524, 8.407266>,  <6.304550, 5.635434, 8.077222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.083958, 5.684524, 8.407266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821152, 0.254043, 0.511050,
		-0.146895, 0.959375, -0.240876,
		-0.551481, 0.122725, 0.825110,
		5.918513, 5.721342, 8.654799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.423274, 6.363249, 8.485760>,  <6.304550, 5.635434, 8.077222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.423274, 6.363249, 8.485760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.225379, 6.122305, 8.736327>,  <6.106643, 5.977739, 8.886667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.225379, 6.122305, 8.736327>,  <6.423274, 6.363249, 8.485760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.225379, 6.122305, 8.736327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562204, 0.327820, 0.759250,
		-0.662694, 0.727803, 0.176464,
		-0.494736, -0.602359, 0.626418,
		6.076959, 5.941597, 8.924253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.927731, 6.650432, 9.019820>,  <6.423274, 6.363249, 8.485760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.927731, 6.650432, 9.019820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.136416, 6.319016, 9.101143>,  <6.261628, 6.120165, 9.149937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.136416, 6.319016, 9.101143>,  <5.927731, 6.650432, 9.019820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.136416, 6.319016, 9.101143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442376, 0.466501, 0.765951,
		-0.729465, -0.309670, 0.609906,
		0.521714, -0.828542, 0.203306,
		6.292931, 6.070453, 9.162134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.649374, 6.541225, 9.643476>,  <5.927731, 6.650432, 9.019820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.649374, 6.541225, 9.643476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.013941, 6.392420, 9.573135>,  <6.232681, 6.303137, 9.530931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.013941, 6.392420, 9.573135>,  <5.649374, 6.541225, 9.643476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.013941, 6.392420, 9.573135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369750, 0.552889, 0.746726,
		-0.180564, -0.745601, 0.641464,
		0.911417, -0.372013, -0.175854,
		6.287366, 6.280816, 9.520379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.101147, 6.144656, 10.206120>,  <5.649374, 6.541225, 9.643476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.101147, 6.144656, 10.206120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.264150, 6.419701, 9.965745>,  <6.361952, 6.584728, 9.821520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.264150, 6.419701, 9.965745>,  <6.101147, 6.144656, 10.206120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.264150, 6.419701, 9.965745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036849, 0.645138, 0.763177,
		0.912458, -0.333144, 0.237561,
		0.407507, 0.687613, -0.600938,
		6.386403, 6.625985, 9.785463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.630429, 6.499652, 10.596646>,  <6.101147, 6.144656, 10.206120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.630429, 6.499652, 10.596646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.456533, 6.725989, 10.316411>,  <6.352195, 6.861792, 10.148270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.456533, 6.725989, 10.316411>,  <6.630429, 6.499652, 10.596646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.456533, 6.725989, 10.316411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002854, 0.778812, 0.627250,
		0.900551, 0.270691, -0.340196,
		-0.434740, 0.565842, -0.700588,
		6.326111, 6.895742, 10.106235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.012095, 7.148239, 10.511062>,  <6.630429, 6.499652, 10.596646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.012095, 7.148239, 10.511062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.651116, 7.236263, 10.362921>,  <6.434528, 7.289078, 10.274036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.651116, 7.236263, 10.362921>,  <7.012095, 7.148239, 10.511062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.651116, 7.236263, 10.362921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039387, 0.898233, 0.437751,
		0.428995, 0.380461, -0.819276,
		-0.902448, 0.220062, -0.370352,
		6.380382, 7.302282, 10.251815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.034973, 7.890389, 10.265342>,  <7.012095, 7.148239, 10.511062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.034973, 7.890389, 10.265342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.654792, 7.779525, 10.321661>,  <6.426684, 7.713007, 10.355453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.654792, 7.779525, 10.321661>,  <7.034973, 7.890389, 10.265342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.654792, 7.779525, 10.321661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164345, 0.832423, 0.529210,
		-0.263878, 0.479849, -0.836728,
		-0.950452, -0.277159, 0.140797,
		6.369657, 7.696378, 10.363900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.674651, 8.472273, 10.176517>,  <7.034973, 7.890389, 10.265342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.674651, 8.472273, 10.176517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.400889, 8.244463, 10.358608>,  <6.236632, 8.107778, 10.467863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.400889, 8.244463, 10.358608>,  <6.674651, 8.472273, 10.176517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.400889, 8.244463, 10.358608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351950, 0.804873, 0.477820,
		-0.638532, 0.166803, -0.751301,
		-0.684403, -0.569524, 0.455231,
		6.195569, 8.073606, 10.495177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.912982, 8.665799, 10.049709>,  <6.674651, 8.472273, 10.176517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.912982, 8.665799, 10.049709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.890042, 8.486105, 10.406338>,  <5.876277, 8.378288, 10.620315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.890042, 8.486105, 10.406338>,  <5.912982, 8.665799, 10.049709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.890042, 8.486105, 10.406338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262587, 0.868384, 0.420663,
		-0.963203, -0.209989, -0.167766,
		-0.057351, -0.449237, 0.891570,
		5.872837, 8.351334, 10.673809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.263706, 8.902912, 10.431108>,  <5.912982, 8.665799, 10.049709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.263706, 8.902912, 10.431108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.504970, 8.777849, 10.724623>,  <5.649728, 8.702811, 10.900732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.504970, 8.777849, 10.724623>,  <5.263706, 8.902912, 10.431108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.504970, 8.777849, 10.724623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286187, 0.773881, 0.564982,
		-0.744510, -0.550774, 0.377296,
		0.603160, -0.312658, 0.733787,
		5.685917, 8.684052, 10.944758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.811642, 9.022115, 11.047055>,  <5.263706, 8.902912, 10.431108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.811642, 9.022115, 11.047055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.166559, 8.961620, 11.221337>,  <5.379509, 8.925323, 11.325907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.166559, 8.961620, 11.221337>,  <4.811642, 9.022115, 11.047055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.166559, 8.961620, 11.221337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137028, 0.815603, 0.562152,
		-0.440380, -0.558497, 0.702956,
		0.887293, -0.151235, 0.435705,
		5.432747, 8.916249, 11.352049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.740961, 9.124754, 11.818535>,  <4.811642, 9.022115, 11.047055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.740961, 9.124754, 11.818535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.126868, 9.179674, 11.728762>,  <5.358413, 9.212626, 11.674898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.126868, 9.179674, 11.728762>,  <4.740961, 9.124754, 11.818535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.126868, 9.179674, 11.728762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027925, 0.794775, 0.606262,
		0.261613, -0.591170, 0.762940,
		0.964769, 0.137301, -0.224431,
		5.416299, 9.220864, 11.661432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.040524, 9.247748, 12.420807>,  <4.740961, 9.124754, 11.818535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.040524, 9.247748, 12.420807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.283068, 9.404670, 12.144134>,  <5.428594, 9.498823, 11.978129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.283068, 9.404670, 12.144134>,  <5.040524, 9.247748, 12.420807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.283068, 9.404670, 12.144134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018660, 0.862574, 0.505586,
		0.794971, -0.319474, 0.515710,
		0.606360, 0.392304, -0.691683,
		5.464975, 9.522361, 11.936628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.691869, 9.412936, 12.780613>,  <5.040524, 9.247748, 12.420807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.691869, 9.412936, 12.780613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.693166, 9.619247, 12.437926>,  <5.693944, 9.743034, 12.232314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.693166, 9.619247, 12.437926>,  <5.691869, 9.412936, 12.780613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.693166, 9.619247, 12.437926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143032, 0.847673, 0.510874,
		0.989713, -0.124195, -0.071024,
		0.003243, 0.515777, -0.856717,
		5.694139, 9.773980, 12.180911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.259513, 9.989287, 12.826310>,  <5.691869, 9.412936, 12.780613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.259513, 9.989287, 12.826310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.037854, 10.123407, 12.521549>,  <5.904858, 10.203879, 12.338693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.037854, 10.123407, 12.521549>,  <6.259513, 9.989287, 12.826310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.037854, 10.123407, 12.521549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112709, 0.876635, 0.467768,
		0.824752, 0.345086, -0.447995,
		-0.554148, 0.335300, -0.761901,
		5.871609, 10.223997, 12.292979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.544160, 10.525517, 12.718390>,  <6.259513, 9.989287, 12.826310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.544160, 10.525517, 12.718390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.183497, 10.560870, 12.549059>,  <5.967100, 10.582083, 12.447461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.183497, 10.560870, 12.549059>,  <6.544160, 10.525517, 12.718390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.183497, 10.560870, 12.549059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166325, 0.832721, 0.528121,
		0.399189, 0.546593, -0.736128,
		-0.901656, 0.088384, -0.423325,
		5.913001, 10.587385, 12.422061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.509666, 11.203530, 12.533578>,  <6.544160, 10.525517, 12.718390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.509666, 11.203530, 12.533578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.124070, 11.097506, 12.542178>,  <5.892712, 11.033891, 12.547338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.124070, 11.097506, 12.542178>,  <6.509666, 11.203530, 12.533578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.124070, 11.097506, 12.542178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216481, 0.829121, 0.515456,
		-0.154453, 0.492241, -0.856646,
		-0.963992, -0.265062, 0.021499,
		5.834872, 11.017987, 12.548628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.116374, 11.790846, 12.333844>,  <6.509666, 11.203530, 12.533578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.116374, 11.790846, 12.333844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.885507, 11.536380, 12.538654>,  <5.746986, 11.383700, 12.661540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.885507, 11.536380, 12.538654>,  <6.116374, 11.790846, 12.333844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.885507, 11.536380, 12.538654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309344, 0.750597, 0.583876,
		-0.755765, 0.178604, -0.630015,
		-0.577170, -0.636165, 0.512025,
		5.712356, 11.345531, 12.692262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.542282, 12.136789, 12.253117>,  <6.116374, 11.790846, 12.333844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.542282, 12.136789, 12.253117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.488996, 11.869108, 12.545533>,  <5.457025, 11.708499, 12.720983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.488996, 11.869108, 12.545533>,  <5.542282, 12.136789, 12.253117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.488996, 11.869108, 12.545533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352159, 0.721441, 0.596244,
		-0.926411, -0.178014, -0.331773,
		-0.133214, -0.669204, 0.731040,
		5.449032, 11.668347, 12.764845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.051790, 12.371849, 12.543139>,  <5.542282, 12.136789, 12.253117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.051790, 12.371849, 12.543139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.188007, 12.158952, 12.853170>,  <5.269738, 12.031213, 13.039189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.188007, 12.158952, 12.853170>,  <5.051790, 12.371849, 12.543139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.188007, 12.158952, 12.853170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059083, 0.810608, 0.582602,
		-0.938371, -0.244195, 0.244600,
		0.340543, -0.532244, 0.775078,
		5.290170, 11.999278, 13.085694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.500969, 12.343408, 13.044164>,  <5.051790, 12.371849, 12.543139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.500969, 12.343408, 13.044164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.850209, 12.287738, 13.231066>,  <5.059753, 12.254336, 13.343206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.850209, 12.287738, 13.231066>,  <4.500969, 12.343408, 13.044164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.850209, 12.287738, 13.231066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127093, 0.860283, 0.493721,
		-0.470684, -0.490453, 0.733425,
		0.873100, -0.139174, 0.467255,
		5.112139, 12.245986, 13.371243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.412643, 12.511931, 13.873431>,  <4.500969, 12.343408, 13.044164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.412643, 12.511931, 13.873431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.805600, 12.527517, 13.800344>,  <5.041374, 12.536869, 13.756491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.805600, 12.527517, 13.800344>,  <4.412643, 12.511931, 13.873431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.805600, 12.527517, 13.800344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091730, 0.751413, 0.653425,
		0.162758, -0.658681, 0.734609,
		0.982393, 0.038964, -0.182719,
		5.100318, 12.539207, 13.745527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.626129, 12.626599, 14.647574>,  <4.412643, 12.511931, 13.873431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.626129, 12.626599, 14.647574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.944122, 12.693995, 14.414469>,  <5.134918, 12.734433, 14.274606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.944122, 12.693995, 14.414469>,  <4.626129, 12.626599, 14.647574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.944122, 12.693995, 14.414469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366826, 0.631602, 0.683021,
		0.483156, -0.756763, 0.440306,
		0.794983, 0.168490, -0.582763,
		5.182617, 12.744543, 14.239639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.174687, 12.691833, 15.160324>,  <4.626129, 12.626599, 14.647574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.174687, 12.691833, 15.160324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.250949, 12.873691, 14.812312>,  <5.296707, 12.982804, 14.603505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.250949, 12.873691, 14.812312>,  <5.174687, 12.691833, 15.160324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.250949, 12.873691, 14.812312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419167, 0.763723, 0.490945,
		0.887665, -0.458288, -0.044963,
		0.190655, 0.454642, -0.870030,
		5.308146, 13.010083, 14.551303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.805471, 13.023697, 15.248183>,  <5.174687, 12.691833, 15.160324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.805471, 13.023697, 15.248183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.654055, 13.205810, 14.925836>,  <5.563205, 13.315077, 14.732427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.654055, 13.205810, 14.925836>,  <5.805471, 13.023697, 15.248183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.654055, 13.205810, 14.925836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515693, 0.826746, 0.224839,
		0.768614, -0.330471, -0.547742,
		-0.378541, 0.455281, -0.805870,
		5.540493, 13.342394, 14.684074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.399959, 13.219971, 14.774980>,  <5.805471, 13.023697, 15.248183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.399959, 13.219971, 14.774980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.770507, 13.136076, 14.900103>,  <6.992836, 13.085739, 14.975177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.770507, 13.136076, 14.900103>,  <6.399959, 13.219971, 14.774980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.770507, 13.136076, 14.900103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303154, -0.077557, -0.949780,
		0.223465, 0.974677, -0.008263,
		0.926370, -0.209737, 0.312808,
		7.048418, 13.073154, 14.993945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.859583, 13.466231, 14.250265>,  <6.399959, 13.219971, 14.774980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.859583, 13.466231, 14.250265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.102278, 13.226036, 14.458606>,  <7.247894, 13.081919, 14.583610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.102278, 13.226036, 14.458606>,  <6.859583, 13.466231, 14.250265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.102278, 13.226036, 14.458606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539734, -0.169828, -0.824527,
		0.583574, 0.781391, 0.221064,
		0.606735, -0.600489, 0.520851,
		7.284298, 13.045890, 14.614861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.647223, 13.650968, 14.216841>,  <6.859583, 13.466231, 14.250265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.647223, 13.650968, 14.216841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.597791, 13.264287, 14.306477>,  <7.568132, 13.032279, 14.360258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.597791, 13.264287, 14.306477>,  <7.647223, 13.650968, 14.216841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.597791, 13.264287, 14.306477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462348, -0.255902, -0.848969,
		0.878045, -0.001307, 0.478577,
		-0.123578, -0.966702, 0.224089,
		7.560718, 12.974277, 14.373703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.222711, 13.447400, 13.910288>,  <7.647223, 13.650968, 14.216841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.222711, 13.447400, 13.910288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.047975, 13.100222, 14.004811>,  <7.943133, 12.891914, 14.061525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.047975, 13.100222, 14.004811>,  <8.222711, 13.447400, 13.910288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.047975, 13.100222, 14.004811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469164, -0.443976, -0.763394,
		0.767500, -0.222614, 0.601155,
		-0.436840, -0.867945, 0.236309,
		7.916923, 12.839838, 14.075704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.748400, 12.882414, 13.931309>,  <8.222711, 13.447400, 13.910288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.748400, 12.882414, 13.931309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.397703, 12.698995, 13.873265>,  <8.187285, 12.588943, 13.838439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.397703, 12.698995, 13.873265>,  <8.748400, 12.882414, 13.931309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.397703, 12.698995, 13.873265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409012, -0.552106, -0.726559,
		0.253047, -0.696356, 0.671606,
		-0.876742, -0.458549, -0.145109,
		8.134681, 12.561430, 13.829733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.811651, 12.108405, 13.941916>,  <8.748400, 12.882414, 13.931309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.811651, 12.108405, 13.941916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.482514, 12.188562, 13.729211>,  <8.285032, 12.236656, 13.601587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.482514, 12.188562, 13.729211>,  <8.811651, 12.108405, 13.941916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.482514, 12.188562, 13.729211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372317, -0.516835, -0.770884,
		-0.429314, -0.832300, 0.350664,
		-0.822843, 0.200393, -0.531764,
		8.235662, 12.248680, 13.569682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.639568, 11.448772, 13.773929>,  <8.811651, 12.108405, 13.941916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.639568, 11.448772, 13.773929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.454441, 11.688079, 13.512280>,  <8.343365, 11.831663, 13.355290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.454441, 11.688079, 13.512280>,  <8.639568, 11.448772, 13.773929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.454441, 11.688079, 13.512280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378970, -0.533542, -0.756118,
		-0.801362, -0.597838, 0.020208,
		-0.462818, 0.598266, -0.654123,
		8.315596, 11.867558, 13.316043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.368171, 10.948291, 13.266802>,  <8.639568, 11.448772, 13.773929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.368171, 10.948291, 13.266802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.331867, 11.305704, 13.090910>,  <8.310085, 11.520152, 12.985374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.331867, 11.305704, 13.090910>,  <8.368171, 10.948291, 13.266802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.331867, 11.305704, 13.090910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310541, -0.394143, -0.864994,
		-0.946218, -0.215059, -0.241707,
		-0.090758, 0.893533, -0.439730,
		8.304640, 11.573764, 12.958991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.972877, 10.841610, 12.715672>,  <8.368171, 10.948291, 13.266802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.972877, 10.841610, 12.715672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.139618, 11.193836, 12.625483>,  <8.239663, 11.405171, 12.571369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.139618, 11.193836, 12.625483>,  <7.972877, 10.841610, 12.715672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.139618, 11.193836, 12.625483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147715, -0.310380, -0.939066,
		-0.896891, 0.358148, -0.259456,
		0.416854, 0.880565, -0.225473,
		8.264674, 11.458006, 12.557840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.606233, 11.127451, 12.078026>,  <7.972877, 10.841610, 12.715672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.606233, 11.127451, 12.078026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.966186, 11.300364, 12.101154>,  <8.182158, 11.404113, 12.115031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.966186, 11.300364, 12.101154>,  <7.606233, 11.127451, 12.078026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.966186, 11.300364, 12.101154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157475, -0.198421, -0.967384,
		-0.406711, 0.879636, -0.246629,
		0.899882, 0.432283, 0.057820,
		8.236151, 11.430050, 12.118501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.621105, 11.416006, 11.512450>,  <7.606233, 11.127451, 12.078026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.621105, 11.416006, 11.512450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.000030, 11.404020, 11.640016>,  <8.227384, 11.396829, 11.716555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.000030, 11.404020, 11.640016>,  <7.621105, 11.416006, 11.512450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.000030, 11.404020, 11.640016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272122, -0.449930, -0.850596,
		0.168975, 0.892561, -0.418069,
		0.947310, -0.029964, 0.318913,
		8.284223, 11.395031, 11.735689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.079659, 11.921671, 11.047467>,  <7.621105, 11.416006, 11.512450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.079659, 11.921671, 11.047467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.299045, 11.638614, 11.225648>,  <8.430676, 11.468780, 11.332556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.299045, 11.638614, 11.225648>,  <8.079659, 11.921671, 11.047467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.299045, 11.638614, 11.225648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252119, -0.367981, -0.895000,
		0.797258, 0.603184, -0.023415,
		0.548466, -0.707643, 0.445451,
		8.463585, 11.426321, 11.359283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.679264, 11.935781, 10.727078>,  <8.079659, 11.921671, 11.047467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.679264, 11.935781, 10.727078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.664694, 11.573984, 10.897052>,  <8.655951, 11.356906, 10.999036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.664694, 11.573984, 10.897052>,  <8.679264, 11.935781, 10.727078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.664694, 11.573984, 10.897052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296985, -0.415802, -0.859598,
		0.954187, 0.094888, 0.283766,
		-0.036425, -0.904492, 0.424933,
		8.653767, 11.302637, 11.024531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.276607, 11.639791, 10.467892>,  <8.679264, 11.935781, 10.727078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.276607, 11.639791, 10.467892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.033115, 11.343916, 10.582653>,  <8.887021, 11.166391, 10.651510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.033115, 11.343916, 10.582653>,  <9.276607, 11.639791, 10.467892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.033115, 11.343916, 10.582653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334038, -0.566956, -0.752980,
		0.719632, -0.362523, 0.592206,
		-0.608727, -0.739688, 0.286904,
		8.850497, 11.122009, 10.668724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.660389, 11.071064, 10.415142>,  <9.276607, 11.639791, 10.467892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.660389, 11.071064, 10.415142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.288810, 10.924356, 10.394999>,  <9.065863, 10.836332, 10.382913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.288810, 10.924356, 10.394999>,  <9.660389, 11.071064, 10.415142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.288810, 10.924356, 10.394999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305041, -0.681228, -0.665491,
		0.209775, -0.633568, 0.744705,
		-0.928948, -0.366769, -0.050359,
		9.010125, 10.814325, 10.379890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.746438, 10.360176, 10.349338>,  <9.660389, 11.071064, 10.415142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.746438, 10.360176, 10.349338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.368254, 10.376781, 10.220104>,  <9.141343, 10.386744, 10.142565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.368254, 10.376781, 10.220104>,  <9.746438, 10.360176, 10.349338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.368254, 10.376781, 10.220104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151760, -0.821488, -0.549661,
		-0.288227, -0.568713, 0.770383,
		-0.945460, 0.041514, -0.323082,
		9.084616, 10.389235, 10.123179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.442108, 9.706111, 10.488954>,  <9.746438, 10.360176, 10.349338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.442108, 9.706111, 10.488954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.225715, 9.876339, 10.198787>,  <9.095879, 9.978476, 10.024687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.225715, 9.876339, 10.198787>,  <9.442108, 9.706111, 10.488954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.225715, 9.876339, 10.198787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041967, -0.875114, -0.482094,
		-0.839985, -0.230362, 0.491282,
		-0.540984, 0.425569, -0.725415,
		9.063419, 10.004009, 9.981162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.936519, 9.202931, 10.396024>,  <9.442108, 9.706111, 10.488954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.936519, 9.202931, 10.396024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.944497, 9.445159, 10.077806>,  <8.949284, 9.590496, 9.886876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.944497, 9.445159, 10.077806>,  <8.936519, 9.202931, 10.396024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.944497, 9.445159, 10.077806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215056, -0.774476, -0.594926,
		-0.976398, 0.182953, 0.114784,
		0.019946, 0.605570, -0.795542,
		8.950480, 9.626830, 9.839144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.809850, 8.738161, 9.915563>,  <8.936519, 9.202931, 10.396024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.809850, 8.738161, 9.915563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.916789, 9.048343, 9.686758>,  <8.980952, 9.234451, 9.549476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.916789, 9.048343, 9.686758>,  <8.809850, 8.738161, 9.915563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.916789, 9.048343, 9.686758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059935, -0.579088, -0.813059,
		-0.961734, 0.251653, -0.108341,
		0.267347, 0.775454, -0.572011,
		8.996993, 9.280979, 9.515155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.346056, 8.779771, 9.457689>,  <8.809850, 8.738161, 9.915563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.346056, 8.779771, 9.457689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.673313, 8.949923, 9.302929>,  <8.869668, 9.052013, 9.210073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.673313, 8.949923, 9.302929>,  <8.346056, 8.779771, 9.457689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.673313, 8.949923, 9.302929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100865, -0.556255, -0.824867,
		-0.566098, 0.713885, -0.412191,
		0.818144, 0.425380, -0.386901,
		8.918756, 9.077537, 9.186858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.216595, 8.792868, 8.793933>,  <8.346056, 8.779771, 9.457689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.216595, 8.792868, 8.793933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.613711, 8.838037, 8.809991>,  <8.851981, 8.865140, 8.819626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.613711, 8.838037, 8.809991>,  <8.216595, 8.792868, 8.793933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.613711, 8.838037, 8.809991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098874, -0.582428, -0.806847,
		-0.067733, 0.805000, -0.589395,
		0.992792, 0.112926, 0.040144,
		8.911549, 8.871915, 8.822034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<18.551701, 22.887138, 25.342316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.372387, 22.609705, 25.567875>,  <18.264799, 22.443245, 25.703211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.372387, 22.609705, 25.567875>,  <18.551701, 22.887138, 25.342316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.372387, 22.609705, 25.567875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129172, 0.674479, 0.726906,
		-0.884508, 0.253022, -0.391951,
		-0.448286, -0.693583, 0.563899,
		18.237902, 22.401630, 25.737045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.012676, 23.226103, 25.569960>,  <18.551701, 22.887138, 25.342316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.012676, 23.226103, 25.569960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.040453, 22.921402, 25.827614>,  <18.057119, 22.738581, 25.982206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.040453, 22.921402, 25.827614>,  <18.012676, 23.226103, 25.569960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.040453, 22.921402, 25.827614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164775, 0.628066, 0.760514,
		-0.983884, -0.158948, -0.081905,
		0.069440, -0.761753, 0.644135,
		18.061285, 22.692877, 26.020855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.443367, 23.263990, 26.114311>,  <18.012676, 23.226103, 25.569960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.443367, 23.263990, 26.114311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.721664, 23.033100, 26.285311>,  <17.888643, 22.894566, 26.387911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.721664, 23.033100, 26.285311>,  <17.443367, 23.263990, 26.114311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.721664, 23.033100, 26.285311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220178, 0.395128, 0.891849,
		-0.683715, -0.714622, 0.147815,
		0.695741, -0.577225, 0.427499,
		17.930387, 22.859932, 26.413561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.104519, 23.033325, 26.792191>,  <17.443367, 23.263990, 26.114311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.104519, 23.033325, 26.792191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.501263, 22.996422, 26.827301>,  <17.739309, 22.974279, 26.848368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.501263, 22.996422, 26.827301>,  <17.104519, 23.033325, 26.792191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.501263, 22.996422, 26.827301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065883, 0.218085, 0.973703,
		-0.108976, -0.971559, 0.210231,
		0.991858, -0.092259, 0.087775,
		17.798820, 22.968744, 26.853634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.136032, 23.071049, 27.424519>,  <17.104519, 23.033325, 26.792191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.136032, 23.071049, 27.424519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.533737, 23.058266, 27.383678>,  <17.772360, 23.050596, 27.359175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.533737, 23.058266, 27.383678>,  <17.136032, 23.071049, 27.424519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.533737, 23.058266, 27.383678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106105, 0.172353, 0.979304,
		-0.013699, -0.984516, 0.174755,
		0.994260, -0.031958, -0.102101,
		17.832016, 23.048679, 27.353048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.317165, 22.504166, 27.929491>,  <17.136032, 23.071049, 27.424519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.317165, 22.504166, 27.929491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.590870, 22.782825, 27.843264>,  <17.755093, 22.950022, 27.791527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.590870, 22.782825, 27.843264>,  <17.317165, 22.504166, 27.929491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.590870, 22.782825, 27.843264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190706, 0.114373, 0.974961,
		0.703861, -0.708237, -0.054594,
		0.684259, 0.696649, -0.215568,
		17.796148, 22.991819, 27.778593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.985813, 22.224220, 28.191755>,  <17.317165, 22.504166, 27.929491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.985813, 22.224220, 28.191755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.012966, 22.623207, 28.183235>,  <18.029257, 22.862598, 28.178123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.012966, 22.623207, 28.183235>,  <17.985813, 22.224220, 28.191755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.012966, 22.623207, 28.183235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184513, 0.008431, 0.982794,
		0.980483, -0.070643, -0.183473,
		0.067881, 0.997466, -0.021301,
		18.033331, 22.922447, 28.176846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.588640, 22.307163, 28.575151>,  <17.985813, 22.224220, 28.191755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.588640, 22.307163, 28.575151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.417536, 22.668720, 28.575632>,  <18.314873, 22.885654, 28.575920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.417536, 22.668720, 28.575632>,  <18.588640, 22.307163, 28.575151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.417536, 22.668720, 28.575632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170117, 0.079201, 0.982236,
		0.887740, 0.420364, -0.187646,
		-0.427759, 0.903892, 0.001201,
		18.289207, 22.939888, 28.575993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.969004, 22.613424, 29.011841>,  <18.588640, 22.307163, 28.575151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.969004, 22.613424, 29.011841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.637962, 22.837688, 29.000975>,  <18.439339, 22.972246, 28.994455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.637962, 22.837688, 29.000975>,  <18.969004, 22.613424, 29.011841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.637962, 22.837688, 29.000975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070208, -0.055378, 0.995994,
		0.556908, 0.826193, 0.085194,
		-0.827601, 0.560659, -0.027165,
		18.389683, 23.005886, 28.992825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.987711, 23.093418, 29.539087>,  <18.969004, 22.613424, 29.011841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.987711, 23.093418, 29.539087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.591934, 23.061678, 29.490583>,  <18.354467, 23.042635, 29.461481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.591934, 23.061678, 29.490583>,  <18.987711, 23.093418, 29.539087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.591934, 23.061678, 29.490583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114097, -0.089345, 0.989444,
		-0.089345, 0.992835, 0.079348,
		-0.989444, -0.079348, -0.121262,
		18.295101, 23.037874, 29.454205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.761950, 23.461620, 30.097109>,  <18.987711, 23.093418, 29.539087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.761950, 23.461620, 30.097109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.440136, 23.270170, 29.956457>,  <18.247047, 23.155300, 29.872066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.440136, 23.270170, 29.956457>,  <18.761950, 23.461620, 30.097109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.440136, 23.270170, 29.956457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353696, -0.089488, 0.931070,
		-0.477098, 0.873448, -0.097291,
		-0.804535, -0.478623, -0.351629,
		18.198776, 23.126583, 29.850967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.229458, 23.746220, 30.416817>,  <18.761950, 23.461620, 30.097109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.229458, 23.746220, 30.416817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.110371, 23.380764, 30.306089>,  <18.038919, 23.161491, 30.239653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.110371, 23.380764, 30.306089>,  <18.229458, 23.746220, 30.416817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.110371, 23.380764, 30.306089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466178, -0.113906, 0.877327,
		-0.833092, 0.390240, -0.392007,
		-0.297716, -0.913640, -0.276816,
		18.021055, 23.106672, 30.223045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.618999, 23.585766, 30.666609>,  <18.229458, 23.746220, 30.416817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.618999, 23.585766, 30.666609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.719275, 23.205240, 30.594883>,  <17.779440, 22.976925, 30.551847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.719275, 23.205240, 30.594883>,  <17.618999, 23.585766, 30.666609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.719275, 23.205240, 30.594883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265811, -0.245751, 0.932175,
		-0.930860, -0.186022, -0.314478,
		0.250689, -0.951316, -0.179313,
		17.794481, 22.919846, 30.541090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.423553, 24.338217, 30.757990>,  <17.618999, 23.585766, 30.666609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.423553, 24.338217, 30.757990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.508451, 24.433912, 31.136982>,  <17.559391, 24.491329, 31.364376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.508451, 24.433912, 31.136982>,  <17.423553, 24.338217, 30.757990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.508451, 24.433912, 31.136982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138998, 0.967102, -0.213057,
		-0.967280, -0.086477, 0.238518,
		0.212246, 0.239239, 0.947479,
		17.572124, 24.505684, 31.421227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.084337, 24.942757, 31.016434>,  <17.423553, 24.338217, 30.757990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.084337, 24.942757, 31.016434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.712711, 25.001657, 31.152174>,  <16.489737, 25.036999, 31.233618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.712711, 25.001657, 31.152174>,  <17.084337, 24.942757, 31.016434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.712711, 25.001657, 31.152174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357717, -0.591304, -0.722771,
		0.094229, -0.792891, 0.602034,
		-0.929064, 0.147252, 0.339349,
		16.433992, 25.045834, 31.253979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.725531, 24.364380, 31.098001>,  <17.084337, 24.942757, 31.016434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.725531, 24.364380, 31.098001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.457308, 24.652617, 31.027460>,  <16.296373, 24.825558, 30.985134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.457308, 24.652617, 31.027460>,  <16.725531, 24.364380, 31.098001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.457308, 24.652617, 31.027460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372992, -0.532970, -0.759486,
		-0.641271, -0.443500, 0.626162,
		-0.670558, 0.720590, -0.176356,
		16.256140, 24.868793, 30.974554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.070358, 24.032135, 30.972124>,  <16.725531, 24.364380, 31.098001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.070358, 24.032135, 30.972124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.064074, 24.392727, 30.799110>,  <16.060303, 24.609081, 30.695301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.064074, 24.392727, 30.799110>,  <16.070358, 24.032135, 30.972124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.064074, 24.392727, 30.799110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401292, -0.401907, -0.823065,
		-0.915816, 0.160641, 0.368071,
		-0.015713, 0.901480, -0.432537,
		16.059361, 24.663170, 30.669350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.496669, 23.983171, 30.550602>,  <16.070358, 24.032135, 30.972124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.496669, 23.983171, 30.550602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.700226, 24.292646, 30.399639>,  <15.822360, 24.478331, 30.309061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.700226, 24.292646, 30.399639>,  <15.496669, 23.983171, 30.550602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.700226, 24.292646, 30.399639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310921, -0.243627, -0.918681,
		-0.802718, 0.584854, 0.116575,
		0.508893, 0.773687, -0.377407,
		15.852894, 24.524752, 30.286417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.034616, 24.237555, 30.085602>,  <15.496669, 23.983171, 30.550602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.034616, 24.237555, 30.085602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.374876, 24.415226, 29.973101>,  <15.579032, 24.521830, 29.905600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.374876, 24.415226, 29.973101>,  <15.034616, 24.237555, 30.085602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.374876, 24.415226, 29.973101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319161, 0.011191, -0.947635,
		-0.417772, 0.895868, 0.151284,
		0.850649, 0.444179, -0.281251,
		15.630071, 24.548479, 29.888725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.842641, 24.820068, 29.662973>,  <15.034616, 24.237555, 30.085602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.842641, 24.820068, 29.662973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.218168, 24.724436, 29.563810>,  <15.443485, 24.667057, 29.504313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.218168, 24.724436, 29.563810>,  <14.842641, 24.820068, 29.662973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.218168, 24.724436, 29.563810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259743, -0.018818, -0.965495,
		0.226167, 0.970817, -0.079767,
		0.938820, -0.239082, -0.247907,
		15.499814, 24.652712, 29.489439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.882748, 25.139351, 29.058960>,  <14.842641, 24.820068, 29.662973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.882748, 25.139351, 29.058960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.182880, 24.875231, 29.046286>,  <15.362961, 24.716759, 29.038681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.182880, 24.875231, 29.046286>,  <14.882748, 25.139351, 29.058960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.182880, 24.875231, 29.046286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120751, -0.089776, -0.988615,
		0.649938, 0.745616, -0.147094,
		0.750333, -0.660300, -0.031685,
		15.407980, 24.677141, 29.036779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.295498, 25.312611, 28.429785>,  <14.882748, 25.139351, 29.058960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.295498, 25.312611, 28.429785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.421470, 24.950033, 28.542343>,  <15.497052, 24.732487, 28.609879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.421470, 24.950033, 28.542343>,  <15.295498, 25.312611, 28.429785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.421470, 24.950033, 28.542343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027533, -0.305082, -0.951928,
		0.948716, 0.292042, -0.121036,
		0.314929, -0.906442, 0.281395,
		15.515948, 24.678101, 28.626762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.868394, 25.045835, 27.823982>,  <15.295498, 25.312611, 28.429785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.868394, 25.045835, 27.823982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.779044, 24.707888, 28.018425>,  <15.725434, 24.505119, 28.135092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.779044, 24.707888, 28.018425>,  <15.868394, 25.045835, 27.823982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.779044, 24.707888, 28.018425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000244, -0.498758, -0.866741,
		0.974733, -0.193489, 0.111615,
		-0.223374, -0.844868, 0.486108,
		15.712032, 24.454428, 28.164257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.309294, 24.643269, 27.599953>,  <15.868394, 25.045835, 27.823982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.309294, 24.643269, 27.599953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.004522, 24.418831, 27.729345>,  <15.821660, 24.284168, 27.806980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.004522, 24.418831, 27.729345>,  <16.309294, 24.643269, 27.599953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.004522, 24.418831, 27.729345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050055, -0.446947, -0.893159,
		0.645726, -0.696713, 0.312455,
		-0.761927, -0.561096, 0.323479,
		15.775945, 24.250502, 27.826389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.458717, 23.851547, 27.491789>,  <16.309294, 24.643269, 27.599953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.458717, 23.851547, 27.491789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.066032, 23.926157, 27.507004>,  <15.830421, 23.970922, 27.516132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.066032, 23.926157, 27.507004>,  <16.458717, 23.851547, 27.491789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.066032, 23.926157, 27.507004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122532, -0.466251, -0.876126,
		-0.145684, -0.864765, 0.480580,
		-0.981714, 0.186524, 0.038036,
		15.771519, 23.982115, 27.518414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.279499, 23.260544, 27.149410>,  <16.458717, 23.851547, 27.491789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.279499, 23.260544, 27.149410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.946573, 23.481863, 27.162792>,  <15.746819, 23.614655, 27.170822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.946573, 23.481863, 27.162792>,  <16.279499, 23.260544, 27.149410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.946573, 23.481863, 27.162792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301634, -0.401450, -0.864786,
		-0.465054, -0.729862, 0.501024,
		-0.832311, 0.553298, 0.033455,
		15.696879, 23.647852, 27.172829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.649429, 22.834410, 27.098171>,  <16.279499, 23.260544, 27.149410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.649429, 22.834410, 27.098171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.563946, 23.191856, 26.940296>,  <15.512656, 23.406324, 26.845572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.563946, 23.191856, 26.940296>,  <15.649429, 22.834410, 27.098171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.563946, 23.191856, 26.940296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098206, -0.421629, -0.901435,
		-0.971949, -0.153883, 0.177864,
		-0.213708, 0.893616, -0.394690,
		15.499833, 23.459942, 26.821890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.114326, 22.577297, 26.620049>,  <15.649429, 22.834410, 27.098171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.114326, 22.577297, 26.620049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.178584, 22.964165, 26.541281>,  <15.217139, 23.196285, 26.494020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.178584, 22.964165, 26.541281>,  <15.114326, 22.577297, 26.620049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.178584, 22.964165, 26.541281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393393, -0.120238, -0.911474,
		-0.905226, 0.223893, 0.361161,
		0.160647, 0.967168, -0.196920,
		15.226778, 23.254314, 26.482204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.528489, 22.401981, 26.950617>,  <15.114326, 22.577297, 26.620049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.528489, 22.401981, 26.950617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.339034, 22.060604, 27.037611>,  <14.225361, 21.855778, 27.089808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.339034, 22.060604, 27.037611>,  <14.528489, 22.401981, 26.950617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.339034, 22.060604, 27.037611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403358, 0.009319, 0.914995,
		-0.782924, 0.521100, 0.339830,
		-0.473637, -0.853445, 0.217486,
		14.196943, 21.804571, 27.102858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.215124, 22.495668, 27.640549>,  <14.528489, 22.401981, 26.950617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.215124, 22.495668, 27.640549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.233108, 22.098339, 27.598049>,  <14.243897, 21.859941, 27.572550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.233108, 22.098339, 27.598049>,  <14.215124, 22.495668, 27.640549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.233108, 22.098339, 27.598049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411670, -0.078482, 0.907947,
		-0.910223, -0.084558, 0.405393,
		0.044958, -0.993323, -0.106247,
		14.246595, 21.800343, 27.566175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.867679, 22.255495, 28.254549>,  <14.215124, 22.495668, 27.640549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.867679, 22.255495, 28.254549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.075471, 21.930445, 28.148886>,  <14.200147, 21.735415, 28.085487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.075471, 21.930445, 28.148886>,  <13.867679, 22.255495, 28.254549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.075471, 21.930445, 28.148886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281207, -0.129338, 0.950891,
		-0.806884, -0.568253, 0.161327,
		0.519481, -0.812626, -0.264157,
		14.231316, 21.686657, 28.069639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.702746, 21.735748, 28.756382>,  <13.867679, 22.255495, 28.254549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.702746, 21.735748, 28.756382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.055541, 21.648626, 28.589212>,  <14.267218, 21.596354, 28.488911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.055541, 21.648626, 28.589212>,  <13.702746, 21.735748, 28.756382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.055541, 21.648626, 28.589212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417068, -0.052173, 0.907376,
		-0.219437, -0.974596, 0.044824,
		0.881987, -0.217806, -0.417922,
		14.320137, 21.583284, 28.463837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.941463, 21.030279, 29.038198>,  <13.702746, 21.735748, 28.756382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.941463, 21.030279, 29.038198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.254851, 21.237944, 28.901585>,  <14.442884, 21.362543, 28.819616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.254851, 21.237944, 28.901585>,  <13.941463, 21.030279, 29.038198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.254851, 21.237944, 28.901585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435323, -0.066306, 0.897829,
		0.443472, -0.852101, -0.277952,
		0.783471, 0.519161, -0.341535,
		14.489893, 21.393692, 28.799124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.537099, 20.694822, 29.295933>,  <13.941463, 21.030279, 29.038198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.537099, 20.694822, 29.295933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.708996, 21.047651, 29.218710>,  <14.812134, 21.259348, 29.172375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.708996, 21.047651, 29.218710>,  <14.537099, 20.694822, 29.295933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.708996, 21.047651, 29.218710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547259, -0.084370, 0.832700,
		0.718212, -0.463501, -0.518979,
		0.429743, 0.882071, -0.193059,
		14.837919, 21.312273, 29.160791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.127055, 20.690847, 29.702084>,  <14.537099, 20.694822, 29.295933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.127055, 20.690847, 29.702084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.122228, 21.078934, 29.605310>,  <15.119331, 21.311787, 29.547247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.122228, 21.078934, 29.605310>,  <15.127055, 20.690847, 29.702084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.122228, 21.078934, 29.605310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590695, 0.202139, 0.781165,
		0.806805, -0.133481, -0.575543,
		-0.012069, 0.970218, -0.241933,
		15.118607, 21.369999, 29.532730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.943347, 20.428831, 29.627331>,  <15.127055, 20.690847, 29.702084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.943347, 20.428831, 29.627331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.917404, 20.047104, 29.743996>,  <15.901838, 19.818068, 29.813993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.917404, 20.047104, 29.743996>,  <15.943347, 20.428831, 29.627331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.917404, 20.047104, 29.743996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011709, -0.291528, -0.956491,
		0.997826, -0.065451, 0.007734,
		-0.064858, -0.954320, 0.291661,
		15.897946, 19.760807, 29.831493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.441114, 20.145330, 29.185781>,  <15.943347, 20.428831, 29.627331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.441114, 20.145330, 29.185781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.206945, 19.843950, 29.305511>,  <16.066444, 19.663122, 29.377350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.206945, 19.843950, 29.305511>,  <16.441114, 20.145330, 29.185781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.206945, 19.843950, 29.305511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062027, -0.326497, -0.943161,
		0.808351, -0.570715, 0.144405,
		-0.585424, -0.753448, 0.299324,
		16.031319, 19.617916, 29.395309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.656706, 19.553459, 28.818102>,  <16.441114, 20.145330, 29.185781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.656706, 19.553459, 28.818102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.293657, 19.448982, 28.949556>,  <16.075829, 19.386297, 29.028429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.293657, 19.448982, 28.949556>,  <16.656706, 19.553459, 28.818102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.293657, 19.448982, 28.949556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188452, -0.446026, -0.874955,
		0.375111, -0.856061, 0.355601,
		-0.907622, -0.261191, 0.328636,
		16.021370, 19.370625, 29.048147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.669159, 18.837875, 28.727894>,  <16.656706, 19.553459, 28.818102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.669159, 18.837875, 28.727894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.277317, 18.913971, 28.753775>,  <16.042212, 18.959629, 28.769302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.277317, 18.913971, 28.753775>,  <16.669159, 18.837875, 28.727894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.277317, 18.913971, 28.753775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105035, -0.210277, -0.971983,
		-0.171300, -0.958955, 0.225969,
		-0.979604, 0.190235, 0.064704,
		15.983436, 18.971043, 28.773186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.234516, 18.255802, 28.500551>,  <16.669159, 18.837875, 28.727894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.234516, 18.255802, 28.500551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.006432, 18.581793, 28.459229>,  <15.869581, 18.777388, 28.434435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.006432, 18.581793, 28.459229>,  <16.234516, 18.255802, 28.500551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.006432, 18.581793, 28.459229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209075, -0.265582, -0.941145,
		-0.794448, -0.515052, 0.321829,
		-0.570210, 0.814977, -0.103307,
		15.835368, 18.826286, 28.428236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.533544, 18.075176, 28.229069>,  <16.234516, 18.255802, 28.500551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.533544, 18.075176, 28.229069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.614644, 18.455202, 28.134186>,  <15.663304, 18.683218, 28.077255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.614644, 18.455202, 28.134186>,  <15.533544, 18.075176, 28.229069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.614644, 18.455202, 28.134186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302503, -0.169624, -0.937934,
		-0.931335, 0.261923, 0.253006,
		0.202751, 0.950065, -0.237209,
		15.675469, 18.740221, 28.063023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.004993, 18.229441, 27.725252>,  <15.533544, 18.075176, 28.229069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.004993, 18.229441, 27.725252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.281653, 18.512827, 27.669115>,  <15.447650, 18.682859, 27.635433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.281653, 18.512827, 27.669115>,  <15.004993, 18.229441, 27.725252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.281653, 18.512827, 27.669115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171536, -0.027618, -0.984791,
		-0.701566, 0.705205, 0.102426,
		0.691651, 0.708465, -0.140344,
		15.489149, 18.725367, 27.627012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<20.848341, 18.806664, 28.944008> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.055168, 18.633596, 28.648594>,  <21.179264, 18.529757, 28.471346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.055168, 18.633596, 28.648594>,  <20.848341, 18.806664, 28.944008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.055168, 18.633596, 28.648594> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743089, 0.201312, -0.638195,
		0.424803, 0.878790, -0.217419,
		0.517070, -0.432669, -0.738537,
		21.210289, 18.503796, 28.427032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.002602, 19.344969, 28.428162>,  <20.848341, 18.806664, 28.944008>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.002602, 19.344969, 28.428162> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.922943, 18.977518, 28.291651>,  <20.875149, 18.757048, 28.209745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.922943, 18.977518, 28.291651>,  <21.002602, 19.344969, 28.428162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.922943, 18.977518, 28.291651> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717295, 0.373923, -0.587936,
		0.667704, 0.127710, -0.733391,
		-0.199146, -0.918625, -0.341275,
		20.863199, 18.701931, 28.189268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.494947, 19.924513, 28.423326>,  <21.002602, 19.344969, 28.428162>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.494947, 19.924513, 28.423326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.517763, 20.323614, 28.409250>,  <20.531452, 20.563074, 28.400805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.517763, 20.323614, 28.409250>,  <20.494947, 19.924513, 28.423326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.517763, 20.323614, 28.409250> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466277, 0.004544, 0.884627,
		0.882798, -0.066866, -0.464969,
		0.057038, 0.997752, -0.035189,
		20.534874, 20.622940, 28.398693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.237909, 20.565269, 27.947981>,  <20.494947, 19.924513, 28.423326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.237909, 20.565269, 27.947981> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.187784, 20.169685, 27.916334>,  <20.157709, 19.932335, 27.897346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.187784, 20.169685, 27.916334>,  <20.237909, 20.565269, 27.947981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.187784, 20.169685, 27.916334> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872956, 0.147802, -0.464869,
		0.471430, 0.010812, -0.881837,
		-0.125311, -0.988958, -0.079117,
		20.150190, 19.872997, 27.892599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.201939, 20.337112, 27.289034>,  <20.237909, 20.565269, 27.947981>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.201939, 20.337112, 27.289034> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.979403, 20.106085, 27.527998>,  <19.845881, 19.967468, 27.671377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.979403, 20.106085, 27.527998>,  <20.201939, 20.337112, 27.289034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.979403, 20.106085, 27.527998> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806239, 0.201154, -0.556342,
		0.201154, -0.791172, -0.577568,
		0.556342, 0.577568, -0.597410,
		19.812500, 19.932814, 27.707220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.919479, 19.648897, 27.117273>,  <20.201939, 20.337112, 27.289034>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.919479, 19.648897, 27.117273> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.659212, 19.802279, 27.379448>,  <19.503052, 19.894308, 27.536753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.659212, 19.802279, 27.379448>,  <19.919479, 19.648897, 27.117273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.659212, 19.802279, 27.379448> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746279, -0.163364, -0.645275,
		-0.140361, -0.908996, 0.392461,
		-0.650666, 0.383457, 0.655434,
		19.464012, 19.917315, 27.576078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.360905, 19.214483, 26.946608>,  <19.919479, 19.648897, 27.117273>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.360905, 19.214483, 26.946608> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.226898, 19.550766, 27.116772>,  <19.146494, 19.752537, 27.218870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.226898, 19.550766, 27.116772>,  <19.360905, 19.214483, 26.946608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.226898, 19.550766, 27.116772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860243, -0.088731, -0.502104,
		-0.384376, -0.534168, 0.752940,
		-0.335017, 0.840709, 0.425408,
		19.126392, 19.802979, 27.244394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.084040, 19.168676, 27.704679>,  <19.360905, 19.214483, 26.946608>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.084040, 19.168676, 27.704679> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.696957, 19.202045, 27.799829>,  <18.464706, 19.222067, 27.856920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.696957, 19.202045, 27.799829>,  <19.084040, 19.168676, 27.704679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.696957, 19.202045, 27.799829> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197178, -0.838423, -0.508102,
		0.157053, -0.538598, 0.827796,
		-0.967706, 0.083424, 0.237876,
		18.406645, 19.227074, 27.871193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.823727, 18.527081, 27.963045>,  <19.084040, 19.168676, 27.704679>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.823727, 18.527081, 27.963045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.505754, 18.712339, 27.806286>,  <18.314972, 18.823494, 27.712231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.505754, 18.712339, 27.806286>,  <18.823727, 18.527081, 27.963045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.505754, 18.712339, 27.806286> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142325, -0.770278, -0.621624,
		-0.589773, -0.438370, 0.678233,
		-0.794929, 0.463147, -0.391898,
		18.267277, 18.851284, 27.688717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.357424, 18.022621, 27.830925>,  <18.823727, 18.527081, 27.963045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.357424, 18.022621, 27.830925> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.210939, 18.308701, 27.592806>,  <18.123049, 18.480349, 27.449934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.210939, 18.308701, 27.592806>,  <18.357424, 18.022621, 27.830925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.210939, 18.308701, 27.592806> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252300, -0.692092, -0.676279,
		-0.895676, -0.097466, 0.433895,
		-0.366210, 0.715199, -0.595300,
		18.101076, 18.523260, 27.414215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.798391, 17.684422, 27.530396>,  <18.357424, 18.022621, 27.830925>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.798391, 17.684422, 27.530396> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.888260, 18.000572, 27.302422>,  <17.942181, 18.190262, 27.165636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.888260, 18.000572, 27.302422>,  <17.798391, 17.684422, 27.530396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.888260, 18.000572, 27.302422> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282420, -0.506968, -0.814385,
		-0.932610, 0.343932, 0.109316,
		0.224673, 0.790377, -0.569936,
		17.955662, 18.237684, 27.131441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.222591, 17.866129, 27.159599>,  <17.798391, 17.684422, 27.530396>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.222591, 17.866129, 27.159599> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.547520, 17.995815, 26.965683>,  <17.742477, 18.073627, 26.849333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.547520, 17.995815, 26.965683>,  <17.222591, 17.866129, 27.159599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.547520, 17.995815, 26.965683> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311149, -0.462137, -0.830431,
		-0.493277, 0.825417, -0.274524,
		0.812320, 0.324215, -0.484790,
		17.791216, 18.093081, 26.820246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.121008, 17.115210, 27.413952>,  <17.222591, 17.866129, 27.159599>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.121008, 17.115210, 27.413952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.000044, 16.798998, 27.626974>,  <16.927465, 16.609272, 27.754787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.000044, 16.798998, 27.626974>,  <17.121008, 17.115210, 27.413952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.000044, 16.798998, 27.626974> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425787, 0.387839, 0.817488,
		-0.852792, 0.473970, 0.219310,
		-0.302408, -0.790527, 0.532556,
		16.909321, 16.561840, 27.786741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.918236, 17.389250, 28.019901>,  <17.121008, 17.115210, 27.413952>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.918236, 17.389250, 28.019901> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.966724, 16.999063, 28.093409>,  <16.995817, 16.764952, 28.137514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.966724, 16.999063, 28.093409>,  <16.918236, 17.389250, 28.019901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.966724, 16.999063, 28.093409> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366641, 0.216045, 0.904930,
		-0.922431, -0.042322, 0.383835,
		0.121224, -0.975466, 0.183770,
		17.003092, 16.706425, 28.148540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.669460, 17.294611, 28.728643>,  <16.918236, 17.389250, 28.019901>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.669460, 17.294611, 28.728643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.887878, 16.970736, 28.642633>,  <17.018930, 16.776409, 28.591028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.887878, 16.970736, 28.642633>,  <16.669460, 17.294611, 28.728643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.887878, 16.970736, 28.642633> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464874, 0.079329, 0.881816,
		-0.696940, -0.581471, 0.419721,
		0.546046, -0.809690, -0.215023,
		17.051693, 16.727829, 28.578127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.604074, 16.790794, 29.275047>,  <16.669460, 17.294611, 28.728643>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.604074, 16.790794, 29.275047> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.938505, 16.732271, 29.063549>,  <17.139164, 16.697157, 28.936649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.938505, 16.732271, 29.063549>,  <16.604074, 16.790794, 29.275047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.938505, 16.732271, 29.063549> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547755, 0.168689, 0.819456,
		-0.030698, -0.974751, 0.221177,
		0.836075, -0.146306, -0.528747,
		17.189327, 16.688379, 28.904924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.073587, 16.439020, 29.711561>,  <16.604074, 16.790794, 29.275047>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.073587, 16.439020, 29.711561> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.331730, 16.562426, 29.432037>,  <17.486616, 16.636469, 29.264324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.331730, 16.562426, 29.432037>,  <17.073587, 16.439020, 29.711561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.331730, 16.562426, 29.432037> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583376, 0.391522, 0.711606,
		0.493140, -0.866908, 0.072691,
		0.645358, 0.308515, -0.698808,
		17.525337, 16.654980, 29.222395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.701731, 16.350313, 30.037640>,  <17.073587, 16.439020, 29.711561>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.701731, 16.350313, 30.037640> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.793074, 16.613058, 29.750200>,  <17.847879, 16.770706, 29.577736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.793074, 16.613058, 29.750200>,  <17.701731, 16.350313, 30.037640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.793074, 16.613058, 29.750200> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654756, 0.442632, 0.612675,
		0.720519, -0.610414, -0.329008,
		0.228356, 0.656865, -0.718598,
		17.861580, 16.810118, 29.534620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.407660, 16.470396, 30.150166>,  <17.701731, 16.350313, 30.037640>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.407660, 16.470396, 30.150166> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.302042, 16.780499, 29.920641>,  <18.238670, 16.966560, 29.782927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.302042, 16.780499, 29.920641>,  <18.407660, 16.470396, 30.150166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.302042, 16.780499, 29.920641> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501588, 0.618521, 0.604848,
		0.823827, -0.128111, -0.552175,
		-0.264045, 0.775254, -0.573813,
		18.222828, 17.013075, 29.748497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.058643, 16.918907, 30.040272>,  <18.407660, 16.470396, 30.150166>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.058643, 16.918907, 30.040272> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.735256, 17.145700, 29.977144>,  <18.541224, 17.281776, 29.939268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.735256, 17.145700, 29.977144>,  <19.058643, 16.918907, 30.040272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.735256, 17.145700, 29.977144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371232, 0.699362, 0.610803,
		0.456688, 0.435228, -0.775895,
		-0.808470, 0.566983, -0.157820,
		18.492716, 17.315796, 29.929798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.368086, 17.483395, 30.000067>,  <19.058643, 16.918907, 30.040272>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.368086, 17.483395, 30.000067> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.982737, 17.579290, 30.048124>,  <18.751526, 17.636827, 30.076960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.982737, 17.579290, 30.048124>,  <19.368086, 17.483395, 30.000067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.982737, 17.579290, 30.048124> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258067, 0.707095, 0.658345,
		0.072879, 0.665238, -0.743066,
		-0.963374, 0.239740, 0.120144,
		18.693724, 17.651213, 30.084167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.312353, 18.232281, 29.964077>,  <19.368086, 17.483395, 30.000067>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.312353, 18.232281, 29.964077> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.000681, 18.090462, 30.170834>,  <18.813677, 18.005371, 30.294888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.000681, 18.090462, 30.170834>,  <19.312353, 18.232281, 29.964077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.000681, 18.090462, 30.170834> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113419, 0.731284, 0.672577,
		-0.616452, 0.582684, -0.529590,
		-0.779181, -0.354546, 0.516889,
		18.766926, 17.984098, 30.325901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.095057, 18.821184, 30.203131>,  <19.312353, 18.232281, 29.964077>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.095057, 18.821184, 30.203131> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.946327, 18.527567, 30.430437>,  <18.857090, 18.351397, 30.566822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.946327, 18.527567, 30.430437>,  <19.095057, 18.821184, 30.203131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.946327, 18.527567, 30.430437> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010648, 0.608745, 0.793295,
		-0.928242, 0.301016, -0.218530,
		-0.371823, -0.734043, 0.568268,
		18.834780, 18.307354, 30.600918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.426903, 19.045483, 30.424356>,  <19.095057, 18.821184, 30.203131>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.426903, 19.045483, 30.424356> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.550755, 18.777637, 30.694393>,  <18.625067, 18.616930, 30.856415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.550755, 18.777637, 30.694393>,  <18.426903, 19.045483, 30.424356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.550755, 18.777637, 30.694393> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028640, 0.716228, 0.697279,
		-0.950426, -0.196564, 0.240943,
		0.309630, -0.669612, 0.675092,
		18.643644, 18.576754, 30.896921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.037104, 19.167543, 30.998253>,  <18.426903, 19.045483, 30.424356>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.037104, 19.167543, 30.998253> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.381226, 18.994900, 31.106764>,  <18.587698, 18.891314, 31.171871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.381226, 18.994900, 31.106764>,  <18.037104, 19.167543, 30.998253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.381226, 18.994900, 31.106764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133581, 0.704411, 0.697109,
		-0.491970, -0.563487, 0.663662,
		0.860303, -0.431610, 0.271278,
		18.639317, 18.865417, 31.188147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.994192, 19.230618, 31.673258>,  <18.037104, 19.167543, 30.998253>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.994192, 19.230618, 31.673258> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.384712, 19.162445, 31.619905>,  <18.619024, 19.121542, 31.587894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.384712, 19.162445, 31.619905>,  <17.994192, 19.230618, 31.673258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.384712, 19.162445, 31.619905> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216201, 0.740432, 0.636410,
		-0.009702, -0.650165, 0.759731,
		0.976301, -0.170429, -0.133382,
		18.677603, 19.111317, 31.579891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.479561, 19.787933, 31.633495>,  <17.994192, 19.230618, 31.673258>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.479561, 19.787933, 31.633495> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.248396, 19.919756, 31.932135>,  <17.109697, 19.998850, 32.111317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.248396, 19.919756, 31.932135>,  <17.479561, 19.787933, 31.633495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.248396, 19.919756, 31.932135> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806989, -0.367078, -0.462625,
		0.121599, -0.869854, 0.478088,
		-0.577912, 0.329557, 0.746599,
		17.075022, 20.018623, 32.156113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.073032, 19.237015, 32.032368>,  <17.479561, 19.787933, 31.633495>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.073032, 19.237015, 32.032368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.887280, 19.591211, 32.025963>,  <16.775827, 19.803730, 32.022121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.887280, 19.591211, 32.025963>,  <17.073032, 19.237015, 32.032368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.887280, 19.591211, 32.025963> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698472, -0.377297, -0.608099,
		-0.544508, -0.271205, 0.793700,
		-0.464380, 0.885491, -0.016012,
		16.747965, 19.856859, 32.021160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.328938, 19.136900, 32.229748>,  <17.073032, 19.237015, 32.032368>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.328938, 19.136900, 32.229748> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.393408, 19.468313, 32.015251>,  <16.432089, 19.667162, 31.886555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.393408, 19.468313, 32.015251>,  <16.328938, 19.136900, 32.229748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.393408, 19.468313, 32.015251> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614823, -0.340737, -0.711260,
		-0.772021, 0.444329, 0.454484,
		0.161174, 0.828535, -0.536239,
		16.441759, 19.716873, 31.854380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.662521, 19.215755, 31.941099>,  <16.328938, 19.136900, 32.229748>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.662521, 19.215755, 31.941099> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.931911, 19.424538, 31.731722>,  <16.093546, 19.549807, 31.606096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.931911, 19.424538, 31.731722>,  <15.662521, 19.215755, 31.941099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.931911, 19.424538, 31.731722> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460080, -0.258267, -0.849485,
		-0.578583, 0.812932, 0.066206,
		0.673475, 0.521957, -0.523443,
		16.133953, 19.581125, 31.574690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.270937, 19.561264, 31.439493>,  <15.662521, 19.215755, 31.941099>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.270937, 19.561264, 31.439493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.648811, 19.561092, 31.308302>,  <15.875536, 19.560989, 31.229588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.648811, 19.561092, 31.308302>,  <15.270937, 19.561264, 31.439493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.648811, 19.561092, 31.308302> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320335, -0.215814, -0.922394,
		-0.070387, 0.976435, -0.204013,
		0.944686, -0.000428, -0.327977,
		15.932217, 19.560965, 31.209909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.262537, 20.025646, 30.874113>,  <15.270937, 19.561264, 31.439493>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.262537, 20.025646, 30.874113> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.612572, 19.858290, 30.776812>,  <15.822593, 19.757875, 30.718430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.612572, 19.858290, 30.776812>,  <15.262537, 20.025646, 30.874113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.612572, 19.858290, 30.776812> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287813, -0.045809, -0.956591,
		0.389084, 0.907112, -0.160505,
		0.875087, -0.418389, -0.243255,
		15.875098, 19.732773, 30.703835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.545979, 20.378090, 30.312206>,  <15.262537, 20.025646, 30.874113>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.545979, 20.378090, 30.312206> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.748820, 20.035170, 30.276688>,  <15.870525, 19.829418, 30.255377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.748820, 20.035170, 30.276688>,  <15.545979, 20.378090, 30.312206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.748820, 20.035170, 30.276688> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241333, -0.042333, -0.969519,
		0.827408, 0.513076, -0.228362,
		0.507104, -0.857299, -0.088796,
		15.900951, 19.777981, 30.250050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.954796, 21.014214, 30.014339>,  <15.545979, 20.378090, 30.312206>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.954796, 21.014214, 30.014339> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.693886, 21.308872, 29.942911>,  <15.537339, 21.485668, 29.900055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.693886, 21.308872, 29.942911>,  <15.954796, 21.014214, 30.014339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.693886, 21.308872, 29.942911> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451734, 0.566971, 0.688825,
		0.608664, 0.368638, -0.702590,
		-0.652276, 0.736647, -0.178569,
		15.498203, 21.529867, 29.889341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.290432, 21.669889, 30.002472>,  <15.954796, 21.014214, 30.014339>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.290432, 21.669889, 30.002472> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.911741, 21.772112, 30.080856>,  <15.684527, 21.833447, 30.127888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.911741, 21.772112, 30.080856>,  <16.290432, 21.669889, 30.002472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.911741, 21.772112, 30.080856> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312655, 0.583536, 0.749488,
		0.077187, 0.770828, -0.632350,
		-0.946725, 0.255558, 0.195961,
		15.627724, 21.848780, 30.139645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.321762, 22.425777, 30.231512>,  <16.290432, 21.669889, 30.002472>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.321762, 22.425777, 30.231512> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.967993, 22.283344, 30.352175>,  <15.755731, 22.197884, 30.424572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.967993, 22.283344, 30.352175>,  <16.321762, 22.425777, 30.231512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.967993, 22.283344, 30.352175> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018513, 0.619110, 0.785086,
		-0.466315, 0.699934, -0.540964,
		-0.884425, -0.356083, 0.301658,
		15.702665, 22.176519, 30.442673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.001947, 22.909536, 30.448008>,  <16.321762, 22.425777, 30.231512>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.001947, 22.909536, 30.448008> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.769647, 22.655649, 30.651915>,  <15.630266, 22.503317, 30.774258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.769647, 22.655649, 30.651915>,  <16.001947, 22.909536, 30.448008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.769647, 22.655649, 30.651915> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186450, 0.713245, 0.675661,
		-0.792442, 0.297345, -0.532561,
		-0.580751, -0.634718, 0.509766,
		15.595422, 22.465233, 30.804844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.353894, 23.201397, 30.659023>,  <16.001947, 22.909536, 30.448008>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.353894, 23.201397, 30.659023> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.351171, 22.894289, 30.915298>,  <15.349538, 22.710024, 31.069063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.351171, 22.894289, 30.915298>,  <15.353894, 23.201397, 30.659023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.351171, 22.894289, 30.915298> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284264, 0.615755, 0.734874,
		-0.958722, -0.177123, -0.222441,
		-0.006807, -0.767771, 0.640688,
		15.349130, 22.663958, 31.107504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.695217, 23.240913, 30.967253>,  <15.353894, 23.201397, 30.659023>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.695217, 23.240913, 30.967253> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.948310, 23.048681, 31.210133>,  <15.100165, 22.933342, 31.355862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.948310, 23.048681, 31.210133>,  <14.695217, 23.240913, 30.967253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.948310, 23.048681, 31.210133> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303786, 0.567216, 0.765493,
		-0.712295, -0.668812, 0.212903,
		0.632733, -0.480579, 0.607201,
		15.138129, 22.904507, 31.392292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.376725, 23.194445, 31.628708>,  <14.695217, 23.240913, 30.967253>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.376725, 23.194445, 31.628708> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.762156, 23.130341, 31.714346>,  <14.993415, 23.091879, 31.765728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.762156, 23.130341, 31.714346>,  <14.376725, 23.194445, 31.628708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.762156, 23.130341, 31.714346> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092093, 0.552750, 0.828243,
		-0.251074, -0.817792, 0.517859,
		0.963577, -0.160259, 0.214094,
		15.051229, 23.082262, 31.778574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.383413, 22.965666, 32.319328>,  <14.376725, 23.194445, 31.628708>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.383413, 22.965666, 32.319328> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.747667, 23.117329, 32.253620>,  <14.966220, 23.208326, 32.214195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.747667, 23.117329, 32.253620>,  <14.383413, 22.965666, 32.319328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.747667, 23.117329, 32.253620> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033068, 0.329404, 0.943610,
		0.411888, -0.864716, 0.287429,
		0.910634, 0.379157, -0.164272,
		15.020858, 23.231075, 32.204338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.751104, 22.732975, 32.935757>,  <14.383413, 22.965666, 32.319328>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.751104, 22.732975, 32.935757> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.949193, 23.049311, 32.791908>,  <15.068047, 23.239113, 32.705601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.949193, 23.049311, 32.791908>,  <14.751104, 22.732975, 32.935757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.949193, 23.049311, 32.791908> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352830, 0.195181, 0.915104,
		0.793893, -0.580063, -0.182374,
		0.495222, 0.790842, -0.359617,
		15.097760, 23.286564, 32.684025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<14.106616, 18.531061, 16.894701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.345311, 18.850708, 16.923859>,  <14.488528, 19.042496, 16.941353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.345311, 18.850708, 16.923859>,  <14.106616, 18.531061, 16.894701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.345311, 18.850708, 16.923859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125458, 0.003186, 0.992094,
		0.792568, -0.601166, 0.102157,
		0.596738, 0.799118, 0.072896,
		14.524333, 19.090443, 16.945728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.512246, 18.398312, 17.404055>,  <14.106616, 18.531061, 16.894701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.512246, 18.398312, 17.404055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.561453, 18.795191, 17.395924>,  <14.590977, 19.033318, 17.391045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.561453, 18.795191, 17.395924>,  <14.512246, 18.398312, 17.404055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.561453, 18.795191, 17.395924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139448, 0.002999, 0.990225,
		0.982558, -0.124650, -0.137991,
		0.123018, 0.992196, -0.020329,
		14.598358, 19.092850, 17.389824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.033878, 18.461309, 17.936701>,  <14.512246, 18.398312, 17.404055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.033878, 18.461309, 17.936701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.875237, 18.828321, 17.925083>,  <14.780053, 19.048529, 17.918114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.875237, 18.828321, 17.925083>,  <15.033878, 18.461309, 17.936701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.875237, 18.828321, 17.925083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203605, 0.118769, 0.971822,
		0.895126, 0.379514, -0.233918,
		-0.396602, 0.917531, -0.029042,
		14.756257, 19.103580, 17.916370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.464658, 18.947557, 18.387739>,  <15.033878, 18.461309, 17.936701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.464658, 18.947557, 18.387739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.112574, 19.125391, 18.321318>,  <14.901323, 19.232092, 18.281464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.112574, 19.125391, 18.321318>,  <15.464658, 18.947557, 18.387739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.112574, 19.125391, 18.321318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061617, 0.239879, 0.968845,
		0.470566, 0.863020, -0.183750,
		-0.880211, 0.444583, -0.166056,
		14.848511, 19.258766, 18.271502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.486372, 19.541531, 18.823925>,  <15.464658, 18.947557, 18.387739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.486372, 19.541531, 18.823925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.096385, 19.484837, 18.755400>,  <14.862392, 19.450821, 18.714285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.096385, 19.484837, 18.755400>,  <15.486372, 19.541531, 18.823925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.096385, 19.484837, 18.755400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212200, 0.363077, 0.907274,
		-0.066391, 0.920916, -0.384064,
		-0.974968, -0.141733, -0.171314,
		14.803894, 19.442316, 18.704006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.173403, 20.042601, 19.245136>,  <15.486372, 19.541531, 18.823925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.173403, 20.042601, 19.245136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.865541, 19.799519, 19.166828>,  <14.680823, 19.653669, 19.119844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.865541, 19.799519, 19.166828>,  <15.173403, 20.042601, 19.245136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.865541, 19.799519, 19.166828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487652, 0.361625, 0.794621,
		-0.412100, 0.707052, -0.574675,
		-0.769655, -0.607705, -0.195769,
		14.634644, 19.617207, 19.108097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.607257, 20.445496, 19.437799>,  <15.173403, 20.042601, 19.245136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.607257, 20.445496, 19.437799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.462396, 20.072695, 19.443739>,  <14.375479, 19.849014, 19.447302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.462396, 20.072695, 19.443739>,  <14.607257, 20.445496, 19.437799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.462396, 20.072695, 19.443739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359374, 0.154307, 0.920348,
		-0.860055, 0.327972, -0.390819,
		-0.362154, -0.932000, 0.014848,
		14.353749, 19.793095, 19.448193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.862615, 20.490082, 19.548767>,  <14.607257, 20.445496, 19.437799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.862615, 20.490082, 19.548767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.996107, 20.136803, 19.680576>,  <14.076202, 19.924835, 19.759661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.996107, 20.136803, 19.680576>,  <13.862615, 20.490082, 19.548767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.996107, 20.136803, 19.680576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345368, 0.210701, 0.914509,
		-0.877122, -0.419007, -0.234711,
		0.333732, -0.883198, 0.329522,
		14.096227, 19.871843, 19.779432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.277730, 20.390909, 19.924349>,  <13.862615, 20.490082, 19.548767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.277730, 20.390909, 19.924349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.576123, 20.152863, 20.043913>,  <13.755159, 20.010035, 20.115650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.576123, 20.152863, 20.043913>,  <13.277730, 20.390909, 19.924349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.576123, 20.152863, 20.043913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305539, 0.092971, 0.947630,
		-0.591739, -0.798244, -0.112476,
		0.745983, -0.595116, 0.298909,
		13.799918, 19.974327, 20.133585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.986904, 19.887392, 20.254160>,  <13.277730, 20.390909, 19.924349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.986904, 19.887392, 20.254160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.362741, 19.915880, 20.388083>,  <13.588243, 19.932972, 20.468435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.362741, 19.915880, 20.388083>,  <12.986904, 19.887392, 20.254160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.362741, 19.915880, 20.388083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331423, -0.055276, 0.941862,
		0.085586, -0.995928, -0.028333,
		0.939592, 0.071220, 0.334805,
		13.644619, 19.937246, 20.488523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.993630, 19.447067, 20.784927>,  <12.986904, 19.887392, 20.254160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.993630, 19.447067, 20.784927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.307178, 19.689482, 20.838999>,  <13.495306, 19.834930, 20.871441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.307178, 19.689482, 20.838999>,  <12.993630, 19.447067, 20.784927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.307178, 19.689482, 20.838999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232450, 0.084537, 0.968928,
		0.575776, -0.790934, 0.207138,
		0.783868, 0.606034, 0.135178,
		13.542338, 19.871292, 20.879553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.255791, 19.246923, 21.435543>,  <12.993630, 19.447067, 20.784927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.255791, 19.246923, 21.435543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.429556, 19.603254, 21.382305>,  <13.533815, 19.817053, 21.350363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.429556, 19.603254, 21.382305>,  <13.255791, 19.246923, 21.435543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.429556, 19.603254, 21.382305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245042, 0.259078, 0.934255,
		0.866741, -0.373239, 0.330836,
		0.434413, 0.890826, -0.133094,
		13.559880, 19.870502, 21.342377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.607123, 18.657068, 21.829988>,  <13.255791, 19.246923, 21.435543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.607123, 18.657068, 21.829988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.509852, 18.340775, 22.054703>,  <13.451489, 18.150999, 22.189531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.509852, 18.340775, 22.054703>,  <13.607123, 18.657068, 21.829988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.509852, 18.340775, 22.054703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544486, -0.368037, -0.753714,
		0.802745, -0.489171, -0.341045,
		-0.243177, -0.790735, 0.561786,
		13.436899, 18.103554, 22.223238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.570047, 18.076111, 21.338781>,  <13.607123, 18.657068, 21.829988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.570047, 18.076111, 21.338781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.381766, 17.931852, 21.660868>,  <13.268798, 17.845297, 21.854120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.381766, 17.931852, 21.660868>,  <13.570047, 18.076111, 21.338781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.381766, 17.931852, 21.660868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596452, -0.542434, -0.591617,
		0.650142, -0.758748, 0.040217,
		-0.470703, -0.360647, 0.805216,
		13.240556, 17.823658, 21.902431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.676586, 17.356827, 21.318916>,  <13.570047, 18.076111, 21.338781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.676586, 17.356827, 21.318916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.336922, 17.416052, 21.521698>,  <13.133123, 17.451588, 21.643368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.336922, 17.416052, 21.521698>,  <13.676586, 17.356827, 21.318916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.336922, 17.416052, 21.521698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482174, -0.608998, -0.629785,
		0.215488, -0.779230, 0.588529,
		-0.849161, 0.148062, 0.506955,
		13.082173, 17.460470, 21.673784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.466509, 16.734921, 21.528173>,  <13.676586, 17.356827, 21.318916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.466509, 16.734921, 21.528173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.134242, 16.956816, 21.509163>,  <12.934882, 17.089952, 21.497757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.134242, 16.956816, 21.509163>,  <13.466509, 16.734921, 21.528173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.134242, 16.956816, 21.509163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419202, -0.679317, -0.602327,
		-0.366420, -0.480410, 0.796833,
		-0.830667, 0.554738, -0.047527,
		12.885042, 17.123238, 21.494905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.069662, 16.367428, 21.206263>,  <13.466509, 16.734921, 21.528173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.069662, 16.367428, 21.206263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.784411, 16.646599, 21.232639>,  <12.613261, 16.814102, 21.248465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.784411, 16.646599, 21.232639>,  <13.069662, 16.367428, 21.206263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.784411, 16.646599, 21.232639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555082, -0.504701, -0.661181,
		-0.428176, -0.508108, 0.747322,
		-0.713126, 0.697927, 0.065941,
		12.570474, 16.855976, 21.252422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.439830, 16.104645, 21.457087>,  <13.069662, 16.367428, 21.206263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.439830, 16.104645, 21.457087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.335375, 16.435360, 21.257795>,  <12.272702, 16.633789, 21.138222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.335375, 16.435360, 21.257795>,  <12.439830, 16.104645, 21.457087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.335375, 16.435360, 21.257795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616197, -0.540071, -0.573258,
		-0.743041, 0.157307, 0.650496,
		-0.261137, 0.826787, -0.498227,
		12.257034, 16.683395, 21.108328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.690961, 16.010321, 21.361794>,  <12.439830, 16.104645, 21.457087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.690961, 16.010321, 21.361794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.817816, 16.285030, 21.100178>,  <11.893929, 16.449856, 20.943209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.817816, 16.285030, 21.100178>,  <11.690961, 16.010321, 21.361794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.817816, 16.285030, 21.100178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562701, -0.418870, -0.712682,
		-0.763408, 0.594047, 0.253609,
		0.317138, 0.686773, -0.654039,
		11.912957, 16.491062, 20.903967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.176609, 16.031631, 20.894011>,  <11.690961, 16.010321, 21.361794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.176609, 16.031631, 20.894011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.494822, 16.161633, 20.689461>,  <11.685749, 16.239634, 20.566730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.494822, 16.161633, 20.689461>,  <11.176609, 16.031631, 20.894011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.494822, 16.161633, 20.689461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231040, -0.617505, -0.751870,
		-0.560135, 0.716284, -0.416156,
		0.795531, 0.325000, -0.511376,
		11.733480, 16.259132, 20.536049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.879965, 16.215683, 20.339516>,  <11.176609, 16.031631, 20.894011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.879965, 16.215683, 20.339516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.266501, 16.187920, 20.240429>,  <11.498424, 16.171261, 20.180977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.266501, 16.187920, 20.240429>,  <10.879965, 16.215683, 20.339516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.266501, 16.187920, 20.240429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240786, -0.583050, -0.775935,
		-0.090575, 0.809466, -0.580138,
		0.966343, -0.069409, -0.247718,
		11.556404, 16.167097, 20.166113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.905708, 16.251966, 19.671234>,  <10.879965, 16.215683, 20.339516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.905708, 16.251966, 19.671234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.258248, 16.071404, 19.727026>,  <11.469772, 15.963066, 19.760502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.258248, 16.071404, 19.727026>,  <10.905708, 16.251966, 19.671234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.258248, 16.071404, 19.727026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180591, -0.594668, -0.783426,
		0.436587, 0.665284, -0.605631,
		0.881350, -0.451406, 0.139480,
		11.522654, 15.935982, 19.768869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.084679, 16.037764, 19.004515>,  <10.905708, 16.251966, 19.671234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.084679, 16.037764, 19.004515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.322906, 15.821960, 19.242584>,  <11.465843, 15.692478, 19.385426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.322906, 15.821960, 19.242584>,  <11.084679, 16.037764, 19.004515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.322906, 15.821960, 19.242584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047642, -0.763322, -0.644259,
		0.801890, 0.355345, -0.480314,
		0.595569, -0.539508, 0.595172,
		11.501577, 15.660108, 19.421135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.575811, 15.642563, 18.646500>,  <11.084679, 16.037764, 19.004515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.575811, 15.642563, 18.646500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.550061, 15.426832, 18.982353>,  <11.534611, 15.297394, 19.183865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.550061, 15.426832, 18.982353>,  <11.575811, 15.642563, 18.646500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.550061, 15.426832, 18.982353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177654, -0.821744, -0.541457,
		0.981985, -0.184021, -0.042913,
		-0.064375, -0.539326, 0.839633,
		11.530748, 15.265035, 19.234243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.998051, 15.137297, 18.608126>,  <11.575811, 15.642563, 18.646500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.998051, 15.137297, 18.608126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.721779, 15.005707, 18.865726>,  <11.556016, 14.926753, 19.020287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.721779, 15.005707, 18.865726>,  <11.998051, 15.137297, 18.608126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.721779, 15.005707, 18.865726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117478, -0.827664, -0.548790,
		0.713554, -0.454694, 0.533004,
		-0.690680, -0.328975, 0.644000,
		11.514575, 14.907014, 19.058926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.018904, 14.385525, 18.563026>,  <11.998051, 15.137297, 18.608126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.018904, 14.385525, 18.563026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.668419, 14.463825, 18.739178>,  <11.458128, 14.510806, 18.844868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.668419, 14.463825, 18.739178>,  <12.018904, 14.385525, 18.563026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.668419, 14.463825, 18.739178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426865, -0.739390, -0.520662,
		0.223690, -0.644193, 0.731422,
		-0.876213, 0.195752, 0.440377,
		11.405555, 14.522551, 18.871290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.527673, 14.257782, 18.016031>,  <12.018904, 14.385525, 18.563026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.527673, 14.257782, 18.016031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.775306, 14.012739, 17.819481>,  <12.923885, 13.865714, 17.701550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.775306, 14.012739, 17.819481>,  <12.527673, 14.257782, 18.016031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.775306, 14.012739, 17.819481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460013, -0.224240, 0.859130,
		-0.636495, -0.757911, 0.142984,
		0.619081, -0.612606, -0.491377,
		12.961030, 13.828958, 17.672068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.613351, 13.538826, 18.403936>,  <12.527673, 14.257782, 18.016031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.613351, 13.538826, 18.403936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.916243, 13.659061, 18.171988>,  <13.097978, 13.731202, 18.032818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.916243, 13.659061, 18.171988>,  <12.613351, 13.538826, 18.403936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.916243, 13.659061, 18.171988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617808, -0.041557, 0.785230,
		0.211933, -0.952848, -0.217174,
		0.757230, 0.300588, -0.579870,
		13.143412, 13.749238, 17.998026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.216303, 13.020521, 18.459690>,  <12.613351, 13.538826, 18.403936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.216303, 13.020521, 18.459690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.346256, 13.397013, 18.422726>,  <13.424228, 13.622908, 18.400547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.346256, 13.397013, 18.422726>,  <13.216303, 13.020521, 18.459690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.346256, 13.397013, 18.422726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427801, -0.059111, 0.901938,
		0.843468, -0.332557, -0.421863,
		0.324882, 0.941229, -0.092410,
		13.443721, 13.679381, 18.395002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.920082, 13.045887, 18.742361>,  <13.216303, 13.020521, 18.459690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.920082, 13.045887, 18.742361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.775646, 13.417148, 18.778471>,  <13.688985, 13.639904, 18.800137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.775646, 13.417148, 18.778471>,  <13.920082, 13.045887, 18.742361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.775646, 13.417148, 18.778471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297359, 0.022849, 0.954492,
		0.883851, 0.371500, -0.284245,
		-0.361089, 0.928151, 0.090274,
		13.667319, 13.695593, 18.805553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.468815, 13.279307, 18.984905>,  <13.920082, 13.045887, 18.742361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.468815, 13.279307, 18.984905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.168666, 13.531443, 19.064520>,  <13.988577, 13.682724, 19.112289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.168666, 13.531443, 19.064520>,  <14.468815, 13.279307, 18.984905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.168666, 13.531443, 19.064520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246168, -0.012976, 0.969141,
		0.613468, 0.776213, -0.145432,
		-0.750372, 0.630337, 0.199039,
		13.943554, 13.720544, 19.124231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.746456, 13.738853, 19.469051>,  <14.468815, 13.279307, 18.984905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.746456, 13.738853, 19.469051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.361634, 13.845704, 19.491291>,  <14.130741, 13.909815, 19.504635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.361634, 13.845704, 19.491291>,  <14.746456, 13.738853, 19.469051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.361634, 13.845704, 19.491291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119782, 0.230388, 0.965698,
		0.245157, 0.935715, -0.253644,
		-0.962055, 0.267129, 0.055600,
		14.073018, 13.925843, 19.507971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.654142, 14.414388, 19.567478>,  <14.746456, 13.738853, 19.469051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.654142, 14.414388, 19.567478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.335879, 14.243958, 19.739706>,  <14.144921, 14.141700, 19.843042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.335879, 14.243958, 19.739706>,  <14.654142, 14.414388, 19.567478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.335879, 14.243958, 19.739706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232017, 0.442236, 0.866369,
		-0.559551, 0.789232, -0.253011,
		-0.795657, -0.426075, 0.430569,
		14.097182, 14.116135, 19.868877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.296147, 14.955501, 19.953831>,  <14.654142, 14.414388, 19.567478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.296147, 14.955501, 19.953831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.201396, 14.597521, 20.105068>,  <14.144546, 14.382733, 20.195810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.201396, 14.597521, 20.105068>,  <14.296147, 14.955501, 19.953831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.201396, 14.597521, 20.105068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257360, 0.317467, 0.912678,
		-0.936832, 0.313500, 0.155123,
		-0.236877, -0.894949, 0.378096,
		14.130333, 14.329037, 20.218496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.757326, 15.162758, 20.381821>,  <14.296147, 14.955501, 19.953831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.757326, 15.162758, 20.381821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.862552, 14.794084, 20.495871>,  <13.925687, 14.572879, 20.564301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.862552, 14.794084, 20.495871>,  <13.757326, 15.162758, 20.381821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.862552, 14.794084, 20.495871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073987, 0.313934, 0.946558,
		-0.961937, -0.227910, 0.150778,
		0.263064, -0.921685, 0.285122,
		13.941471, 14.517578, 20.581408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.398239, 15.096605, 20.917952>,  <13.757326, 15.162758, 20.381821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.398239, 15.096605, 20.917952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.670556, 14.810197, 20.979710>,  <13.833946, 14.638352, 21.016764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.670556, 14.810197, 20.979710>,  <13.398239, 15.096605, 20.917952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.670556, 14.810197, 20.979710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105715, 0.304624, 0.946588,
		-0.724808, -0.628107, 0.283080,
		0.680792, -0.716020, 0.154394,
		13.874794, 14.595390, 21.026028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.267928, 14.705235, 21.552847>,  <13.398239, 15.096605, 20.917952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.267928, 14.705235, 21.552847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.654354, 14.658134, 21.460886>,  <13.886209, 14.629872, 21.405710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.654354, 14.658134, 21.460886>,  <13.267928, 14.705235, 21.552847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.654354, 14.658134, 21.460886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249159, 0.190104, 0.949621,
		-0.068118, -0.974676, 0.212993,
		0.966064, -0.117756, -0.229900,
		13.944173, 14.622807, 21.391916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.492715, 14.333947, 22.101645>,  <13.267928, 14.705235, 21.552847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.492715, 14.333947, 22.101645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.857808, 14.414922, 21.959692>,  <14.076864, 14.463507, 21.874521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.857808, 14.414922, 21.959692>,  <13.492715, 14.333947, 22.101645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.857808, 14.414922, 21.959692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340095, 0.104865, 0.934526,
		0.226397, -0.973665, 0.026866,
		0.912732, 0.202437, -0.354880,
		14.131628, 14.475653, 21.853228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.942953, 13.872169, 22.535500>,  <13.492715, 14.333947, 22.101645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.942953, 13.872169, 22.535500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.168554, 14.171067, 22.394913>,  <14.303915, 14.350406, 22.310560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.168554, 14.171067, 22.394913>,  <13.942953, 13.872169, 22.535500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.168554, 14.171067, 22.394913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510979, 0.018541, 0.859393,
		0.648692, -0.664292, -0.371369,
		0.564002, 0.747243, -0.351467,
		14.337755, 14.395240, 22.289473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.562882, 13.680052, 22.735285>,  <13.942953, 13.872169, 22.535500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.562882, 13.680052, 22.735285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.582881, 14.074719, 22.673338>,  <14.594880, 14.311521, 22.636169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.582881, 14.074719, 22.673338>,  <14.562882, 13.680052, 22.735285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.582881, 14.074719, 22.673338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544286, 0.103094, 0.832541,
		0.837409, -0.125916, -0.531876,
		0.049997, 0.986670, -0.154866,
		14.597880, 14.370720, 22.626879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.268904, 13.897612, 22.840332>,  <14.562882, 13.680052, 22.735285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.268904, 13.897612, 22.840332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.062751, 14.240026, 22.856255>,  <14.939059, 14.445474, 22.865808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.062751, 14.240026, 22.856255>,  <15.268904, 13.897612, 22.840332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.062751, 14.240026, 22.856255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577423, 0.312569, 0.754243,
		0.633216, 0.411710, -0.655387,
		-0.515383, 0.856035, 0.039807,
		14.908136, 14.496836, 22.868196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.839007, 14.403695, 23.040331>,  <15.268904, 13.897612, 22.840332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.839007, 14.403695, 23.040331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.493136, 14.587821, 23.120770>,  <15.285614, 14.698297, 23.169033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.493136, 14.587821, 23.120770>,  <15.839007, 14.403695, 23.040331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.493136, 14.587821, 23.120770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408056, 0.410193, 0.815617,
		0.292952, 0.787306, -0.542520,
		-0.864678, 0.460316, 0.201099,
		15.233733, 14.725916, 23.181099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.138626, 15.083409, 23.142294>,  <15.839007, 14.403695, 23.040331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.138626, 15.083409, 23.142294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.781224, 15.036646, 23.315720>,  <15.566783, 15.008588, 23.419775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.781224, 15.036646, 23.315720>,  <16.138626, 15.083409, 23.142294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.781224, 15.036646, 23.315720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351703, 0.418121, 0.837544,
		-0.279199, 0.900837, -0.332476,
		-0.893506, -0.116908, 0.433566,
		15.513172, 15.001574, 23.445789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.889071, 15.691622, 23.499451>,  <16.138626, 15.083409, 23.142294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.889071, 15.691622, 23.499451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.679325, 15.412004, 23.693928>,  <15.553478, 15.244234, 23.810614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.679325, 15.412004, 23.693928>,  <15.889071, 15.691622, 23.499451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.679325, 15.412004, 23.693928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336979, 0.354006, 0.872425,
		-0.781977, 0.621303, 0.049936,
		-0.524363, -0.699044, 0.486191,
		15.522017, 15.202291, 23.839785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.722898, 16.092207, 24.026379>,  <15.889071, 15.691622, 23.499451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.722898, 16.092207, 24.026379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.623114, 15.722654, 24.142454>,  <15.563243, 15.500922, 24.212099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.623114, 15.722654, 24.142454>,  <15.722898, 16.092207, 24.026379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.623114, 15.722654, 24.142454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059651, 0.284434, 0.956838,
		-0.966546, 0.256005, -0.015845,
		-0.249462, -0.923883, 0.290189,
		15.548275, 15.445490, 24.229511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.227511, 16.176983, 24.666094>,  <15.722898, 16.092207, 24.026379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.227511, 16.176983, 24.666094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.398501, 15.815374, 24.667269>,  <15.501095, 15.598409, 24.667974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.398501, 15.815374, 24.667269>,  <15.227511, 16.176983, 24.666094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.398501, 15.815374, 24.667269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252994, 0.122749, 0.959649,
		-0.867905, -0.409482, 0.281184,
		0.427474, -0.904023, 0.002938,
		15.526744, 15.544168, 24.668150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.955251, 15.875556, 25.274424>,  <15.227511, 16.176983, 24.666094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.955251, 15.875556, 25.274424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.284142, 15.670392, 25.175739>,  <15.481476, 15.547294, 25.116529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.284142, 15.670392, 25.175739>,  <14.955251, 15.875556, 25.274424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.284142, 15.670392, 25.175739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342640, 0.099954, 0.934134,
		-0.454468, -0.852603, 0.257929,
		0.822226, -0.512911, -0.246710,
		15.530809, 15.516519, 25.101727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.944180, 15.398292, 25.767797>,  <14.955251, 15.875556, 25.274424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.944180, 15.398292, 25.767797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.322512, 15.398327, 25.637930>,  <15.549510, 15.398348, 25.560009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.322512, 15.398327, 25.637930>,  <14.944180, 15.398292, 25.767797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.322512, 15.398327, 25.637930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324445, -0.037480, 0.945162,
		-0.012081, -0.999297, -0.035479,
		0.945827, 0.000093, -0.324670,
		15.606260, 15.398354, 25.540529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.463541, 14.806739, 26.074852>,  <14.944180, 15.398292, 25.767797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.463541, 14.806739, 26.074852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.680391, 15.132752, 25.993052>,  <15.810501, 15.328361, 25.943972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.680391, 15.132752, 25.993052>,  <15.463541, 14.806739, 26.074852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.680391, 15.132752, 25.993052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365993, -0.009955, 0.930565,
		0.756406, -0.579327, -0.303694,
		0.542124, 0.815035, -0.204499,
		15.843029, 15.377263, 25.931702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.129107, 14.628648, 26.477978>,  <15.463541, 14.806739, 26.074852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.129107, 14.628648, 26.477978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.193668, 14.997865, 26.338297>,  <16.232405, 15.219395, 26.254488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.193668, 14.997865, 26.338297>,  <16.129107, 14.628648, 26.477978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.193668, 14.997865, 26.338297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360553, 0.274226, 0.891516,
		0.918667, -0.269800, -0.288545,
		0.161405, 0.923043, -0.349200,
		16.242090, 15.274777, 26.233538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.744478, 14.751759, 26.676502>,  <16.129107, 14.628648, 26.477978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.744478, 14.751759, 26.676502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.606775, 15.117809, 26.592571>,  <16.524153, 15.337440, 26.542213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.606775, 15.117809, 26.592571>,  <16.744478, 14.751759, 26.676502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.606775, 15.117809, 26.592571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399472, 0.345019, 0.849343,
		0.849652, 0.208573, -0.484344,
		-0.344258, 0.915128, -0.209827,
		16.503498, 15.392347, 26.529623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.289387, 15.285762, 26.592144>,  <16.744478, 14.751759, 26.676502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.289387, 15.285762, 26.592144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.973089, 15.506045, 26.699060>,  <16.783310, 15.638215, 26.763210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.973089, 15.506045, 26.699060>,  <17.289387, 15.285762, 26.592144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.973089, 15.506045, 26.699060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502384, 0.334342, 0.797387,
		0.349761, 0.764812, -0.541046,
		-0.790745, 0.550708, 0.267289,
		16.735867, 15.671258, 26.779247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.550133, 15.943184, 26.795523>,  <17.289387, 15.285762, 26.592144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.550133, 15.943184, 26.795523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.187231, 15.947814, 26.963692>,  <16.969490, 15.950592, 27.064592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.187231, 15.947814, 26.963692>,  <17.550133, 15.943184, 26.795523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.187231, 15.947814, 26.963692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397266, 0.351785, 0.847601,
		-0.138086, 0.936009, -0.323757,
		-0.907255, 0.011576, 0.420421,
		16.915054, 15.951287, 27.089817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.523497, 16.555145, 27.072708>,  <17.550133, 15.943184, 26.795523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.523497, 16.555145, 27.072708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.238644, 16.357061, 27.271761>,  <17.067732, 16.238211, 27.391193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.238644, 16.357061, 27.271761>,  <17.523497, 16.555145, 27.072708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.238644, 16.357061, 27.271761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407154, 0.286125, 0.867386,
		-0.571922, 0.820305, -0.002132,
		-0.712131, -0.495209, 0.497632,
		17.025003, 16.208498, 27.421051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
