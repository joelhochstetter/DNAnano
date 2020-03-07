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
	<2.267274, 2.788604, 0.731926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.593178, 2.855072, 0.954117>,  <2.788720, 2.894953, 1.087431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.593178, 2.855072, 0.954117>,  <2.267274, 2.788604, 0.731926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.593178, 2.855072, 0.954117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197356, -0.821356, 0.535186,
		0.545177, -0.545675, -0.636413,
		0.814760, 0.166171, 0.555477,
		2.837606, 2.904923, 1.120760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.811597, 2.475035, 0.368964>,  <2.267274, 2.788604, 0.731926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.811597, 2.475035, 0.368964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.574417, 2.378479, 0.676247>,  <2.432109, 2.320546, 0.860616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.574417, 2.378479, 0.676247>,  <2.811597, 2.475035, 0.368964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.574417, 2.378479, 0.676247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506796, -0.629493, -0.588979,
		0.625754, -0.738559, 0.250922,
		-0.592950, -0.241390, 0.768207,
		2.396532, 2.306062, 0.906709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.901961, 1.707832, 0.533399>,  <2.811597, 2.475035, 0.368964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.901961, 1.707832, 0.533399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.543053, 1.862717, 0.618225>,  <2.327708, 1.955647, 0.669120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.543053, 1.862717, 0.618225>,  <2.901961, 1.707832, 0.533399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.543053, 1.862717, 0.618225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431224, -0.665764, -0.608937,
		-0.094602, -0.637829, 0.764346,
		-0.897272, 0.387211, 0.212065,
		2.273871, 1.978880, 0.681844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.432547, 1.242001, 0.791998>,  <2.901961, 1.707832, 0.533399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.432547, 1.242001, 0.791998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.213615, 1.529907, 0.621178>,  <2.082257, 1.702651, 0.518686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.213615, 1.529907, 0.621178>,  <2.432547, 1.242001, 0.791998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.213615, 1.529907, 0.621178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504763, -0.690908, -0.517553,
		-0.667563, -0.067719, 0.741467,
		-0.547334, 0.719764, -0.427043,
		2.049417, 1.745837, 0.493063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.806937, 1.081226, 0.801894>,  <2.432547, 1.242001, 0.791998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.806937, 1.081226, 0.801894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.765991, 1.349121, 0.507690>,  <1.741424, 1.509858, 0.331169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.765991, 1.349121, 0.507690>,  <1.806937, 1.081226, 0.801894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.765991, 1.349121, 0.507690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583280, -0.639356, -0.501007,
		-0.805796, 0.377722, 0.456092,
		-0.102364, 0.669739, -0.735508,
		1.735282, 1.550043, 0.287038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.163985, 0.991496, 0.603081>,  <1.806937, 1.081226, 0.801894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.163985, 0.991496, 0.603081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.314354, 1.186157, 0.287651>,  <1.404575, 1.302954, 0.098393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.314354, 1.186157, 0.287651>,  <1.163985, 0.991496, 0.603081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.314354, 1.186157, 0.287651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603956, -0.516741, -0.606807,
		-0.702794, 0.704378, 0.099663,
		0.375922, 0.486653, -0.788576,
		1.427130, 1.332153, 0.051078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.658113, 1.341939, 0.155355>,  <1.163985, 0.991496, 0.603081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.658113, 1.341939, 0.155355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.963989, 1.246078, -0.083916>,  <1.147515, 1.188562, -0.227478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.963989, 1.246078, -0.083916>,  <0.658113, 1.341939, 0.155355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.963989, 1.246078, -0.083916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599562, -0.604804, -0.524154,
		-0.236165, 0.759460, -0.606174,
		0.764690, -0.239652, -0.598177,
		1.193396, 1.174183, -0.263369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.484106, 1.376296, -0.593877>,  <0.658113, 1.341939, 0.155355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.484106, 1.376296, -0.593877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.795464, 1.129074, -0.549858>,  <0.982278, 0.980741, -0.523447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.795464, 1.129074, -0.549858>,  <0.484106, 1.376296, -0.593877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.795464, 1.129074, -0.549858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491986, -0.709465, -0.504588,
		0.389938, 0.338627, -0.856318,
		0.778395, -0.618055, 0.110047,
		1.028982, 0.943658, -0.516844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.836418, -0.293119, 6.134673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.568970, -0.040558, 6.291786>,  <1.408501, 0.110979, 6.386054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.568970, -0.040558, 6.291786>,  <1.836418, -0.293119, 6.134673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.568970, -0.040558, 6.291786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176452, 0.378408, -0.908665,
		-0.722365, -0.676859, -0.141599,
		-0.668620, 0.631402, 0.392782,
		1.368384, 0.148863, 6.409621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.339906, -0.104070, 5.577792>,  <1.836418, -0.293119, 6.134673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.339906, -0.104070, 5.577792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.237499, 0.209900, 5.803482>,  <1.176055, 0.398282, 5.938896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.237499, 0.209900, 5.803482>,  <1.339906, -0.104070, 5.577792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.237499, 0.209900, 5.803482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069100, 0.567324, -0.820590,
		-0.964199, -0.249073, -0.091006,
		-0.256017, 0.784924, 0.564225,
		1.160694, 0.445377, 5.972750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.103747, -0.338995, 4.852478>,  <1.339906, -0.104070, 5.577792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.103747, -0.338995, 4.852478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.110836, -0.122299, 4.516335>,  <1.115090, 0.007719, 4.314649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.110836, -0.122299, 4.516335>,  <1.103747, -0.338995, 4.852478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.110836, -0.122299, 4.516335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593263, 0.670847, 0.444976,
		0.804814, -0.506440, -0.309505,
		0.017724, 0.541740, -0.840359,
		1.116153, 0.040223, 4.264227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.778785, -0.154830, 4.721193>,  <1.103747, -0.338995, 4.852478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.778785, -0.154830, 4.721193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.543957, 0.101242, 4.522995>,  <1.403060, 0.254886, 4.404076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.543957, 0.101242, 4.522995>,  <1.778785, -0.154830, 4.721193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.543957, 0.101242, 4.522995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515690, 0.767556, 0.380685,
		0.624029, -0.032034, -0.780745,
		-0.587070, 0.640181, -0.495496,
		1.367836, 0.293296, 4.374346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.188341, 0.315842, 4.409331>,  <1.778785, -0.154830, 4.721193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.188341, 0.315842, 4.409331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.838379, 0.508270, 4.431648>,  <1.628402, 0.623727, 4.445038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.838379, 0.508270, 4.431648>,  <2.188341, 0.315842, 4.409331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.838379, 0.508270, 4.431648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482262, 0.854889, 0.191279,
		0.044322, 0.194258, -0.979949,
		-0.874905, 0.481070, 0.055793,
		1.575907, 0.652591, 4.448386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.195837, 1.023669, 3.980779>,  <2.188341, 0.315842, 4.409331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.195837, 1.023669, 3.980779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.884865, 1.055481, 4.230347>,  <1.698281, 1.074568, 4.380087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.884865, 1.055481, 4.230347>,  <2.195837, 1.023669, 3.980779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.884865, 1.055481, 4.230347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409680, 0.816715, 0.406373,
		-0.477245, 0.571534, -0.667522,
		-0.777431, 0.079531, 0.623920,
		1.651636, 1.079340, 4.417522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.208350, 1.700639, 4.125969>,  <2.195837, 1.023669, 3.980779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.208350, 1.700639, 4.125969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.958530, 1.587021, 4.416969>,  <1.808639, 1.518850, 4.591569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.958530, 1.587021, 4.416969>,  <2.208350, 1.700639, 4.125969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.958530, 1.587021, 4.416969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171482, 0.858908, 0.482567,
		-0.761927, 0.426140, -0.487721,
		-0.624548, -0.284046, 0.727501,
		1.771166, 1.501807, 4.635220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.814165, 2.328348, 4.249161>,  <2.208350, 1.700639, 4.125969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.814165, 2.328348, 4.249161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.781212, 2.096802, 4.573662>,  <1.761440, 1.957874, 4.768362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.781212, 2.096802, 4.573662>,  <1.814165, 2.328348, 4.249161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.781212, 2.096802, 4.573662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412174, 0.721347, 0.556571,
		-0.907373, 0.380229, 0.179167,
		-0.082383, -0.578865, 0.811251,
		1.756497, 1.923142, 4.817037>
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
