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
	<5.503422, 5.050449, 2.420535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.354645, 4.944252, 2.776327>,  <5.265378, 4.880534, 2.989802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.354645, 4.944252, 2.776327>,  <5.503422, 5.050449, 2.420535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.354645, 4.944252, 2.776327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199310, -0.913036, -0.355866,
		0.906606, -0.309643, 0.286682,
		-0.371943, -0.265492, 0.889479,
		5.243062, 4.864604, 3.043170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.868768, 4.409063, 2.806530>,  <5.503422, 5.050449, 2.420535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.868768, 4.409063, 2.806530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.482515, 4.448139, 2.902874>,  <5.250764, 4.471585, 2.960681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.482515, 4.448139, 2.902874>,  <5.868768, 4.409063, 2.806530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.482515, 4.448139, 2.902874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205519, -0.854283, -0.477453,
		0.159120, -0.510545, 0.845000,
		-0.965631, 0.097691, 0.240861,
		5.192826, 4.477447, 2.975133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.628270, 3.739826, 3.101608>,  <5.868768, 4.409063, 2.806530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.628270, 3.739826, 3.101608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.381935, 3.972145, 2.888660>,  <5.234134, 4.111537, 2.760891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.381935, 3.972145, 2.888660>,  <5.628270, 3.739826, 3.101608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.381935, 3.972145, 2.888660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095063, -0.725544, -0.681578,
		-0.782118, -0.369131, 0.502029,
		-0.615836, 0.580799, -0.532371,
		5.197184, 4.146385, 2.728949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.860903, 3.401246, 3.141923>,  <5.628270, 3.739826, 3.101608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.860903, 3.401246, 3.141923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.945904, 3.595024, 2.802475>,  <4.996904, 3.711291, 2.598807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.945904, 3.595024, 2.802475>,  <4.860903, 3.401246, 3.141923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.945904, 3.595024, 2.802475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270496, -0.805354, -0.527482,
		-0.938975, 0.341640, -0.040099,
		0.212503, 0.484445, -0.848620,
		5.009655, 3.740358, 2.547889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.259625, 3.337602, 2.684942>,  <4.860903, 3.401246, 3.141923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.259625, 3.337602, 2.684942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.559019, 3.442955, 2.441500>,  <4.738656, 3.506167, 2.295435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.559019, 3.442955, 2.441500>,  <4.259625, 3.337602, 2.684942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.559019, 3.442955, 2.441500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300745, -0.683126, -0.665501,
		-0.591035, 0.681152, -0.432099,
		0.748485, 0.263383, -0.608604,
		4.783565, 3.521970, 2.258918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.946790, 3.314367, 2.043855>,  <4.259625, 3.337602, 2.684942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.946790, 3.314367, 2.043855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.333889, 3.318748, 1.943181>,  <4.566148, 3.321377, 1.882776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.333889, 3.318748, 1.943181>,  <3.946790, 3.314367, 2.043855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.333889, 3.318748, 1.943181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211941, -0.504677, -0.836888,
		-0.136186, 0.863239, -0.486078,
		0.967747, 0.010953, -0.251685,
		4.624213, 3.322034, 1.867675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.042625, 3.542324, 1.277233>,  <3.946790, 3.314367, 2.043855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.042625, 3.542324, 1.277233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.382681, 3.347042, 1.356144>,  <4.586714, 3.229873, 1.403490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.382681, 3.347042, 1.356144>,  <4.042625, 3.542324, 1.277233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.382681, 3.347042, 1.356144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113626, -0.535916, -0.836590,
		0.514151, 0.688803, -0.511076,
		0.850140, -0.488206, 0.197276,
		4.637723, 3.200580, 1.415326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.353605, 3.510479, 0.642276>,  <4.042625, 3.542324, 1.277233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.353605, 3.510479, 0.642276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.509485, 3.203911, 0.846523>,  <4.603014, 3.019970, 0.969072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.509485, 3.203911, 0.846523>,  <4.353605, 3.510479, 0.642276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.509485, 3.203911, 0.846523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086115, -0.582349, -0.808365,
		0.916906, 0.271049, -0.292943,
		0.389701, -0.766422, 0.510619,
		4.626396, 2.973984, 0.999709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.222754, 2.393770, -0.021067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.458973, 2.136299, 0.173636>,  <4.600705, 1.981817, 0.290458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.458973, 2.136299, 0.173636>,  <4.222754, 2.393770, -0.021067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.458973, 2.136299, 0.173636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139285, 0.675414, 0.724165,
		-0.794891, -0.359857, 0.488519,
		0.590549, -0.643676, 0.486758,
		4.636137, 1.943196, 0.319664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.966627, 2.330703, 0.702628>,  <4.222754, 2.393770, -0.021067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.966627, 2.330703, 0.702628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.361374, 2.296555, 0.647777>,  <4.598222, 2.276065, 0.614866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.361374, 2.296555, 0.647777>,  <3.966627, 2.330703, 0.702628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.361374, 2.296555, 0.647777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160222, 0.625232, 0.763815,
		0.020528, -0.775756, 0.630700,
		0.986868, -0.085372, -0.137128,
		4.657434, 2.270943, 0.606638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.290592, 2.178619, 1.390997>,  <3.966627, 2.330703, 0.702628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.290592, 2.178619, 1.390997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.568172, 2.326241, 1.143698>,  <4.734721, 2.414814, 0.995318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.568172, 2.326241, 1.143698>,  <4.290592, 2.178619, 1.390997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.568172, 2.326241, 1.143698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354547, 0.572191, 0.739522,
		0.626680, -0.732390, 0.266225,
		0.693951, 0.369055, -0.618248,
		4.776358, 2.436957, 0.958223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.939414, 2.055475, 1.761548>,  <4.290592, 2.178619, 1.390997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.939414, 2.055475, 1.761548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.917271, 2.362064, 1.505593>,  <4.903985, 2.546018, 1.352021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.917271, 2.362064, 1.505593>,  <4.939414, 2.055475, 1.761548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.917271, 2.362064, 1.505593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337199, 0.617567, 0.710568,
		0.939804, -0.176434, -0.292641,
		-0.055357, 0.766474, -0.639886,
		4.900663, 2.592006, 1.313628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.631554, 2.461258, 1.764319>,  <4.939414, 2.055475, 1.761548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.631554, 2.461258, 1.764319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.337227, 2.701908, 1.639984>,  <5.160631, 2.846298, 1.565383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.337227, 2.701908, 1.639984>,  <5.631554, 2.461258, 1.764319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.337227, 2.701908, 1.639984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275471, 0.685251, 0.674201,
		0.618618, 0.410462, -0.669950,
		-0.735818, 0.601625, -0.310838,
		5.116482, 2.882396, 1.546733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.909710, 3.215859, 1.623816>,  <5.631554, 2.461258, 1.764319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.909710, 3.215859, 1.623816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.515648, 3.250797, 1.682930>,  <5.279211, 3.271760, 1.718398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.515648, 3.250797, 1.682930>,  <5.909710, 3.215859, 1.623816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.515648, 3.250797, 1.682930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155472, 0.818972, 0.552370,
		-0.072785, 0.567146, -0.820395,
		-0.985155, 0.087345, 0.147784,
		5.220101, 3.277001, 1.727265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.876819, 3.894025, 1.657840>,  <5.909710, 3.215859, 1.623816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.876819, 3.894025, 1.657840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.513397, 3.785561, 1.784963>,  <5.295344, 3.720482, 1.861237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.513397, 3.785561, 1.784963>,  <5.876819, 3.894025, 1.657840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.513397, 3.785561, 1.784963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027855, 0.798357, 0.601541,
		-0.416838, 0.537679, -0.732903,
		-0.908554, -0.271160, 0.317809,
		5.240831, 3.704212, 1.880306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.425766, 4.442611, 1.554452>,  <5.876819, 3.894025, 1.657840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.425766, 4.442611, 1.554452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.313457, 4.220299, 1.867444>,  <5.246072, 4.086911, 2.055239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.313457, 4.220299, 1.867444>,  <5.425766, 4.442611, 1.554452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.313457, 4.220299, 1.867444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177603, 0.771108, 0.611432,
		-0.943199, 0.310644, -0.117798,
		-0.280773, -0.555781, 0.782479,
		5.229226, 4.053565, 2.102188>
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
