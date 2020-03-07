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
	<2.763484, 0.190099, 1.472526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.029593, -0.081451, 1.596809>,  <3.189258, -0.244382, 1.671379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.029593, -0.081451, 1.596809>,  <2.763484, 0.190099, 1.472526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.029593, -0.081451, 1.596809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616657, 0.265031, -0.741277,
		0.420888, 0.684751, 0.594952,
		0.665272, -0.678877, 0.310708,
		3.229175, -0.285114, 1.690022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.426385, 0.491783, 1.627288>,  <2.763484, 0.190099, 1.472526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.426385, 0.491783, 1.627288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.489877, 0.118416, 1.498581>,  <3.527972, -0.105605, 1.421357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.489877, 0.118416, 1.498581>,  <3.426385, 0.491783, 1.627288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.489877, 0.118416, 1.498581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559783, 0.353537, -0.749436,
		0.813295, -0.061161, 0.578629,
		0.158731, -0.933419, -0.321767,
		3.537496, -0.161610, 1.402051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.117070, 0.401410, 1.611368>,  <3.426385, 0.491783, 1.627288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.117070, 0.401410, 1.611368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.955412, 0.146866, 1.348549>,  <3.858417, -0.005861, 1.190858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.955412, 0.146866, 1.348549>,  <4.117070, 0.401410, 1.611368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.955412, 0.146866, 1.348549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658067, 0.296633, -0.692068,
		0.635306, -0.712077, 0.298885,
		-0.404147, -0.636361, -0.657047,
		3.834168, -0.044042, 1.151435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.675119, -0.015122, 1.328368>,  <4.117070, 0.401410, 1.611368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.675119, -0.015122, 1.328368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.365526, 0.048031, 1.083084>,  <4.179770, 0.085923, 0.935914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.365526, 0.048031, 1.083084>,  <4.675119, -0.015122, 1.328368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.365526, 0.048031, 1.083084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614027, 0.423689, -0.665927,
		0.154672, -0.891942, -0.424873,
		-0.773982, 0.157883, -0.613209,
		4.133332, 0.095396, 0.899121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.927025, -0.073627, 0.623215>,  <4.675119, -0.015122, 1.328368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.927025, -0.073627, 0.623215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.599942, 0.151009, 0.572662>,  <4.403692, 0.285790, 0.542331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.599942, 0.151009, 0.572662>,  <4.927025, -0.073627, 0.623215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.599942, 0.151009, 0.572662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444009, 0.475612, -0.759374,
		-0.366347, -0.677061, -0.638262,
		-0.817708, 0.561588, -0.126381,
		4.354630, 0.319485, 0.534748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.864316, -0.054193, -0.081079>,  <4.927025, -0.073627, 0.623215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.864316, -0.054193, -0.081079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.646752, 0.252605, 0.055084>,  <4.516213, 0.436685, 0.136782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.646752, 0.252605, 0.055084>,  <4.864316, -0.054193, -0.081079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.646752, 0.252605, 0.055084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526020, 0.627704, -0.573839,
		-0.653808, -0.133056, -0.744870,
		-0.543911, 0.766997, 0.340407,
		4.483579, 0.482705, 0.157206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.689112, 0.293851, -0.671267>,  <4.864316, -0.054193, -0.081079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.689112, 0.293851, -0.671267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.667140, 0.548092, -0.363243>,  <4.653957, 0.700636, -0.178429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.667140, 0.548092, -0.363243>,  <4.689112, 0.293851, -0.671267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.667140, 0.548092, -0.363243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503750, 0.683520, -0.528239,
		-0.862101, 0.358903, -0.357729,
		-0.054929, 0.635601, 0.770061,
		4.650661, 0.738772, -0.132225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.470404, 0.909862, -0.962424>,  <4.689112, 0.293851, -0.671267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.470404, 0.909862, -0.962424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.644902, 1.029209, -0.622856>,  <4.749601, 1.100818, -0.419115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.644902, 1.029209, -0.622856>,  <4.470404, 0.909862, -0.962424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.644902, 1.029209, -0.622856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359424, 0.807117, -0.468378,
		-0.824927, 0.509450, 0.244860,
		0.436245, 0.298369, 0.848920,
		4.775776, 1.118720, -0.368180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.378834, 1.413935, -1.228896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.563698, 1.700817, -1.020271>,  <5.674616, 1.872946, -0.895096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.563698, 1.700817, -1.020271>,  <5.378834, 1.413935, -1.228896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.563698, 1.700817, -1.020271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454037, -0.313835, 0.833881,
		0.761748, -0.622194, 0.180596,
		0.462158, 0.717204, 0.521563,
		5.702345, 1.915978, -0.863802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.717859, 1.167346, -0.614316>,  <5.378834, 1.413935, -1.228896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.717859, 1.167346, -0.614316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.537766, 1.508781, -0.509491>,  <5.429709, 1.713643, -0.446596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.537766, 1.508781, -0.509491>,  <5.717859, 1.167346, -0.614316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.537766, 1.508781, -0.509491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567318, -0.500102, 0.654254,
		0.689522, 0.145893, 0.709418,
		-0.450233, 0.853588, 0.262064,
		5.402696, 1.764858, -0.430872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.666410, 1.296993, 0.107457>,  <5.717859, 1.167346, -0.614316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.666410, 1.296993, 0.107457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.359348, 1.497967, -0.051674>,  <5.175111, 1.618551, -0.147153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.359348, 1.497967, -0.051674>,  <5.666410, 1.296993, 0.107457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.359348, 1.497967, -0.051674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633123, -0.498373, 0.592267,
		0.099308, 0.706531, 0.700680,
		-0.767655, 0.502433, -0.397828,
		5.129052, 1.648697, -0.171022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.076478, 1.663761, 0.632669>,  <5.666410, 1.296993, 0.107457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.076478, 1.663761, 0.632669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.915565, 1.515800, 0.297684>,  <4.819018, 1.427024, 0.096693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.915565, 1.515800, 0.297684>,  <5.076478, 1.663761, 0.632669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.915565, 1.515800, 0.297684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640553, -0.539838, 0.546137,
		-0.654110, 0.756141, -0.019774,
		-0.402282, -0.369900, -0.837462,
		4.794881, 1.404830, 0.046445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.434998, 1.634879, 0.807728>,  <5.076478, 1.663761, 0.632669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.434998, 1.634879, 0.807728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.453625, 1.377800, 0.501846>,  <4.464801, 1.223552, 0.318318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.453625, 1.377800, 0.501846>,  <4.434998, 1.634879, 0.807728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.453625, 1.377800, 0.501846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703882, -0.564302, 0.431408,
		-0.708788, 0.518172, -0.478661,
		0.046566, -0.642698, -0.764703,
		4.467595, 1.184991, 0.272435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.715704, 1.440059, 0.590710>,  <4.434998, 1.634879, 0.807728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.715704, 1.440059, 0.590710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.969807, 1.158875, 0.462776>,  <4.122268, 0.990164, 0.386016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.969807, 1.158875, 0.462776>,  <3.715704, 1.440059, 0.590710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.969807, 1.158875, 0.462776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570606, -0.706287, 0.419006,
		-0.520440, -0.083676, -0.849788,
		0.635256, -0.702962, -0.319834,
		4.160383, 0.947986, 0.366826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.210876, 0.960799, 0.530229>,  <3.715704, 1.440059, 0.590710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.210876, 0.960799, 0.530229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.563824, 0.773281, 0.513962>,  <3.775593, 0.660770, 0.504202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.563824, 0.773281, 0.513962>,  <3.210876, 0.960799, 0.530229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.563824, 0.773281, 0.513962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419367, -0.822640, 0.383919,
		-0.213434, -0.321704, -0.922471,
		0.882370, -0.468795, -0.040667,
		3.828535, 0.632643, 0.501762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.082011, 0.384539, 0.252535>,  <3.210876, 0.960799, 0.530229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.082011, 0.384539, 0.252535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.409203, 0.301296, 0.467049>,  <3.605518, 0.251351, 0.595757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.409203, 0.301296, 0.467049>,  <3.082011, 0.384539, 0.252535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.409203, 0.301296, 0.467049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430149, -0.840271, 0.330025,
		0.381944, -0.500636, -0.776841,
		0.817979, -0.208107, 0.536285,
		3.654596, 0.238864, 0.627934>
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
